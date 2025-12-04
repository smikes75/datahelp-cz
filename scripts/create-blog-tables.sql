-- ========================================
-- Vytvoření tabulek pro blog
-- Spusť PŘED importem článků
-- ========================================

-- 1. Smaž existující tabulky (pokud existují)
DROP TABLE IF EXISTS blog_post_categories CASCADE;
DROP TABLE IF EXISTS blog_posts CASCADE;
DROP TABLE IF EXISTS blog_categories CASCADE;

-- 2. Vytvoř tabulku kategorií
CREATE TABLE blog_categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name_cs TEXT NOT NULL,
  name_en TEXT,
  name_de TEXT,
  name_it TEXT,
  description_cs TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Vytvoř tabulku článků
CREATE TABLE blog_posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  title_cs TEXT NOT NULL,
  title_en TEXT,
  title_de TEXT,
  title_it TEXT,
  excerpt_cs TEXT,
  excerpt_en TEXT,
  excerpt_de TEXT,
  excerpt_it TEXT,
  content_cs TEXT,
  content_en TEXT,
  content_de TEXT,
  content_it TEXT,
  seo_description_cs TEXT,
  seo_description_en TEXT,
  seo_description_de TEXT,
  seo_description_it TEXT,
  author TEXT DEFAULT 'DataHelp Team',
  image_url TEXT,
  published_at TIMESTAMPTZ,
  is_published BOOLEAN DEFAULT false,
  reading_time_minutes INTEGER DEFAULT 5,
  view_count INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Vytvoř propojovací tabulku (many-to-many)
CREATE TABLE blog_post_categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID REFERENCES blog_posts(id) ON DELETE CASCADE,
  category_id UUID REFERENCES blog_categories(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(post_id, category_id)
);

-- 5. Vytvoř indexy pro rychlejší vyhledávání
CREATE INDEX idx_blog_posts_slug ON blog_posts(slug);
CREATE INDEX idx_blog_posts_published ON blog_posts(is_published, published_at DESC);
CREATE INDEX idx_blog_categories_slug ON blog_categories(slug);
CREATE INDEX idx_blog_post_categories_post ON blog_post_categories(post_id);
CREATE INDEX idx_blog_post_categories_category ON blog_post_categories(category_id);

-- 6. Row Level Security (RLS)
ALTER TABLE blog_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE blog_post_categories ENABLE ROW LEVEL SECURITY;

-- Politiky - čtení pro všechny, zápis pro autentizované
CREATE POLICY "Kategorie jsou veřejně čitelné" ON blog_categories
  FOR SELECT USING (true);

CREATE POLICY "Publikované články jsou veřejně čitelné" ON blog_posts
  FOR SELECT USING (is_published = true);

CREATE POLICY "Propojení jsou veřejně čitelná" ON blog_post_categories
  FOR SELECT USING (true);

-- Pro vkládání dat (dočasně povolit všem)
CREATE POLICY "Povolit vkládání kategorií" ON blog_categories
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Povolit vkládání článků" ON blog_posts
  FOR INSERT WITH CHECK (true);

CREATE POLICY "Povolit vkládání propojení" ON blog_post_categories
  FOR INSERT WITH CHECK (true);

-- Povolit aktualizace
CREATE POLICY "Povolit aktualizace článků" ON blog_posts
  FOR UPDATE USING (true) WITH CHECK (true);

-- 7. Trigger pro automatickou aktualizaci updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_blog_posts_updated_at
  BEFORE UPDATE ON blog_posts
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_blog_categories_updated_at
  BEFORE UPDATE ON blog_categories
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Hotovo!
SELECT 'Tabulky pro blog úspěšně vytvořeny!' as status;
