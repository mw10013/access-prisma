import { ActionFunction, json } from "@remix-run/node";
import { z } from "zod";
import { AccessHub, Prisma } from "@prisma/client";
import { prisma } from "~/db.server";

const accessHubSelect = Prisma.validator<Prisma.AccessHubArgs>()({
  select: {
    id: true,
    apiToken: {
      select: { token: true },
    },
    accessPoints: {
      select: {
        id: true,
      },
    },
    user: {
      select: {
        id: true,
        accessUsers: {
          select: {
            id: true,
          },
        },
      },
    },
  },
});

const accessUserSelect = (accessHubId: AccessHub["id"]) => {
  return Prisma.validator<Prisma.AccessUserArgs>()({
    select: {
      id: true,
      code: true,
      activateCodeAt: true,
      expireCodeAt: true,
      accessPoints: {
        select: { id: true },
        where: { accessHub: { id: accessHubId } },
      },
    },
  });
};

type AccessUser = Prisma.AccessUserGetPayload<
  ReturnType<typeof accessUserSelect>
>;

const HeartbeatRequestData = z.object({
  accessHub: z
    .object({
      id: z.string().min(1),
      apiToken: z.string().min(1),
      cloudLastAccessEventAt: z // JSON date
        .string()
        .min(1)
        .nullable()
        .refine((v) => !v || !Number.isNaN(Date.parse(v)), {
          message: "Invalid date time",
        })
        .transform((v) => (v ? new Date(v) : null)),
      accessEvents: z.array(
        z
          .object({
            at: z // JSON Date
              .string()
              .min(1)
              .refine((v) => !Number.isNaN(Date.parse(v)), {
                message: "Invalid date time",
              })
              .transform((v) => new Date(v)),
            access: z.literal("grant").or(z.literal("deny")),
            code: z.string().min(1),
            accessUserId: z.number().int().nullable(),
            accessPointId: z.number().int(),
          })
          .strict()
      ),
    })
    .strict(),
});

type HeartbeatResponseData = {
  accessHub: {
    id: AccessHub["id"];
    cloudLastAccessEventAt: string; // JSON date
    accessUsers: AccessUser[];
  };
};

// Returns new Date(0) if no access events.
async function lastAccessEventAt(accessHubId: AccessHub["id"]) {
  const lastAccessEvent = await prisma.accessEvent.findFirst({
    where: {
      accessPoint: { accessHub: { id: accessHubId } },
    },
    orderBy: {
      at: "desc",
    },
  });
  return lastAccessEvent ? lastAccessEvent.at : new Date(0);
}

export const action: ActionFunction = async ({ request }) => {
  const parseResult = HeartbeatRequestData.safeParse(await request.json());
  if (!parseResult.success) {
    console.error(
      `Malformed HeartbeatRequestData: ${parseResult.error.toString()}`
    );
    return new Response(`${parseResult.error.toString()}`, { status: 400 });
  }
  const data = parseResult.data;
  console.log(JSON.stringify(data, null, 2));

  const accessHub = await prisma.accessHub.findUnique({
    where: { id: data.accessHub.id },
    ...accessHubSelect,
  });
  if (!accessHub) {
    return new Response(`Access hub ${data.accessHub.id} not found.`, {
      status: 404,
    });
  }

  if (
    !accessHub.apiToken?.token ||
    accessHub.apiToken.token.length === 0 ||
    accessHub.apiToken.token !== parseResult.data.accessHub.apiToken
  ) {
    return new Response("Invalid api token", { status: 401 });
  }

  const { cloudLastAccessEventAt, accessEvents } = parseResult.data.accessHub;
  const accessPointIdEventsMap = new Map<number, typeof accessEvents>(
    accessHub.accessPoints.map((v) => [v.id, []])
  );
  if (
    cloudLastAccessEventAt &&
    cloudLastAccessEventAt.getTime() ===
      (await lastAccessEventAt(accessHub.id)).getTime()
  ) {
    const accessUserIds = new Set(accessHub.user.accessUsers.map((v) => v.id));
    for (const accessEvent of accessEvents) {
      console.log(accessEvent);
      if (accessEvent.at.getTime() <= cloudLastAccessEventAt.getTime()) {
        throw new Error(
          `Access event at <= cloudLastAccessEventAt: ${accessEvent.at.toLocaleString()} <= ${cloudLastAccessEventAt.toLocaleDateString()}`
        );
      }
      if (accessEvent.access === "grant" && !accessEvent.accessUserId) {
        throw new Error(
          `Access event grant missing access user id at ${accessEvent.at.toLocaleDateString()}`
        );
      }
      if (accessEvent.access === "deny" && accessEvent.accessUserId) {
        throw new Error(
          `Access event deny has unexpcted access user id at ${accessEvent.at.toLocaleDateString()}`
        );
      }
      if (
        accessEvent.accessUserId &&
        !accessUserIds.has(accessEvent.accessUserId)
      ) {
        throw new Error(
          `Access event access user id does not exist: ${accessEvent.accessUserId}`
        );
      }
      if (!accessPointIdEventsMap.has(accessEvent.accessPointId)) {
        throw new Error(
          `Access event access point id does not exist: ${accessEvent.accessPointId}`
        );
      }
      accessPointIdEventsMap.get(accessEvent.accessPointId)?.push(accessEvent);
    }
    // console.log(
    //   JSON.stringify(
    //     { accessPointIdEventsMap: [...accessPointIdEventsMap] },
    //     null,
    //     2
    //   )
    // );
  }

  await prisma.accessHub.update({
    where: { id: accessHub.id },
    data: {
      heartbeatAt: new Date(),
      accessPoints: {
        update: [...accessPointIdEventsMap].map(([id, accessEvents]) => ({
          where: { id },
          data: {
            accessEvents: {
              create: accessEvents.map(
                ({ accessPointId, ...accessEvent }) => accessEvent
              ),
            },
          },
        })),
      },
    },
  });

  const accessUsers = await prisma.accessUser.findMany({
    where: {
      deletedAt: new Date(0),
      OR: [{ expireCodeAt: null }, { expireCodeAt: { gt: new Date() } }],
      accessPoints: { some: { accessHub: { id: accessHub.id } } },
    },
    ...accessUserSelect(accessHub.id),
  });

  const responseData: HeartbeatResponseData = {
    accessHub: {
      id: accessHub.id,
      cloudLastAccessEventAt: (await lastAccessEventAt(accessHub.id)).toJSON(),
      accessUsers,
    },
  };
  return json(responseData, 200);
};
