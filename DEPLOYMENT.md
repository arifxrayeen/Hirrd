# Deployment Guide

## GitHub Repository
**Repository Link:** https://github.com/arifxrayeen/Hirrd

## Deploy to Vercel (Recommended)

### Step 1: Connect GitHub to Vercel
1. Go to [https://vercel.com](https://vercel.com)
2. Sign in with your GitHub account
3. Click **"Add New Project"**
4. Import your repository: `arifxrayeen/Hirrd`

### Step 2: Configure Environment Variables
In Vercel project settings, add these environment variables:
```
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
VITE_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
```

### Step 3: Deploy
1. Vercel will automatically detect it's a Vite project
2. Click **"Deploy"**
3. Your site will be live at: `https://hirrd.vercel.app` (or custom domain)

## Deploy to Netlify (Alternative)

### Step 1: Connect to Netlify
1. Go to [https://netlify.com](https://netlify.com)
2. Sign in with GitHub
3. Click **"Add new site"** → **"Import an existing project"**
4. Select your repository: `arifxrayeen/Hirrd`

### Step 2: Build Settings
- **Build command:** `npm run build`
- **Publish directory:** `dist`

### Step 3: Environment Variables
Add the same environment variables as Vercel in Netlify settings.

## Links for Resume/Portfolio

### GitHub Repository
```
https://github.com/arifxrayeen/Hirrd
```

### Live Demo (After Deployment)
```
https://hirrd.vercel.app
```
(Or your custom domain)

## Project Description for Resume

**Full Stack Job Portal (Hirrd)**
- Built with React.js, Tailwind CSS, Supabase, and Clerk Authentication
- Features: Job posting, application management, saved jobs, role-based access
- Tech Stack: React, Vite, Tailwind CSS, Supabase (PostgreSQL), Clerk, Shadcn UI
- Repository: https://github.com/arifxrayeen/Hirrd

