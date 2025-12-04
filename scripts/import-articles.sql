-- ========================================
-- Import článků z datahelp.cz do Supabase
-- Generováno: 2025-12-04T13:15:30.807Z
-- Počet článků: 80
-- ========================================

-- 1. Vložení kategorií
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it) VALUES
  ('prvni-pomoc', 'První pomoc', 'První pomoc', 'První pomoc', 'První pomoc'),
  ('zalohovani-dat-a-prevence-ztraty-dat', 'Zálohování dat a prevence ztráty dat', 'Zálohování dat a prevence ztráty dat', 'Zálohování dat a prevence ztráty dat', 'Zálohování dat a prevence ztráty dat'),
  ('technologie', 'Technologie', 'Technologie', 'Technologie', 'Technologie'),
  ('nase-aktivity', 'Naše aktivity', 'Naše aktivity', 'Naše aktivity', 'Naše aktivity')
ON CONFLICT (slug) DO NOTHING;

-- 2. Vložení článků

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-obnovit-iphone-ze-zalohy',
  'Jak obnovit iphone ze zálohy?',
  'Zálohování dat je v dnešní době velmi důležité. Může se vám hodit nejen kvůli případné ztrátě zařízení Apple iPhone, ale také pro obnovení smazaných zpráv, e-mailů nebo kontaktů. ',
  'Zálohování dat je v dnešní době velmi důležité. Může se vám hodit nejen kvůli případné ztrátě zařízení Apple iPhone, ale také pro obnovení smazaných zpráv, e-mailů nebo kontaktů. ',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2021-08-23',
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-odblokovat-iphone-navod-krok-za-krokem',
  'Jak odblokovat iphone? návod krok za krokem',
  'Zadali jste do svého iPhonu několikrát za sebou nesprávný přístupový kód, a telefon se vám tak zablokoval? Poradíme vám, jak jej zase odblokovat a opět bez problému používat.',
  'Zadali jste do svého iPhonu několikrát za sebou nesprávný přístupový kód, a telefon se vám tak zablokoval? Poradíme vám, jak jej zase odblokovat a opět bez problému používat.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-vycistit-mobil-od-prachu',
  'Jak vyčistit mobil od prachu, virů a bakterií?',
  'Mobilní telefon dostává v průběhu svého života pořádně zabrat, v důsledku čehož se ve všech portech mobilního zařízení hromadí spousta prachu.',
  'Mobilní telefon dostává v průběhu svého života pořádně zabrat, v důsledku čehož se ve všech portech mobilního zařízení hromadí spousta prachu.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2021-07-19',
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-zalohuji-data-profesionalove',
  'Jak zálohují data profesionálové ve svém oboru?',
  'Ptáme se vás – lidí z různých profesí, protože data jsou všude kolem nás. ',
  'Ptáme se vás – lidí z různých profesí, protože data jsou všude kolem nás. ',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'zachrana-microsd-karty-za-56-tisic-nebo-2-tisice-korun',
  'Záchrana microsd karty: za 56 tisíc, nebo 2 tisíce korun?',
  'Rada pro vás. Porovnejte si v klidu nabídnuté ceny za záchranu dat. Ukážeme proč.',
  'Rada pro vás. Porovnejte si v klidu nabídnuté ceny za záchranu dat. Ukážeme proč.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'historie-pevnych-disku',
  'Historie pevných disků: malý průvodce',
  'První plotnový disk byl vyšší než lednička, vážil půl tuny a dnes by se na něj vešla jedna kvalitní fotografie pořízená mobilním telefonem.',
  'První plotnový disk byl vyšší než lednička, vážil půl tuny a dnes by se na něj vešla jedna kvalitní fotografie pořízená mobilním telefonem.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'co-je-sindelovy-zapis-neboli-technologie-smr',
  'Co je šindelový zápis neboli technologie smr?',
  '„Šindeláky“ jsou v našem oboru zajímavé a aktuální téma. Jde o dokonalou ukázku daně ve smyslu „něco“ za něco“.',
  '„Šindeláky“ jsou v našem oboru zajímavé a aktuální téma. Jde o dokonalou ukázku daně ve smyslu „něco“ za něco“.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'skodi-pevnemu-disku-vlhkost-vzduchu',
  'Škodí pevnému disku vlhkost vzduchu?',
  'Podle seriózních výzkumů může vlhkost ovzduší poškodit jednotku pevného disku (HDD) mnohem více než teplo. Je tomu tak, či není?',
  'Podle seriózních výzkumů může vlhkost ovzduší poškodit jednotku pevného disku (HDD) mnohem více než teplo. Je tomu tak, či není?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'zalohovani-dat-pro-firmy-rady-a-tipy',
  'Zálohování dat pro firmy? rady a tipy',
  'Dnes jsme si detailně posvítili na firemní prostředí dat a a řešili jsme populární téma zálohování.',
  'Dnes jsme si detailně posvítili na firemní prostředí dat a a řešili jsme populární téma zálohování.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'proc-muze-byt-obnova-dat-z-ssd-slozitejsi-nez-v-pripade-hdd',
  'Proč může být obnova dat z ssd složitější než v případě hdd?',
  '4 hlavní argumenty, proč tomu tak může být.',
  '4 hlavní argumenty, proč tomu tak může být.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-obnovit-ztracene-kontakty-v-androidu',
  'Jak obnovit ztracené kontakty v androidu?',
  'Omylem smazaní kontakt v telefonu? Víme a radíme, jak to co nejrychleji napravit a dostat data zpátky.',
  'Omylem smazaní kontakt v telefonu? Víme a radíme, jak to co nejrychleji napravit a dostat data zpátky.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-maximalizovat-zivotnost-ssd',
  'Jak maximalizovat životnost ssd?',
  'SSD má řadu výhod, ale nesmrtelnost mezi ně nepatří. Ale známe fígle, které vám mohou pomoci vyždímat z nich to nejlepší.',
  'SSD má řadu výhod, ale nesmrtelnost mezi ně nepatří. Ale známe fígle, které vám mohou pomoci vyždímat z nich to nejlepší.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-zjistit-aktualni-stav-vaseho-hdd',
  'Jak zjistit aktuální stav vašeho hdd?',
  'Jak stav vašeho HDD monitorovat, jak předcházet problémům a jak je řešit, pokud nastanou?',
  'Jak stav vašeho HDD monitorovat, jak předcházet problémům a jak je řešit, pokud nastanou?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'skodi-hlasity-zvuk-pevnym-diskum',
  'Škodí hlasitý zvuk pevným diskům?',
  'Že nadměrný hluk může člověku způsobit újmu, o tom nikdo nepochybuje. Ale že by tohle platilo i u pevných disků? Může je zvuk i třeba nevratně zničit?',
  'Že nadměrný hluk může člověku způsobit újmu, o tom nikdo nepochybuje. Ale že by tohle platilo i u pevných disků? Může je zvuk i třeba nevratně zničit?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  '7-snadnych-tipu-jak-nejlepe-zabezpecit-svuj-iphone',
  'Tipy, jak nejlépe zabezpečit iphone před ztrátou dat',
  'Pojďme se společně podívat na tipy, jak svůj iPhone opravdu zabezpečit co nejlépe.',
  'Pojďme se společně podívat na tipy, jak svůj iPhone opravdu zabezpečit co nejlépe.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'znate-zalohovaci-pravidlo-3-2-1',
  'Znáte zálohovací pravidlo 3 - 2 – 1?',
  'Počet lidí, kteří i navzdory zálohování přišli o svá data, je poměrně vysoký. Poradíme vám, jak ztrátě dat co nejlépe předejít.',
  'Počet lidí, kteří i navzdory zálohování přišli o svá data, je poměrně vysoký. Poradíme vám, jak ztrátě dat co nejlépe předejít.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'vse-co-jste-chteli-vedet-o-pametove-karte-typu-sd',
  'Vše, co jste chtěli vědět o paměťově kartě typu sd',
  'Co tento pojem znamená? Jaké jsou druhy SD karet a na jaká kritéria byste si měli dávat pozor při jejich pořízení? Na všechny otázky si postupně odpovíme.',
  'Co tento pojem znamená? Jaké jsou druhy SD karet a na jaká kritéria byste si měli dávat pozor při jejich pořízení? Na všechny otázky si postupně odpovíme.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'mobil-krehke-ale-celisti-zadni-kapsy-umi',
  'Chraňte svůj mobil! i zadní kapsa umí vycenit „zuby“',
  'Způsoby, kterými si (sami) poškozujeme telefony. Prevence, vědět o nich.',
  'Způsoby, kterými si (sami) poškozujeme telefony. Prevence, vědět o nich.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'prisli-jste-o-cenne-fotky-a-videa-z-dovolene-poradime-vam-jak-je-dostat-zpet',
  'Přišli jste o cenné fotky a videa z dovolené? poradíme vám, jak je dostat zpět!',
  'Přijít o fotografie či videa rodiny, kamarádů, ze společných akcí nebo cestovatelských výprav je noční můra snad každého z nás. Jak tomu zabránit a co dělat, když se vaše paměťová karta, externí disk, kamera nebo fotoaparát poškodí a data se stanou nedostupnými?',
  'Přijít o fotografie či videa rodiny, kamarádů, ze společných akcí nebo cestovatelských výprav je noční můra snad každého z nás. Jak tomu zabránit a co dělat, když se vaše paměťová karta, externí disk, kamera nebo fotoaparát poškodí a data se stanou nedostupnými?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-poznate-ze-byl-vas-pocitac-napaden-malwarem',
  'Jak poznáte, že byl váš počítač napaden malwarem?',
  'Děje se vám něco z 8 podezřelých věcí z článku? No, možná máte v PC nezvanou návštěvu.',
  'Děje se vám něco z 8 podezřelých věcí z článku? No, možná máte v PC nezvanou návštěvu.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  '-naucili-jsme-se-zachranit-data-z-wd-my-cloud-duo',
  'Naučili jsme se zachránit data z wd my cloud duo',
  'Dnes se nám podařilo najít postup, jak poškozené databáze spojit se souborovým systémem.',
  'Dnes se nám podařilo najít postup, jak poškozené databáze spojit se souborovým systémem.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'technologie-hamr-co-to-je-a-jak-to-funguje',
  'Technologie hamr: co to je a jak to funguje',
  'Požadavky na zvyšování dat o úložných kapacitách se nevyhnutelně zvyšují, a proto se technologie neustále vyvíjí.',
  'Požadavky na zvyšování dat o úložných kapacitách se nevyhnutelně zvyšují, a proto se technologie neustále vyvíjí.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'umela-inteligence-jako-hudba-budoucnosti-zalohovani-dat-ve-21-stoleti',
  'Umělá inteligence jako hudba budoucnosti zálohování dat ve 21. století',
  'Jak funguje strojové učení? Správa dat s využitím AI? Samostatné zálohování? Velké otázky zítřejšího světa.',
  'Jak funguje strojové učení? Správa dat s využitím AI? Samostatné zálohování? Velké otázky zítřejšího světa.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2019-12-02',
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'android-10-jake-prinasi-bezpecnostni-zmeny',
  'Android 10: jaké přináší bezpečnostní změny?',
  'Bezpečnost uživatele na prvním místě – alfa a omega nového Android 10.',
  'Bezpečnost uživatele na prvním místě – alfa a omega nového Android 10.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2019-12-02',
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'statistiky-chybovosti-pevnych-disku-za-rok-2018',
  'Statistiky chybovosti pevných disků za rok 2018',
  'Cloudový poskytovatel Backblaze pravidelně zveřejňuje na svém blogu statistiku chybovosti pevných disků, které sama provozuje.',
  'Cloudový poskytovatel Backblaze pravidelně zveřejňuje na svém blogu statistiku chybovosti pevných disků, které sama provozuje.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-poznat-falesna-uloziste-a-softwarove-tipy-pro-jejich-detekci',
  'Jak poznat falešná úložiště a softwarové tipy pro jejich detekci',
  'Naši technici (Eda a oba Ondřejové) už mají poměrně bohatou praxi se záchranou dat z fake úložišť. Proto vznikl tento článek.',
  'Naši technici (Eda a oba Ondřejové) už mají poměrně bohatou praxi se záchranou dat z fake úložišť. Proto vznikl tento článek.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'ctecky-otisku-prstu-u-mobilu-a-jejich-bezpecnost',
  'Čtečky otisků prstů u mobilů a jejich bezpečnost',
  'Z biometrických metod jsou velmi oblíbené čtečky otisků prstů. Odemknutí telefonu dotykem prstu se považuje za vyšší stupeň zabezpečení.',
  'Z biometrických metod jsou velmi oblíbené čtečky otisků prstů. Odemknutí telefonu dotykem prstu se považuje za vyšší stupeň zabezpečení.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'studie-o-extrakci-dat-lide-nechavaji-v-pouzitych-pocitacich-a-mobilech-citliva-data',
  'Studie o extrakci dat: lidé nechávají v použitých počítačích a mobilech citlivá data',
  'Lidé nechrání dostatečně své soukromé informace. Jak dokazuje nedávný experiment.',
  'Lidé nechrání dostatečně své soukromé informace. Jak dokazuje nedávný experiment.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'poskozeny-hdd-do-lednice',
  'Poškozený hdd nebo ssd do lednice?',
  'Pevný disk přestane fungovat. Všechny informace a soubory na něm uložené jsou rázem nedostupné. Co uděláte?',
  'Pevný disk přestane fungovat. Všechny informace a soubory na něm uložené jsou rázem nedostupné. Co uděláte?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'studie-od-blancco-android-a-ios-za-1-ctvrtleti-2018',
  'Studie od blancco: android a ios za 1. čtvrtletí 2018',
  'Občas člověk narazí na velmi zajímavé údaje. Tak jsme si udělali čas a vyzobali něco do češtiny.',
  'Občas člověk narazí na velmi zajímavé údaje. Tak jsme si udělali čas a vyzobali něco do češtiny.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'proc-a-jak-rootovat-android',
  'Jak rootnout android?',
  'K čemu je to užitečné a jak ho provést? Praktická využití a možná nebezpečí? Vše se dozvíte v tomto článku.',
  'K čemu je to užitečné a jak ho provést? Praktická využití a možná nebezpečí? Vše se dozvíte v tomto článku.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-na-zalohu-a-obnovu-dat-ve-windows-7',
  'Jak na zálohu a obnovu dat ve windows 7',
  'Umíte si představit, že byste přišli o všechny soubory, které máte uložené na počítači?',
  'Umíte si představit, že byste přišli o všechny soubory, které máte uložené na počítači?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'nebezpeci-levnych-cinskych-smartphonu',
  'Nebezpečí levných čínských smartphonů?',
  'Za posledních pár let se mnoho zákazníků také v Česku naučilo vyhledávat čínské značky, které svou cenou jsou až neodolatelně přijatelné.',
  'Za posledních pár let se mnoho zákazníků také v Česku naučilo vyhledávat čínské značky, které svou cenou jsou až neodolatelně přijatelné.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'zivotnost-usb-flash-disku-na-cem-zavisi-a-co-ji-ovlivnuje',
  'Životnost usb flash disků – na čem závisí a co ji ovlivňuje?',
  'To je vždy ožehavé téma - životnost u paměťových médií. Pokusíme se to celé vhodně rozklíčovat v USB problematice, abyste věděli, na co si dávat pozor.',
  'To je vždy ožehavé téma - životnost u paměťových médií. Pokusíme se to celé vhodně rozklíčovat v USB problematice, abyste věděli, na co si dávat pozor.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'android-vs-ios-souboj-velikanu-a-podrobne-srovnani',
  'Android vs. ios – souboj velikánů a podrobné srovnání',
  'Kdo s koho? Podívali jsme se všemu důkladně na zoubek.',
  'Kdo s koho? Podívali jsme se všemu důkladně na zoubek.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-jednoduse-chranit-data-v-chytrem-telefonu-i-dil-utoky-zvenku',
  'Jak jednoduše chránit data v chytrém telefonu: i. díl – útoky zvenku',
  'Udělejte si chvíli času a projděte si spolu s námi pár základních pokynů, které vám pomohou zabezpečit data na mobilním zařízení.',
  'Udělejte si chvíli času a projděte si spolu s námi pár základních pokynů, které vám pomohou zabezpečit data na mobilním zařízení.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-jednoduse-chranit-data-v-chytrem-telefonu-ii-dil-aplikace-a-utoky-zevnitr',
  'Jak jednoduše chránit data v chytrém telefonu: ii. díl – aplikace a útoky zevnitř',
  'Čím víc jich máte, tím většímu nebezpečí se vystavujete. Víte, co dělají aplikace za vašimi zády, respektive ve vaší kapse?',
  'Čím víc jich máte, tím většímu nebezpečí se vystavujete. Víte, co dělají aplikace za vašimi zády, respektive ve vaší kapse?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'dark-side-of-the-mobil',
  'Dark side of the mobil',
  'Inspirovat se designově např. termostatem z roku 1983? 10 nejpodivnějších telefonů nového tisíciletí.',
  'Inspirovat se designově např. termostatem z roku 1983? 10 nejpodivnějších telefonů nového tisíciletí.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'co-to-vlastne-je-raid-a-jake-je-jeho-uziti',
  'Co to vlastně je raid a jaké je jeho užití?',
  'Sprej na komáry? Tatík slavného bojovníka z Mortal Kombat ? Pořád vedle.',
  'Sprej na komáry? Tatík slavného bojovníka z Mortal Kombat ? Pořád vedle.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'amazon-cloud-drive-jak-s-nim-pracovat-a-zalohovat-data',
  'Amazon cloud drive: jak s ním pracovat a zálohovat data',
  'Od roku 2015 funguje Amazon Drive jako další cloudová platforma. Výhody a nevýhody? Jdeme na to.',
  'Od roku 2015 funguje Amazon Drive jako další cloudová platforma. Výhody a nevýhody? Jdeme na to.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'obelstete-datovou-smrtku-naucte-se-odezirat-z-plotny',
  'Obelstěte datovou smrtku. naučte se odezírat z plotny',
  'Nejčastější signály, že pevný disk mele z posledního? Hardware a software disku se to nebojí říct naplno.',
  'Nejčastější signály, že pevný disk mele z posledního? Hardware a software disku se to nebojí říct naplno.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'kolecko-rotuje-a-hodiny-presypaji-to-me-ale-uz-vazne',
  'Kolečko rotuje a hodiny přesýpají, to mě ale už vážně…',
  'Expresivní výrazy tady nepomohou. Za to našich 10 osvědčených rad, jak zrychlit počítač, by mohlo. Přesvědčte se sami.',
  'Expresivní výrazy tady nepomohou. Za to našich 10 osvědčených rad, jak zrychlit počítač, by mohlo. Přesvědčte se sami.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'cloudove-uloziste-mega-jak-s-nim-pracovat-a-zalohovat-data',
  'Cloudové úložiště mega: jak s ním pracovat a zálohovat data',
  'Víte, že na něm můžete ze začátku využít až 50 GB zdarma pro vaše data? Sepsali jsme průvodce cloudovým úložištěm Mega.',
  'Víte, že na něm můžete ze začátku využít až 50 GB zdarma pro vaše data? Sepsali jsme průvodce cloudovým úložištěm Mega.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'cloudove-uloziste-google-disk-jak-s-nim-pracovat-a-zalohovat-data',
  'Cloudové úložiště google disk: jak s ním pracovat a zálohovat data',
  '4. díl našeho cloudového průvodce. Tentokrát jsme si blíže posvítili na Google Disk. Co vše umí a neumí? ',
  '4. díl našeho cloudového průvodce. Tentokrát jsme si blíže posvítili na Google Disk. Co vše umí a neumí? ',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'apple-jak-probiha-zalohovani-dat-na-jednotlivych-zarizenich-a-prace-s-icloud',
  'Apple: jak probíhá zálohování dat na jednotlivých zařízeních a práce s icloud',
  'Vše co jste chtěli vědět o zálohování pro platformu Apple na jednom místě. To zní dobře, že? :-)',
  'Vše co jste chtěli vědět o zálohování pro platformu Apple na jednom místě. To zní dobře, že? :-)',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'dropbox-jak-s-nim-pracovat-a-zalohovat-data',
  'Dropbox: jak s ním pracovat a zálohovat data',
  'V dnešním článku se dozvíte výhody a nevýhody cloudového úložiště Dropbox.',
  'V dnešním článku se dozvíte výhody a nevýhody cloudového úložiště Dropbox.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'microsoft-one-drive-jak-s-nim-pracovat-a-zalohovat-data',
  'Microsoft one drive: jak s ním pracovat a zálohovat data',
  'V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.',
  'V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'vykouzlili-jsme-usmev-na-tvari-maga-rockove-kytary-michala-pavlicka',
  'Vykouzlili jsme úsměv na tváři mága rockové kytary Michala Pavlíčka',
  'Zachraňovali jsme data z disků českému šestistrunnému mágovi. A povedlo se!',
  'Zachraňovali jsme data z disků českému šestistrunnému mágovi. A povedlo se!',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-spravne-nabijet-baterii-telefonu',
  'Jak správně nabíjet baterii telefonu?',
  'Vyfotit selfie s ním umí dnes každý, ale správně a efektivně ho nabít? No…',
  'Vyfotit selfie s ním umí dnes každý, ale správně a efektivně ho nabít? No…',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-vybrat-pevny-disk-do-nas-serveru',
  'Jak vybrat pevný disk do nas serveru?',
  'Víte, jaké jsou pravidla pro výběr? Pomůže vám poradit jak na to.',
  'Víte, jaké jsou pravidla pro výběr? Pomůže vám poradit jak na to.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'co-je-spyware-a-jak-se-mu-nejlepe-branit',
  'Co je spyware? a jak se mu nejlépe bránit?',
  'Čtete rádi detektivky? Pak víte, že špehování osoby často přináší velmi užitečné informace.',
  'Čtete rádi detektivky? Pak víte, že špehování osoby často přináší velmi užitečné informace.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-jsme-zachranovali-milionove-fotografie-ondreje-pychy',
  'Jak jsme zachraňovali milionové fotografie Ondřeje Pýchy',
  'Jedna povedená fotografie má cenu přinejmenším zlata a pokud se porouchá disk se stovky takovými fotografiemi, je zaděláno na pořádnou škodu.',
  'Jedna povedená fotografie má cenu přinejmenším zlata a pokud se porouchá disk se stovky takovými fotografiemi, je zaděláno na pořádnou škodu.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'koupit-hybridni-sshd-nebo-jen-ssd-disk',
  'Koupit hybridní sshd, nebo „jen“ ssd disk?',
  'Pojďme se podívat na to, jaký je rozdíl mezi běžnými SSD a hybridními disky.',
  'Pojďme se podívat na to, jaký je rozdíl mezi běžnými SSD a hybridními disky.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'sifrovani-dat-na-androidu-ano-nebo-ne',
  'Šifrování dat na androidu: ano, nebo ne?',
  'Toť velmi zajímavá otázka. Znáte toho skutečně všechny výhody i nevýhody?',
  'Toť velmi zajímavá otázka. Znáte toho skutečně všechny výhody i nevýhody?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-odstranit-kryptovirus-z-pocitace-a-co-to-vlastne-je',
  'Jak odstranit kryptovirus z počítače a co to vlastně je?',
  'Pokud se stanete obětí nebezpečného kryptoviru je potřeba co nejdříve jednat. Ale jak? ',
  'Pokud se stanete obětí nebezpečného kryptoviru je potřeba co nejdříve jednat. Ale jak? ',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'co-delat-kdyz-ztratite-telefon',
  'Co dělat, když ztratíte telefon?',
  'Ztráta či krádež telefonu je velice nepříjemnou záležitostí, a to nejen kvůli ztrátě přístroje jako takového, ale i kvůli ohrožení citlivých dat.',
  'Ztráta či krádež telefonu je velice nepříjemnou záležitostí, a to nejen kvůli ztrátě přístroje jako takového, ale i kvůli ohrožení citlivých dat.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-na-zalohu-a-obnovu-dat-ve-windows-10',
  'Jak na zálohu a obnovu dat ve windows 10',
  'Prevence je klíčová. Operační systém Windows 10 nabízí hned několik odlišných nástrojů pro zálohu i obnovení.',
  'Prevence je klíčová. Operační systém Windows 10 nabízí hned několik odlišných nástrojů pro zálohu i obnovení.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-obnovit-smazane-soubory',
  'Obnovte si ztracené soubory svépomocí. ale pozor, má to svá rizika',
  'Smazali jste si v počítači omylem soubor? Nezoufejte, možnosti tu jsou - provedeme vás způsoby obnovení smazaných souborů.',
  'Smazali jste si v počítači omylem soubor? Nezoufejte, možnosti tu jsou - provedeme vás způsoby obnovení smazaných souborů.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-predejit-pripadnemu-prepeti-v-siti',
  'Jak předejít případnému přepětí v síti?',
  'Jednou z mála věcí, které mohou doslova jako blesk z čistého nebe udeřit do jakékoliv elektroniky ve vaší síti a kompletně ji vyřadit, je přepětí. Stačí jedno malé škobrtnutí a jakékoliv cennosti putují do křemíkového nebe. Jak tomu zabránit?',
  'Jednou z mála věcí, které mohou doslova jako blesk z čistého nebe udeřit do jakékoliv elektroniky ve vaší síti a kompletně ji vyřadit, je přepětí. Stačí jedno malé škobrtnutí a jakékoliv cennosti putují do křemíkového nebe. Jak tomu zabránit?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'odblokovat-mobil-je-hracka-kdyz-teda-znate-spravnou-vterinu',
  'Odblokovat mobil je hračka, když teda znáte správnou vteřinu',
  'Ráno se probudíte. Pustíte mobil a zacyklí se vám nešťastně jeho nahrávací proces. Kladivo a špatnou náladu prozatím odložte. I s tímto si dokážeme poradit.',
  'Ráno se probudíte. Pustíte mobil a zacyklí se vám nešťastně jeho nahrávací proces. Kladivo a špatnou náladu prozatím odložte. I s tímto si dokážeme poradit.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'co-delat-kdyz-se-iphone-koupal-ve-vode-daji-se-vase-data-zachranit',
  'Co dělat, když se iphone „koupal“ ve vodě? dají se vaše data zachránit?',
  'Žbluňknul vám váš drahocenný kapesní miláček do vody? Pak se jistě strachujete nad jeho životem. Resuscitaci člověka byste možná zvládli, ale záchrana mobilního telefonu se na školách neučí. Co tedy dělat?',
  'Žbluňknul vám váš drahocenný kapesní miláček do vody? Pak se jistě strachujete nad jeho životem. Resuscitaci člověka byste možná zvládli, ale záchrana mobilního telefonu se na školách neučí. Co tedy dělat?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jaky-externi-disk-5-uzitecnych-rad-pro-vyber',
  'Jaký externí disk? 5 užitečných rad pro výběr',
  'Některé soubory je potřeba mít neustále při sobě. Ať už se jedná o pracovní dokumenty, filmy ke sledování, fotografie či přenosné programy, je na místě pořízení externího disku. Máme pro vás 5 užitečných rad, které vám pomohou při rozhodování.',
  'Některé soubory je potřeba mít neustále při sobě. Ať už se jedná o pracovní dokumenty, filmy ke sledování, fotografie či přenosné programy, je na místě pořízení externího disku. Máme pro vás 5 užitečných rad, které vám pomohou při rozhodování.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  '5-duvodu-proc-vyuzivat-cloud-pro-efektivni-zalohu-dat',
  '5 důvodů, proč využívat cloud pro efektivní zálohu dat',
  'Z anglicismů mají někteří lidé strach. Nicneříkající snůšky písmen nabírají na významu až se zkušenostmi. S nástupem internetu se takových termínů vyrojilo až příliš. Ani cloudu se nemusíte bát, povíme si proč.',
  'Z anglicismů mají někteří lidé strach. Nicneříkající snůšky písmen nabírají na významu až se zkušenostmi. S nástupem internetu se takových termínů vyrojilo až příliš. Ani cloudu se nemusíte bát, povíme si proč.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'formatovani-co-to-je-a-k-cemu-se-to-hodi',
  'Formátování: co to je a k čemu se to hodí',
  'Slovíčko formátování zřejmě každý běžný uživatel PC buďto zaslechl či zahlédl, ať už od svých známých, z notifikací, varování či v titulcích internetových článků. Pojďme si představit, co se za tímto slovem skrývá.',
  'Slovíčko formátování zřejmě každý běžný uživatel PC buďto zaslechl či zahlédl, ať už od svých známých, z notifikací, varování či v titulcích internetových článků. Pojďme si představit, co se za tímto slovem skrývá.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-neztratit-data-z-usb-flash-disku',
  'Jak neztratit data z usb flash disků?',
  'Ohořelá, rozšlapaná. USB flash paměti můžete dát pěkně na frak, ale ani tehdy není vše ztraceno. Poradíme vám, co s ní nedělat a co jí naopak nevadí.',
  'Ohořelá, rozšlapaná. USB flash paměti můžete dát pěkně na frak, ale ani tehdy není vše ztraceno. Poradíme vám, co s ní nedělat a co jí naopak nevadí.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  '7-snadnych-tipu-jak-nejlepe-zabezpecit-os-android',
  '7 snadných tipů, jak nejlépe zabezpečit os android',
  'Dokud uměly mobilní telefony jenom volat a psát SMSky, bylo starostí daleko méně. S nástupem chytrých telefonů je taková situace už dávnou minulostí, ale mnoho lidí si svůj přístup zanechalo. Opatrnější by si ale měli dávat pozor, jak s nimi zachází. Patříte mezi ně?...',
  'Dokud uměly mobilní telefony jenom volat a psát SMSky, bylo starostí daleko méně. S nástupem chytrých telefonů je taková situace už dávnou minulostí, ale mnoho lidí si svůj přístup zanechalo. Opatrnější by si ale měli dávat pozor, jak s nimi zachází. Patříte mezi ně?...',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jak-jsme-zachranovali-cenna-data-check-czech-fashion',
  'Jak jsme zachraňovali cenná data check czech fashion',
  'Představte si, že 6 let píšete články, točíte videa, děláte fotky a vše si poctivě zálohujete na externí disk. Při jedné z rutinních operací s diskem se však něco pokazí a najednou máte o to celé přijít?',
  'Představte si, že 6 let píšete články, točíte videa, děláte fotky a vše si poctivě zálohujete na externí disk. Při jedné z rutinních operací s diskem se však něco pokazí a najednou máte o to celé přijít?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jste-si-jisti-ze-vase-soubory-nepujdou-znovu-na-disku-obnovit',
  'Jste si jistí, že vaše soubory nepůjdou znovu na disku obnovit?',
  'Prodávat použité pevné disky přes internet nebo v tištěné inzerci je běžnou záležitostí. Mnozí uživatelé se domnívají, že obyčejné smazání dat stačí k tomu, aby se na ně nemohl podívat nový majitel, bohužel opak je pravdou.',
  'Prodávat použité pevné disky přes internet nebo v tištěné inzerci je běžnou záležitostí. Mnozí uživatelé se domnívají, že obyčejné smazání dat stačí k tomu, aby se na ně nemohl podívat nový majitel, bohužel opak je pravdou.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'guru-herniho-prumyslu-v-cr-o-nas-rekl-ze-jsme-skoro-jak-detektivni-kancelar',
  'Guru herního průmyslu v čr o nás řekl, že jsme skoro jak „detektivní kancelář“!',
  'Hezky jsme si popovídali s Michalem Rybkou, který vede populární YouTube kanál AlzaTech. Čtěte dále.',
  'Hezky jsme si popovídali s Michalem Rybkou, který vede populární YouTube kanál AlzaTech. Čtěte dále.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'reverzni-inzenyrstvi-v-praxi-rusove-na-to-jdou-skalpelem-my-sklenenym-vlaknem',
  'Reverzní inženýrství v praxi: rusové na to jdou skalpelem, my skleněným vláknem',
  'Správně dešifrovat data a pochopit samotný princip jejich ukládání. Tak jednoduše vypadá definice reverzního inženýrství. Ale to, že se u toho pěkně zapotíme se z ní nedozvíte. Jak to tedy probíhá v praxi?',
  'Správně dešifrovat data a pochopit samotný princip jejich ukládání. Tak jednoduše vypadá definice reverzního inženýrství. Ale to, že se u toho pěkně zapotíme se z ní nedozvíte. Jak to tedy probíhá v praxi?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'hvezdy-z-ace-lab-nas-naucily-dalsi-kouzla-pro-zachranu-z-ssd-a-zarizeni-cannon-a-seagate',
  'Hvězdy z ace lab nás naučily další kouzla pro záchranu z ssd a zařízení cannon a seagate',
  'Ruská společnost ACE Lab je posledních 10 let považována za lídra v oblasti záchrany dat a působí úspěšně i na americkém trhu. Když uspořádala konferenci v Praze, nemohli jsme chybět.',
  'Ruská společnost ACE Lab je posledních 10 let považována za lídra v oblasti záchrany dat a působí úspěšně i na americkém trhu. Když uspořádala konferenci v Praze, nemohli jsme chybět.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'ondro-jsi-prvni-cech-ktereho-jsem-ucil-rekl-mi-spickovy-odbornik-z-rusolutu',
  '„Ondro, jsi první čech, kterého jsem učil,“ řekl mi špičkový odborník z rusolutu',
  'Páni, řekl jsem si a vzedmula se ve mně vlna hrdosti. Za těch 5 dnů ve Varšavě jsem se naučil mnoho nového. Na moment, kdy jsem se loučil se Sashou Sheremetovem, lídrem světově uznávané společnosti v oblasti záchrany dat, ale dlouho nezapomenu.',
  'Páni, řekl jsem si a vzedmula se ve mně vlna hrdosti. Za těch 5 dnů ve Varšavě jsem se naučil mnoho nového. Na moment, kdy jsem se loučil se Sashou Sheremetovem, lídrem světově uznávané společnosti v oblasti záchrany dat, ale dlouho nezapomenu.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'smartphony-microsd-karty-ssd-disky-kde-jdou-data-zachranit-kde-ne-a-jaky-je-problem-s-apple',
  'Smartphony, microsd karty, ssd disky: kde jdou data zachránit, kde ne a jaký je problém s apple?',
  'Kdo chce držet krok s nejnovějším vývojem na poli záchrany dat, ten rozhodně nesmí usnout na vavřínech a neustále se musí vzdělávat. Chcete vědět, s jakými výzvami v záchraně dat se momentálně v Datahelpu zabýváme? Co zatím nelze pokořit, co už naopak dobře zachraňovat umíme a jak si ...',
  'Kdo chce držet krok s nejnovějším vývojem na poli záchrany dat, ten rozhodně nesmí usnout na vavřínech a neustále se musí vzdělávat. Chcete vědět, s jakými výzvami v záchraně dat se momentálně v Datahelpu zabýváme? Co zatím nelze pokořit, co už naopak dobře zachraňovat umíme a jak si ...',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'ucastnime-se-odborne-konference-v-praze-od-acelabu',
  'Účastníme se odborné konference v praze od acelabu!',
  'Přední ruská firma ACE Group (25 let na trhu) v oblasti záchrany dat pořádá zítra 22. dubna od 10 do 16 v pražském hotelu Clarion Congress unikátní odbornou konferenci s názvem BREAKTHROUGH in Recovering Data from Self-Encrypting Drives and Other Advances in PC-3000, na kterou vysílám...',
  'Přední ruská firma ACE Group (25 let na trhu) v oblasti záchrany dat pořádá zítra 22. dubna od 10 do 16 v pražském hotelu Clarion Congress unikátní odbornou konferenci s názvem BREAKTHROUGH in Recovering Data from Self-Encrypting Drives and Other Advances in PC-3000, na kterou vysílám...',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'ucastnime-se-tydenniho-skoleni-od-rusolutu-v-polsku',
  'Účastníme se týdenního školeni od rusolutu v polsku',
  'Po páteční pražské konferenci se naši technici vydávají na týden do Polska, kde se zúčastní unikátního vzdělávacího semináře od společnosti Rusolut.',
  'Po páteční pražské konferenci se naši technici vydávají na týden do Polska, kde se zúčastní unikátního vzdělávacího semináře od společnosti Rusolut.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'proc-bude-zachrana-dat-z-ssd-i-hdd-disku-stale-slozitejsi',
  'Proč bude záchrana dat z ssd i hdd disků stále složitější?',
  'Pokrok v technologiích záznamových médií SSD i běžných plotnových disků v posledních deseti letech je bezprecedentní. Spolu s ním ale vzrůstá složitost technologií a s ní i náchylnost ke ztrátě dat. Rozebrali jsme hlavní příčiny komplikací při záchraně dat z SSD disků využívající nejnovější technolo...',
  'Pokrok v technologiích záznamových médií SSD i běžných plotnových disků v posledních deseti letech je bezprecedentní. Spolu s ním ale vzrůstá složitost technologií a s ní i náchylnost ke ztrátě dat. Rozebrali jsme hlavní příčiny komplikací při záchraně dat z SSD disků využívající nejnovější technolo...',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'vite-jak-spravne-zabezpecit-provoz-datoveho-uloziste-nas-ve-vasi-domacnosti',
  'Víte, jak správně zabezpečit provoz datového úložiště nas ve vaší domácnosti?',
  'NAS datová úložiště slouží k ukládání a k bezdrátovém přístupu k většímu množství multimediálních dat (např. oblíbená hudba, filmy či fotky z cest). Díky snadné obsluze, pohodlnému centrálnímu ukládání, synchronizaci a sdílení dat s ostatními zařízeni je NAS stále populárnější předevš...',
  'NAS datová úložiště slouží k ukládání a k bezdrátovém přístupu k většímu množství multimediálních dat (např. oblíbená hudba, filmy či fotky z cest). Díky snadné obsluze, pohodlnému centrálnímu ukládání, synchronizaci a sdílení dat s ostatními zařízeni je NAS stále populárnější předevš...',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'pozor-na-ssd-disky-sifruji-a-ohrozuji-vase-data',
  'Pozor na ssd disky. šifrují a ohrožují vaše data!',
  'Dnešní uživatel může kvůli principu fungování SSD disků prakticky kdykoliv přijít o svá data. Co na to odborníci na záchranu dat a jak velká je hrozba kryptovirů?',
  'Dnešní uživatel může kvůli principu fungování SSD disků prakticky kdykoliv přijít o svá data. Co na to odborníci na záchranu dat a jak velká je hrozba kryptovirů?',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'ani-s-raidem-nejste-vzdy-v-bezpeci-datahelp-v-praxi-radi-ceho-se-vyvarovat',
  'Ani s raidem nejste vždy v bezpečí: datahelp v praxi radí, čeho se vyvarovat',
  'Disková RAID pole mají svou mohutnější architekturou data uživatelů lépe chránit. Ne vždy se to ale daří, obvykle za problémy stojí lidský faktor. Co a jak dělat, abyste o data v RAID poli nepřišli? Přečtěte si několik příběhů z naší praxe v DataHelp, nad kterými zůstává rozum stát....',
  'Disková RAID pole mají svou mohutnější architekturou data uživatelů lépe chránit. Ne vždy se to ale daří, obvykle za problémy stojí lidský faktor. Co a jak dělat, abyste o data v RAID poli nepřišli? Přečtěte si několik příběhů z naší praxe v DataHelp, nad kterými zůstává rozum stát....',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes
) VALUES (
  'jako-prvni-v-cr-umime-obnovit-data-z-disku-intel-320-series',
  'Jako první v ČR umíme obnovit data z disků Intel 320 series',
  'DataHelp umí jako první specialista v ČR obnovit data z populárních SSD disků Intel 320 series. Jde o SSD disk, který Intel pustil na trh s vážnou výrobní vadou firmware.',
  'DataHelp umí jako první specialista v ČR obnovit data z populárních SSD disků Intel 320 series. Jde o SSD disk, který Intel pustil na trh s vážnou výrobní vadou firmware.',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  updated_at = NOW();

-- 3. Propojení článků s kategoriemi

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-obnovit-iphone-ze-zalohy' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-odblokovat-iphone-navod-krok-za-krokem' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-vycistit-mobil-od-prachu' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-zalohuji-data-profesionalove' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'zachrana-microsd-karty-za-56-tisic-nebo-2-tisice-korun' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'historie-pevnych-disku' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'co-je-sindelovy-zapis-neboli-technologie-smr' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'skodi-pevnemu-disku-vlhkost-vzduchu' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'zalohovani-dat-pro-firmy-rady-a-tipy' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'proc-muze-byt-obnova-dat-z-ssd-slozitejsi-nez-v-pripade-hdd' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-obnovit-ztracene-kontakty-v-androidu' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-maximalizovat-zivotnost-ssd' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-zjistit-aktualni-stav-vaseho-hdd' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'skodi-hlasity-zvuk-pevnym-diskum' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '7-snadnych-tipu-jak-nejlepe-zabezpecit-svuj-iphone' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'znate-zalohovaci-pravidlo-3-2-1' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'vse-co-jste-chteli-vedet-o-pametove-karte-typu-sd' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'mobil-krehke-ale-celisti-zadni-kapsy-umi' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'prisli-jste-o-cenne-fotky-a-videa-z-dovolene-poradime-vam-jak-je-dostat-zpet' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-poznate-ze-byl-vas-pocitac-napaden-malwarem' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '-naucili-jsme-se-zachranit-data-z-wd-my-cloud-duo' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'technologie-hamr-co-to-je-a-jak-to-funguje' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'umela-inteligence-jako-hudba-budoucnosti-zalohovani-dat-ve-21-stoleti' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'android-10-jake-prinasi-bezpecnostni-zmeny' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'statistiky-chybovosti-pevnych-disku-za-rok-2018' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-poznat-falesna-uloziste-a-softwarove-tipy-pro-jejich-detekci' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ctecky-otisku-prstu-u-mobilu-a-jejich-bezpecnost' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'studie-o-extrakci-dat-lide-nechavaji-v-pouzitych-pocitacich-a-mobilech-citliva-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'poskozeny-hdd-do-lednice' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'studie-od-blancco-android-a-ios-za-1-ctvrtleti-2018' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'proc-a-jak-rootovat-android' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-na-zalohu-a-obnovu-dat-ve-windows-7' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'nebezpeci-levnych-cinskych-smartphonu' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'zivotnost-usb-flash-disku-na-cem-zavisi-a-co-ji-ovlivnuje' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'android-vs-ios-souboj-velikanu-a-podrobne-srovnani' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jednoduse-chranit-data-v-chytrem-telefonu-i-dil-utoky-zvenku' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jednoduse-chranit-data-v-chytrem-telefonu-ii-dil-aplikace-a-utoky-zevnitr' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'dark-side-of-the-mobil' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'co-to-vlastne-je-raid-a-jake-je-jeho-uziti' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'amazon-cloud-drive-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'obelstete-datovou-smrtku-naucte-se-odezirat-z-plotny' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kolecko-rotuje-a-hodiny-presypaji-to-me-ale-uz-vazne' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'cloudove-uloziste-mega-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'cloudove-uloziste-google-disk-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'apple-jak-probiha-zalohovani-dat-na-jednotlivych-zarizenich-a-prace-s-icloud' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'dropbox-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'microsoft-one-drive-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'vykouzlili-jsme-usmev-na-tvari-maga-rockove-kytary-michala-pavlicka' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-spravne-nabijet-baterii-telefonu' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-vybrat-pevny-disk-do-nas-serveru' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'co-je-spyware-a-jak-se-mu-nejlepe-branit' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jsme-zachranovali-milionove-fotografie-ondreje-pychy' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'koupit-hybridni-sshd-nebo-jen-ssd-disk' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'sifrovani-dat-na-androidu-ano-nebo-ne' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-odstranit-kryptovirus-z-pocitace-a-co-to-vlastne-je' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'co-delat-kdyz-ztratite-telefon' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-na-zalohu-a-obnovu-dat-ve-windows-10' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-obnovit-smazane-soubory' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-predejit-pripadnemu-prepeti-v-siti' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'odblokovat-mobil-je-hracka-kdyz-teda-znate-spravnou-vterinu' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'co-delat-kdyz-se-iphone-koupal-ve-vode-daji-se-vase-data-zachranit' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jaky-externi-disk-5-uzitecnych-rad-pro-vyber' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '5-duvodu-proc-vyuzivat-cloud-pro-efektivni-zalohu-dat' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'formatovani-co-to-je-a-k-cemu-se-to-hodi' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-neztratit-data-z-usb-flash-disku' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '7-snadnych-tipu-jak-nejlepe-zabezpecit-os-android' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jsme-zachranovali-cenna-data-check-czech-fashion' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jste-si-jisti-ze-vase-soubory-nepujdou-znovu-na-disku-obnovit' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'guru-herniho-prumyslu-v-cr-o-nas-rekl-ze-jsme-skoro-jak-detektivni-kancelar' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'reverzni-inzenyrstvi-v-praxi-rusove-na-to-jdou-skalpelem-my-sklenenym-vlaknem' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'hvezdy-z-ace-lab-nas-naucily-dalsi-kouzla-pro-zachranu-z-ssd-a-zarizeni-cannon-a-seagate' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ondro-jsi-prvni-cech-ktereho-jsem-ucil-rekl-mi-spickovy-odbornik-z-rusolutu' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'smartphony-microsd-karty-ssd-disky-kde-jdou-data-zachranit-kde-ne-a-jaky-je-problem-s-apple' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ucastnime-se-odborne-konference-v-praze-od-acelabu' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ucastnime-se-tydenniho-skoleni-od-rusolutu-v-polsku' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'proc-bude-zachrana-dat-z-ssd-i-hdd-disku-stale-slozitejsi' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'vite-jak-spravne-zabezpecit-provoz-datoveho-uloziste-nas-ve-vasi-domacnosti' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'pozor-na-ssd-disky-sifruji-a-ohrozuji-vase-data' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ani-s-raidem-nejste-vzdy-v-bezpeci-datahelp-v-praxi-radi-ceho-se-vyvarovat' AND c.slug = 'zalohovani-dat-a-prevence-ztraty-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jako-prvni-v-cr-umime-obnovit-data-z-disku-intel-320-series' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;
