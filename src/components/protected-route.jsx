/* eslint-disable react/prop-types */
import { Navigate, useLocation } from "react-router-dom";
import { useUser } from "@clerk/clerk-react";

const ProtectedRoute = ({ children }) => {
  const { isSignedIn, isLoaded, user } = useUser();
  const { pathname } = useLocation();

  if (isLoaded && !isSignedIn && isSignedIn !== undefined) {
    return <Navigate to="/?sign-in=true" />;
  }

  if (
    user !== undefined &&
    !user?.unsafeMetadata?.role &&
    pathname !== "/onboarding"
  ) {
    // Map pathname to redirect parameter
    let redirectParam = "";
    if (pathname === "/jobs") {
      redirectParam = "?redirect=jobs";
    } else if (pathname === "/post-job") {
      redirectParam = "?redirect=post-job";
    }
    return <Navigate to={`/onboarding${redirectParam}`} />;
  }

  return children;
};

export default ProtectedRoute;
