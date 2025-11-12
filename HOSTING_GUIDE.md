# How to Host Your Job Portal Project

## Step-by-Step Hosting Guide

### Option 1: Deploy to Vercel (Recommended - Easiest)

#### Step 1: Create Vercel Account
1. Go to [https://vercel.com](https://vercel.com)
2. Click **"Sign Up"**
3. Choose **"Continue with GitHub"** (recommended - connects to your GitHub account)

#### Step 2: Import Your Project
1. After signing in, you'll see the Vercel Dashboard
2. Click **"Add New Project"** button
3. You'll see a list of your GitHub repositories
4. Find and select **"Hirrd"** (or `arifxrayeen/Hirrd`)
5. Click **"Import"**

#### Step 3: Configure Project Settings
1. **Framework Preset:** Vite (should be auto-detected)
2. **Root Directory:** `./` (leave as default)
3. **Build Command:** `npm run build` (auto-filled)
4. **Output Directory:** `dist` (auto-filled)
5. **Install Command:** `npm install` (auto-filled)

#### Step 4: Add Environment Variables (IMPORTANT!)
Before clicking Deploy, add these 3 environment variables:

1. Click **"Environment Variables"** section
2. Add each variable one by one:

**Variable 1:**
- **Name:** `VITE_SUPABASE_URL`
- **Value:** `https://rxlalutbxcgnqenigjac.supabase.co`
- Click **"Add"**

**Variable 2:**
- **Name:** `VITE_SUPABASE_ANON_KEY`
- **Value:** `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4bGFsdXRieGNnbnFlbmlnamFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3Njc0NDksImV4cCI6MjA3ODM0MzQ0OX0.QBkGhnK_NZX9jKQbB-mid5R90O9QH8W3jl35byOlodc`
- Click **"Add"**

**Variable 3:**
- **Name:** `VITE_CLERK_PUBLISHABLE_KEY`
- **Value:** `pk_test_dXByaWdodC1zZXJ2YWwtNTcuY2xlcmsuYWNjb3VudHMuZGV2JA`
- Click **"Add"**

#### Step 5: Deploy
1. After adding all 3 environment variables
2. Click **"Deploy"** button at the bottom
3. Wait 2-3 minutes for the build to complete
4. Your site will be live! 🎉

#### Step 6: Get Your Live Link
1. After deployment completes, you'll see a success message
2. Your live URL will be shown (e.g., `https://hirrd.vercel.app`)
3. Click the link to visit your live site!

---

### Option 2: Deploy to Netlify

#### Step 1: Create Netlify Account
1. Go to [https://netlify.com](https://netlify.com)
2. Click **"Sign up"**
3. Choose **"Sign up with GitHub"**

#### Step 2: Import Project
1. Click **"Add new site"** → **"Import an existing project"**
2. Click **"Deploy with GitHub"**
3. Authorize Netlify to access your GitHub
4. Select repository: **"Hirrd"**

#### Step 3: Build Settings
- **Branch to deploy:** `main`
- **Build command:** `npm run build`
- **Publish directory:** `dist`

#### Step 4: Add Environment Variables
1. Click **"Show advanced"**
2. Click **"New variable"** and add:

**Variable 1:**
- Key: `VITE_SUPABASE_URL`
- Value: `https://rxlalutbxcgnqenigjac.supabase.co`

**Variable 2:**
- Key: `VITE_SUPABASE_ANON_KEY`
- Value: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4bGFsdXRieGNnbnFlbmlnamFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3Njc0NDksImV4cCI6MjA3ODM0MzQ0OX0.QBkGhnK_NZX9jKQbB-mid5R90O9QH8W3jl35byOlodc`

**Variable 3:**
- Key: `VITE_CLERK_PUBLISHABLE_KEY`
- Value: `pk_test_dXByaWdodC1zZXJ2YWwtNTcuY2xlcmsuYWNjb3VudHMuZGV2JA`

#### Step 5: Deploy
1. Click **"Deploy site"**
2. Wait for deployment to complete
3. Your site will be live at: `https://hirrd.netlify.app` (or similar)

---

## Important Notes

### ⚠️ Environment Variables are Required!
Without these 3 environment variables, your site will NOT work properly:
- Login won't work
- Database connections will fail
- Features will break

### 🔄 Automatic Deployments
- **Vercel/Netlify automatically deploy** when you push to GitHub
- Every time you push code, your site updates automatically
- No need to manually deploy again!

### 📝 After First Deployment
1. Test your live site
2. Make sure login works
3. Check if all features are working
4. If something doesn't work, check:
   - Are environment variables set correctly?
   - Did the build complete successfully?
   - Check the deployment logs for errors

---

## Quick Checklist

- [ ] Sign up for Vercel/Netlify
- [ ] Import GitHub repository
- [ ] Add 3 environment variables
- [ ] Click Deploy
- [ ] Wait for build to complete
- [ ] Test your live site
- [ ] Share your link! 🎉

---

## Your Environment Variables (Copy-Paste Ready)

```
VITE_SUPABASE_URL=https://rxlalutbxcgnqenigjac.supabase.co

VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4bGFsdXRieGNnbnFlbmlnamFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3Njc0NDksImV4cCI6MjA3ODM0MzQ0OX0.QBkGhnK_NZX9jKQbB-mid5R90O9QH8W3jl35byOlodc

VITE_CLERK_PUBLISHABLE_KEY=pk_test_dXByaWdodC1zZXJ2YWwtNTcuY2xlcmsuYWNjb3VudHMuZGV2JA
```

---

## Need Help?

If you encounter any issues:
1. Check the deployment logs in Vercel/Netlify dashboard
2. Make sure all 3 environment variables are added
3. Verify your GitHub repository is connected
4. Try redeploying if something goes wrong

Good luck with your deployment! 🚀

