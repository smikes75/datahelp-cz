/**
 * Vylepšený scraper pro články z datahelp.cz
 * Používá Puppeteer pro plný JS rendering
 */

const puppeteer = require('puppeteer');
const fs = require('fs');
const path = require('path');

const BASE_URL = 'https://www.datahelp.cz';
const OUTPUT_FILE = path.join(__dirname, 'articles-full.json');

// Načti existující články (máme slugy)
const existingArticles = JSON.parse(
  fs.readFileSync(path.join(__dirname, 'articles-cleaned.json'), 'utf-8')
);

async function scrapeArticle(browser, slug) {
  const page = await browser.newPage();

  try {
    // Nastav viewport
    await page.setViewport({ width: 1280, height: 800 });

    // Blokuj zbytečné resources pro rychlost
    await page.setRequestInterception(true);
    page.on('request', (req) => {
      const type = req.resourceType();
      if (['image', 'stylesheet', 'font', 'media'].includes(type)) {
        req.abort();
      } else {
        req.continue();
      }
    });

    const url = `${BASE_URL}/clanky/${slug}/`;
    await page.goto(url, {
      waitUntil: 'networkidle2',
      timeout: 30000
    });

    // Počkej na obsah
    await page.waitForSelector('article, .article-content, .post-content, main', {
      timeout: 10000
    }).catch(() => {});

    // Extrahuj data
    const data = await page.evaluate(() => {
      // Titulek
      const titleEl = document.querySelector('h1') ||
                      document.querySelector('.article-title') ||
                      document.querySelector('title');
      const title = titleEl ? titleEl.textContent.trim() : '';

      // Autor
      const authorEl = document.querySelector('.author') ||
                       document.querySelector('[class*="author"]') ||
                       document.querySelector('.meta-author');
      const author = authorEl ? authorEl.textContent.trim() : 'DataHelp Team';

      // Datum
      const dateEl = document.querySelector('time') ||
                     document.querySelector('.date') ||
                     document.querySelector('[class*="date"]');
      let date = null;
      if (dateEl) {
        date = dateEl.getAttribute('datetime') || dateEl.textContent.trim();
      }

      // Kategorie z breadcrumbs
      const breadcrumbs = document.querySelectorAll('.breadcrumb a, nav[aria-label="breadcrumb"] a, .breadcrumbs a');
      let category = null;
      breadcrumbs.forEach(bc => {
        const text = bc.textContent.trim();
        if (text !== 'Magazín' && text !== 'Domů' && text !== 'Home' && text.length > 2) {
          category = text;
        }
      });

      // Cover image
      const ogImage = document.querySelector('meta[property="og:image"]');
      const featuredImg = document.querySelector('.featured-image img, .article-image img, article img');
      const coverImage = ogImage ? ogImage.content : (featuredImg ? featuredImg.src : null);

      // SEO description
      const metaDesc = document.querySelector('meta[name="description"]');
      const seoDescription = metaDesc ? metaDesc.content : '';

      // Hlavní obsah - hledáme správný kontejner
      const contentSelectors = [
        '.article-content',
        '.post-content',
        '.entry-content',
        'article .content',
        '.wysiwyg',
        '.text-content',
        'article',
        'main article',
        '.main-content'
      ];

      let content = '';
      let contentEl = null;

      for (const selector of contentSelectors) {
        contentEl = document.querySelector(selector);
        if (contentEl) {
          // Odstraň navigaci, sidebary, atd.
          const clone = contentEl.cloneNode(true);

          // Odstraň nepotřebné elementy
          const removeSelectors = [
            'nav', 'header', 'footer', '.navigation', '.sidebar',
            '.share', '.social', '.related', '.comments', '.breadcrumb',
            'script', 'style', '.ad', '.advertisement', 'form'
          ];

          removeSelectors.forEach(sel => {
            clone.querySelectorAll(sel).forEach(el => el.remove());
          });

          content = clone.innerHTML;

          // Pokud máme dostatečný obsah, použijeme ho
          if (content.length > 500) break;
        }
      }

      // Převeď HTML na čistší markdown-like text
      const tempDiv = document.createElement('div');
      tempDiv.innerHTML = content;

      // Zachovej strukturu
      tempDiv.querySelectorAll('h2').forEach(el => {
        el.textContent = '\n\n## ' + el.textContent.trim() + '\n\n';
      });
      tempDiv.querySelectorAll('h3').forEach(el => {
        el.textContent = '\n\n### ' + el.textContent.trim() + '\n\n';
      });
      tempDiv.querySelectorAll('p').forEach(el => {
        el.textContent = el.textContent.trim() + '\n\n';
      });
      tempDiv.querySelectorAll('li').forEach(el => {
        el.textContent = '• ' + el.textContent.trim() + '\n';
      });
      tempDiv.querySelectorAll('strong, b').forEach(el => {
        el.textContent = '**' + el.textContent.trim() + '**';
      });

      const cleanContent = tempDiv.textContent
        .replace(/\n{3,}/g, '\n\n')
        .replace(/^\s+/gm, '')
        .trim();

      // Excerpt z prvních 300 znaků
      const excerpt = cleanContent.substring(0, 300).replace(/\n/g, ' ').trim();

      return {
        title,
        author,
        date,
        category,
        coverImage,
        seoDescription,
        content: cleanContent,
        excerpt,
        contentLength: cleanContent.length
      };
    });

    await page.close();
    return data;

  } catch (error) {
    await page.close();
    throw error;
  }
}

async function main() {
  console.log('🚀 Spouštím vylepšený scraper s Puppeteer...\n');

  const browser = await puppeteer.launch({
    headless: 'new',
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });

  const results = [];
  const total = existingArticles.length;

  for (let i = 0; i < total; i++) {
    const article = existingArticles[i];
    console.log(`[${i + 1}/${total}] ${article.slug}`);

    try {
      const data = await scrapeArticle(browser, article.slug);

      results.push({
        slug: article.slug,
        title: data.title || article.title,
        author: data.author || 'DataHelp Team',
        date: data.date || article.publishedAt,
        category: data.category || article.category,
        coverImage: data.coverImage || article.coverImage,
        seoDescription: data.seoDescription || article.seoDescription,
        excerpt: data.excerpt || article.excerpt,
        content: data.content,
        contentLength: data.contentLength
      });

      console.log(`   ✓ ${data.contentLength} znaků`);

    } catch (error) {
      console.log(`   ❌ Chyba: ${error.message}`);
      // Použij existující data
      results.push({
        ...article,
        content: article.excerpt,
        contentLength: article.excerpt?.length || 0
      });
    }

    // Pauza mezi requesty
    await new Promise(r => setTimeout(r, 500));
  }

  await browser.close();

  // Ulož výsledky
  fs.writeFileSync(OUTPUT_FILE, JSON.stringify(results, null, 2), 'utf-8');

  // Statistiky
  const withContent = results.filter(r => r.contentLength > 500).length;
  const categories = {};
  results.forEach(r => {
    const cat = r.category || 'Bez kategorie';
    categories[cat] = (categories[cat] || 0) + 1;
  });

  console.log(`\n✅ Hotovo!`);
  console.log(`📄 Uloženo: ${OUTPUT_FILE}`);
  console.log(`📊 Statistiky:`);
  console.log(`   Celkem článků: ${results.length}`);
  console.log(`   S obsahem (>500 znaků): ${withContent}`);
  console.log(`   Kategorie:`);
  Object.entries(categories).sort((a, b) => b[1] - a[1]).forEach(([cat, count]) => {
    console.log(`      ${cat}: ${count}`);
  });
}

main().catch(console.error);
