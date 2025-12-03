/*
  # Contact Forms Schema Update

  1. New Tables
    - `contact_forms`
      - `id` (uuid, primary key)
      - `name` (text, required)
      - `email` (text, required)
      - `phone` (text, optional)
      - `message` (text, required)
      - `created_at` (timestamptz)
      - `processed` (boolean)
      - `user_agent` (text)

  2. Security
    - Enable RLS on `contact_forms` table
    - Add policies for:
      - Anonymous submissions
      - Authenticated user read access
      - Service role full access

  3. Changes
    - Drop existing policies to avoid conflicts
    - Create new table with updated schema
    - Add security policies
*/

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_forms;
DROP POLICY IF EXISTS "Enable read access for authenticated users" ON contact_forms;
DROP POLICY IF EXISTS "Enable full access for service role" ON contact_forms;

-- Drop existing table if it exists
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
CREATE POLICY "Anyone can submit contact form"
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