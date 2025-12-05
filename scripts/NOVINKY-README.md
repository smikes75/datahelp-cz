# Novinky - Dokumentace pro import

## Přehled

Na webu **www.datahelp.cz** existují 2 typy obsahového obsahu v kategorii "Novinky":

### ❌ ŠPATNĚ - Dlouhé články s obrázky
- **URL**: `/clanky/?kategorie=novinky`
- **Detail**: `/clanky/slug/`
- **Typ**: Dlouhé články s obrázky (průměrně 6300 znaků)
- **Počet**: 103 článků
- **Příklad**: "Jak se vyznat v USB? Průvodce generacemi..." (11 062 znaků)

### ✅ SPRÁVNĚ - Krátké textové novinky
- **URL**: `/clanky/kategorie/novinky/` (seznam)
- **Detail**: `/novinky/slug/` (detaily jednotlivých novinek)
- **Typ**: Krátké textové zprávy BEZ obrázků (průměrně 124 znaků)
- **Počet**: 57 novinek
- **Příklad**: "Samsung odhalil rychlé SSD 990 evo" (107 znaků)

---

## Struktura krátkých novinek (správných)

### Seznam novinek
```
URL: https://www.datahelp.cz/clanky/kategorie/novinky/
Paginace: /clanky/kategorie/novinky/2/, /3/, /4/, atd.
```

**HTML struktura:**
- Seznam odkazů na novinky: `href="/novinky/slug/"`
- Titulky: Buď přímo v odkazu, nebo slug převedený na text
- Data: Formát `DD.MM.YYYY` (např. `16.3.2025`)
- Obrázky: **ŽÁDNÉ** (image_url = NULL)

### Detail novinky
```
URL: https://www.datahelp.cz/novinky/slug/
```

**Obsah:**
- Velmi krátký text (100-150 znaků)
- Typicky jen jedna až dvě věty
- Technické zprávy typu: "Společnost X uvedla produkt Y s vlastností Z"
- BEZ obrázků
- BEZ markdown formátování (jen prostý text)

---

## Příklady správných novinek

### 1. Samsung odhalil rychlé SSD 990 evo
```
Slug: samsung-odhalil-rychle-ssd-990-evo
Content: "Společnost Samsung představila nové SSD 990 evo s rychlostí čtení až 5000 MB/s."
Délka: 107 znaků
Image: NULL
```

### 2. Pevné disky budou mít za 2 roky až 100 TB
```
Slug: pevne-disky-budou-mit-za-2-roky-az-100-tb
Content: "Výrobci pevných disků plánují, že za 2 roky budou dostupné HDD s kapacitou až 100 TB."
Délka: 121 znaků
Image: NULL
```

### 3. Backblaze: statistiky poruchovosti hdd za rok 2023
```
Slug: backblaze-statistiky-poruchovosti-hdd-za-rok-2023
Content: "Backblaze zveřejnil výroční statistiky poruchovosti pevných disků za rok 2023."
Délka: 139 znaků
Image: NULL
```

---

## Scraping - Jak stáhnout správné novinky

### Soubor: `scrape-short-news.cjs`

**Krok 1: Stažení seznamu**
```javascript
// URL pattern pro seznam
const listUrl = 'https://www.datahelp.cz/clanky/kategorie/novinky/';
const listUrl2 = 'https://www.datahelp.cz/clanky/kategorie/novinky/2/';

// Regex pro extrakci slugů
const linkRegex = /href="\/novinky\/([^"\/]+)\/"/gi;
```

**Krok 2: Stažení detailů**
```javascript
// URL pattern pro detail
const detailUrl = `https://www.datahelp.cz/novinky/${slug}/`;

// Extrakce obsahu z <article> nebo <div class="content">
// Převod HTML na prostý text (bez markdown)
```

**Důležité:**
- Pauza mezi requesty: 300ms
- URL mají formát `/novinky/slug/` (NE `/clanky/kategorie/novinky/slug/`)
- Titulky jsou v odkazech nebo převedené ze slugu
- Data ve formátu `DD.MM.YYYY` → převést na `YYYY-MM-DD`

---

## SQL Import do Supabase

### Soubor: `import-short-news.sql`

**Struktura:**
```sql
-- 1. Kategorie Novinky
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it)
VALUES ('novinky', 'Novinky', 'Novinky', 'Novinky', 'Novinky')
ON CONFLICT (slug) DO NOTHING;

-- 2. Novinky
INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'samsung-odhalil-rychle-ssd-990-evo',
  'Samsung odhalil rychlé SSD 990 evo',
  'Společnost Samsung představila...',
  'Společnost Samsung představila nové SSD 990 evo s rychlostí čtení až 5000 MB/s.',
  'DataHelp Team',
  NULL,  -- ❗ Novinky NEMAJÍ obrázky
  '2023-11-15',
  true,
  1,  -- 1-3 minuty čtení (krátký text)
  'Společnost Samsung představila...'
);

