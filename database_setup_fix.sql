-- Fix RLS policies for Clerk integration
-- Since Clerk uses JWT tokens and doesn't use Supabase Auth,
-- we need to either disable RLS or configure Clerk JWT properly
-- For now, we'll disable RLS and handle security in application layer

-- Disable RLS on all tables (security handled in app code with Clerk user IDs)
ALTER TABLE companies DISABLE ROW LEVEL SECURITY;
ALTER TABLE jobs DISABLE ROW LEVEL SECURITY;
ALTER TABLE applications DISABLE ROW LEVEL SECURITY;
ALTER TABLE saved_jobs DISABLE ROW LEVEL SECURITY;

-- Drop all existing policies
DROP POLICY IF EXISTS "Companies are viewable by everyone" ON companies;
DROP POLICY IF EXISTS "Authenticated users can insert companies" ON companies;
DROP POLICY IF EXISTS "Jobs are viewable by everyone" ON jobs;
DROP POLICY IF EXISTS "Authenticated users can insert jobs" ON jobs;
DROP POLICY IF EXISTS "Recruiters can update their own jobs" ON jobs;
DROP POLICY IF EXISTS "Recruiters can delete their own jobs" ON jobs;
DROP POLICY IF EXISTS "Users can view their own applications" ON applications;
DROP POLICY IF EXISTS "Users can insert their own applications" ON applications;
DROP POLICY IF EXISTS "Recruiters can update application status" ON applications;
DROP POLICY IF EXISTS "Users can view their own saved jobs" ON saved_jobs;
DROP POLICY IF EXISTS "Users can insert their own saved jobs" ON saved_jobs;
DROP POLICY IF EXISTS "Users can delete their own saved jobs" ON saved_jobs;
