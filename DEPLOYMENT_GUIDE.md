# Deployment Guide - Job Portal Project

This guide covers multiple hosting options for your Job Portal project.

## 📋 Prerequisites

Before deploying, make sure you have:
- ✅ Supabase project set up
- ✅ Clerk account configured
- ✅ All environment variables ready
- ✅ GitHub repository created

---

## 🚀 Option 1: Vercel (Recommended - Easiest)

Vercel is the easiest and fastest way to deploy React/Vite projects.

### Steps:

1. **Go to [Vercel.com](https://vercel.com)** and sign up/login with GitHub

2. **Import Your Repository**
   - Click "Add New Project"
   - Select your repository: `arifxrayeen/Hirrd`
   - Click "Import"

3. **Configure Project Settings**
   - **Framework Preset**: Vite
   - **Root Directory**: `./` (leave as is)
   - **Build Command**: `npm run build` (auto-detected)
   - **Output Directory**: `dist` (auto-detected)
   - **Install Command**: `npm install`

4. **Add Environment Variables**
   Click "Environment Variables" and add:
   ```
   VITE_SUPABASE_URL=your_supabase_url
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
   VITE_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
   ```

5. **Deploy**
   - Click "Deploy"
   - Wait 2-3 minutes
   - Your site will be live at: `https://your-project-name.vercel.app`

### Vercel Configuration File

The project already has `vercel.json` configured for React Router:
```json
{
  "rewrites": [{ "source": "/(.*)", "destination": "/" }]
}
```

---

## 🌐 Option 2: Netlify

### Steps:

1. **Go to [Netlify.com](https://netlify.com)** and sign up/login with GitHub

2. **Add New Site**
   - Click "Add new site" → "Import an existing project"
   - Select your GitHub repository: `arifxrayeen/Hirrd`

3. **Build Settings**
   - **Build command**: `npm run build`
   - **Publish directory**: `dist`
   - **Base directory**: `./` (leave empty)

4. **Environment Variables**
   Go to Site settings → Environment variables → Add:
   ```
   VITE_SUPABASE_URL=your_supabase_url
   VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
   VITE_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
   ```

5. **Deploy**
   - Click "Deploy site"
   - Your site will be live at: `https://random-name.netlify.app`

### Create `netlify.toml` (Optional)

Create this file in your project root:
```toml
[build]
  command = "npm run build"
  publish = "dist"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

---

## 📄 Option 3: GitHub Pages

GitHub Pages requires some additional setup for React Router.

### Steps:

1. **Install gh-pages package**
   ```bash
   npm install --save-dev gh-pages
   ```

2. **Update `package.json`**
   Add these scripts:
   ```json
   "scripts": {
     "predeploy": "npm run build",
     "deploy": "gh-pages -d dist",
     "build": "vite build"
   }
   ```
   Add this:
   ```json
   "homepage": "https://arifxrayeen.github.io/Hirrd"
   ```

3. **Update `vite.config.js`**
   ```js
   import { defineConfig } from 'vite'
   import react from '@vitejs/plugin-react'
   import path from 'path'

   export default defineConfig({
     plugins: [react()],
     base: '/Hirrd/',
     resolve: {
       alias: {
         "@": path.resolve(__dirname, "./src"),
       },
     },
   })
   ```

4. **Deploy**
   ```bash
   npm run deploy
   ```

5. **Enable GitHub Pages**
   - Go to your repo → Settings → Pages
   - Source: `gh-pages` branch
   - Your site: `https://arifxrayeen.github.io/Hirrd`

---

## 🔧 Option 4: Render

### Steps:

1. **Go to [Render.com](https://render.com)** and sign up/login with GitHub

2. **New Static Site**
   - Click "New" → "Static Site"
   - Connect your GitHub repository

3. **Build Settings**
   - **Name**: Your project name
   - **Branch**: `main`
   - **Build Command**: `npm install && npm run build`
   - **Publish Directory**: `dist`

4. **Environment Variables**
   Add all three environment variables

5. **Deploy**
   - Click "Create Static Site"
   - Your site: `https://your-app.onrender.com`

---

## 🔐 Environment Variables Setup

For all platforms, you need to add these environment variables:

```
VITE_SUPABASE_URL=https://rxlalutbxcgnqenigjac.supabase.co
VITE_SUPABASE_ANON_KEY=your_anon_key_here
VITE_CLERK_PUBLISHABLE_KEY=your_clerk_key_here
```

**Important**: Never commit `.env` file to GitHub!

---

## 📝 Post-Deployment Checklist

After deploying:

- [ ] Test the live URL
- [ ] Verify authentication works (Clerk)
- [ ] Test database connections (Supabase)
- [ ] Check all routes work correctly
- [ ] Test on mobile devices
- [ ] Update README with live URL

---

## 🐛 Troubleshooting

### Issue: 404 errors on refresh
**Solution**: Make sure your hosting platform has SPA routing configured (all routes redirect to index.html)

### Issue: Environment variables not working
**Solution**: 
- Make sure variable names start with `VITE_`
- Redeploy after adding environment variables
- Check variable names match exactly

### Issue: Build fails
**Solution**:
- Check Node.js version (should be 18+)
- Run `npm install` locally first
- Check for any TypeScript/ESLint errors

---

## 🎯 Recommended: Vercel

**Why Vercel?**
- ✅ Easiest setup
- ✅ Automatic deployments on git push
- ✅ Free SSL certificate
- ✅ Fast CDN
- ✅ Already configured with `vercel.json`
- ✅ Best for React/Vite projects

---

## 📞 Need Help?

If you encounter issues:
1. Check the platform's documentation
2. Review build logs in the dashboard
3. Test locally with `npm run build && npm run preview`

---

**Good luck with your capstone project! 🎓**

