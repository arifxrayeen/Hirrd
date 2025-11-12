# GitHub Pages Deployment Setup

## ✅ Automatic Deployment

Your project is now set up to automatically deploy to GitHub Pages when you push to the `main` branch.

## 🔧 Setup Steps (One Time)

### Step 1: Enable GitHub Pages
1. Go to your repository: https://github.com/arifxrayeen/Hirrd
2. Click **Settings** (top menu)
3. Scroll down to **Pages** (left sidebar)
4. Under **Source**, select:
   - **Source**: `GitHub Actions`
5. Click **Save**

### Step 2: Add Repository Secrets
1. In your repository, go to **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**
3. Add these 3 secrets:

**Secret 1:**
- Name: `VITE_SUPABASE_URL`
- Value: `https://rxlalutbxcgnqenigjac.supabase.co`
- Click **Add secret**

**Secret 2:**
- Name: `VITE_SUPABASE_ANON_KEY`
- Value: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4bGFsdXRieGNnbnFlbmlnamFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3Njc0NDksImV4cCI6MjA3ODM0MzQ0OX0.QBkGhnK_NZX9jKQbB-mid5R90O9QH8W3jl35byOlodc`
- Click **Add secret**

**Secret 3:**
- Name: `VITE_CLERK_PUBLISHABLE_KEY`
- Value: `pk_test_dXByaWdodC1zZXJ2YWwtNTcuY2xlcmsuYWNjb3VudHMuZGV2JA`
- Click **Add secret**

### Step 3: Trigger Deployment
After adding secrets, you can either:
- **Option A:** Push a new commit (deployment will start automatically)
- **Option B:** Go to **Actions** tab → **Deploy to GitHub Pages** → **Run workflow**

## 🌐 Your Live Link

After deployment completes (takes 2-3 minutes), your site will be live at:

**https://arifxrayeen.github.io/Hirrd/**

## 📋 Check Deployment Status

1. Go to **Actions** tab in your repository
2. You'll see "Deploy to GitHub Pages" workflow running
3. Wait for green checkmark ✅
4. Click on the workflow → Click on "deploy" job → You'll see your live URL

## 🔄 Automatic Updates

Every time you push to `main` branch, GitHub Actions will:
1. Build your project
2. Deploy to GitHub Pages
3. Your site updates automatically!

## ⚠️ Important Notes

- First deployment may take 3-5 minutes
- Make sure all 3 secrets are added before first deployment
- The URL will be: `https://arifxrayeen.github.io/Hirrd/`
- If deployment fails, check the **Actions** tab for error messages