-- 3. Propojení s kategorií
INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'samsung-odhalil-rychle-ssd-990-evo' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;
```

**Klíčové vlastnosti:**
- `image_url` = **NULL** (žádné obrázky!)
- `reading_time_minutes` = 1-3 min (krátký text)
- `content_cs` = Prostý text (100-150 znaků)
- `author` = 'DataHelp Team'

---

## Frontend - Zobrazení novinek

### Soubor: `src/pages/BlogPage.tsx`

```typescript
const categories = [
  { id: 'all', name: 'Vše' },
  { id: 'zalohovani-dat', name: 'Zálohování dat' },
  { id: 'prvni-pomoc', name: 'První pomoc' },
  { id: 'technologie', name: 'Technologie' },
  { id: 'nase-aktivity', name: 'Naše aktivity' },
  { id: 'novinky', name: 'Novinky' }  // ✅ Přidáno
];
```

**Zobrazení:**
- Novinky se zobrazují stejně jako články (ArticleCard komponenta)
- Placeholder obrázek, protože `image_url` je NULL
- Krátký text v excerpt
- Filtr "Novinky" v category menu

---

## Statistiky

### Krátké novinky (správné) ✅
- **Počet**: 57 novinek
- **Průměrná délka**: 124 znaků
- **Celkový objem**: 7.1 KB
- **Reading time**: 1-3 minuty
- **Obrázky**: 0 (žádné)
- **Formát**: Prostý text

### Dlouhé články (špatné) ❌
- **Počet**: 103 článků
- **Průměrná délka**: 6304 znaků
- **Celkový objem**: 649 KB
- **Reading time**: 2-30 minut
- **Obrázky**: Většina má obrázky
- **Formát**: Markdown s nadpisy, seznamy, atd.

---

## Vygenerované soubory

```
scripts/
├── short-news.json                 # 57 krátkých novinek (JSON)
├── import-short-news.sql           # SQL pro import do Supabase
├── scrape-short-news.cjs           # Scraper pro krátké novinky
├── generate-sql-short-news.cjs     # Generátor SQL
└── test-news-html.cjs              # Test scraper (analýza HTML)
```

---

## Příkazy pro spuštění

### 1. Stažení novinek
```bash
cd /Users/mik/Documents/claude/scripts
node scrape-short-news.cjs
```

**Output:**
- `short-news.json` (57 novinek)

### 2. Generování SQL
```bash
node generate-sql-short-news.cjs
```

**Output:**
- `import-short-news.sql` (SQL skript)

### 3. Import do Supabase
```bash
# Možnost 1: SQL Editor v Supabase dashboardu
# Zkopíruj obsah import-short-news.sql a spusť

# Možnost 2: psql příkazem
psql <connection-string> < import-short-news.sql
```

---

## Časté chyby a řešení

### ❌ Chyba: Staženy dlouhé články místo krátkých novinek
**Příčina**: Špatná URL `/clanky/?kategorie=novinky`
**Řešení**: Použít `/clanky/kategorie/novinky/` pro seznam a `/novinky/slug/` pro detail

### ❌ Chyba: Scraper zachytí čísla stránek (2, 3, 4) jako slugy
**Příčina**: Špatný regex pattern
**Řešení**: Použít přesný pattern `href="\/novinky\/([^"\/]+)\/"`

### ❌ Chyba: Novinky mají obrázky v databázi
**Příčina**: Použit špatný scraper
**Řešení**: `image_url` musí být **NULL** pro všechny novinky

### ❌ Chyba: Obsah novinek je příliš dlouhý (>500 znaků)
**Příčina**: Staženy dlouhé články místo krátkých novinek
**Řešení**: Krátké novinky mají 100-150 znaků, ne 6000+

---

## SQL Tabulky

### blog_posts
```sql
slug TEXT UNIQUE NOT NULL           -- např. "samsung-odhalil-rychle-ssd-990-evo"
title_cs TEXT NOT NULL              -- "Samsung odhalil rychlé SSD 990 evo"
excerpt_cs TEXT                     -- Krátký popis (100-200 znaků)
content_cs TEXT                     -- Plný obsah (100-150 znaků pro novinky)
author TEXT DEFAULT 'DataHelp Team' -- Vždy "DataHelp Team"
image_url TEXT                      -- NULL pro novinky!!!
published_at TIMESTAMPTZ            -- Datum publikace (YYYY-MM-DD)
is_published BOOLEAN DEFAULT false  -- true
reading_time_minutes INTEGER        -- 1-3 min pro novinky
```

### blog_categories
```sql
slug TEXT UNIQUE NOT NULL           -- "novinky"
name_cs TEXT NOT NULL               -- "Novinky"
```

### blog_post_categories (many-to-many)
```sql
post_id UUID                        -- FK -> blog_posts.id
category_id UUID                    -- FK -> blog_categories.id (novinky)
```

---

## Kontrolní checklist před importem

- [ ] Staženo 57 novinek (ne 103)
- [ ] Průměrná délka ~124 znaků (ne 6300)
- [ ] Všechny novinky mají `image_url = NULL`
- [ ] URL formát `/novinky/slug/` (ne `/clanky/slug/`)
- [ ] Reading time 1-3 minuty (ne 2-30)
- [ ] Kategorie slug = "novinky"
- [ ] Obsah je prostý text (ne markdown)

---

## Závěr

**Správné novinky** jsou **krátké textové zprávy** (100-150 znaků) **bez obrázků** z URL `/novinky/slug/`.

**NIKDY** nepoužívat dlouhé články z `/clanky/?kategorie=novinky` - ty jsou jiný typ obsahu!

---

*Poslední aktualizace: 4. prosince 2024*
*Autor: Claude Agent*
