# Hirrd - Full Stack Job Portal 🚀

A modern, full-stack job portal application built with React, Tailwind CSS, Supabase, and Clerk Authentication.

## 🌐 Live Demo
[Deploy on Vercel/Netlify - See DEPLOYMENT.md for instructions]

## 📁 Repository
**GitHub:** https://github.com/arifxrayeen/Hirrd

## 🛠️ Tech Stack
- **Frontend:** React.js, Vite, Tailwind CSS
- **UI Components:** Shadcn UI, Radix UI
- **Backend:** Supabase (PostgreSQL)
- **Authentication:** Clerk
- **State Management:** React Hooks
- **Form Handling:** React Hook Form, Zod

## ✨ Features
- 🔐 User Authentication (Sign up/Login with Clerk)
- 👤 Role-based Access (Candidate/Recruiter)
- 📝 Job Posting (For Recruiters)
- 🔍 Job Search & Filtering
- 💼 Job Applications Management
- ⭐ Save Jobs Feature
- 📄 Resume Upload
- 🎨 Modern UI/UX with Dark Mode

## 🚀 Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Supabase account
- Clerk account

### Installation

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

4. Set up Supabase Database
- Run `database_setup.sql` in Supabase SQL Editor
- Run `database_setup_fix.sql` for RLS policies
- Create storage buckets: `company-logo` and `resumes` (both public)

5. Configure Clerk
- Create JWT template named `supabase` (see CLERK_SETUP.md)

6. Run the development server
```bash
npm run dev
```

## 📚 Documentation
- [Supabase Setup Guide](SUPABASE_SETUP.md)
- [Clerk Setup Guide](CLERK_SETUP_SIMPLE.md)
- [Storage Setup](STORAGE_SETUP.md)
- [Deployment Guide](DEPLOYMENT.md)

## 📖 Project Structure
```
src/
├── api/           # API functions for Supabase
├── components/    # React components
├── pages/         # Page components
├── hooks/         # Custom React hooks
├── utils/         # Utility functions
└── layouts/       # Layout components
```

## 🎓 Capstone Project
This project is developed as a college capstone project demonstrating full-stack web development skills.

## 👨‍💻 Author
**Arif Xrayeen**
- Email: arif.22scse1120013@galgotiasuniversity.edu.in
- GitHub: [@arifxrayeen](https://github.com/arifxrayeen)

## 📄 License
This project is open source and available for educational purposes.

## 🙏 Acknowledgments
- Original tutorial: [Piyush Eon](https://www.youtube.com/watch?v=2XF-HgauItk)
- Based on the job portal tutorial project
