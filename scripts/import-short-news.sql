-- ========================================
-- Import krátkých novinek z datahelp.cz do Supabase
-- URL: /novinky/slug/
-- Generováno: 2025-12-05T11:21:47.405Z
-- Počet novinek: 57
-- ========================================

-- 1. Vložení kategorie Novinky (pokud ještě neexistuje)
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it) VALUES
  ('novinky', 'Novinky', 'Novinky', 'Novinky', 'Novinky')
ON CONFLICT (slug) DO NOTHING;

-- 2. Vložení krátkých novinek

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'sabrent-uvedl-ssd-rocket-4-m-2-gen-4-bez-dram-cache',
  'Sabrent uvedl ssd rocket 4 m.2 gen 4 bez dram cache',
  'Společnost Sabrent představila novou modelovou řadu SSD bez DRAM s názvem Rocket 4.',
  'Společnost Sabrent představila novou modelovou řadu SSD bez DRAM s názvem Rocket 4.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Sabrent představila novou modelovou řadu SSD bez DRAM s názvem Rocket 4.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'backblaze-statistiky-poruchovosti-hdd-za-rok-2023',
  'Backblaze: statistiky poruchovosti hdd za rok 2023',
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků za uplynulý rok 2023.',
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků za uplynulý rok 2023.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků za uplynulý rok 2023.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'crucial-odhalila-nove-rychle-modely-ssd-t705',
  'Crucial odhalila nové rychlé modely ssd t705',
  'Společnost Crucial přidává do svého portfolia nové výkonné SSD s označením T705.',
  'Společnost Crucial přidává do svého portfolia nové výkonné SSD s označením T705.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Crucial přidává do svého portfolia nové výkonné SSD s označením T705.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'samsung-odhalil-rychle-ssd-990-evo',
  'Samsung odhalil rychlé ssd 990 evo',
  'Výrobce Samsung představuje novou modelovou řadu SSD 990 EVO.',
  'Výrobce Samsung představuje novou modelovou řadu SSD 990 EVO.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Výrobce Samsung představuje novou modelovou řadu SSD 990 EVO.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'crucial-ma-rychla-ssd-t500-s-232vrstvou-pameti-tlc-nand',
  'Crucial má rychlá ssd t500 s 232vrstvou pamětí tlc nand',
  'Společnost Crucial představila nová SSD Crucial T500 Gen 4 NVMe.',
  'Společnost Crucial představila nová SSD Crucial T500 Gen 4 NVMe.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Crucial představila nová SSD Crucial T500 Gen 4 NVMe.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'toshiba-nabidne-az-22tb-hdd-rady-mg10f',
  'Toshiba nabídne až 22tb hdd řady mg10f',
  'Společnost Toshiba uvádí novou modelovou řadu pevných disků MG10F.',
  'Společnost Toshiba uvádí novou modelovou řadu pevných disků MG10F.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Toshiba uvádí novou modelovou řadu pevných disků MG10F.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'pevne-disky-budou-mit-za-2-roky-az-100-tb',
  'Pevné disky budou mít za 2 roky až 100 tb',
  'Společnost Seagate by mohla mít do roku 2025 nové disky HAMR s kapacitou až 100 TB.',
  'Společnost Seagate by mohla mít do roku 2025 nové disky HAMR s kapacitou až 100 TB.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate by mohla mít do roku 2025 nové disky HAMR s kapacitou až 100 TB.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-odhalil-ssd-firecuda-540',
  'Seagate odhalil ssd firecuda 540',
  'Společnost Seagate představila nové SSD FireCuda 540 s PCIe Gen5 x4.',
  'Společnost Seagate představila nové SSD FireCuda 540 s PCIe Gen5 x4.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate představila nové SSD FireCuda 540 s PCIe Gen5 x4.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'computex-transcend-odhalil-mnoho-novinek',
  'Computex: transcend odhalil mnoho novinek',
  'Značka Transcend představila na veletrhu Computex 2023 mnoho nových produktů.',
  'Značka Transcend představila na veletrhu Computex 2023 mnoho nových produktů.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Značka Transcend představila na veletrhu Computex 2023 mnoho nových produktů.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'corsair-uvadi-rychle-ssd-mp700-s-pcie-5-0',
  'Corsair uvádí rychlé ssd mp700 s pcie 5.0',
  'Společnost Corsair představila nové SSD MP700.',
  'Společnost Corsair představila nové SSD MP700.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Corsair představila nové SSD MP700.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-uvadi-star-wars-edici-rychlych-ssd-lightsaber-collection',
  'Seagate uvádí star wars edici rychlých ssd lightsaber collection',
  'Společnost Seagate vydala novou speciální edici SSD, která potěší fanoušky filmové série Star Wars.',
  'Společnost Seagate vydala novou speciální edici SSD, která potěší fanoušky filmové série Star Wars.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate vydala novou speciální edici SSD, která potěší fanoušky filmové série Star Wars.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'minisforum-uvadi-mini-pc-nab6',
  'Minisforum uvádí mini pc nab6',
  'Čínská společnost Minisforum představila dlouho očekávané mini počítače NAB6.',
  'Čínská společnost Minisforum představila dlouho očekávané mini počítače NAB6.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Čínská společnost Minisforum představila dlouho očekávané mini počítače NAB6.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'kioxia-letos-zahaji-prodej-2tb-microsdxc-karty',
  'Kioxia letos zahájí prodej 2tb microsdxc karty',
  'Společnost Kioxia plánuje v letošním roce zahájit prodej 2TB paměťové microSDXC karty.',
  'Společnost Kioxia plánuje v letošním roce zahájit prodej 2TB paměťové microSDXC karty.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Kioxia plánuje v letošním roce zahájit prodej 2TB paměťové microSDXC karty.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'wd-ma-nove-22tb-verze-disku-my-book-a-my-book-duo',
  'Wd má nové 22tb verze disků my book a my book duo',
  'Společnost Western Digital doplňuje modelové řady externích disků My Book a My Book Duo o 22TB varianty.',
  'Společnost Western Digital doplňuje modelové řady externích disků My Book a My Book Duo o 22TB varianty.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Western Digital doplňuje modelové řady externích disků My Book a My Book Duo o 22TB varianty.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'backblaze-statistiky-poruchovosti-hdd-za-rok-2022',
  'Backblaze: statistiky poruchovosti hdd za rok 2022',
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků v uplynulém roce 2022.',
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků v uplynulém roce 2022.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Backblaze zveřejnila nové statistiky poruchovosti pevných disků v uplynulém roce 2022.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-letos-rapidne-navysi-kapacity-hdd',
  'Seagate letos rapidně navýší kapacity hdd',
  'Společnost Seagate chystá nové pevné disky s technologií HAMR s kapacitou až 30 TB.',
  'Společnost Seagate chystá nové pevné disky s technologií HAMR s kapacitou až 30 TB.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate chystá nové pevné disky s technologií HAMR s kapacitou až 30 TB.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'micron-nabizi-extra-vykonne-ssd-9400',
  'Micron nabízí extra výkonné ssd 9400',
  'Výrobce Micron uvádí na trh novou modelovou řadu SSD disků určenou pro datová centra.',
  'Výrobce Micron uvádí na trh novou modelovou řadu SSD disků určenou pro datová centra.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Výrobce Micron uvádí na trh novou modelovou řadu SSD disků určenou pro datová centra.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'qnap-uvadi-domaci-nas-ts-262-a-ts-462',
  'Qnap uvádí domácí nas ts-262 a ts-462',
  'Společnost QNAP uvedla dvě nová multimediální NAS zařízení - NAS TS-262 a NAS TS-462.',
  'Společnost QNAP uvedla dvě nová multimediální NAS zařízení - NAS TS-262 a NAS TS-462.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost QNAP uvedla dvě nová multimediální NAS zařízení - NAS TS-262 a NAS TS-462.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-uvadi-hdd-exos-2x18-s-vysokym-vykonem',
  'Seagate uvádí hdd exos 2x18 s vysokým výkonem',
  'Společnost Seagate představuje nové HDD Exos 2X18.',
  'Společnost Seagate představuje nové HDD Exos 2X18.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate představuje nové HDD Exos 2X18.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'backblaze-statistiky-poruchovosti-hdd-za-3q-2022',
  'Backblaze: statistiky poruchovosti hdd za 3q/2022',
  'Společnost Backblaze zveřejnila nové pravidelné statistiky poruchovosti svých HDD za třetí čtvrtletí 2022.',
  'Společnost Backblaze zveřejnila nové pravidelné statistiky poruchovosti svých HDD za třetí čtvrtletí 2022.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Backblaze zveřejnila nové pravidelné statistiky poruchovosti svých HDD za třetí čtvrtletí 2022.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'sandisk-pro-g40-odolne-ssd-s-thunderbolt-3',
  'Sandisk pro-g40 - odolné ssd s thunderbolt 3',
  'Společnost SanDisk představila novou řadu SSD s označením Professional Pro-G40.',
  'Společnost SanDisk představila novou řadu SSD s označením Professional Pro-G40.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost SanDisk představila novou řadu SSD s označením Professional Pro-G40.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'qnap-nabizi-nove-nas-s-podporou-do-2029',
  'Qnap nabízí nové nas s podporou do 2029',
  'Společnost QNAP přidala do svého portfolia dva nové modely NAS - TS-253E a TS-453E.',
  'Společnost QNAP přidala do svého portfolia dva nové modely NAS - TS-253E a TS-453E.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost QNAP přidala do svého portfolia dva nové modely NAS - TS-253E a TS-453E.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'qnap-nabizi-prumyslovy-nas-10gbe',
  'Qnap nabízí průmyslový nas 10gbe',
  'Firma QNAP si připravila nové zařízení NAS TS-i410X.',
  'Firma QNAP si připravila nové zařízení NAS TS-i410X.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Firma QNAP si připravila nové zařízení NAS TS-i410X.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'wd-nove-dodava-22tb-hdd-pro-3-modelove-rady',
  'Wd nově dodává 22tb hdd pro 3 modelové řady',
  'Western Digital doplnil modelové řady HDD Red Pro, WD Purple Pro a WD Gold o kapacitu 22 TB.',
  'Western Digital doplnil modelové řady HDD Red Pro, WD Purple Pro a WD Gold o kapacitu 22 TB.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Western Digital doplnil modelové řady HDD Red Pro, WD Purple Pro a WD Gold o kapacitu 22 TB.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'kingston-iron-keylocker-50-nabizi-xts-aes-sifrovani',
  'Kingston ironkey locker+ 50 nabízí xts-aes šifrování',
  'Společnost Kingston odhalila nový flash disk IronKey Locker+ 50.',
  'Společnost Kingston odhalila nový flash disk IronKey Locker+ 50.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Kingston odhalila nový flash disk IronKey Locker+ 50.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'nova-prenosna-ssd-pny-elitex-pro-maji-az-4tb',
  'Nová přenosná ssd pny elitex-pro mají až 4 tb',
  'Společnost PNY představila nové externí SSD EliteX-Pro.',
  'Společnost PNY představila nové externí SSD EliteX-Pro.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost PNY představila nové externí SSD EliteX-Pro.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'crucial-p3-plus-nova-ssd-s-pcie-4-0-nvme',
  'Crucial p3 plus - nová ssd s pcie 4.0 nvme',
  'Společnost Crucial brzy uvede na trh nové solid-state disky s názvem Crucial P3 Plus.',
  'Společnost Crucial brzy uvede na trh nové solid-state disky s názvem Crucial P3 Plus.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Crucial brzy uvede na trh nové solid-state disky s názvem Crucial P3 Plus.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'owc-envoy-pro-mini-nove-ssd-do-kapsy',
  'Owc envoy pro mini - nové ssd do kapsy',
  'Společnost OWC představila miniaturní SSD Envoy Pro mini.',
  'Společnost OWC představila miniaturní SSD Envoy Pro mini.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost OWC představila miniaturní SSD Envoy Pro mini.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'qnap-predstavuje-nas-ts-873aeu-s-malou-hloubkou',
  'Qnap představuje nas ts-873aeu s malou hloubkou',
  'Společnost QNAP uvádí nový model NAS TS-873AeU ve formátu 2U.',
  'Společnost QNAP uvádí nový model NAS TS-873AeU ve formátu 2U.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost QNAP uvádí nový model NAS TS-873AeU ve formátu 2U.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'sabrent-ma-vykonnou-dokovaci-stanici-s-thunderbolt-3',
  'Sabrent má výkonnou dokovací stanici s thunderbolt 3',
  'Společnost Sabrent odhalila novou dokovací stanici DS-SKRT-D16TB.',
  'Společnost Sabrent odhalila novou dokovací stanici DS-SKRT-D16TB.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Sabrent odhalila novou dokovací stanici DS-SKRT-D16TB.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'toshiba-uvadi-hdd-x300-pro',
  'Toshiba uvádí hdd x300 pro',
  'Společnost Toshiba odhalila nové pevné disky X300 Pro.',
  'Společnost Toshiba odhalila nové pevné disky X300 Pro.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Toshiba odhalila nové pevné disky X300 Pro.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'pevne-disky-wd-red-pro-nyni-s-kapacitou-az-20-tb',
  'Pevné disky wd red pro nyní s kapacitou až 20 tb',
  'Společnost Western Digital doplnila modelovou řadu pevných disků Red Pro o 20TB variantu.',
  'Společnost Western Digital doplnila modelovou řadu pevných disků Red Pro o 20TB variantu.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Western Digital doplnila modelovou řadu pevných disků Red Pro o 20TB variantu.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-pripravuje-externi-disky-pro-playstation-5',
  'Seagate připravuje externí disky pro playstation 5',
  'Společnost Seagate má v nabídce nové pevné disky pro konzole PlayStation.',
  'Společnost Seagate má v nabídce nové pevné disky pro konzole PlayStation.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate má v nabídce nové pevné disky pro konzole PlayStation.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'backblaze-statistiky-poruchovosti-hdd-za-rok-2021',
  'Backblaze: statistiky poruchovosti hdd za rok 2021',
  'Společnost Backblaze přináší další pravidelné statistiky poruchovosti HDD za rok 2021.',
  'Společnost Backblaze přináší další pravidelné statistiky poruchovosti HDD za rok 2021.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Backblaze přináší další pravidelné statistiky poruchovosti HDD za rok 2021.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'toshiba-dodala-rekordni-pocet-hdd-nearline',
  'Toshiba dodala rekordní počet hdd nearline',
  'Společnost Toshiba oznámila, že pokořila nový rekord v dodávkách pevných disků z modelové řady Nearline.',
  'Společnost Toshiba oznámila, že pokořila nový rekord v dodávkách pevných disků z modelové řady Nearline.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Toshiba oznámila, že pokořila nový rekord v dodávkách pevných disků z modelové řady Nearline.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'sk-hynix-predstavil-ssd-platinum-p41',
  'Sk hynix představil ssd platinum p41',
  'Výrobce SK Hynix uvedl novou modelovou řadu SSD řady Platinum P41.',
  'Výrobce SK Hynix uvedl novou modelovou řadu SSD řady Platinum P41.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Výrobce SK Hynix uvedl novou modelovou řadu SSD řady Platinum P41.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'adata-chysta-nova-ssd-s-pcie-5',
  'Adata chystá nová ssd s pcie 5',
  'Společnost ADATA se brzy pustí do výroby nových SSD s rozhraním PCIe 5.',
  'Společnost ADATA se brzy pustí do výroby nových SSD s rozhraním PCIe 5.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost ADATA se brzy pustí do výroby nových SSD s rozhraním PCIe 5.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'seagate-zacal-prodavat-az-20tb-hdd-exos-x20',
  'Seagate začal prodávat až 20tb hdd exos x20',
  'Společnost Seagate uvádí nové modely pevných disků Exos X20.',
  'Společnost Seagate uvádí nové modely pevných disků Exos X20.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate uvádí nové modely pevných disků Exos X20.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'kioxia-ma-prenosne-ssd-exceria-plus',
  'Kioxia má přenosné ssd exceria plus',
  'Společnost Kioxia představila novou elegantní modelovou řadu přenosných SSD EXCERIA PLUS Portable.',
  'Společnost Kioxia představila novou elegantní modelovou řadu přenosných SSD EXCERIA PLUS Portable.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Kioxia představila novou elegantní modelovou řadu přenosných SSD EXCERIA PLUS Portable.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'qnap-nasbook-ctyrjadrovy-nas-pro-4-disky',
  'Qnap nasbook - čtyřjádrový nas pro 4 disky',
  'Společnost QNAP představila NASbook TBS-464.',
  'Společnost QNAP představila NASbook TBS-464.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost QNAP představila NASbook TBS-464.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'wd-uvadi-ssd-blue-sn570',
  'WD uvádí ssd blue sn570',
  'Společnost Western Digital si pro zákazníky připravila nová M.2 SSD s názvem WD Blue SN570.',
  'Společnost Western Digital si pro zákazníky připravila nová M.2 SSD s názvem WD Blue SN570.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Western Digital si pro zákazníky připravila nová M.2 SSD s názvem WD Blue SN570.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'novinka-rychla-ssd-corsair-mp600-pro-xt',
  'Novinka! rychlá ssd corsair mp600 pro xt',
  'Společnost Corsair odhaluje nová zařízení Corsair MP600 Pro XT.',
  'Společnost Corsair odhaluje nová zařízení Corsair MP600 Pro XT.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Corsair odhaluje nová zařízení Corsair MP600 Pro XT.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'western-digital-ma-hdd-s-rekordni-kapacitou-20-tb',
  'Western digital má hdd s rekordní kapacitou 20 tb',
  'Společnost Western Digital přidává do portfolia své první 20TB pevné disky, které nabídnou vysoký výkon.',
  'Společnost Western Digital přidává do portfolia své první 20TB pevné disky, které nabídnou vysoký výkon.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Western Digital přidává do portfolia své první 20TB pevné disky, které nabídnou vysoký výkon.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'adata-nabidne-vykonna-ssd-legend',
  'Adata nabídne výkonná ssd legend',
  'Výrobce Adata odhalil nová výkonná zařízení SSD.',
  'Výrobce Adata odhalil nová výkonná zařízení SSD.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Výrobce Adata odhalil nová výkonná zařízení SSD.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'prodej-hdd-ve-2-ctvrtleti-2021-rekordne-vzrostl',
  'Prodej hdd ve 2. čtvrtletí 2021 rekordně vzrostl',
  'Trh s pevnými disky zažil nebývalý boom.',
  'Trh s pevnými disky zažil nebývalý boom.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Trh s pevnými disky zažil nebývalý boom.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'pny-uvadi-2-nove-rady-vykonnych-ssd-m-2-nvme',
  'Pny uvádí 2 nové řady výkonných ssd m.2 nvme',
  'Společnost PNY má hned dvě nové modelové řady SSD LX2030 a LX3030.',
  'Společnost PNY má hned dvě nové modelové řady SSD LX2030 a LX3030.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost PNY má hned dvě nové modelové řady SSD LX2030 a LX3030.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'terramaster-nabizi-profesionalni-nas-s-ctyrjadrem',
  'Terramaster nabízí profesionální nas s čtyřjádrem',
  'Společnost TerraMaster představila nové profesionální zařízení NAS F4-421.',
  'Společnost TerraMaster představila nové profesionální zařízení NAS F4-421.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost TerraMaster představila nové profesionální zařízení NAS F4-421.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'ssd-seagate-firecuda-530-prekvapi-vysokou-rychlosti',
  'Ssd seagate firecuda 530 překvapí vysokou rychlostí',
  'Společnost Seagate rozšiřuje svou nabídku SSD o řadu řadu FireCuda 530.',
  'Společnost Seagate rozšiřuje svou nabídku SSD o řadu řadu FireCuda 530.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Seagate rozšiřuje svou nabídku SSD o řadu řadu FireCuda 530.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'ssdwd-blackd30-nadchnou-herni-fanousky',
  'Ssd wd_black d30 nadchnou herní fanoušky',
  'Společnost Western Digital má nová SSD WD_BLACK D30.',
  'Společnost Western Digital má nová SSD WD_BLACK D30.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Western Digital má nová SSD WD_BLACK D30.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'nova-ssd-cigent-odhali-ransomware',
  'Nová ssd cigent odhalí ransomware',
  'Společnost Phison společně s firmou Cigent představují nové solid-state disky, které jsou schopny ochránit uložená data proti ransomwaru.',
  'Společnost Phison společně s firmou Cigent představují nové solid-state disky, které jsou schopny ochránit uložená data proti ransomwaru.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Phison společně s firmou Cigent představují nové solid-state disky, které jsou schopny ochránit uložená data proti ransomwaru.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'backblaze-statistiky-poruchovosti-hdd-za-rok-2020',
  'Backblaze: statistiky poruchovosti hdd za rok 2020',
  'Společnost Backblaze přináší nové statistiky poruchovosti pevných disků za celý uplynulý rok 2020.',
  'Společnost Backblaze přináší nové statistiky poruchovosti pevných disků za celý uplynulý rok 2020.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Backblaze přináší nové statistiky poruchovosti pevných disků za celý uplynulý rok 2020.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'silicon-power-uvadi-usporne-ssd-xd80',
  'Silicon power uvádí úsporné ssd xd80',
  'Společnost Silicon Power oznámila příchod nového solid-state disku s označením XD80.',
  'Společnost Silicon Power oznámila příchod nového solid-state disku s označením XD80.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Silicon Power oznámila příchod nového solid-state disku s označením XD80.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'mini-pc-asus-pb62-prezije-extremni-podminky',
  'Mini pc asus pb62 přežije extrémní podmínky',
  'Společnost ASUS představila nový minipočítač PB62.',
  'Společnost ASUS představila nový minipočítač PB62.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost ASUS představila nový minipočítač PB62.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'kingston-uvadi-na-scenu-novou-radu-ssd-nv1-nvme-pcie',
  'Kingston uvádí na scénu novou řadu ssd nv1 nvme pcie',
  'Společnost Kingston představila novou modelovou řadu SSD s názvem NV1.',
  'Společnost Kingston představila novou modelovou řadu SSD s názvem NV1.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Kingston představila novou modelovou řadu SSD s názvem NV1.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'samsung-uvadi-nova-ssd980-bez-dram',
  'Samsung uvádí nová ssd980 bez dram',
  'Společnost Samsung oficiálně odhalila veřejnosti nové SSD 980 bez paměti DRAM.',
  'Společnost Samsung oficiálně odhalila veřejnosti nové SSD 980 bez paměti DRAM.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Samsung oficiálně odhalila veřejnosti nové SSD 980 bez paměti DRAM.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'adata-se900g-moderni-ssd-s-rgb-podsvicenim',
  'Adata se900g - moderní ssd s rgb podsvícením',
  'Společnost Adata si pro své zákazníky připravila nové externí SSD SE900G.',
  'Společnost Adata si pro své zákazníky připravila nové externí SSD SE900G.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Adata si pro své zákazníky připravila nové externí SSD SE900G.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'synology-odhaluje-pevne-disky-hat5300',
  'Synology odhaluje pevné disky hat5300',
  'Společnost Synology uvádí novou modelovou řadu pevných disků HAT5300.',
  'Společnost Synology uvádí novou modelovou řadu pevných disků HAT5300.',
  'DataHelp Team',
  NULL,
  NOW(),
  true,
  1,
  'Společnost Synology uvádí novou modelovou řadu pevných disků HAT5300.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
  updated_at = NOW();

