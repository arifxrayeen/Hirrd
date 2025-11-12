/* eslint-disable react/prop-types */
import { Navigate, useLocation } from "react-router-dom";
import { useUser } from "@clerk/clerk-react";
import { BarLoader } from "react-spinners";

const ProtectedRoute = ({ children }) => {
  const { isSignedIn, isLoaded, user } = useUser();
  const { pathname } = useLocation();

  // Wait for Clerk to fully load
  if (!isLoaded) {
    return <BarLoader className="mb-4" width={"100%"} color="#36d7b7" />;
  }

  // If not signed in, redirect to sign in
  if (isLoaded && !isSignedIn) {
    return <Navigate to="/?sign-in=true" replace />;
  }

  // If signed in but no role, redirect to onboarding (except if already on onboarding)
  // Preserve the intended destination in the redirect URL
  if (
    isLoaded &&
    isSignedIn &&
    user &&
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
    return <Navigate to={`/onboarding${redirectParam}`} replace />;
  }

  return children;
};

export default ProtectedRoute;
