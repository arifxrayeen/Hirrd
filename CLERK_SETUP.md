# Clerk Setup Guide

## Step 1: Create Clerk Account & Application

1. Go to https://clerk.com and sign in (or create an account)
2. Click **Create Application** (or select your existing application)
3. Choose authentication methods (Email, Google, etc.)
4. Complete the setup wizard

## Step 2: Get Your Publishable Key

1. In your Clerk Dashboard, go to **API Keys** (in the left sidebar)
2. You'll see **Publishable key** - Copy this key
3. This is your `VITE_CLERK_PUBLISHABLE_KEY`

## Step 3: Configure JWT Template for Supabase (Important!)

The app uses Clerk JWT tokens with Supabase. You need to create a JWT template:

1. In Clerk Dashboard, go to **JWT Templates** (left sidebar)
2. Click **New template**
3. Name it: `supabase`
4. Copy the JWT template configuration below and paste it:

```json
{
  "aud": "authenticated",
  "exp": "{{date.now_plus_seconds(3600)}}",
  "iat": "{{date.now}}",
  "iss": "https://YOUR-PROJECT-REF.supabase.co",
  "sub": "{{user.id}}",
  "email": "{{user.primary_email_address}}",
  "role": "authenticated"
}
```

**Important**: Replace `YOUR-PROJECT-REF` with your Supabase project reference:
- Your project URL is: `https://rxlalutbxcgnqenigjac.supabase.co`
- So your project reference is: `rxlalutbxcgnqenigjac`
- The `iss` should be: `https://rxlalutbxcgnqenigjac.supabase.co`

5. Click **Save**

## Step 4: Get Supabase JWT Secret (for Clerk JWT verification)

1. In your Supabase dashboard, go to **Settings** → **API**
2. Find **JWT Secret** (under Project API keys section)
3. Copy this secret - you'll need it for Clerk

## Step 5: Configure Clerk to Verify with Supabase

1. In Clerk Dashboard, go to **JWT Templates** → your `supabase` template
2. You may need to add the Supabase JWT secret in Clerk settings
3. The JWT template should use the Supabase JWT secret for signing

**Note**: For now, if JWT template setup is complex, the app might work without it, but some features may not work properly. The basic setup should work for testing.

## Step 6: Share Your Clerk Publishable Key

After completing steps 1-2, share your Clerk Publishable Key and I'll update your `.env` file!

