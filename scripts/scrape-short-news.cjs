/**
 * Scraper pro KRÁTKÉ novinky z datahelp.cz
 * URL: /clanky/kategorie/novinky/ (ne /clanky/?kategorie=novinky)
 * Stahuje krátké textové zprávy bez obrázků
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

const BASE_URL = 'https://www.datahelp.cz';
const OUTPUT_FILE = path.join(__dirname, 'short-news.json');

// HTTP GET
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
    .replace(/&hellip;/g, '...')
    .replace(/&#\d+;/g, '');
}

// Extrahuje novinky ze seznamu
function extractNewsFromList(html) {
  const news = [];

  // Hledáme odkazy na novinky - pattern: /novinky/slug/
  const linkRegex = /href="\/novinky\/([^"\/]+)\/"/gi;
  const matches = [...html.matchAll(linkRegex)];

  console.log(`   Nalezeno ${matches.length} odkazů na novinky`);

  // Pro každý slug najdeme titulek a datum
  matches.forEach(match => {
    const slug = match[1];
    const url = `/novinky/${slug}/`;

    // Hledáme block kolem tohoto odkazu pro titulek
    const linkPos = match.index;
    const contextStart = Math.max(0, linkPos - 200);
    const contextEnd = Math.min(html.length, linkPos + 200);
    const context = html.substring(contextStart, contextEnd);

    // Extrahuj titulek - hledej text v odkazu nebo převeď slug
    const linkTextMatch = context.match(/<a[^>]*href="\/novinky\/[^"]+">([^<]+)<\/a>/i);
    let title;
    if (linkTextMatch) {
      title = decodeHTMLEntities(linkTextMatch[1].trim());
    } else {
      // Převeď slug na titulek
      title = slug.replace(/-/g, ' ').replace(/\b\w/g, c => c.toUpperCase());
    }

    // Extrahuj datum
    const dateMatch = context.match(/(\d{1,2}\.\d{1,2}\.\d{4})/);
    const date = dateMatch ? dateMatch[1] : null;

    news.push({
      slug,
      title,
      date,
      url: `${BASE_URL}${url}`,
      category: 'Novinky'
    });
  });

  // Odstraň duplicity
  const uniqueNews = [];
  const seenSlugs = new Set();

  news.forEach(item => {
    if (!seenSlugs.has(item.slug)) {
      seenSlugs.add(item.slug);
      uniqueNews.push(item);
    }
  });

  return uniqueNews;
}

// Extrahuje obsah jedné novinky
function extractNewsContent(html) {
  // Odstraň scripty a styly
  let content = html
    .replace(/<script[\s\S]*?<\/script>/gi, '')
    .replace(/<style[\s\S]*?<\/style>/gi, '');

  // Hledáme hlavní obsah článku
  const articleMatch = content.match(/<article[^>]*>([\s\S]*?)<\/article>/i) ||
                       content.match(/<div[^>]*class="[^"]*content[^"]*"[^>]*>([\s\S]*?)<\/div>/i);

  if (!articleMatch) {
    // Fallback - hledej mezi <h1> a koncem
    const h1Match = content.match(/<h1[^>]*>[\s\S]*?<\/h1>([\s\S]*)/i);
    if (h1Match) {
      content = h1Match[1];
    }
  } else {
    content = articleMatch[1];
  }

  // Převeď na čistý text
  content = content
    // Převeď nadpisy
    .replace(/<h2[^>]*>([\s\S]*?)<\/h2>/gi, '\n\n## $1\n\n')
    .replace(/<h3[^>]*>([\s\S]*?)<\/h3>/gi, '\n\n### $1\n\n')

    // Převeď odstavce
    .replace(/<p[^>]*>([\s\S]*?)<\/p>/gi, '$1\n\n')

    // Převeď seznamy
    .replace(/<li[^>]*>([\s\S]*?)<\/li>/gi, '• $1\n')

    // Převeď formátování
    .replace(/<strong[^>]*>([\s\S]*?)<\/strong>/gi, '**$1**')
    .replace(/<b[^>]*>([\s\S]*?)<\/b>/gi, '**$1**')
    .replace(/<em[^>]*>([\s\S]*?)<\/em>/gi, '*$1*')
    .replace(/<i[^>]*>([\s\S]*?)<\/i>/gi, '*$1*')

    // Odstraň odkazy (zachovej jen text)
    .replace(/<a[^>]*>([\s\S]*?)<\/a>/gi, '$1')

    // Odstraň <br>
    .replace(/<br\s*\/?>/gi, '\n')

    // Odstraň všechny HTML tagy
    .replace(/<[^>]+>/g, '')

    // Dekóduj entity
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')

    // Vyčisti whitespace
    .replace(/\n{3,}/g, '\n\n')
    .replace(/^\s+/gm, '')
    .replace(/\s+$/gm, '')
    .trim();

  return decodeHTMLEntities(content);
}

async function main() {
  console.log('🚀 Spouštím scraper pro krátké novinky...\n');

  const allNews = [];
  const processedSlugs = new Set();

  // Projdi stránky
  for (let page = 1; page <= 10; page++) {
    const url = page === 1
      ? `${BASE_URL}/clanky/kategorie/novinky/`
      : `${BASE_URL}/clanky/kategorie/novinky/${page}/`;

    try {
      const html = await fetchPage(url);
      const news = extractNewsFromList(html);

      console.log(`📄 Stránka ${page}: nalezeno ${news.length} novinek`);

      if (news.length === 0) {
        console.log('   Žádné další novinky, končím.');
        break;
      }

      for (const item of news) {
        if (!processedSlugs.has(item.slug)) {
          processedSlugs.add(item.slug);
          allNews.push(item);
        }
      }
    } catch (error) {
      console.error(`❌ Chyba při načítání stránky ${page}:`, error.message);
      break;
    }

    // Pauza mezi requesty
    await new Promise(r => setTimeout(r, 500));
  }

  console.log(`\n📚 Celkem nalezeno ${allNews.length} unikátních novinek`);
  console.log('\n🔍 Stahuji obsah novinek...\n');

  // Stáhni obsah každé novinky
  const fullNews = [];

  for (let i = 0; i < allNews.length; i++) {
    const item = allNews[i];
    console.log(`[${i + 1}/${allNews.length}] ${item.title}`);

    try {
      const html = await fetchPage(item.url);
      const content = extractNewsContent(html);

      // Meta description
      const descMatch = html.match(/<meta[^>]*name="description"[^>]*content="([^"]+)"/i);
      const seoDescription = descMatch ? decodeHTMLEntities(descMatch[1]) : '';

      // Převeď datum
      let publishedAt = null;
      if (item.date) {
        const parts = item.date.split('.');
        if (parts.length === 3) {
          publishedAt = `${parts[2]}-${parts[1].padStart(2, '0')}-${parts[0].padStart(2, '0')}`;
        }
      }

      fullNews.push({
        slug: item.slug,
        title: item.title,
        date: publishedAt,
        category: 'Novinky',
        content: content,
        contentLength: content.length,
        seoDescription: seoDescription,
        excerpt: seoDescription || content.substring(0, 200),
        author: 'DataHelp Team',
        coverImage: null // Novinky nemají obrázky
      });

      console.log(`   ✓ ${content.length} znaků`);

    } catch (error) {
      console.error(`  ❌ Chyba: ${error.message}`);
      fullNews.push({
        ...item,
        content: '',
        contentLength: 0,
        excerpt: '',
        seoDescription: '',
        author: 'DataHelp Team',
        coverImage: null
      });
    }

    // Pauza mezi requesty
    await new Promise(r => setTimeout(r, 300));
  }

  // Ulož výsledky
  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(fullNews, null, 2), 'utf-8');

  // Statistiky
  const withContent = fullNews.filter(n => n.contentLength > 100).length;
  const avgLength = fullNews.length > 0
    ? Math.round(fullNews.reduce((sum, n) => sum + n.contentLength, 0) / fullNews.length)
    : 0;

  console.log(`\n✅ Hotovo!`);
  console.log(`📄 Uloženo: ${OUTPUT_FILE}`);
  console.log(`📊 Statistiky:`);
  console.log(`   Celkem novinek: ${fullNews.length}`);
  console.log(`   S obsahem (>100 znaků): ${withContent}`);
  console.log(`   Průměrná délka: ${avgLength} znaků`);
}

main().catch(console.error);
