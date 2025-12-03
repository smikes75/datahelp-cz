import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  throw new Error('Missing Supabase environment variables');
}

const supabase = createClient(supabaseUrl, supabaseKey);

interface ImportArticle {
  slug: string;
  title: string;
  meta_description: string;
  perex: string;
  content: string;
  category: string;
  tags: string[];
  published_at?: string;
  image?: string;
  source_name?: string;
  source_url?: string;
}

async function findOrCreateCategory(categorySlug: string): Promise<string | null> {
  const { data: existing } = await supabase
    .from('blog_categories')
    .select('id')
    .eq('slug', categorySlug)
    .maybeSingle();

  if (existing) {
    return existing.id;
  }

  const categoryNames: Record<string, { cs: string; en: string; de: string; it: string }> = {
    'vse': { cs: 'Všechny články', en: 'All Articles', de: 'Alle Artikel', it: 'Tutti gli articoli' },
    'technologie': { cs: 'Technologie', en: 'Technology', de: 'Technologie', it: 'Tecnologia' },
    'navody': { cs: 'Návody', en: 'Guides', de: 'Anleitungen', it: 'Guide' },
    'novinky': { cs: 'Novinky', en: 'News', de: 'Neuigkeiten', it: 'Notizie' },
    'nase-aktivity': { cs: 'Naše aktivity', en: 'Our Activities', de: 'Unsere Aktivitäten', it: 'Le nostre attività' }
  };

  const names = categoryNames[categorySlug] || { cs: categorySlug, en: categorySlug, de: categorySlug, it: categorySlug };

  const { data: newCategory, error } = await supabase
    .from('blog_categories')
    .insert({
      slug: categorySlug,
      name_cs: names.cs,
      name_en: names.en,
      name_de: names.de,
      name_it: names.it
    })
    .select('id')
    .single();

  if (error) {
    console.error('Error creating category:', error);
    return null;
  }

  return newCategory.id;
}

async function findOrCreateTag(tagName: string): Promise<string | null> {
  const tagSlug = tagName.toLowerCase().replace(/\s+/g, '-');

  const { data: existing } = await supabase
    .from('blog_tags')
    .select('id')
    .eq('slug', tagSlug)
    .maybeSingle();

  if (existing) {
    return existing.id;
  }

  const { data: newTag, error } = await supabase
    .from('blog_tags')
    .insert({
      slug: tagSlug,
      name_cs: tagName,
      name_en: tagName,
      name_de: tagName,
      name_it: tagName
    })
    .select('id')
    .single();

  if (error) {
    console.error('Error creating tag:', error);
    return null;
  }

  return newTag.id;
}

function calculateReadingTime(content: string): number {
  const wordsPerMinute = 200;
  const text = content.replace(/<[^>]*>/g, '');
  const words = text.trim().split(/\s+/).length;
  return Math.ceil(words / wordsPerMinute);
}

export async function importBlogPost(article: ImportArticle): Promise<boolean> {
  try {
    console.log(`Importing article: ${article.slug}`);

    const { data: existing } = await supabase
      .from('blog_posts')
      .select('id')
      .eq('slug', article.slug)
      .maybeSingle();

    if (existing) {
      console.log(`Article ${article.slug} already exists, skipping...`);
      return true;
    }

    const categoryId = await findOrCreateCategory(article.category);
    if (!categoryId) {
      console.error(`Failed to find or create category: ${article.category}`);
      return false;
    }

    const readingTime = calculateReadingTime(article.content);

    const { data: post, error: postError } = await supabase
      .from('blog_posts')
      .insert({
        slug: article.slug,
        title_cs: article.title,
        title_en: article.title,
        title_de: article.title,
        title_it: article.title,
        excerpt_cs: article.perex,
        excerpt_en: article.perex,
        excerpt_de: article.perex,
        excerpt_it: article.perex,
        content_cs: article.content,
        content_en: article.content,
        content_de: article.content,
        content_it: article.content,
        author: 'DataHelp.eu',
        image_url: article.image || 'https://images.unsplash.com/photo-1558494949-ef010cbdcc31',
        published_at: article.published_at || new Date().toISOString().split('T')[0],
        is_published: true,
        reading_time_minutes: readingTime,
        views: 0,
        source_name: article.source_name || null,
        source_url: article.source_url || null
      })
      .select('id')
      .single();

    if (postError) {
      console.error(`Error inserting post ${article.slug}:`, postError);
      return false;
    }

    const { error: categoryLinkError } = await supabase
      .from('blog_post_categories')
      .insert({
        post_id: post.id,
        category_id: categoryId
      });

    if (categoryLinkError) {
      console.error(`Error linking category for ${article.slug}:`, categoryLinkError);
    }

    for (const tagName of article.tags) {
      const tagId = await findOrCreateTag(tagName);
      if (tagId) {
        const { error: tagLinkError } = await supabase
          .from('blog_post_tags')
          .insert({
            post_id: post.id,
            tag_id: tagId
          });

        if (tagLinkError) {
          console.error(`Error linking tag ${tagName} for ${article.slug}:`, tagLinkError);
        }
      }
    }

    console.log(`✓ Successfully imported: ${article.slug}`);
    return true;
  } catch (error) {
    console.error(`Error importing article ${article.slug}:`, error);
    return false;
  }
}

