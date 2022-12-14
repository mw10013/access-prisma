import type { AccessHub, AccessEvent } from "@prisma/client";

import { prisma } from "~/db.server";

export type { AccessEvent } from "@prisma/client";

export function getAccessEvents({
  accessHubId,
  cursor,
  take,
}: {
  accessHubId: AccessHub["id"];
  cursor?: Pick<AccessEvent, "id" | "at"> | null;
  take: number;
}) {
  return prisma.accessEvent.findMany({
    take,
    where: {
      accessPoint: {
        accessHub: { id: accessHubId },
      },
      ...(cursor && {
        OR: [
          {
            AND: [
              {
                at: cursor.at,
              },
              {
                id: {
                  lt: cursor.id,
                },
              },
            ],
          },
          {
            at: {
              lt: cursor.at,
            },
          },
        ],
      }),
    },
    orderBy: [{ at: "desc" }, { id: "desc" }],
    include: {
      accessUser: true,
      accessPoint: true,
    },
  });
}
