/*
  # Fix contact forms table

  1. Changes
    - Remove problematic trigger and function
    - Simplify table structure
    - Update RLS policies

  2. Security
    - Enable RLS
    - Add policies for anonymous inserts
    - Add policies for service role access
*/

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_forms;
DROP POLICY IF EXISTS "Enable read access for service role only" ON contact_forms;
DROP POLICY IF EXISTS "Enable full access for service role" ON contact_forms;
DROP TRIGGER IF EXISTS contact_form_notification ON contact_forms;
DROP FUNCTION IF EXISTS notify_contact_form();

-- Drop existing table if it exists
DROP TABLE IF EXISTS contact_forms;

-- Create contact forms table
CREATE TABLE contact_forms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  contact text NOT NULL,
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

CREATE POLICY "Enable read access for service role only"
  ON contact_forms
  FOR SELECT
  TO service_role
  USING (true);

CREATE POLICY "Enable full access for service role"
  ON contact_forms
  FOR ALL
  TO service_role
  USING (true)
  WITH CHECK (true);