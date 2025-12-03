/*
  # Update contact forms schema

  1. Changes
    - Drop existing table and policies
    - Recreate table with correct columns
    - Add RLS policies
    - Add notification trigger

  2. Security
    - Enable RLS
    - Allow anonymous inserts
    - Restrict read access to authenticated users
    - Full access for service role
*/

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Enable insert for anonymous users" ON contact_forms;
DROP POLICY IF EXISTS "Enable read access for authenticated users" ON contact_forms;
DROP POLICY IF EXISTS "Enable full access for service role" ON contact_forms;
DROP TRIGGER IF EXISTS contact_form_notification ON contact_forms;

-- Drop existing table if it exists
DROP TABLE IF EXISTS contact_forms;

-- Create contact forms table with all required columns
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

-- Create notification function and trigger
CREATE OR REPLACE FUNCTION notify_contact_form()
RETURNS TRIGGER AS $$
BEGIN
  PERFORM
    net.http_post(
      url := CONCAT(current_setting('custom.api_url'), '/functions/v1/contact-notification'),
      headers := jsonb_build_object(
        'Content-Type', 'application/json',
        'Authorization', CONCAT('Bearer ', current_setting('custom.anon_key'))
      ),
      body := jsonb_build_object('record', row_to_json(NEW))
    );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER contact_form_notification
  AFTER INSERT ON contact_forms
  FOR EACH ROW
  EXECUTE FUNCTION notify_contact_form();