/*
  # Add Source Fields to Blog Posts

  ## Changes
  
  1. Add new columns to `blog_posts` table:
    - `source_name` (text, nullable) - Name of the source (e.g., "TechRadar")
    - `source_url` (text, nullable) - URL of the original article
  
  ## Notes
  
  - These fields are optional and used when articles reference external sources
  - No changes to existing data or RLS policies
  - Minimal impact - only adding optional metadata fields
*/

-- Add source fields to blog_posts table
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'blog_posts' AND column_name = 'source_name'
  ) THEN
    ALTER TABLE blog_posts ADD COLUMN source_name text;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'blog_posts' AND column_name = 'source_url'
  ) THEN
    ALTER TABLE blog_posts ADD COLUMN source_url text;
  END IF;
END $$;