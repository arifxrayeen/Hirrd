# Quick Deployment Guide

## 🚀 Fastest Way: Vercel (5 minutes)

### Step-by-Step:

1. **Go to https://vercel.com**
   - Sign up/Login with GitHub
   - Click "Add New Project"

2. **Import Repository**
   - Select: `arifxrayeen/Hirrd`
   - Click "Import"

3. **Add Environment Variables**
   - Click "Environment Variables"
   - Add these 3 variables:
     ```
     VITE_SUPABASE_URL = https://rxlalutbxcgnqenigjac.supabase.co
     VITE_SUPABASE_ANON_KEY = (your key)
     VITE_CLERK_PUBLISHABLE_KEY = (your key)
     ```

4. **Deploy**
   - Click "Deploy"
   - Wait 2 minutes
   - Done! 🎉

Your site will be live at: `https://hirrd.vercel.app` (or similar)

---

## 📝 Commands Reference

### Local Development
```bash
npm install          # Install dependencies
npm run dev          # Start dev server
npm run build        # Build for production
npm run preview      # Preview production build
```

### Git Commands
```bash
git add .                                    # Stage all changes
git commit -m "Your message"                # Commit changes
git push origin main                        # Push to GitHub
```

### Deployment Commands (GitHub Pages)
```bash
npm run deploy                              # Deploy to GitHub Pages
```

---

## 🔑 Environment Variables

**Never commit `.env` file!**

Required variables:
- `VITE_SUPABASE_URL`
- `VITE_SUPABASE_ANON_KEY`
- `VITE_CLERK_PUBLISHABLE_KEY`

---

## ✅ Post-Deployment Checklist

- [ ] Site is accessible
- [ ] Login/Signup works
- [ ] Can post jobs (as recruiter)
- [ ] Can apply for jobs (as candidate)
- [ ] Database connections work
- [ ] Images upload correctly

---

**Need help? Check `DEPLOYMENT_GUIDE.md` for detailed instructions.**

