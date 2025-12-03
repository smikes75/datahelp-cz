# Import Blog Posts Script

Tento script umožňuje import článků do databáze z jednoduché struktury **přesně podle dokumentace**.

## Použití

### 1. Základní import

```bash
npm run import:blog
```

Tento příkaz spustí import s ukázkovými daty v souboru `importBlogPosts.ts`.

### 2. Import vlastních článků

Upravte pole `exampleArticles` v souboru `scripts/importBlogPosts.ts` nebo vytvořte vlastní soubor:

```typescript
import { importMultiplePosts, ImportArticle } from './importBlogPosts';

const myArticles: ImportArticle[] = [
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
    content: `<h2>Obsah článku</h2><p>HTML obsah...</p>`
  }
];

importMultiplePosts(myArticles);
```

## Struktura článku (100% kompatibilní s dokumentací)

```typescript
interface ImportArticle {
  // Základní - POVINNÉ
  slug: string;              // URL slug
  title: string;             // Nadpis (H1 + title tag)
  meta_description: string;  // max 160 znaků
  perex: string;             // krátký úvod pro kartu
  content: string;           // HTML obsah článku
  category: string;          // slug kategorie
  tags: string[];            // pole tagů

  // Volitelné
  published_at?: string;     // datum publikace (YYYY-MM-DD), defaultně dnes
  image?: string;            // URL náhledového obrázku
  source_name?: string;      // název zdroje (např. "TechRadar")
  source_url?: string;       // URL zdroje
}
```

## Automatické funkce

Script automaticky:

1. **Vytvoří/najde kategorii** - pokud kategorie neexistuje, vytvoří ji
2. **Vytvoří/najde tagy** - tagy se vytvářejí automaticky
3. **Převede na multijazyčnou strukturu** - české texty se zkopírují do všech jazykových variant (CS/EN/DE/IT)
4. **Spočítá čas čtení** - automaticky na základě délky obsahu (200 slov/min)
5. **Nastaví výchozí hodnoty** - views: 0, is_published: true, author: "DataHelp.cz"
6. **Přeskočí duplicity** - pokud článek se stejným slug již existuje

## Kategorie

Podporované kategorie (automaticky se vytvoří):
- `vse` - Všechny články
- `technologie` - Technologie
- `navody` - Návody
- `novinky` - Novinky
- `nase-aktivity` - Naše aktivity

Můžete použít vlastní kategorii - script ji automaticky vytvoří.

## Příklad úplného článku

```typescript
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
    <p>Společnost MSI, známá především svými herními komponenty...</p>

    <h3>Technické parametry</h3>
    <ul>
      <li>Rychlost přenosu až 20 Gbps</li>
      <li>Odolná konstrukce IP67</li>
    </ul>
  `
}
```

## Co se změní v databázi

Import script automaticky převede:

```
slug: "nazev-clanku"           → blog_posts.slug = "nazev-clanku"
title: "Název"                 → title_cs, title_en, title_de, title_it
meta_description: "Popis"      → (použije se perex)
perex: "Úvod"                  → excerpt_cs, excerpt_en, excerpt_de, excerpt_it
content: "<p>HTML</p>"         → content_cs, content_en, content_de, content_it
category: "technologie"        → najde/vytvoří blog_categories + blog_post_categories
tags: ["tag1", "tag2"]         → vytvoří blog_tags + blog_post_tags
image: "https://..."           → blog_posts.image_url
source_name: "TechRadar"       → blog_posts.source_name
source_url: "https://..."      → blog_posts.source_url
published_at: "2025-12-03"     → blog_posts.published_at
```

## Poznámky

- **100% kompatibilní** s dokumentací `bolt-data-struktura.md`
- **SEO je zachováno** - žádné změny v URL nebo stávající struktuře
- **Multijazyčnost** - české texty se automaticky zkopírují (můžete později přeložit)
- **Bezpečnost** - script nemazáže existující články, pouze přidává nové
- **Tagy** - automatické vytváření s převedením na slug

## Příklad výstupu

```
Starting import of 3 articles...

Importing article: nove-prenosne-ssd-msi-datamag
✓ Successfully imported: nove-prenosne-ssd-msi-datamag

Importing article: jak-na-klonovani-disku
✓ Successfully imported: jak-na-klonovani-disku

Importing article: co-je-raid-redundance
✓ Successfully imported: co-je-raid-redundance

=== Import Complete ===
✓ Successful: 3
✗ Failed: 0
Total: 3
```
