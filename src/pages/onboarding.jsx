import { useUser } from "@clerk/clerk-react";
import { Button } from "@/components/ui/button";
import { useNavigate, useSearchParams } from "react-router-dom";
import { BarLoader } from "react-spinners";

const Onboarding = () => {
  const { user, isLoaded } = useUser();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const redirectTo = searchParams.get("redirect");

  const navigateUser = (currRole, intendedRedirect) => {
    // If there's an intended redirect, use it (but validate role matches)
    if (intendedRedirect === "post-job" && currRole === "recruiter") {
      navigate("/post-job");
    } else if (intendedRedirect === "jobs" && currRole === "candidate") {
      navigate("/jobs");
    } else {
      // Default navigation based on role
      navigate(currRole === "recruiter" ? "/post-job" : "/jobs");
    }
  };

  const handleRoleSelection = async (role) => {
    await user
      .update({ unsafeMetadata: { role } })
      .then(() => {
        console.log(`Role updated to: ${role}`);
        navigateUser(role, redirectTo);
      })
      .catch((err) => {
        console.error("Error updating role:", err);
      });
  };

  // Remove automatic redirect - allow user to always see onboarding page
  // They can change their role if needed

  if (!isLoaded) {
    return <BarLoader className="mb-4" width={"100%"} color="#36d7b7" />;
  }

  return (
    <div className="flex flex-col items-center justify-center min-h-[60vh] py-20 px-4">
      <h2 className="gradient-title font-extrabold text-5xl sm:text-7xl lg:text-8xl tracking-tighter text-center">
        I am a...
      </h2>
      <div className="mt-16 grid grid-cols-1 sm:grid-cols-2 gap-4 w-full max-w-4xl md:px-40">
        <Button
          variant="blue"
          className="h-32 sm:h-36 text-xl sm:text-2xl"
          onClick={() => handleRoleSelection("candidate")}
        >
          Candidate
        </Button>
        <Button
          variant="destructive"
          className="h-32 sm:h-36 text-xl sm:text-2xl"
          onClick={() => handleRoleSelection("recruiter")}
        >
          Recruiter
        </Button>
      </div>
    </div>
  );
};

export default Onboarding;
