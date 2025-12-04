# DataHelp.cz - Poznámky o projektu

## Přehled projektu

DataHelp.cz je web pro profesionální záchrannou službu dat. Poskytuje informace o službách, ceníky, kalkulátor cen, formuláře pro objednávky a případové studie.

**Live URL**: https://brilliant-narwhal-a23780.netlify.app
**Doména**: https://datahelp.cz

## Technický stack

- **Framework**: React 18.3 + TypeScript
- **Build tool**: Vite 5.4
- **Routing**: React Router 6.22
- **Styling**: Tailwind CSS 3.4
- **Ikony**: Lucide React
- **i18n**: i18next + react-i18next (Čeština)
- **SEO**: React Helmet Async
- **Backend**: Supabase (formuláře, blog)
- **Analytics**: Plausible
- **Deployment**: Netlify
- **Node verze**: 20

## Struktura projektu

```
src/
├── components/         # Komponenty (Logo, PageHeader, Toast, atd.)
├── pages/             # Stránky (lazy loaded routes)
├── contexts/          # React contexts (ToastContext)
├── i18n/
│   └── locales/cs/   # České překlady
├── utils/            # Utility funkce (monitoring, supabase)
└── App.tsx           # Hlavní aplikace s routing

public/               # Statické assets
├── images/          # Obrázky
├── DataHelp.cz.svg  # Logo (důležité!)
├── sitemap.xml
└── robots.txt
```

## Nedávné změny a vylepšení

### 1. Toast notifikace (místo alert())
- Vytvořen vlastní Toast component bez závislostí
- ToastContext pro globální správu notifikací
- Nahrazeny všechny `alert()` volání v Contact.tsx a OrderDiagnosticsPage.tsx
- Animace: slide-in z pravé strany s fade efektem

**Soubory:**
- `src/components/Toast.tsx` - Toast komponenta
- `src/contexts/ToastContext.tsx` - Context provider
- `src/App.tsx` - Přidán ToastProvider wrapper

### 2. Právní dokumenty (Privacy & Terms)
- Migrovány PŘESNÉ texty z datahelp.cz (požadavek GDPR)
- Struktura: 8 sekcí pro Terms, 8 sekcí + 9 práv pro Privacy
- Použita strukturovaná i18n data místo plain textu

**Soubory:**
- `src/i18n/locales/cs/privacy.ts` - Kompletní text ochrany osobních údajů
- `src/i18n/locales/cs/terms.ts` - Kompletní obchodní podmínky
- `src/pages/PrivacyPage.tsx` - Display s fallback operátory
- `src/pages/TermsPage.tsx` - Display s fallback operátory

### 3. UX vylepšení formulářů
**Problém**: Checkbox na mobilech příliš malý, náhodné klikání na odkaz podmínek

**Řešení:**
- Zvětšen checkbox: `w-4 h-4` → `w-6 h-6` (16px → 24px)
- Double-click mechanismus pro odkaz na obchodní podmínky
- Pulse animace při prvním kliknutí
- Timeout 3s pro reset

**Soubor:** `src/pages/OrderDiagnosticsPage.tsx:320-340`

### 4. Export fix pro React.lazy()
**Problém**: "Cannot convert object to primitive value" error

**Řešení**: Změněny named exports na default exports
```typescript
// Špatně:
export function PrivacyPage() { ... }

// Správně:
function PrivacyPage() { ... }
export default PrivacyPage;
```

**Soubory:**
- `src/pages/PrivacyPage.tsx`
- `src/pages/TermsPage.tsx`

### 5. Cookie Consent System
**Implementace**: Kompletní cookie consent systém podle GDPR požadavků

**Komponenty:**
- `CookieConsentContext.tsx` - Globální správa stavu consent (localStorage klíč: 'owcc')
- `CookieConsent.tsx` - Banner (pozice: `bottom-28` na mobilu, `bottom-0` na desktopu)
- `CookieSettings.tsx` - Modal pro detailní nastavení

**Kategorie cookies:**
1. Funkční (povinné, locked)
2. Analytické
3. Marketingové
4. Personalizační

**UX vylepšení:**
- Banner: 2 tlačítka (Přijmout vše / Nastavení)
- Modal: 1 tlačítko (Uložit nastavení), křížek pro zavření
- Toggle switche: iOS-style pills (20px × 40px, kulička 16px)
- Responzivní: pořadí tlačítek se mění na mobilu (Flexbox `order`)
- Z-index: Banner `z-50`, Modal `z-[60]`

**Soubory:**
- `src/contexts/CookieConsentContext.tsx`
- `src/components/CookieConsent.tsx`
- `src/components/CookieSettings.tsx`
- `src/i18n/locales/cs/cookies.ts` - Přesný text z datahelp.cz

