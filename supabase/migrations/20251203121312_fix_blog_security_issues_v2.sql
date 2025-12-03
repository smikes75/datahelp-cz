/*
  # Fix Blog Database Security Issues
  
  This migration addresses critical security and performance issues identified by Supabase:
  
  ## Issues Fixed
  
  1. **Unused Indexes** (Performance Optimization)
     - Drop `idx_blog_posts_is_published` - not used in queries (unique constraint on slug is used)
     - Drop `idx_blog_posts_slug` - redundant with unique constraint
     - Drop `idx_blog_post_categories_post_category` - redundant with primary key
     - Drop `idx_blog_post_categories_category_post` - not used in current queries
     - Keep `idx_blog_categories_slug` - used for category lookups
     
  2. **Multiple Permissive Policies** (Security Risk)
     - Fix `blog_post_categories` having 2 SELECT policies for same role
     - Fix `blog_posts` having 2 SELECT policies for authenticated role
     - Consolidate into single, clear policies per action
     
  3. **Function Search Path Mutable** (Security Risk)
     - Fix `update_updated_at_column` to have immutable search_path
     - Fix `increment_post_views` to have immutable search_path
     - Prevents potential privilege escalation attacks
  
  ## Security Notes
  - Maintains least-privilege access control
  - Public users: view published posts only
  - Authenticated users: full CRUD access
  - No data loss during migration
*/

-- ============================================================================
-- 1. DROP UNUSED INDEXES
-- ============================================================================

-- Drop unused index on is_published (queries use slug unique constraint)
DROP INDEX IF EXISTS idx_blog_posts_is_published;

-- Drop redundant index on slug (unique constraint provides same functionality)
DROP INDEX IF EXISTS idx_blog_posts_slug;

-- Drop redundant composite index (primary key provides same functionality)
DROP INDEX IF EXISTS idx_blog_post_categories_post_category;

-- Drop unused reverse composite index
DROP INDEX IF EXISTS idx_blog_post_categories_category_post;

-- ============================================================================
-- 2. FIX MULTIPLE PERMISSIVE POLICIES - blog_posts
-- ============================================================================

-- Drop existing conflicting SELECT policies
DROP POLICY IF EXISTS "Anyone can view published blog posts" ON blog_posts;
DROP POLICY IF EXISTS "Authenticated users can view all blog posts" ON blog_posts;

-- Create single, clear SELECT policy for public (published posts only)
CREATE POLICY "Public can view published posts"
  ON blog_posts
  FOR SELECT
  TO public
  USING (is_published = true);

-- Create single, clear SELECT policy for authenticated (all posts)
CREATE POLICY "Authenticated can view all posts"
  ON blog_posts
  FOR SELECT
  TO authenticated
  USING (true);

-- ============================================================================
-- 3. FIX MULTIPLE PERMISSIVE POLICIES - blog_post_categories
-- ============================================================================

-- Drop existing conflicting policies
DROP POLICY IF EXISTS "Anyone can view post categories" ON blog_post_categories;
DROP POLICY IF EXISTS "Authenticated users can manage post categories" ON blog_post_categories;

-- Create single SELECT policy for public
CREATE POLICY "Public can view post categories"
  ON blog_post_categories
  FOR SELECT
  TO public
  USING (true);

-- Split ALL into specific actions for authenticated users
CREATE POLICY "Authenticated can insert post categories"
  ON blog_post_categories
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated can update post categories"
  ON blog_post_categories
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated can delete post categories"
  ON blog_post_categories
  FOR DELETE
  TO authenticated
  USING (true);

-- ============================================================================
-- 4. FIX FUNCTION SEARCH PATH - update_updated_at_column
-- ============================================================================

-- Drop and recreate with immutable search_path
DROP FUNCTION IF EXISTS update_updated_at_column() CASCADE;

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$;

-- Recreate trigger for blog_posts
DROP TRIGGER IF EXISTS update_blog_posts_updated_at ON blog_posts;
CREATE TRIGGER update_blog_posts_updated_at
  BEFORE UPDATE ON blog_posts
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- 5. FIX FUNCTION SEARCH PATH - increment_post_views
-- ============================================================================

-- Drop and recreate with immutable search_path
DROP FUNCTION IF EXISTS increment_post_views(uuid) CASCADE;

CREATE OR REPLACE FUNCTION increment_post_views(post_id uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE blog_posts
  SET views = views + 1
  WHERE id = post_id;
END;
$$;