export async function importMultiplePosts(articles: ImportArticle[]): Promise<void> {
  console.log(`Starting import of ${articles.length} articles...\n`);

  let successCount = 0;
  let failCount = 0;

  for (const article of articles) {
    const success = await importBlogPost(article);
    if (success) {
      successCount++;
    } else {
      failCount++;
    }
  }

  console.log(`\n=== Import Complete ===`);
  console.log(`✓ Successful: ${successCount}`);
  console.log(`✗ Failed: ${failCount}`);
  console.log(`Total: ${articles.length}`);
}

const exampleArticles: ImportArticle[] = [
  {
    slug: "nove-prenosne-ssd-msi-datamag",
    title: "Nové přenosné SSD MSI Datamag: Odolnost a rychlost v jednom balení",
    meta_description: "MSI představuje odolné přenosné SSD Datamag s rychlostí 20 Gbps a MagSafe. Jak chránit data na externích discích?",
    perex: "Společnost MSI vstupuje na trh přenosných SSD disků s modelem Datamag, který kombinuje vysokou rychlost s odolnou konstrukcí.",
    category: "technologie",
    tags: ["SSD disky", "přenosná úložiště", "záchrana dat", "MSI"],
    image: "https://images.unsplash.com/photo-1597872200969-2b65d56bd16b",
    source_name: "TechRadar",
    source_url: "https://www.techradar.com/example",
    published_at: "2025-12-03",
    content: `
      <h2>Nová éra přenosných SSD</h2>
      <p>Společnost MSI, známá především svými herními komponenty, rozšiřuje své portfolio o přenosné SSD disky s modelem Datamag. Tento disk kombinuje vysokou rychlost přenosu dat s odolnou konstrukcí a moderními funkcemi.</p>

      <h3>Technické parametry</h3>
      <ul>
        <li>Rychlost přenosu až 20 Gbps</li>
        <li>Odolná konstrukce IP67</li>
        <li>Podpora MagSafe pro Apple zařízení</li>
        <li>Kapacity od 500 GB do 2 TB</li>
      </ul>

      <h3>Ochrana dat na přenosných discích</h3>
      <p>I když přenosné SSD disky jsou odolnější než tradiční mechanické disky, stále existuje riziko ztráty dat. Důležité je pravidelně zálohovat data a v případě problémů kontaktovat specialisty na záchranu dat.</p>

      <h2>Závěr</h2>
      <p>MSI Datamag je zajímavou volbou pro uživatele, kteří hledají spolehlivé a rychlé přenosné úložiště s moderními funkcemi.</p>
    `
  },
  {
    slug: "jak-na-klonovani-disku",
    title: "Jak na klonování disku? Návod od A do Z",
    meta_description: "Kompletní návod na klonování disku ve Windows 10 a 11. Nejlepší programy a postup krok za krokem.",
    perex: "Potřebujete přenést systém na nový disk? Ukážeme vám jak na to bez ztráty dat.",
    category: "navody",
    tags: ["klonování disku", "Windows", "návod"],
    image: "https://images.unsplash.com/photo-1588508065123-287b28e013da",
    published_at: "2025-11-28",
    content: `
      <h2>Co je klonování disku?</h2>
      <p>Klonování disku je proces vytvoření přesné kopie celého obsahu jednoho disku na druhý. Na rozdíl od běžného kopírování souborů se klonují i skryté soubory, systémové oddíly a bootovací sektor.</p>

      <h3>Kdy potřebujete klonování?</h3>
      <ul>
        <li>Upgrade na větší nebo rychlejší disk</li>
        <li>Přechod z HDD na SSD</li>
        <li>Vytvoření zálohy celého systému</li>
        <li>Migrace na nový počítač</li>
      </ul>

      <h3>Nejlepší programy pro klonování</h3>
      <p>Mezi osvědčené nástroje patří Macrium Reflect, Clonezilla, nebo EaseUS Todo Backup. Vždy doporučujeme používat ověřené programy a před klonováním si data zazálohovat.</p>

      <h2>Postup klonování krok za krokem</h2>
      <ol>
        <li>Připojte nový disk k počítači</li>
        <li>Spusťte program pro klonování</li>
        <li>Vyberte zdrojový a cílový disk</li>
        <li>Zkontrolujte nastavení a spusťte klonování</li>
        <li>Po dokončení otestujte bootování z nového disku</li>
      </ol>

      <h3>Časté problémy</h3>
      <p>Pokud po klonování systém nebootuje, může být problém s bootovacím sektorem. V případě problémů s klonováním nebo potřeby záchraně dat z poškozeného disku nás kontaktujte.</p>
    `
  },
  {
    slug: "co-je-raid-redundance",
    title: "Co je to redundance u diskového pole RAID",
    meta_description: "Vysvětlení redundance dat u RAID polí. Jaké úrovně RAID existují a jak chrání vaše data.",
    perex: "RAID pole nabízí ochranu dat pomocí redundance. Jak funguje a jakou úroveň zvolit?",
    category: "technologie",
    tags: ["RAID", "servery", "redundance", "záloha dat"],
    image: "https://images.unsplash.com/photo-1558494949-ef010cbdcc31",
    published_at: "2025-11-20",
    content: `
      <h2>Co je RAID?</h2>
      <p>RAID (Redundant Array of Independent Disks) je technologie, která kombinuje více fyzických disků do jednoho logického celku. Hlavním účelem je zvýšit výkon, kapacitu nebo poskytnut ochranu dat pomocí redundance.</p>

      <h3>Základní úrovně RAID</h3>
      <ul>
        <li><strong>RAID 0</strong> - Vysoký výkon, žádná ochrana dat</li>
        <li><strong>RAID 1</strong> - Zrcadlení, plná redundance</li>
        <li><strong>RAID 5</strong> - Rovnováha mezi výkonem a ochranou</li>
        <li><strong>RAID 6</strong> - Vysoká ochrana, odolnost vůči selhání 2 disků</li>
        <li><strong>RAID 10</strong> - Kombinace RAID 1 a 0, vysoký výkon i ochrana</li>
      </ul>

      <h3>Co je redundance?</h3>
      <p>Redundance znamená ukládání dat na více míst současně. Pokud jeden disk selže, data jsou stále dostupná z ostatních disků v poli. To však není náhrada za zálohu!</p>

      <h2>RAID není záloha</h2>
      <p>Důležité je si uvědomit, že RAID chrání pouze proti selhání hardwaru. Nechrání proti:</p>
      <ul>
        <li>Náhodnému smazání souborů</li>
        <li>Ransomware a virům</li>
        <li>Poškození dat</li>
        <li>Přírodním katastrofám</li>
      </ul>

      <h3>Záchrana dat z RAID</h3>
      <p>Pokud dojde k selhání RAID pole, je důležité ihned přestat pole používat a kontaktovat specialistu. Nesprávné pokusy o opravu mohou data nenávratně poškodit.</p>

      <h2>Závěr</h2>
      <p>RAID je užitečná technologie pro zvýšení dostupnosti a výkonu, ale vždy ji kombinujte s pravidelným zálohováním.</p>
    `
  }
];

if (require.main === module) {
  importMultiplePosts(exampleArticles)
    .then(() => process.exit(0))
    .catch((error) => {
      console.error('Fatal error:', error);
      process.exit(1);
    });
}
