-- Create companies table
CREATE TABLE IF NOT EXISTS companies (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  logo_url TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create jobs table
CREATE TABLE IF NOT EXISTS jobs (
  id BIGSERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  location TEXT NOT NULL,
  company_id BIGINT NOT NULL REFERENCES companies(id) ON DELETE CASCADE,
  recruiter_id TEXT NOT NULL,
  requirements TEXT NOT NULL,
  isOpen BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create applications table
CREATE TABLE IF NOT EXISTS applications (
  id BIGSERIAL PRIMARY KEY,
  job_id BIGINT NOT NULL REFERENCES jobs(id) ON DELETE CASCADE,
  candidate_id TEXT NOT NULL,
  name TEXT NOT NULL,
  experience INTEGER NOT NULL,
  skills TEXT NOT NULL,
  education TEXT NOT NULL,
  resume TEXT NOT NULL,
  status TEXT DEFAULT 'applied',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Create saved_jobs table
CREATE TABLE IF NOT EXISTS saved_jobs (
  id BIGSERIAL PRIMARY KEY,
  job_id BIGINT NOT NULL REFERENCES jobs(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
  UNIQUE(job_id, user_id)
);

-- Enable Row Level Security (RLS) on all tables
ALTER TABLE companies ENABLE ROW LEVEL SECURITY;
ALTER TABLE jobs ENABLE ROW LEVEL SECURITY;
ALTER TABLE applications ENABLE ROW LEVEL SECURITY;
ALTER TABLE saved_jobs ENABLE ROW LEVEL SECURITY;

-- Create policies for companies table (public read, authenticated write)
CREATE POLICY "Companies are viewable by everyone" ON companies
  FOR SELECT USING (true);

CREATE POLICY "Authenticated users can insert companies" ON companies
  FOR INSERT WITH CHECK (true);

-- Create policies for jobs table (public read, authenticated write)
CREATE POLICY "Jobs are viewable by everyone" ON jobs
  FOR SELECT USING (true);

CREATE POLICY "Authenticated users can insert jobs" ON jobs
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Recruiters can update their own jobs" ON jobs
  FOR UPDATE USING (recruiter_id = auth.uid()::text);

CREATE POLICY "Recruiters can delete their own jobs" ON jobs
  FOR DELETE USING (recruiter_id = auth.uid()::text);

-- Create policies for applications table
CREATE POLICY "Users can view their own applications" ON applications
  FOR SELECT USING (candidate_id = auth.uid()::text OR 
    EXISTS (SELECT 1 FROM jobs WHERE jobs.id = applications.job_id AND jobs.recruiter_id = auth.uid()::text));

CREATE POLICY "Users can insert their own applications" ON applications
  FOR INSERT WITH CHECK (candidate_id = auth.uid()::text);

CREATE POLICY "Recruiters can update application status" ON applications
  FOR UPDATE USING (EXISTS (SELECT 1 FROM jobs WHERE jobs.id = applications.job_id AND jobs.recruiter_id = auth.uid()::text));

-- Create policies for saved_jobs table
CREATE POLICY "Users can view their own saved jobs" ON saved_jobs
  FOR SELECT USING (user_id = auth.uid()::text);

CREATE POLICY "Users can insert their own saved jobs" ON saved_jobs
  FOR INSERT WITH CHECK (user_id = auth.uid()::text);

CREATE POLICY "Users can delete their own saved jobs" ON saved_jobs
  FOR DELETE USING (user_id = auth.uid()::text);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_jobs_company_id ON jobs(company_id);
CREATE INDEX IF NOT EXISTS idx_jobs_recruiter_id ON jobs(recruiter_id);
CREATE INDEX IF NOT EXISTS idx_jobs_location ON jobs(location);
CREATE INDEX IF NOT EXISTS idx_applications_job_id ON applications(job_id);
CREATE INDEX IF NOT EXISTS idx_applications_candidate_id ON applications(candidate_id);
CREATE INDEX IF NOT EXISTS idx_saved_jobs_user_id ON saved_jobs(user_id);
CREATE INDEX IF NOT EXISTS idx_saved_jobs_job_id ON saved_jobs(job_id);

