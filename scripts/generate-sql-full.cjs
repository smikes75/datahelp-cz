/**
 * Generuje SQL pro import článků s plným obsahem do Supabase
 */

const fs = require('fs');
const path = require('path');

const articles = JSON.parse(
  fs.readFileSync(path.join(__dirname, 'articles-with-content.json'), 'utf-8')
);

// Escape SQL string
function escapeSql(str) {
  if (!str) return '';
  return str.replace(/'/g, "''");
}

// Mapování kategorií na standardní názvy
function normalizeCategory(category) {
  if (!category) return 'Technologie';

  const lowerCat = category.toLowerCase();

  if (lowerCat.includes('první pomoc') || lowerCat.includes('prvni pomoc') || lowerCat.includes('návod')) {
    return 'První pomoc';
  }
  if (lowerCat.includes('zálohování') || lowerCat.includes('zalohovani') || lowerCat.includes('prevence')) {
    return 'Zálohování dat';
  }
  if (lowerCat.includes('naše aktivit') || lowerCat.includes('nase aktivit') || lowerCat.includes('datahelp')) {
    return 'Naše aktivity';
  }
  if (lowerCat.includes('zajímavost') || lowerCat.includes('zajimavost')) {
    return 'Zajímavosti';
  }

  return 'Technologie';
}

// Spočítej reading time (cca 200 slov/min)
function calculateReadingTime(content) {
  if (!content) return 3;
  const wordCount = content.split(/\s+/).length;
  const minutes = Math.ceil(wordCount / 200);
  return Math.max(2, Math.min(minutes, 30)); // 2-30 min
}

// Statistiky kategorií
const categoryStats = {};
articles.forEach(a => {
  const cat = normalizeCategory(a.category);
  categoryStats[cat] = (categoryStats[cat] || 0) + 1;
});

console.log('📊 Statistiky kategorií:');
Object.entries(categoryStats).sort((a, b) => b[1] - a[1]).forEach(([cat, count]) => {
  console.log(`   ${cat}: ${count}`);
});

// Unikátní kategorie
const categories = [...new Set(articles.map(a => normalizeCategory(a.category)))];
const categorySlugMap = {};

// Generuj SQL
let sql = `-- ========================================
-- Import článků z datahelp.cz do Supabase
-- S PLNÝM OBSAHEM
-- Generováno: ${new Date().toISOString()}
-- Počet článků: ${articles.length}
-- ========================================

-- 1. Vložení kategorií
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it) VALUES
`;

categories.forEach((cat, i) => {
  const slug = cat
    .toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '');

  categorySlugMap[cat] = slug;

  sql += `  ('${slug}', '${cat}', '${cat}', '${cat}', '${cat}')`;
  sql += i < categories.length - 1 ? ',\n' : '\n';
});

sql += `ON CONFLICT (slug) DO NOTHING;\n\n`;

// Články
sql += `-- 2. Vložení článků\n`;

articles.forEach(article => {
  const category = normalizeCategory(article.category);
  const readingTime = calculateReadingTime(article.content);

  sql += `
INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  '${escapeSql(article.slug)}',
  '${escapeSql(article.title)}',
  '${escapeSql(article.excerpt || article.seoDescription || '')}',
  '${escapeSql(article.content)}',
  '${escapeSql(article.author || 'DataHelp Team')}',
  ${article.coverImage ? `'${escapeSql(article.coverImage)}'` : 'NULL'},
  ${article.date ? `'${article.date}'` : 'NOW()'},
  true,
  ${readingTime},
  '${escapeSql(article.seoDescription || '')}'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();
`;
});

// Propojení s kategoriemi
sql += `\n-- 3. Propojení článků s kategoriemi\n`;

articles.forEach(article => {
  const category = normalizeCategory(article.category);
  const catSlug = categorySlugMap[category];

  sql += `
INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '${article.slug}' AND c.slug = '${catSlug}'
ON CONFLICT DO NOTHING;
`;
});

// Ulož SQL
const outputPath = path.join(__dirname, 'import-articles-full.sql');
fs.writeFileSync(outputPath, sql, 'utf-8');

// Statistiky
const totalContent = articles.reduce((sum, a) => sum + (a.contentLength || 0), 0);
const avgContent = Math.round(totalContent / articles.length);

console.log(`\n✅ SQL vygenerováno: ${outputPath}`);
console.log(`📝 Celkem článků: ${articles.length}`);
console.log(`📄 Celkem obsahu: ${(totalContent / 1000).toFixed(1)} KB`);
console.log(`📊 Průměrná délka: ${avgContent} znaků/článek`);

// Souhrn pro blog
console.log(`\n📋 Souhrn pro blog:`);
console.log(`   Kategorie: ${categories.length}`);
console.log(`   Články: ${articles.length}`);
categories.forEach(cat => {
  console.log(`   - ${cat}: ${categoryStats[cat]} článků`);
});