### 6. Supabase formuláře - Oprava a konfigurace
**Problém**: Formuláře nefungovaly - chyběla Supabase credentials a databázové tabulky

**Řešení:**
1. **Dočasně hardcodované credentials** v `src/utils/supabaseClient.ts`
   - Pro lokální vývoj funguje okamžitě
   - Pro produkci: environment variables v Netlify

2. **Vytvořeny databázové tabulky:**
   - `contact_forms` - Kontaktní formulář (s `user_agent` sloupcem)
   - `diagnostic_orders` - Objednávky diagnostiky

**Struktura diagnostic_orders tabulky:**
```sql
CREATE TABLE diagnostic_orders (
  id uuid PRIMARY KEY,
  customer_type text,           -- 'individual' nebo 'company'
  company_name text,
  contact_person text,
  first_name text,
  last_name text,
  phone text NOT NULL,
  email text NOT NULL,
  description text NOT NULL,
  delivery_method text NOT NULL, -- 'personal', 'shipping', 'courier'
  pickup_address text,           -- Pro shipping metodu
  pickup_city text,
  pickup_zip text,
  language text DEFAULT 'cs',
  status text DEFAULT 'pending',
  user_agent text,
  processed boolean DEFAULT false,
  created_at timestamptz,
  updated_at timestamptz
);
```

**Row Level Security (RLS):**
- INSERT: Kdokoliv může vložit (anonymní uživatelé)
- SELECT/UPDATE/DELETE: Pouze autentizovaní uživatelé

**Soubory:**
- `src/utils/supabaseClient.ts` - Hardcoded credentials (dočasně)
- `supabase/migrations/20251128102534_create_diagnostic_orders_table.sql`

**Status:**
- ✅ Kontaktní formulář funguje
- ✅ Všechny 3 varianty objednávek fungují (osobní předání, svoz kurýrem, zaslání zásilkovnou)

## Známé problémy a řešení

### Logo se nezobrazuje na Netlify

**Problém**: Logo `DataHelp.cz.svg` se nezobrazuje na produkci, ale funguje lokálně

**Řešení**: Přidány SVG headers do `netlify.toml`:
```toml
[[headers]]
  for = "/*.svg"
  [headers.values]
    Cache-Control = "public, max-age=31536000, immutable"
    Content-Type = "image/svg+xml; charset=utf-8"
```

**Soubor:** `netlify.toml:48-52`

### Supabase credentials
**Aktuální stav**: Credentials jsou **dočasně hardcoded** v `src/utils/supabaseClient.ts`

**Důvod**: Environment variables se nepodařilo načíst přes Vite `.env` systém

**Poznámka**:
- Supabase ANON key je veřejný klíč, takže hardcoding je bezpečný
- Pro produkci jsou credentials nastavené v Netlify Environment Variables
- Row Level Security (RLS) chrání databázi i s public key

**Soubor:** `src/utils/supabaseClient.ts:3-5`

### i18n undefined errors
Přidány fallback operátory pro .map() volání:
```typescript
(t('key', { returnObjects: true }) as string[] || []).map(...)
```

**Důvod**: i18n nemusí být plně inicializován při prvním renderu

## Deployment

### Netlify konfigurace
- Build command: `npm run build`
- Publish directory: `dist`
- Node version: 20
- Automatické redirecty pro SPA: `/* -> /index.html`

### Security Headers
- CSP (Content Security Policy)
- X-Frame-Options: DENY
- X-Content-Type-Options: nosniff
- Cache-Control pro assets (1 rok)

**Soubor:** `netlify.toml`

### Build optimalizace
- Code splitting (vendor, ui, i18n, pages chunks)
- Manual chunks v `vite.config.ts:20-28`
- Asset hashing pro cache busting
- Source maps zapnuté pro debugging

## Důležité poznámky

### SEO
- Každá stránka má vlastní `<SEO>` komponentu
- Canonical URLs ukazují na https://datahelp.cz
- Sitemap.xml v `/public`
- Robots.txt v `/public`

### Formuláře
Tři typy doručení v OrderDiagnosticsPage:
1. **Shipping** - Zaslání přepravní službou
2. **Courier** - Osobní vyzvednutí kurýrem
3. **Personal** - Osobní předání

Každý typ má vlastní pole a validace.

### i18n struktura
```typescript
// Příklad struktury
export const orderDiagnostics = {
  title: 'Objednat diagnostiku',
  form: {
    deliveryMethod: { ... },
    shipping: { fields: { ... } },
    courier: { fields: { ... } },
    personal: { fields: { ... } }
  }
}
```

### Error Boundary
- Globální error handling v `App.tsx`
- Dev mode: zobrazuje error details a stack trace
- Production: user-friendly zpráva s tlačítky "Refresh" a "Go to Homepage"

