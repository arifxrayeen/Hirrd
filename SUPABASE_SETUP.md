# Supabase Setup Guide

## Step 1: Get Your Supabase Credentials

1. Go to https://supabase.com and sign in to your account
2. Open your project (or create a new one if you don't have one)
3. Go to **Settings** → **API** (in the left sidebar)
4. You'll find:
   - **Project URL** - Copy this (this is your `VITE_SUPABASE_URL`)
   - **anon public** key - Copy this (this is your `VITE_SUPABASE_ANON_KEY`)

## Step 2: Set Up Database Tables

1. In your Supabase dashboard, go to **SQL Editor** (left sidebar)
2. Click **New Query**
3. Copy and paste the SQL from `database_setup.sql` file
4. Click **Run** to execute the SQL

## Step 3: Set Up Storage Buckets

1. Go to **Storage** in the left sidebar
2. Create two buckets:
   - **Bucket 1**: Name it `company-logo`
     - Make it **Public**
   - **Bucket 2**: Name it `resumes`
     - Make it **Public**

## Step 4: Update .env File

After completing steps 1-3, provide me with:
- Your Supabase URL
- Your Supabase anon key

And I'll update your `.env` file!

