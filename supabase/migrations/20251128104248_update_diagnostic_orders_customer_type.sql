/*
  # Update Diagnostic Orders Table - Add Customer Type Fields

  ## Changes Made
  
  1. New Columns
    - `customer_type` (text) - Type of customer: 'individual' or 'company'
    - `company_name` (text, nullable) - Company name for company orders
    - `contact_person` (text, nullable) - Contact person for company orders
  
  2. Modified Columns
    - Removed `is_company` column (replaced by customer_type)
  
  3. Important Notes
    - Existing data will have customer_type set to 'individual' by default
    - Company name and contact person are only required when customer_type is 'company'
*/

-- Add new customer_type column
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'customer_type'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN customer_type text DEFAULT 'individual' CHECK (customer_type IN ('individual', 'company'));
  END IF;
END $$;

-- Add company_name column
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'company_name'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN company_name text;
  END IF;
END $$;

-- Add contact_person column
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'contact_person'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN contact_person text;
  END IF;
END $$;

-- Migrate existing is_company data to customer_type
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'is_company'
  ) THEN
    UPDATE diagnostic_orders
    SET customer_type = CASE WHEN is_company = true THEN 'company' ELSE 'individual' END
    WHERE customer_type IS NULL;
    
    ALTER TABLE diagnostic_orders DROP COLUMN is_company;
  END IF;
END $$;
