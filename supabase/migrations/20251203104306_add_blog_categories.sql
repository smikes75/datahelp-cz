/*
  # Add Blog Categories for DataHelp Magazín
  
  This migration populates the blog_categories table with predefined categories
  for the DataHelp magazine structure.
  
  ## Categories Added
  
  1. **Všechny články** (all)
     - Default category, shows all articles
     
  2. **Zálohování dat a prevence ztráty dat** (zalohovani-dat-a-prevence-ztraty-dat)
     - Articles about data backup and loss prevention
     
  3. **Technologie** (technologie)
     - Technical articles about storage technologies
     
  4. **První pomoc, návody, záchrana dat** (prvni-pomoc-navody-zachrana-dat)
     - Guides and first aid for data recovery
     
  5. **Naše aktivity** (nase-aktivity)
     - Company activities and case studies
     
  6. **Novinky** (novinky)
     - News and updates
  
  ## Security
  - All categories are publicly readable via existing RLS policies
  - Only authenticated users can manage categories
  
  ## Notes
  - Using IF NOT EXISTS to prevent duplicate entries
  - Categories are pre-populated for consistent URL structure
  - Slugs match the URL pattern: /clanky/kategorie/{slug}/
*/

-- Insert blog categories (only if they don't exist)
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it)
VALUES 
  (
    'zalohovani-dat-a-prevence-ztraty-dat',
    'Zálohování dat a prevence ztráty dat',
    'Data Backup and Loss Prevention',
    'Datensicherung und Verlustvermeidung',
    'Backup dei dati e prevenzione della perdita'
  ),
  (
    'technologie',
    'Technologie',
    'Technology',
    'Technologie',
    'Tecnologia'
  ),
  (
    'prvni-pomoc-navody-zachrana-dat',
    'První pomoc, návody, záchrana dat',
    'First Aid, Guides, Data Recovery',
    'Erste Hilfe, Anleitungen, Datenrettung',
    'Primo soccorso, guide, recupero dati'
  ),
  (
    'nase-aktivity',
    'Naše aktivity',
    'Our Activities',
    'Unsere Aktivitäten',
    'Le nostre attività'
  ),
  (
    'novinky',
    'Novinky',
    'News',
    'Neuigkeiten',
    'Novità'
  )
ON CONFLICT (slug) DO NOTHING;

-- Add composite index for efficient category filtering with published posts
CREATE INDEX IF NOT EXISTS idx_blog_post_categories_post_category 
  ON blog_post_categories(post_id, category_id);

-- Add index for efficient counting of posts per category
CREATE INDEX IF NOT EXISTS idx_blog_post_categories_category_post 
  ON blog_post_categories(category_id, post_id);