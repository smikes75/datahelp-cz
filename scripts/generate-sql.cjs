/**
 * Generuje SQL pro import článků do Supabase
 */

const fs = require('fs');
const path = require('path');

const articles = JSON.parse(fs.readFileSync(path.join(__dirname, 'articles.json'), 'utf-8'));

// Extrahuj kategorii z content (breadcrumbs)
function extractCategory(content) {
  if (!content) return 'Technologie';

  const categories = [
    'První pomoc',
    'Technologie',
    'Zálohování dat a prevence ztráty dat',
    'Naše aktivity',
    'Zajímavosti'
  ];

  for (const cat of categories) {
    if (content.includes(cat)) {
      return cat;
    }
  }
  return 'Technologie';
}

// Vyčisti a normalizuj data
const cleanedArticles = articles.map(article => {
  const category = extractCategory(article.content);

  // Parsuj datum
  let publishedAt = null;
  if (article.date) {
    const [day, month, year] = article.date.split('.');
    if (day && month && year) {
      publishedAt = `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`;
    }
  }

  return {
    slug: article.slug,
    title: article.title || article.slug.replace(/-/g, ' '),
    excerpt: (article.seoDescription || article.excerpt || '').substring(0, 500),
    category,
    author: article.author || 'DataHelp Team',
    coverImage: article.coverImage || null,
    publishedAt,
    seoDescription: article.seoDescription || article.excerpt || ''
  };
});

// Statistiky
const categoryStats = {};
cleanedArticles.forEach(a => {
  categoryStats[a.category] = (categoryStats[a.category] || 0) + 1;
});

console.log('📊 Statistiky kategorií:');
Object.entries(categoryStats).forEach(([cat, count]) => {
  console.log(`   ${cat}: ${count}`);
});

// Generuj SQL pro kategorie
const categories = [...new Set(cleanedArticles.map(a => a.category))];
const categorySlugMap = {};

let sql = `-- ========================================
-- Import článků z datahelp.cz do Supabase
-- Generováno: ${new Date().toISOString()}
-- Počet článků: ${cleanedArticles.length}
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

// Generuj SQL pro články
sql += `-- 2. Vložení článků\n`;

cleanedArticles.forEach((article, i) => {
  const escapeSql = (str) => str ? str.replace(/'/g, "''") : '';

  sql += `
INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  '${escapeSql(article.slug)}',
  '${escapeSql(article.title)}',
  '${escapeSql(article.excerpt)}',
  '${escapeSql(article.seoDescription)}',
  '${escapeSql(article.author)}',
  ${article.coverImage ? `'${escapeSql(article.coverImage)}'` : 'NULL'},
  ${article.publishedAt ? `'${article.publishedAt}'` : 'NOW()'},
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();
`;
});

// Propojení článků s kategoriemi
sql += `\n-- 3. Propojení článků s kategoriemi\n`;

cleanedArticles.forEach(article => {
  const catSlug = categorySlugMap[article.category];
  sql += `
INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '${article.slug}' AND c.slug = '${catSlug}'
ON CONFLICT DO NOTHING;
`;
});

// Ulož SQL
const outputPath = path.join(__dirname, 'import-articles.sql');
fs.writeFileSync(outputPath, sql, 'utf-8');

console.log(`\n✅ SQL vygenerováno: ${outputPath}`);
console.log(`📝 Celkem článků: ${cleanedArticles.length}`);

// Ulož vyčištěná data
fs.writeFileSync(
  path.join(__dirname, 'articles-cleaned.json'),
  JSON.stringify(cleanedArticles, null, 2),
  'utf-8'
);
console.log(`📄 Vyčištěná data: scripts/articles-cleaned.json`);
