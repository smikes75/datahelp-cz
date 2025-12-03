/*
  # Contact Form Notifications
  
  1. Changes
    - Create contact_forms table with required fields
    - Enable RLS
    - Add policies for insert and select
    - Create notification function and trigger for new submissions
  
  2. Security
    - Enable RLS on contact_forms table
    - Allow anonymous users to submit forms
    - Restrict read access to service role
    - Add full access policy for service role
*/

-- Create contact forms table
CREATE TABLE IF NOT EXISTS contact_forms (
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

-- Create notification function
CREATE OR REPLACE FUNCTION notify_contact_form()
RETURNS TRIGGER AS $$
DECLARE
  payload json;
BEGIN
  -- Create notification payload
  payload := json_build_object(
    'id', NEW.id,
    'name', NEW.name,
    'contact', NEW.contact,
    'message', NEW.message,
    'created_at', NEW.created_at,
    'user_agent', NEW.user_agent
  );
  
  -- Send notification through PostgreSQL's notification system
  PERFORM pg_notify(
    'contact_form_notifications',
    payload::text
  );
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Create trigger
DROP TRIGGER IF EXISTS contact_form_notification ON contact_forms;
CREATE TRIGGER contact_form_notification
  AFTER INSERT ON contact_forms
  FOR EACH ROW
  EXECUTE FUNCTION notify_contact_form();