# Full Stack Job Portal with React JS, Tailwind CSS, Supabase, Clerk, Shadcn UI Tutorial 🔥🔥

A modern job portal application built with React, Vite, Tailwind CSS, Supabase, and Clerk authentication.

## 🚀 Live Demo

[View Live Site](https://your-deployed-url.vercel.app) *(Update after deployment)*

## 📋 Features

- 🔐 User Authentication (Clerk)
- 💼 Job Posting & Management
- 📝 Job Applications
- 💾 Saved Jobs
- 🎨 Modern UI with Tailwind CSS
- 📱 Responsive Design

## 🛠️ Tech Stack

- **Frontend**: React, Vite, Tailwind CSS
- **Backend**: Supabase
- **Authentication**: Clerk
- **UI Components**: Shadcn UI

## 📦 Installation

1. Clone the repository
```bash
git clone https://github.com/arifxrayeen/Hirrd.git
cd Hirrd
```

2. Install dependencies
```bash
npm install
```

3. Create `.env` file with following variables:
```env
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
VITE_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
```

4. Run development server
```bash
npm run dev
```

## 🗄️ Database Setup

1. Run the SQL script in Supabase SQL Editor: `database_setup.sql`
2. Run the fix script: `database_setup_fix.sql`
3. Create storage buckets: `company-logo` and `resumes` (both public)

See `SUPABASE_SETUP.md` for detailed instructions.

## 🚀 Deployment

See `DEPLOYMENT_GUIDE.md` for detailed deployment instructions.

### Quick Deploy to Vercel:

1. Push code to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Import your repository
4. Add environment variables
5. Deploy!

## 📚 Documentation

- [Supabase Setup Guide](./SUPABASE_SETUP.md)
- [Clerk Setup Guide](./CLERK_SETUP_SIMPLE.md)
- [Storage Setup](./STORAGE_SETUP.md)
- [Deployment Guide](./DEPLOYMENT_GUIDE.md)

## 👨‍💻 Author

**Arif Xrayeen**
- Email: arif.22scse1120013@galgotiasuniversity.edu.in
- GitHub: [@arifxrayeen](https://github.com/arifxrayeen)

## 📄 License

This project is for educational purposes (Capstone Project).

---

**Made with ❤️ for Galgotias University**
