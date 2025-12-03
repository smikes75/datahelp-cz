/*
  # Fix contact forms table

  1. Changes
    - Simplify table structure
    - Remove problematic trigger
    - Update column names
    - Add proper RLS policies

  2. Security
    - Enable RLS
    - Add policies for anonymous inserts
    - Add policies for service role access
*/

-- Drop existing policies
DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_forms;
DROP POLICY IF EXISTS "Enable read access for service role only" ON contact_forms;
DROP POLICY IF EXISTS "Enable full access for service role" ON contact_forms;

-- Drop existing table
DROP TABLE IF EXISTS contact_forms;

-- Create contact forms table
CREATE TABLE contact_forms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  phone text,
  message text NOT NULL,
  created_at timestamptz DEFAULT now(),
  processed boolean DEFAULT false,
  user_agent text
);

-- Enable Row Level Security
ALTER TABLE contact_forms ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Enable insert for anonymous users"
  ON contact_forms
  FOR INSERT
  TO anon
  WITH CHECK (true);

CREATE POLICY "Enable read access for authenticated users"
  ON contact_forms
  FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Enable full access for service role"
  ON contact_forms
  FOR ALL
  TO service_role
  USING (true)
  WITH CHECK (true);