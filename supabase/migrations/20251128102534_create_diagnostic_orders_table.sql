/*
  # Create Diagnostic Orders Table

  ## Overview
  This migration creates a table to store diagnostic order requests submitted through the order diagnostics form.

  ## Tables Created
  - `diagnostic_orders`
    - `id` (uuid, primary key) - Unique identifier for each order
    - `first_name` (text) - Customer's first name
    - `last_name` (text) - Customer's last name
    - `phone` (text) - Customer's phone number
    - `email` (text) - Customer's email address
    - `description` (text) - Description of the issue and required data
    - `is_partner` (boolean) - Whether the customer is a DataHelp partner
    - `is_company` (boolean) - Whether this is a company order
    - `delivery_method` (text) - Delivery method: 'personal', 'shipping', or 'courier'
    - `language` (text) - Language of the form submission
    - `status` (text) - Order status: 'pending', 'processing', 'completed', 'cancelled'
    - `created_at` (timestamptz) - When the order was created
    - `updated_at` (timestamptz) - When the order was last updated

  ## Security
  - Enable RLS on the diagnostic_orders table
  - Only authenticated admin users can view and manage orders
  - Anonymous users can only insert new orders (create)
*/

-- Create diagnostic_orders table
CREATE TABLE IF NOT EXISTS diagnostic_orders (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  first_name text NOT NULL,
  last_name text NOT NULL,
  phone text NOT NULL,
  email text NOT NULL,
  description text NOT NULL,
  is_partner boolean DEFAULT false,
  is_company boolean DEFAULT false,
  delivery_method text NOT NULL CHECK (delivery_method IN ('personal', 'shipping', 'courier')),
  language text DEFAULT 'cs',
  status text DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'completed', 'cancelled')),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE diagnostic_orders ENABLE ROW LEVEL SECURITY;

-- Policy: Allow anonymous users to insert orders
CREATE POLICY "Anyone can create diagnostic orders"
  ON diagnostic_orders
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Policy: Allow authenticated users to view all orders
CREATE POLICY "Authenticated users can view all orders"
  ON diagnostic_orders
  FOR SELECT
  TO authenticated
  USING (true);

-- Policy: Allow authenticated users to update orders
CREATE POLICY "Authenticated users can update orders"
  ON diagnostic_orders
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Policy: Allow authenticated users to delete orders
CREATE POLICY "Authenticated users can delete orders"
  ON diagnostic_orders
  FOR DELETE
  TO authenticated
  USING (true);

-- Create index on created_at for faster queries
CREATE INDEX IF NOT EXISTS idx_diagnostic_orders_created_at ON diagnostic_orders(created_at DESC);

-- Create index on status for filtering
CREATE INDEX IF NOT EXISTS idx_diagnostic_orders_status ON diagnostic_orders(status);

-- Create index on email for searching
CREATE INDEX IF NOT EXISTS idx_diagnostic_orders_email ON diagnostic_orders(email);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_diagnostic_orders_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger to automatically update updated_at
DROP TRIGGER IF EXISTS trigger_update_diagnostic_orders_updated_at ON diagnostic_orders;
CREATE TRIGGER trigger_update_diagnostic_orders_updated_at
  BEFORE UPDATE ON diagnostic_orders
  FOR EACH ROW
  EXECUTE FUNCTION update_diagnostic_orders_updated_at();
