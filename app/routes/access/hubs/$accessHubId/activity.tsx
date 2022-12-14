import { json, LoaderFunction } from "@remix-run/node";
import { useFetcher, useLoaderData, useLocation } from "@remix-run/react";
import invariant from "tiny-invariant";
import { requireUserIdForRole } from "~/session.server";
import { getAccessHub } from "~/models/accessHub.server";
import { getAccessEvents } from "~/models/accessEvent.server";
import { PageHeader } from "~/components/page-header";
import { Section } from "~/components/section";
import { prisma } from "~/db.server";
import { AccessEvent } from "@prisma/client";
import { Button } from "~/components/button";
import { useEffect, useState } from "react";
import { StackedList } from "~/components/stacked-list";
import { Badge } from "~/components/badge";

export const handle = {
  breadcrumb: "Activity",
};

type LoaderData = {
  accessHub: Awaited<ReturnType<typeof getAccessHub>>;
  accessEvents: Awaited<ReturnType<typeof getAccessEvents>>;
  cursorId?: AccessEvent["id"];
};

export const loader: LoaderFunction = async ({
  request,
  params: { accessHubId },
}) => {
  const userId = await requireUserIdForRole(request, "customer");
  invariant(accessHubId, "accessHubId not found");
  const accessHub = await getAccessHub({
    id: accessHubId,
    userId,
  });

  const url = new URL(request.url);
  const cursorIdString = url.searchParams.get("cursorId");
  const cursorId = Number(cursorIdString);
  const cursor = Number.isNaN(cursorId)
    ? null
    : await prisma.accessEvent.findFirst({
        where: {
          id: cursorId,
          accessPoint: {
            accessHub: { id: accessHubId },
          },
        },
      });

  const TAKE = 10;
  const accessEvents = await getAccessEvents({
    accessHubId,
    cursor,
    take: TAKE,
  });

  const newCursorId =
    accessEvents.length === TAKE
      ? accessEvents[accessEvents.length - 1].id
      : undefined;

  return json<LoaderData>({
    accessHub,
    accessEvents,
    cursorId: newCursorId,
  });
};

// https://news.ycombinator.com/item?id=30376689
export default function RouteComponent() {
  const { accessHub, ...data } = useLoaderData<LoaderData>();
  const [accessEvents, setAccessEvents] = useState<LoaderData["accessEvents"]>(
    data.accessEvents
  );
  const [cursorId, setCursorId] = useState<LoaderData["cursorId"]>(
    data.cursorId
  );
  // const transition = useTransition();
  const fetcher = useFetcher<LoaderData>();
  const location = useLocation();

  useEffect(() => {
    const data = fetcher.data;
    if (data) {
      setAccessEvents((prev) => [...prev, ...data.accessEvents]);
      setCursorId(data.cursorId);
    }
  }, [fetcher.data]);

  return (
    <>
      <PageHeader title={accessHub.name} />
      <main>
        <Section>
          <Section.Header>Activity</Section.Header>
          <Section.Body>
            <StackedList className="mx-auto max-w-sm">
              {accessEvents.map((i) => (
                <li key={i.id} className="p-4 sm:px-6">
                  <div className="flex items-center justify-between">
                    <p className="truncate text-sm font-medium text-indigo-600">
                      {i.accessPoint.name}
                    </p>
                    <Badge
                      className="uppercase"
                      color={
                        i.access.toUpperCase() === "DENY" ? "red" : "green"
                      }
                    >
                      {i.access}
                    </Badge>
                  </div>
                  <div className="mt-2 flex items-center justify-between text-sm text-gray-500">
                    <p>{new Date(i.at).toLocaleString()}</p>
                    <p className="truncate">
                      {i.accessUser ? i.accessUser.name : i.code}
                    </p>
                  </div>
                </li>
              ))}
            </StackedList>
          </Section.Body>
          {cursorId ? (
            <Section.Footer className="mx-auto flex max-w-sm">
              <Button
                className="ml-auto"
                disabled={fetcher.state !== "idle"}
                onClick={() => {
                  fetcher.load(`${location.pathname}?cursorId=${cursorId}`);
                }}
              >
                More
              </Button>
            </Section.Footer>
          ) : undefined}
        </Section>
      </main>
    </>
  );
}
