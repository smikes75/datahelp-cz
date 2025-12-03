/*
  # Contact Forms Table Setup

  1. New Tables
    - `contact_forms` - Stores contact form submissions
      - `id` (uuid, primary key)
      - `name` (text, required)
      - `email` (text, required)  
      - `phone` (text, optional)
      - `message` (text, required)
      - `created_at` (timestamp with timezone)
      - `processed` (boolean)

  2. Security
    - Enable RLS
    - Add policies for:
      - Anonymous submissions
      - Authenticated read access
      - Service role full access
*/

-- Create contact forms table
CREATE TABLE IF NOT EXISTS contact_forms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  phone text,
  message text NOT NULL,
  created_at timestamptz DEFAULT now(),
  processed boolean DEFAULT false
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