# Clerk Setup - Simple Guide

## What is Clerk?
Clerk is a service that handles **user login and signup** for your website. 
- Users can create accounts
- Users can log in with email/password or Google
- It keeps track of who is logged in

Think of it like: **Clerk = Login System**

## Why do we need it?
Your job portal app needs users to:
- Sign up as job seekers OR recruiters
- Log in to apply for jobs or post jobs
- Save their profile information

---

## Simple Setup Steps (5 minutes)

### Step 1: Create Clerk Account
1. Go to **https://clerk.com**
2. Click **Sign Up** (or Sign In if you have an account)
3. You can sign up with Google or Email

### Step 2: Create Your Application
1. After logging in, you'll see a button: **"Create Application"**
2. Click it
3. Give your app a name (e.g., "Job Portal" or "My Job Site")
4. Choose authentication methods:
   - ✅ **Email** (required - users sign up with email)
   - ✅ **Google** (optional - users can sign in with Google)
   - You can add more later if needed
5. Click **Create Application**

### Step 3: Get Your Publishable Key
1. After creating the app, you'll be in the Clerk Dashboard
2. Look at the **left sidebar** → Click **"API Keys"**
3. You'll see a section called **"Publishable key"**
4. There's a long text that starts with `pk_test_...` or `pk_live_...`
5. **Copy this entire key** (click the copy button next to it)

**That's it!** Just share this key with me and I'll add it to your `.env` file.

---

## What the Key Looks Like
Your publishable key will look something like this:
```
pk_test_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
or
```
pk_live_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

---

## Optional: JWT Template (Advanced - Skip for Now)
The app might work without this, but if you want full functionality:

1. In Clerk Dashboard → **JWT Templates** (left sidebar)
2. Click **"New template"**
3. Name: `supabase`
4. Paste this JSON:
```json
{
  "aud": "authenticated",
  "exp": "{{date.now_plus_seconds(3600)}}",
  "iat": "{{date.now}}",
  "iss": "https://rxlalutbxcgnqenigjac.supabase.co",
  "sub": "{{user.id}}",
  "email": "{{user.primary_email_address}}",
  "role": "authenticated"
}
```
5. Click **Save**

**You can skip this for now** - we can add it later if needed.

---

## Summary
1. ✅ Go to clerk.com and sign up
2. ✅ Create an application
3. ✅ Copy your Publishable Key
4. ✅ Share it with me!

That's all you need to do! 🎉

