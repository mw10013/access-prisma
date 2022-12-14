import type { ActionFunction, LoaderFunction } from "@remix-run/node";
import { json, redirect } from "@remix-run/node";
import { useActionData, useLoaderData } from "@remix-run/react";
import { prisma } from "~/db.server";
import { requireUserIdForRole } from "~/session.server";
import { getAccessHub } from "~/models/accessHub.server";
import type { ZodError } from "zod";
import { z } from "zod";
import invariant from "tiny-invariant";
import { PageHeader } from "~/components/page-header";
import { Form } from "~/components/form";

export const handle = {
  breadcrumb: "Edit",
};

type LoaderData = {
  accessHub: Awaited<ReturnType<typeof getAccessHub>>;
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
  return json<LoaderData>({ accessHub });
};

const FieldValues = z.object({
  name: z.string().min(1).max(50),
  description: z.string().max(100),
});

type ActionData = {
  formErrors?: ZodError["formErrors"];
};

export const action: ActionFunction = async ({
  request,
  params: { accessHubId },
}) => {
  const userId = await requireUserIdForRole(request, "customer");
  invariant(accessHubId, "accessHubId not found");

  // WARNING: Object.fromEntries(formData): if formData.entries() has 2 entries with the same key, only 1 is taken.
  const fieldValues = Object.fromEntries(await request.formData());
  const parseResult = FieldValues.safeParse(fieldValues);
  if (!parseResult.success) {
    return json<ActionData>(
      { formErrors: parseResult.error.formErrors },
      { status: 400 }
    );
  }

  // TODO: Ensure user owns access hub before updating.  Put in transaction?
  // AccessHubWhereUniqueInput in update does not include userId.
  getAccessHub({ id: accessHubId, userId });
  const { name, description } = parseResult.data;
  await prisma.accessHub.update({
    where: { id: accessHubId },
    data: { name, description },
  });

  return redirect(`/access/hubs/${accessHubId}`);
};

export default function RouteComponent() {
  const { accessHub } = useLoaderData<LoaderData>();
  const actionData = useActionData<ActionData>();
  return (
    <>
      <PageHeader />
      <main>
        <Form method="post" className="mx-auto max-w-sm" replace>
          <Form.Header
            title="Access Hub Settings"
            errors={actionData?.formErrors?.formErrors}
          />
          <Form.Body>
            <Form.Field
              id="name"
              label="Name"
              errors={actionData?.formErrors?.fieldErrors?.name}
            >
              <input
                type="text"
                name="name"
                id="name"
                defaultValue={accessHub.name}
              />
            </Form.Field>
            <Form.Field
              id="description"
              label="Description"
              errors={actionData?.formErrors?.fieldErrors?.description}
            >
              <textarea
                name="description"
                id="description"
                rows={3}
                defaultValue={accessHub.description}
              />
            </Form.Field>
          </Form.Body>
          <Form.Footer>
            <Form.CancelButton />
            <Form.SubmitButton>Save</Form.SubmitButton>
          </Form.Footer>
        </Form>
      </main>
    </>
  );
}
