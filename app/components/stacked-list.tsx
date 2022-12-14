import { Link } from "@remix-run/react";
import { classNames } from "~/utils";

// Use with <li key={key}>
function StackedList({ className, children }: JSX.IntrinsicElements["ul"]) {
  return (
    <ul className={classNames(className, "divide-y divide-gray-200")}>
      {children}
    </ul>
  );
}

StackedList.Chrome = function StackedListChrome({
  className,
  children,
  ...rest
}: JSX.IntrinsicElements["div"]) {
  return (
    <div
      className={classNames(
        className,
        "overflow-hidden rounded-lg border border-gray-300"
      )}
      {...rest}
    >
      {children}
    </div>
  );
};

StackedList.Link = function StackedListLink({
  className,
  children,
  ...rest
}: Parameters<typeof Link>[0]) {
  return (
    <Link
      className={classNames(
        className,
        "block px-4 py-4 hover:bg-gray-50 sm:px-6"
      )}
      {...rest}
    >
      {children}
    </Link>
  );
};

export { StackedList };
