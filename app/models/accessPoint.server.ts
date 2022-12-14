import type { User, AccessPoint } from "@prisma/client";

import { prisma } from "~/db.server";

export type { AccessPoint } from "@prisma/client";

export function getAccessPoint({
  id,
  accessHubId,
  userId,
}: Pick<AccessPoint, "id" | "accessHubId"> & {
  userId: User["id"];
}) {
  console.log({ id, accessHubId, userId });
  return prisma.accessPoint.findFirstOrThrow({
    where: { id, accessHubId, accessHub: { user: { id: userId } } },
  });
}

export function getAccessPointWithHubAndUsers({
  id,
  userId,
}: Pick<AccessPoint, "id"> & {
  userId: User["id"];
}) {
  return prisma.accessPoint.findFirstOrThrow({
    where: {
      id,
      accessHub: { user: { id: userId } },
    },
    include: {
      accessHub: true,
      accessUsers: { orderBy: { name: "asc" } },
    },
  });
}

export function getAccessPointsNotIn({
  notIn,
  userId,
}: {
  notIn: AccessPoint["id"][];
  userId: User["id"];
}) {
  return prisma.accessPoint.findMany({
    where: { id: { notIn }, accessHub: { user: { id: userId } } },
    orderBy: [{ accessHub: { name: "asc" } }, { name: "asc" }],
    include: { accessHub: true },
  });
}
