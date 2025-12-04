/**
 * Scraper pro články z datahelp.cz/clanky
 * Stáhne všechny články a uloží je do JSON
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

const BASE_URL = 'https://www.datahelp.cz';
const ARTICLES_URL = `${BASE_URL}/clanky`;
const OUTPUT_FILE = path.join(__dirname, 'articles.json');

// Pomocná funkce pro HTTP GET
function fetchPage(url) {
  return new Promise((resolve, reject) => {
    console.log(`Fetching: ${url}`);
    https.get(url, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => resolve(data));
      res.on('error', reject);
    }).on('error', reject);
  });
}

// Extrahuje články ze stránky seznamu
function extractArticlesFromList(html) {
  const articles = [];

  // Hledáme odkazy na články - pattern: /clanky/slug/
  const linkRegex = /<a[^>]*href="\/clanky\/([^"\/]+)\/?\"[^>]*>/gi;
  const titleRegex = /<h[23][^>]*class="[^"]*title[^"]*"[^>]*>([^<]+)<\/h[23]>/gi;

  // Jednodušší přístup - hledáme bloky článků
  const articleBlockRegex = /<article[^>]*>([\s\S]*?)<\/article>/gi;
  let match;

  while ((match = articleBlockRegex.exec(html)) !== null) {
    const block = match[1];

    // Extrahuj slug
    const slugMatch = block.match(/href="\/clanky\/([^"\/]+)\/?"/i);
    if (!slugMatch) continue;

    const slug = slugMatch[1];

    // Extrahuj titulek
    const titleMatch = block.match(/<h[23][^>]*>([^<]+)<\/h[23]>/i) ||
                       block.match(/class="[^"]*title[^"]*"[^>]*>([^<]+)</i);
    const title = titleMatch ? titleMatch[1].trim() : slug;

    // Extrahuj datum
    const dateMatch = block.match(/(\d{1,2}\.\d{1,2}\.\d{4})/);
    const date = dateMatch ? dateMatch[1] : null;

    // Extrahuj kategorii
    const categoryMatch = block.match(/class="[^"]*category[^"]*"[^>]*>([^<]+)</i) ||
                          block.match(/class="[^"]*tag[^"]*"[^>]*>([^<]+)</i);
    const category = categoryMatch ? categoryMatch[1].trim() : null;

    // Extrahuj excerpt
    const excerptMatch = block.match(/<p[^>]*class="[^"]*excerpt[^"]*"[^>]*>([\s\S]*?)<\/p>/i) ||
                         block.match(/<p[^>]*>([\s\S]*?)<\/p>/i);
    const excerpt = excerptMatch ? excerptMatch[1].replace(/<[^>]+>/g, '').trim().substring(0, 300) : '';

    articles.push({
      slug,
      title: decodeHTMLEntities(title),
      date,
      category,
      excerpt: decodeHTMLEntities(excerpt),
      url: `${BASE_URL}/clanky/${slug}/`
    });
  }

  // Fallback - hledej přímo odkazy
  if (articles.length === 0) {
    const links = html.match(/href="\/clanky\/([^"\/]+)\/?"/gi) || [];
    const uniqueSlugs = [...new Set(links.map(l => l.match(/\/clanky\/([^"\/]+)/)?.[1]).filter(Boolean))];

    for (const slug of uniqueSlugs) {
      if (slug && slug !== 'page' && !slug.match(/^\d+$/)) {
        articles.push({
          slug,
          title: slug.replace(/-/g, ' '),
          date: null,
          category: null,
          excerpt: '',
          url: `${BASE_URL}/clanky/${slug}/`
        });
      }
    }
  }

  return articles;
}

// Dekóduje HTML entity
function decodeHTMLEntities(text) {
  if (!text) return '';
  return text
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/&nbsp;/g, ' ')
    .replace(/&ndash;/g, '–')
    .replace(/&mdash;/g, '—')
    .replace(/&hellip;/g, '...');
}

// Extrahuje obsah článku
function extractArticleContent(html, slug) {
  // Titulek
  const titleMatch = html.match(/<h1[^>]*>([^<]+)<\/h1>/i) ||
                     html.match(/<title>([^<|]+)/i);
  const title = titleMatch ? decodeHTMLEntities(titleMatch[1].trim()) : slug;

  // Meta description
  const descMatch = html.match(/<meta[^>]*name="description"[^>]*content="([^"]+)"/i) ||
                    html.match(/<meta[^>]*content="([^"]+)"[^>]*name="description"/i);
  const seoDescription = descMatch ? decodeHTMLEntities(descMatch[1]) : '';

  // Datum publikace
  const dateMatch = html.match(/(\d{1,2}\.\d{1,2}\.\d{4})/) ||
                    html.match(/datetime="([^"]+)"/i);
  const date = dateMatch ? dateMatch[1] : null;

  // Autor
  const authorMatch = html.match(/class="[^"]*author[^"]*"[^>]*>([^<]+)</i) ||
                      html.match(/author[^>]*>([^<]+)</i);
  const author = authorMatch ? decodeHTMLEntities(authorMatch[1].trim()) : 'DataHelp Team';

  // Kategorie
  const categoryMatch = html.match(/class="[^"]*category[^"]*"[^>]*>([^<]+)</i);
  const category = categoryMatch ? decodeHTMLEntities(categoryMatch[1].trim()) : null;

  // Cover image
  const imageMatch = html.match(/<meta[^>]*property="og:image"[^>]*content="([^"]+)"/i) ||
                     html.match(/<img[^>]*class="[^"]*featured[^"]*"[^>]*src="([^"]+)"/i);
  const coverImage = imageMatch ? imageMatch[1] : null;

  // Hlavní obsah - hledáme article nebo main content
  let content = '';
  const contentMatch = html.match(/<article[^>]*>([\s\S]*?)<\/article>/i) ||
                       html.match(/<div[^>]*class="[^"]*content[^"]*"[^>]*>([\s\S]*?)<\/div>/i) ||
                       html.match(/<main[^>]*>([\s\S]*?)<\/main>/i);

  if (contentMatch) {
    content = contentMatch[1]
      // Odstraň scripty a styly
      .replace(/<script[\s\S]*?<\/script>/gi, '')
      .replace(/<style[\s\S]*?<\/style>/gi, '')
      // Převeď na čistší HTML
      .replace(/<br\s*\/?>/gi, '\n')
      .replace(/<\/p>/gi, '\n\n')
      .replace(/<\/h[1-6]>/gi, '\n\n')
      .replace(/<\/li>/gi, '\n')
      .replace(/<li[^>]*>/gi, '• ')
      // Zachovej důležité tagy
      .replace(/<h2[^>]*>/gi, '## ')
      .replace(/<h3[^>]*>/gi, '### ')
      .replace(/<strong[^>]*>/gi, '**')
      .replace(/<\/strong>/gi, '**')
      .replace(/<em[^>]*>/gi, '*')
      .replace(/<\/em>/gi, '*')
      // Odstraň ostatní HTML tagy
      .replace(/<[^>]+>/g, '')
      // Dekóduj entity
      .replace(/&nbsp;/g, ' ')
      .replace(/&amp;/g, '&')
      .replace(/&lt;/g, '<')
      .replace(/&gt;/g, '>')
      .replace(/&quot;/g, '"')
      // Vyčisti whitespace
      .replace(/\n{3,}/g, '\n\n')
      .trim();
  }

  return {
    slug,
    title,
    date,
    author,
    category,
    coverImage,
    excerpt: seoDescription.substring(0, 300),
    seoDescription,
    content,
    url: `${BASE_URL}/clanky/${slug}/`
  };
}

// Hlavní funkce
async function scrapeAllArticles() {
  console.log('🚀 Spouštím scraper pro DataHelp články...\n');

  const allArticles = [];
  const processedSlugs = new Set();

  // Projdi všechny stránky paginace
  for (let page = 1; page <= 5; page++) {
    const url = page === 1 ? ARTICLES_URL : `${ARTICLES_URL}/${page}/`;

    try {
      const html = await fetchPage(url);
      const articles = extractArticlesFromList(html);

      console.log(`📄 Stránka ${page}: nalezeno ${articles.length} článků`);

      for (const article of articles) {
        if (!processedSlugs.has(article.slug)) {
          processedSlugs.add(article.slug);
          allArticles.push(article);
        }
      }
    } catch (error) {
      console.error(`❌ Chyba při načítání stránky ${page}:`, error.message);
    }

    // Pauza mezi requesty
    await new Promise(r => setTimeout(r, 500));
  }

  console.log(`\n📚 Celkem nalezeno ${allArticles.length} unikátních článků`);
  console.log('\n🔍 Stahuji obsah jednotlivých článků...\n');

  // Stáhni obsah každého článku
  const fullArticles = [];

  for (let i = 0; i < allArticles.length; i++) {
    const article = allArticles[i];
    console.log(`[${i + 1}/${allArticles.length}] ${article.title || article.slug}`);

    try {
      const html = await fetchPage(article.url);
      const fullArticle = extractArticleContent(html, article.slug);

      // Slouč data z listu a detailu
      fullArticles.push({
        ...article,
        ...fullArticle,
        category: fullArticle.category || article.category
      });
    } catch (error) {
      console.error(`  ❌ Chyba: ${error.message}`);
      fullArticles.push(article);
    }

    // Pauza mezi requesty (respektuj server)
    await new Promise(r => setTimeout(r, 300));
  }

  // Ulož do JSON
  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(fullArticles, null, 2), 'utf-8');

  console.log(`\n✅ Hotovo! Uloženo ${fullArticles.length} článků do ${OUTPUT_FILE}`);

  // Statistiky
  const categories = {};
  fullArticles.forEach(a => {
    const cat = a.category || 'Bez kategorie';
    categories[cat] = (categories[cat] || 0) + 1;
  });

  console.log('\n📊 Kategorie:');
  Object.entries(categories).sort((a, b) => b[1] - a[1]).forEach(([cat, count]) => {
    console.log(`   ${cat}: ${count}`);
  });
}

// Spusť
scrapeAllArticles().catch(console.error);
