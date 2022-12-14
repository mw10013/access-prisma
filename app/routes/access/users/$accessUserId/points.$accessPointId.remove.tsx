import { ActionFunction, redirect } from "@remix-run/node";
import invariant from "tiny-invariant";
import { removePointFromAccessUser } from "~/models/accessUser.server";
import { requireUserIdForRole } from "~/session.server";

export const action: ActionFunction = async ({
  request,
  params: { accessUserId, accessPointId },
}) => {
  const userId = await requireUserIdForRole(request, "customer");
  invariant(accessUserId, "accessUserId not found");
  invariant(accessPointId, "accessPointId not found");
  await removePointFromAccessUser({
    id: Number(accessUserId),
    accessPointId: Number(accessPointId),
    userId,
  });
  return redirect(`/access/users/${accessUserId}`);
};
