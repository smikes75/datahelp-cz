/*
  # Fix Security Issues in Diagnostic Orders

  ## Changes
  1. Remove unused indexes that have not been accessed:
     - `idx_diagnostic_orders_created_at` (unused)
     - `idx_diagnostic_orders_status` (unused)
     - `idx_diagnostic_orders_email` (unused)
  
  2. Fix function search path security issue:
     - Add `SECURITY DEFINER` and explicit `search_path` to `update_diagnostic_orders_updated_at` function
     - This prevents search_path manipulation attacks
  
  ## Notes
  - Indexes can be re-added later if query patterns show they are needed
  - The function now has a stable, secure search_path configuration
*/

-- Drop unused indexes
DROP INDEX IF EXISTS idx_diagnostic_orders_created_at;
DROP INDEX IF EXISTS idx_diagnostic_orders_status;
DROP INDEX IF EXISTS idx_diagnostic_orders_email;

-- Recreate function with secure search_path
CREATE OR REPLACE FUNCTION update_diagnostic_orders_updated_at()
RETURNS TRIGGER
SECURITY DEFINER
SET search_path = pg_catalog, public
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$;