-- 3. Propojení krátkých novinek s kategorií

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'sabrent-uvedl-ssd-rocket-4-m-2-gen-4-bez-dram-cache' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'backblaze-statistiky-poruchovosti-hdd-za-rok-2023' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'crucial-odhalila-nove-rychle-modely-ssd-t705' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'samsung-odhalil-rychle-ssd-990-evo' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'crucial-ma-rychla-ssd-t500-s-232vrstvou-pameti-tlc-nand' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'toshiba-nabidne-az-22tb-hdd-rady-mg10f' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'pevne-disky-budou-mit-za-2-roky-az-100-tb' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-odhalil-ssd-firecuda-540' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'computex-transcend-odhalil-mnoho-novinek' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'corsair-uvadi-rychle-ssd-mp700-s-pcie-5-0' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-uvadi-star-wars-edici-rychlych-ssd-lightsaber-collection' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'minisforum-uvadi-mini-pc-nab6' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kioxia-letos-zahaji-prodej-2tb-microsdxc-karty' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'wd-ma-nove-22tb-verze-disku-my-book-a-my-book-duo' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'backblaze-statistiky-poruchovosti-hdd-za-rok-2022' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-letos-rapidne-navysi-kapacity-hdd' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'micron-nabizi-extra-vykonne-ssd-9400' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'qnap-uvadi-domaci-nas-ts-262-a-ts-462' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-uvadi-hdd-exos-2x18-s-vysokym-vykonem' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'backblaze-statistiky-poruchovosti-hdd-za-3q-2022' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'sandisk-pro-g40-odolne-ssd-s-thunderbolt-3' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'qnap-nabizi-nove-nas-s-podporou-do-2029' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'qnap-nabizi-prumyslovy-nas-10gbe' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'wd-nove-dodava-22tb-hdd-pro-3-modelove-rady' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kingston-iron-keylocker-50-nabizi-xts-aes-sifrovani' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'nova-prenosna-ssd-pny-elitex-pro-maji-az-4tb' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'crucial-p3-plus-nova-ssd-s-pcie-4-0-nvme' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'owc-envoy-pro-mini-nove-ssd-do-kapsy' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'qnap-predstavuje-nas-ts-873aeu-s-malou-hloubkou' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'sabrent-ma-vykonnou-dokovaci-stanici-s-thunderbolt-3' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'toshiba-uvadi-hdd-x300-pro' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'pevne-disky-wd-red-pro-nyni-s-kapacitou-az-20-tb' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-pripravuje-externi-disky-pro-playstation-5' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'backblaze-statistiky-poruchovosti-hdd-za-rok-2021' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'toshiba-dodala-rekordni-pocet-hdd-nearline' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'sk-hynix-predstavil-ssd-platinum-p41' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'adata-chysta-nova-ssd-s-pcie-5' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'seagate-zacal-prodavat-az-20tb-hdd-exos-x20' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kioxia-ma-prenosne-ssd-exceria-plus' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'qnap-nasbook-ctyrjadrovy-nas-pro-4-disky' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'wd-uvadi-ssd-blue-sn570' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'novinka-rychla-ssd-corsair-mp600-pro-xt' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'western-digital-ma-hdd-s-rekordni-kapacitou-20-tb' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'adata-nabidne-vykonna-ssd-legend' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'prodej-hdd-ve-2-ctvrtleti-2021-rekordne-vzrostl' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'pny-uvadi-2-nove-rady-vykonnych-ssd-m-2-nvme' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'terramaster-nabizi-profesionalni-nas-s-ctyrjadrem' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ssd-seagate-firecuda-530-prekvapi-vysokou-rychlosti' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ssdwd-blackd30-nadchnou-herni-fanousky' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'nova-ssd-cigent-odhali-ransomware' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'backblaze-statistiky-poruchovosti-hdd-za-rok-2020' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'silicon-power-uvadi-usporne-ssd-xd80' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'mini-pc-asus-pb62-prezije-extremni-podminky' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kingston-uvadi-na-scenu-novou-radu-ssd-nv1-nvme-pcie' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'samsung-uvadi-nova-ssd980-bez-dram' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'adata-se900g-moderni-ssd-s-rgb-podsvicenim' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'synology-odhaluje-pevne-disky-hat5300' AND c.slug = 'novinky'
ON CONFLICT DO NOTHING;
