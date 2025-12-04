/**
 * Jednoduchý scraper pro plný obsah článků z datahelp.cz
 * Nepoužívá Puppeteer - obsah je v surové HTML
 */

const https = require('https');
const fs = require('fs');
const path = require('path');

const BASE_URL = 'https://www.datahelp.cz';
const OUTPUT_FILE = path.join(__dirname, 'articles-with-content.json');

// Načti existující články (máme slugy a metadata)
const existingArticles = JSON.parse(
  fs.readFileSync(path.join(__dirname, 'articles-cleaned.json'), 'utf-8')
);

// HTTP GET
function fetchPage(url) {
  return new Promise((resolve, reject) => {
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

// Extrahuje obsah článku z HTML
function extractContent(html) {
  // Hledáme obsah mezi <h2 a koncem článku
  // Typicky začíná prvním <h2> a končí před </article> nebo před sekcí s odkazy

  // Najdi první <h2> - začátek hlavního obsahu
  const h2Start = html.indexOf('<h2');
  if (h2Start === -1) {
    // Zkus najít obsah jinak - hledej velký blok s <p> tagy
    const pMatch = html.match(/<p>[\s\S]{200,}?<\/p>/g);
    if (pMatch) {
      return cleanHtmlToMarkdown(pMatch.join('\n'));
    }
    return '';
  }

  // Najdi konec - hledáme typické ukončovací prvky
  let contentHtml = html.substring(h2Start);

  // Ořízni na konci článku (před related articles, footer, etc.)
  const endMarkers = [
    '<div class="related',
    '<div class="share',
    '<footer',
    '<div class="comments',
    '<div class="cta',
    '</article>',
    '<section class="newsletter'
  ];

  for (const marker of endMarkers) {
    const idx = contentHtml.indexOf(marker);
    if (idx > 0 && idx < contentHtml.length * 0.9) {
      contentHtml = contentHtml.substring(0, idx);
      break;
    }
  }

  return cleanHtmlToMarkdown(contentHtml);
}

// Převede HTML na čistý markdown-like text
function cleanHtmlToMarkdown(html) {
  if (!html) return '';

  let text = html
    // Odstraň scripty a styly
    .replace(/<script[\s\S]*?<\/script>/gi, '')
    .replace(/<style[\s\S]*?<\/style>/gi, '')
    .replace(/<!--[\s\S]*?-->/g, '')

    // Převeď nadpisy
    .replace(/<h2[^>]*>([\s\S]*?)<\/h2>/gi, '\n\n## $1\n\n')
    .replace(/<h3[^>]*>([\s\S]*?)<\/h3>/gi, '\n\n### $1\n\n')
    .replace(/<h4[^>]*>([\s\S]*?)<\/h4>/gi, '\n\n#### $1\n\n')

    // Převeď odstavce
    .replace(/<p[^>]*>([\s\S]*?)<\/p>/gi, '$1\n\n')

    // Převeď seznamy
    .replace(/<ul[^>]*>([\s\S]*?)<\/ul>/gi, '$1\n')
    .replace(/<ol[^>]*>([\s\S]*?)<\/ol>/gi, '$1\n')
    .replace(/<li[^>]*>([\s\S]*?)<\/li>/gi, '• $1\n')

    // Převeď formátování
    .replace(/<strong[^>]*>([\s\S]*?)<\/strong>/gi, '**$1**')
    .replace(/<b[^>]*>([\s\S]*?)<\/b>/gi, '**$1**')
    .replace(/<em[^>]*>([\s\S]*?)<\/em>/gi, '*$1*')
    .replace(/<i[^>]*>([\s\S]*?)<\/i>/gi, '*$1*')

    // Zachovej odkazy (jen text)
    .replace(/<a[^>]*>([\s\S]*?)<\/a>/gi, '$1')

    // Odstraň <br> tagy
    .replace(/<br\s*\/?>/gi, '\n')

    // Odstraň všechny ostatní HTML tagy
    .replace(/<[^>]+>/g, '')

    // Dekóduj HTML entity
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/&nbsp;/g, ' ')

    // Vyčisti whitespace
    .replace(/\n{3,}/g, '\n\n')
    .replace(/^\s+/gm, '')
    .replace(/\s+$/gm, '')
    .trim();

  return decodeHTMLEntities(text);
}

// Extrahuje kategorii z breadcrumbs v HTML
function extractCategory(html) {
  // Hledáme v JSON-LD schema
  const schemaMatch = html.match(/"BreadcrumbList"[\s\S]*?"name":"([^"]+)"/);
  if (schemaMatch) {
    const name = schemaMatch[1];
    if (name !== 'Magazín' && name !== 'Home') {
      return name;
    }
  }

  // Fallback - hledáme v breadcrumb odkazech
  const breadcrumbMatch = html.match(/breadcrumb[\s\S]*?<a[^>]*>([^<]+)<\/a>/gi);
  if (breadcrumbMatch) {
    for (const bc of breadcrumbMatch) {
      const textMatch = bc.match(/>([^<]+)</);
      if (textMatch) {
        const text = textMatch[1].trim();
        if (text !== 'Magazín' && text !== 'Home' && text !== 'Domů' && text.length > 2) {
          return text;
        }
      }
    }
  }

  return null;
}

async function main() {
  console.log('🚀 Spouštím scraper obsahu článků...\n');

  const results = [];
  const total = existingArticles.length;

  for (let i = 0; i < total; i++) {
    const article = existingArticles[i];
    const url = `${BASE_URL}/clanky/${article.slug}/`;

    console.log(`[${i + 1}/${total}] ${article.slug}`);

    try {
      const html = await fetchPage(url);

      // Extrahuj obsah
      const content = extractContent(html);
      const category = extractCategory(html) || article.category;

      results.push({
        slug: article.slug,
        title: article.title,
        author: article.author || 'DataHelp Team',
        date: article.publishedAt,
        category: category,
        coverImage: article.coverImage,
        seoDescription: article.seoDescription,
        excerpt: article.excerpt,
        content: content,
        contentLength: content.length
      });

      console.log(`   ✓ ${content.length} znaků`);

    } catch (error) {
      console.log(`   ❌ Chyba: ${error.message}`);
      results.push({
        ...article,
        content: article.excerpt || '',
        contentLength: 0
      });
    }

    // Pauza mezi requesty
    await new Promise(r => setTimeout(r, 300));
  }

  // Ulož výsledky
  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(results, null, 2), 'utf-8');

  // Statistiky
  const withContent = results.filter(r => r.contentLength > 500).length;
  const avgLength = Math.round(results.reduce((sum, r) => sum + r.contentLength, 0) / results.length);

  console.log(`\n✅ Hotovo!`);
  console.log(`📄 Uloženo: ${OUTPUT_FILE}`);
  console.log(`📊 Statistiky:`);
  console.log(`   Celkem článků: ${results.length}`);
  console.log(`   S obsahem (>500 znaků): ${withContent}`);
  console.log(`   Průměrná délka: ${avgLength} znaků`);

  // Top 5 nejdelších
  console.log(`\n📝 Nejdelší články:`);
  results
    .sort((a, b) => b.contentLength - a.contentLength)
    .slice(0, 5)
    .forEach((a, i) => {
      console.log(`   ${i + 1}. ${a.title} (${a.contentLength} znaků)`);
    });
}

main().catch(console.error);