**Soubor:** `src/components/ErrorBoundary.tsx`

### Logo komponenta
```typescript
// src/components/Logo.tsx
<img
  src="/DataHelp.cz.svg"  // Z public folder
  alt="DataHelp.cz"
  className="h-12 md:h-[3.72rem] w-auto"
/>
```

## Git workflow

### Hlavní branch
- `master` - hlavní vývojová větev
- Žádný speciální main branch pro PR

### Commit zprávy
Formát: `Type: Description`

Příklady:
- `Fix: Add SVG headers for Netlify to display logo correctly`
- `Feature: Implement toast notifications`
- `Fix: Change domain from datahelp.eu to datahelp.cz`

## Užitečné příkazy

```bash
# Vývoj
npm run dev              # Spustí dev server na http://localhost:5174

# Build & Preview
npm run build            # Produkční build do /dist
npm run preview          # Preview produkčního buildu

# Analýza
npm run analyze          # Bundle size analýza

# Testing
npm run test             # Vitest unit testy
npm run test:coverage    # Test coverage
npm run test:e2e         # Cypress E2E testy

# Lint
npm run lint             # ESLint kontrola
```

## Kontakt

**Společnost**: DataHelp s.r.o.
**Email**: info@datahelp.cz
**IČO**: 21642401
**Jednatel**: Michal Šmída

---

*Poslední aktualizace: 4. prosince 2024 (21:00)*

## Changelog

### 4. prosince 2024 - Session 2 (večer)

#### Blog migrace z datahelp.cz
- ✅ Vytvořen scraper pro stažení článků z datahelp.cz/clanky (`scripts/scrape-content.cjs`)
- ✅ Staženo 80 článků s plným obsahem (465 KB textu)
- ✅ Vytvořeny SQL skripty pro Supabase:
  - `scripts/create-blog-tables.sql` - vytvoření tabulek
  - `scripts/import-articles-full.sql` - import článků
- ✅ Blog tabulky v Supabase:
  - `blog_posts` - články s vícejazyčnou podporou
  - `blog_categories` - kategorie (4: Zálohování dat, První pomoc, Technologie, Naše aktivity)
  - `blog_post_categories` - many-to-many propojení
- ✅ SEO redirecty v `netlify.toml`: `/clanky/*` → `/blog/*` (301)
- ✅ Aktualizovány kategorie v `BlogPage.tsx`
- ✅ Fix `blog.ts`: `view_count` místo `views`, odstraněna závislost na `blog_tags`

#### UI vylepšení - Nonstop hotline tlačítko (mobil)
- ✅ Odstraněno bílé "Volat" tlačítko z footeru (`StickyCTA`)
- ✅ Přidáno oranžové "Nonstop hotline" tlačítko:
  - Homepage: `src/components/HomeContact.tsx`
  - Order Diagnostics: `src/pages/OrderDiagnosticsPage.tsx`
- ✅ Styling tlačítka:
  - Oranžové pozadí (`bg-accent`)
  - Modrý outline (`ring-2 ring-primary`)
  - Hover efekt: scale (`hover:scale-105`)
  - Velikost: `py-3 px-6 text-base`
  - Vycentrované (`inline-flex`, `justify-center`)

#### Fix: Bílý pruh nad patičkou (mobil)
- ✅ Odstraněn `pb-16` z `<main>` v `App.tsx`
- ✅ Upraven padding v `HomeContact.tsx`: `pb-8 md:pb-16`

**Soubory změněné v této session:**
- `src/App.tsx` - odstraněn bottom padding
- `src/components/Footer.tsx` - odstraněn StickyCTA
- `src/components/HomeContact.tsx` - přidáno hotline tlačítko
- `src/pages/OrderDiagnosticsPage.tsx` - přidáno hotline tlačítko
- `src/pages/BlogPage.tsx` - aktualizovány kategorie
- `src/utils/blog.ts` - fix view_count, odstranění tags
- `netlify.toml` - SEO redirecty pro blog
- `scripts/*.cjs` - scraper a SQL generátory

### 4. prosince 2024 - Session 1 (odpoledne)
- ✅ Implementován Cookie Consent System (GDPR compliant)
- ✅ Opraveny Supabase formuláře (hardcoded credentials jako dočasné řešení)
- ✅ Vytvořena tabulka `diagnostic_orders` v Supabase
- ✅ UX vylepšení: Cookie Settings modal (zjednodušená tlačítka, iOS-style pills)
- ✅ Z-index fix: odstranění sticky headeru v Cookie Settings
- ✅ Toggle switche responzivní: 20px × 40px, kulička 16px
- ✅ Fix: Cookie toggle na mobilu (pilulka místo kruhu)
