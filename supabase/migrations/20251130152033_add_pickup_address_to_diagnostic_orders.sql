/*
  # Add pickup address fields to diagnostic orders

  1. Changes
    - Add pickup_address column for street and house number
    - Add pickup_city column for city name
    - Add pickup_zip column for ZIP/postal code
    
  2. Notes
    - These fields are only required when delivery_method is 'shipping'
    - Fields can be NULL for other delivery methods
*/

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'pickup_address'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN pickup_address text;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'pickup_city'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN pickup_city text;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'diagnostic_orders' AND column_name = 'pickup_zip'
  ) THEN
    ALTER TABLE diagnostic_orders ADD COLUMN pickup_zip text;
  END IF;
END $$;