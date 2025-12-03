/*
  # Create Blog Tables

  1. New Tables
    - `blog_posts`
      - `id` (uuid, primary key) - Unique identifier
      - `slug` (text, unique) - URL-friendly identifier
      - `title_cs` (text) - Czech title
      - `title_en` (text) - English title
      - `title_de` (text) - German title
      - `title_it` (text) - Italian title
      - `excerpt_cs` (text) - Czech excerpt/summary
      - `excerpt_en` (text) - English excerpt/summary
      - `excerpt_de` (text) - German excerpt/summary
      - `excerpt_it` (text) - Italian excerpt/summary
      - `content_cs` (text) - Czech full content
      - `content_en` (text) - English full content
      - `content_de` (text) - German full content
      - `content_it` (text) - Italian full content
      - `author` (text) - Author name
      - `image_url` (text) - Featured image URL
      - `published_at` (timestamptz) - Publication date
      - `updated_at` (timestamptz) - Last update date
      - `created_at` (timestamptz) - Creation timestamp
      - `is_published` (boolean) - Publication status
      - `views` (integer) - View count
      - `reading_time_minutes` (integer) - Estimated reading time
      
    - `blog_categories`
      - `id` (uuid, primary key)
      - `slug` (text, unique)
      - `name_cs` (text)
      - `name_en` (text)
      - `name_de` (text)
      - `name_it` (text)
      - `created_at` (timestamptz)
      
    - `blog_post_categories`
      - `post_id` (uuid, foreign key)
      - `category_id` (uuid, foreign key)
      - Composite primary key

  2. Security
    - Enable RLS on all tables
    - Public read access for published posts
    - Only authenticated users can manage posts (for future admin panel)
    
  3. Indexes
    - Index on slug for fast lookups
    - Index on published_at for sorting
    - Index on is_published for filtering
*/

-- Create blog_categories table
CREATE TABLE IF NOT EXISTS blog_categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  name_cs text NOT NULL DEFAULT '',
  name_en text NOT NULL DEFAULT '',
  name_de text NOT NULL DEFAULT '',
  name_it text NOT NULL DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- Create blog_posts table
CREATE TABLE IF NOT EXISTS blog_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  title_cs text NOT NULL DEFAULT '',
  title_en text NOT NULL DEFAULT '',
  title_de text NOT NULL DEFAULT '',
  title_it text NOT NULL DEFAULT '',
  excerpt_cs text NOT NULL DEFAULT '',
  excerpt_en text NOT NULL DEFAULT '',
  excerpt_de text NOT NULL DEFAULT '',
  excerpt_it text NOT NULL DEFAULT '',
  content_cs text NOT NULL DEFAULT '',
  content_en text NOT NULL DEFAULT '',
  content_de text NOT NULL DEFAULT '',
  content_it text NOT NULL DEFAULT '',
  author text NOT NULL DEFAULT 'DataHelp Team',
  image_url text,
  published_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  created_at timestamptz DEFAULT now(),
  is_published boolean DEFAULT false,
  views integer DEFAULT 0,
  reading_time_minutes integer DEFAULT 5
);

-- Create junction table for many-to-many relationship
CREATE TABLE IF NOT EXISTS blog_post_categories (
  post_id uuid REFERENCES blog_posts(id) ON DELETE CASCADE,
  category_id uuid REFERENCES blog_categories(id) ON DELETE CASCADE,
  PRIMARY KEY (post_id, category_id)
);

-- Create indexes for performance
CREATE INDEX IF NOT EXISTS idx_blog_posts_slug ON blog_posts(slug);
CREATE INDEX IF NOT EXISTS idx_blog_posts_published_at ON blog_posts(published_at DESC);
CREATE INDEX IF NOT EXISTS idx_blog_posts_is_published ON blog_posts(is_published);
CREATE INDEX IF NOT EXISTS idx_blog_categories_slug ON blog_categories(slug);

-- Enable Row Level Security
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_post_categories ENABLE ROW LEVEL SECURITY;

-- RLS Policies for blog_posts
CREATE POLICY "Anyone can view published blog posts"
  ON blog_posts FOR SELECT
  USING (is_published = true);

CREATE POLICY "Authenticated users can view all blog posts"
  ON blog_posts FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Authenticated users can insert blog posts"
  ON blog_posts FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated users can update blog posts"
  ON blog_posts FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can delete blog posts"
  ON blog_posts FOR DELETE
  TO authenticated
  USING (true);

-- RLS Policies for blog_categories
CREATE POLICY "Anyone can view blog categories"
  ON blog_categories FOR SELECT
  USING (true);

CREATE POLICY "Authenticated users can insert categories"
  ON blog_categories FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Authenticated users can update categories"
  ON blog_categories FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can delete categories"
  ON blog_categories FOR DELETE
  TO authenticated
  USING (true);

-- RLS Policies for blog_post_categories
CREATE POLICY "Anyone can view post categories"
  ON blog_post_categories FOR SELECT
  USING (true);

CREATE POLICY "Authenticated users can manage post categories"
  ON blog_post_categories FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger to auto-update updated_at
DROP TRIGGER IF EXISTS update_blog_posts_updated_at ON blog_posts;
CREATE TRIGGER update_blog_posts_updated_at
  BEFORE UPDATE ON blog_posts
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();