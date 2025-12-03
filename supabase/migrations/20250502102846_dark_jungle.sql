/*
  # Update contact forms table and policies

  1. Changes
    - Drop existing policies if they exist
    - Create new policies for contact form submissions
    - Add service role policy for complete access

  2. Security
    - Enable RLS
    - Anonymous users can only insert
    - Authenticated users can view all forms
    - Service role has full access
*/

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_forms;
DROP POLICY IF EXISTS "Only authenticated users can view contact forms" ON contact_forms;
DROP POLICY IF EXISTS "Enable insert for service role only" ON contact_forms;

-- Create new policies
CREATE POLICY "Anyone can submit contact form"
  ON contact_forms
  FOR INSERT
  TO anon
  WITH CHECK (true);

CREATE POLICY "Only authenticated users can view contact forms"
  ON contact_forms
  FOR SELECT
  TO authenticated
  USING (true);

-- Add service role policy for complete access
CREATE POLICY "Enable full access for service role"
  ON contact_forms
  FOR ALL
  TO service_role
  USING (true)
  WITH CHECK (true);