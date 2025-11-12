import Header from "@/components/header";
import { Outlet } from "react-router-dom";

const AppLayout = () => {
  return (
    <div>
      <div className="grid-background"></div>
      <main className="min-h-screen container">
        <Header />
        <Outlet />
      </main>
      <footer className="p-10 text-center bg-gray-800 mt-10 text-white">
        <p className="text-lg">Made with 💗 by Arif Rayeen</p>
      </footer>
    </div>
  );
};

export default AppLayout;
