# Vercel Environment Variables Setup

## ⚠️ IMPORTANT: Login Not Working Fix

Your login is not working because **environment variables are not set in Vercel**. Follow these steps:

### Step 1: Go to Vercel Dashboard
1. Go to [https://vercel.com](https://vercel.com)
2. Sign in and select your project: **Hirrd**

### Step 2: Add Environment Variables
1. Go to **Settings** → **Environment Variables**
2. Add these **3 environment variables**:

```
VITE_SUPABASE_URL
```
Value: `https://rxlalutbxcgnqenigjac.supabase.co`

```
VITE_SUPABASE_ANON_KEY
```
Value: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4bGFsdXRieGNnbnFlbmlnamFjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI3Njc0NDksImV4cCI6MjA3ODM0MzQ0OX0.QBkGhnK_NZX9jKQbB-mid5R90O9QH8W3jl35byOlodc`

```
VITE_CLERK_PUBLISHABLE_KEY
```
Value: `pk_test_dXByaWdodC1zZXJ2YWwtNTcuY2xlcmsuYWNjb3VudHMuZGV2JA`

### Step 3: Redeploy
1. After adding all environment variables
2. Go to **Deployments** tab
3. Click **"Redeploy"** on the latest deployment
4. Or push a new commit to trigger redeploy

### Step 4: Verify
- After redeploy, your login should work!
- Logo should be visible
- Footer should be visible

## Logo Not Visible Fix

The logo path is correct (`/logo.png`). If it's still not showing:
1. Make sure the file exists in `public/logo.png` ✅ (It does)
2. After redeploy with environment variables, it should work
3. Clear browser cache if needed

## Footer Not Visible Fix

The footer has been updated with better styling. After redeploy, it should be visible at the bottom of every page.

