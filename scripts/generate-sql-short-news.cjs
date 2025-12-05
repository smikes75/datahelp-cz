/**
 * Generuje SQL pro import krátkých novinek do Supabase
 */

const fs = require('fs');
const path = require('path');

const news = JSON.parse(
  fs.readFileSync(path.join(__dirname, 'short-news.json'), 'utf-8')
);

// Escape SQL string
function escapeSql(str) {
  if (!str) return '';
  return str.replace(/'/g, "''");
}

// Spočítej reading time (krátké novinky = 1-2 min)
function calculateReadingTime(content) {
  if (!content) return 1;
  const wordCount = content.split(/\s+/).length;
  const minutes = Math.ceil(wordCount / 200);
  return Math.max(1, Math.min(minutes, 3)); // 1-3 min
}

console.log('📊 Generování SQL pro krátké novinky...');
console.log(`   Celkem novinek: ${news.length}`);

// Generuj SQL
let sql = `-- ========================================
-- Import krátkých novinek z datahelp.cz do Supabase
-- URL: /novinky/slug/
-- Generováno: ${new Date().toISOString()}
-- Počet novinek: ${news.length}
-- ========================================

-- 1. Vložení kategorie Novinky (pokud ještě neexistuje)
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it) VALUES
  ('novinky', 'Novinky', 'Novinky', 'Novinky', 'Novinky')
ON CONFLICT (slug) DO NOTHING;

-- 2. Vložení krátkých novinek
`;

news.forEach(item => {
  // Pro krátké novinky použij seoDescription jako content (je tam správný text)
  const content = item.seoDescription || item.excerpt || item.title;
  const readingTime = calculateReadingTime(content);

  sql += `
INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  '${escapeSql(item.slug)}',
  '${escapeSql(item.title)}',
  '${escapeSql(item.seoDescription || '')}',
  '${escapeSql(content)}',
  'DataHelp Team',
  NULL,
  ${item.date ? `'${item.date}'` : 'NOW()'},
  true,
  ${readingTime},
  '${escapeSql(item.seoDescription || '')}'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();
`;
});

// Propojení s kategorií Novinky
sql += `\n-- 3. Propojení krátkých novinek s kategorií\n`;

news.forEach(item => {
  sql += `
INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '${item.slug}' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;
`;
});

// Ulož SQL
const outputPath = path.join(__dirname, 'import-short-news.sql');
fs.writeFileSync(outputPath, sql, 'utf-8');

// Statistiky
const totalContent = news.reduce((sum, n) => sum + (n.contentLength || 0), 0);
const avgContent = news.length > 0 ? Math.round(totalContent / news.length) : 0;
const withContent = news.filter(n => n.contentLength > 50).length;

console.log(`\n✅ SQL vygenerováno: ${outputPath}`);
console.log(`📝 Celkem novinek: ${news.length}`);
console.log(`📄 S obsahem (>50 znaků): ${withContent}`);
console.log(`📊 Celkem obsahu: ${(totalContent / 1000).toFixed(1)} KB`);
console.log(`📊 Průměrná délka: ${avgContent} znaků/novinka`);
