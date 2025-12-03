/*
  # Add Blog Tags Support

  ## New Tables
  
  1. `blog_tags`
    - `id` (uuid, primary key)
    - `slug` (text, unique) - URL-friendly identifier
    - `name_cs` (text) - Czech name
    - `name_en` (text) - English name
    - `name_de` (text) - German name
    - `name_it` (text) - Italian name
    - `created_at` (timestamptz)

  2. `blog_post_tags` (junction table)
    - `post_id` (uuid, foreign key to blog_posts)
    - `tag_id` (uuid, foreign key to blog_tags)
    - `created_at` (timestamptz)
    - Primary key: (post_id, tag_id)

  ## Security
  
  - Enable RLS on both tables
  - Public read access (anyone can view tags)
  - No write access via RLS (tags managed via admin tools only)

  ## Notes
  
  - Tags are multilingual to support the site's i18n structure
  - Many-to-many relationship allows posts to have multiple tags
  - Minimal impact on existing structure - only adding new functionality
*/

-- Create blog_tags table
CREATE TABLE IF NOT EXISTS blog_tags (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  name_cs text NOT NULL,
  name_en text NOT NULL DEFAULT '',
  name_de text NOT NULL DEFAULT '',
  name_it text NOT NULL DEFAULT '',
  created_at timestamptz DEFAULT now()
);

-- Create blog_post_tags junction table
CREATE TABLE IF NOT EXISTS blog_post_tags (
  post_id uuid NOT NULL REFERENCES blog_posts(id) ON DELETE CASCADE,
  tag_id uuid NOT NULL REFERENCES blog_tags(id) ON DELETE CASCADE,
  created_at timestamptz DEFAULT now(),
  PRIMARY KEY (post_id, tag_id)
);

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_blog_post_tags_post_id ON blog_post_tags(post_id);
CREATE INDEX IF NOT EXISTS idx_blog_post_tags_tag_id ON blog_post_tags(tag_id);
CREATE INDEX IF NOT EXISTS idx_blog_tags_slug ON blog_tags(slug);

-- Enable RLS
ALTER TABLE blog_tags ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_post_tags ENABLE ROW LEVEL SECURITY;

-- RLS Policies for blog_tags

-- Allow public read access to tags
CREATE POLICY "Anyone can view published tags"
  ON blog_tags
  FOR SELECT
  TO public
  USING (true);

-- RLS Policies for blog_post_tags

-- Allow public read access to post-tag relationships
CREATE POLICY "Anyone can view post-tag relationships"
  ON blog_post_tags
  FOR SELECT
  TO public
  USING (true);

-- Note: Write access will be managed through admin tools/edge functions
-- No insert/update/delete policies for public users