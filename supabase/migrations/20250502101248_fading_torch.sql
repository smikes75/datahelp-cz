/*
  # Contact Forms Schema

  1. New Tables
    - `contact_forms`
      - `id` (uuid, primary key)
      - `name` (text)
      - `email` (text)
      - `phone` (text, nullable)
      - `message` (text)
      - `created_at` (timestamptz)
      - `status` (text)
      - `ip_address` (text)
      - `user_agent` (text)
  
  2. Security
    - Enable RLS
    - Add policies for insert and select
*/

CREATE TABLE IF NOT EXISTS contact_forms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  email text NOT NULL,
  phone text,
  message text NOT NULL,
  created_at timestamptz DEFAULT now(),
  status text DEFAULT 'new',
  ip_address text,
  user_agent text
);

ALTER TABLE contact_forms ENABLE ROW LEVEL SECURITY;

-- Allow anonymous users to insert new contact forms
CREATE POLICY "Anyone can submit contact form"
  ON contact_forms
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Only authenticated users can view contact forms
CREATE POLICY "Only authenticated users can view contact forms"
  ON contact_forms
  FOR SELECT
  TO authenticated
  USING (true);