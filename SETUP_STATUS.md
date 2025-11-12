# Setup Status Checklist

## ✅ Completed
- [x] Project cloned from GitHub
- [x] Dependencies installed (npm install)
- [x] Supabase URL added to .env
- [x] Supabase anon key added to .env
- [x] Clerk publishable key added to .env
- [x] Database tables created (companies, jobs, applications, saved_jobs)

## ⚠️ Remaining Steps (Important!)

### 1. Fix Database RLS Policies
- [ ] Run `database_setup_fix.sql` in Supabase SQL Editor
  - This disables RLS so Clerk authentication works properly
  - Go to: https://supabase.com/dashboard/project/rxlalutbxcgnqenigjac
  - SQL Editor → New Query → Paste SQL from `database_setup_fix.sql` → Run

### 2. Create Storage Buckets
- [ ] Create `company-logo` bucket (public)
- [ ] Create `resumes` bucket (public)
  - Go to: Storage → New bucket
  - Make sure both are set to "Public bucket"

## 🚀 After Completing Above Steps
Once you finish steps 1 and 2, the app should be fully functional!

## Testing the App
Run: `npm run dev`
Then open the URL shown in terminal (usually http://localhost:5173)

