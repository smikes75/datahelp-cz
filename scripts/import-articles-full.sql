-- ========================================
-- Import článků z datahelp.cz do Supabase
-- S PLNÝM OBSAHEM
-- Generováno: 2025-12-04T13:26:37.545Z
-- Počet článků: 80
-- ========================================

-- 1. Vložení kategorií
INSERT INTO blog_categories (slug, name_cs, name_en, name_de, name_it) VALUES
  ('prvni-pomoc', 'První pomoc', 'První pomoc', 'První pomoc', 'První pomoc'),
  ('zalohovani-dat', 'Zálohování dat', 'Zálohování dat', 'Zálohování dat', 'Zálohování dat'),
  ('technologie', 'Technologie', 'Technologie', 'Technologie', 'Technologie'),
  ('nase-aktivity', 'Naše aktivity', 'Naše aktivity', 'Naše aktivity', 'Naše aktivity')
ON CONFLICT (slug) DO NOTHING;

-- 2. Vložení článků

INSERT INTO blog_posts (
  slug, title_cs, excerpt_cs, content_cs, author, image_url,
  published_at, is_published, reading_time_minutes, seo_description_cs
) VALUES (
  'jak-obnovit-iphone-ze-zalohy',
  'Jak obnovit iphone ze zálohy?',
  'Zálohování dat je v dnešní době velmi důležité. Může se vám hodit nejen kvůli případné ztrátě zařízení Apple iPhone, ale také pro obnovení smazaných zpráv, e-mailů nebo kontaktů. ',
  '## Obnova iPhone ze zálohy na iCloudu
Standardní proces, který obnoví data a nastavení telefonu Apple iPhone z uložené zálohy iCloud.
• Na svém mobilním zařízení iPhone přejděte do sekce *Nastavení > Obecné > Aktualizace softwaru*. Pokud je k dispozici novější verze systému iOS, stáhněte si ji a aktualizujte podle pokynů na obrazovce.
• Přejděte do sekce*Nastavení > [vaše jméno] > iCloud > Spravovat úložiště *a klepněte na*Zálohy*, které si seřaďte podle data. Zkontrolujte si nejnovější zálohu dat.
• Přejděte do sekce *Nastavení > Obecné > Obnovit *a zvolte možnost *Smazat data a nastavení*.
• Na obrazovce*Aplikace a data *zvolte možnost *Obnovit ze zálohy iCloud* a přihlaste se svým Apple ID.
• Zobrazí se vám možnost *Vybrat zálohu*, vyberte nejnovější dostupnou zálohu dat v iCloudu.
• ***Znáte i další cloudová úložiště**, jako jsou třeba Google Disk, Mega, Microsoft One Drive, Dropbox nebo Amazon Cloud Drive? *
## Obnovení továrního nastavení iPhonu
Jestliže potřebujete vymazat ze svého smartphonu Apple iPhone veškerá uložená data a nastavení, není nic snadnějšího než zařízení dát do původního továrního nastavení v několika jednoduchých krocích.
• Zkontrolujte si, že máte na svém PC nebo Mac aktualizovaný operační systém. Stejně tak si ověřte aktuální verzi aplikace iTunes.
• Pokud si chcete data z iPhonu uložit, proveďte zálohu.
• Přejděte do sekce *Nastavení > [vaše jméno] > iCloud *a zde deaktivujte možnost Najít iPhone.
• Na počítači Mac otevřete aplikaci Finder. Na Mac se systémem macOS Mojave 10.14 nebo starším, případně na klasickém PC, otevřete program iTunes.
• Připojte iPhone k počítači a postupujte podle kroků na obrazovce. Můžete být vyzváni k zadání kódu.
• Jakmile se iPhone zobrazí v počítači, vyberte ho a zvolte možnost *Obnovit iPhone*.
• Na obrazovce potvrďte obnovení iPhone. Nyní počítač vrátí zařízení do továrního nastavení a nainstaluje do něj nejnovější verzi iOS.
• Jakmile je operační systém nainstalován, iPhone se restartuje a můžete jej začít znovu používat.
• ***Mohlo by vás zajímat! **Studie o extrakci dat: Lidé nechávají v použitých počítačích a mobilech citlivá data*
### Obnova továrního nastavení bez iTunes
Když nemáte přístup k počítači Mac nebo Windows, můžete obnovu uskutečnit v nastavení iPhonu. Tímto krokem ze smartphonu smažete všechna data a nastavení. Před samotným vymazáním si můžete data zálohovat na iCloud.
• Na iPhonu otevřete systémové nastavení.
• Přejděte na kartu *Obecné.*
• Zvolte možnost *Resetovat/Obnovit.*
• Zvolte *Smazat data a nastavení*.
• Potvrďte volbu bezpečnostním kódem a zvolte možnost *Smazat iPhone*.
### Obnova továrního nastavení bez hesla
Nemáte heslo k iPhonu, nebo došlo k jeho nechtěnému zablokování? Také v tomto případě je možné iPhone obnovit, jen musíte váš telefon nejprve dostat do režimu zotavení stisknutím přesné kombinace kláves. Celý proces obnovení továrního nastavení bez nutnosti použít heslo se liší dle konkrétního modelu iPhone.
Následující postup obnovy továrního nastavení je určen pro zařízení **Apple iPhone 11/11 Pro/11 Pro Max, Apple iPhone X/XS/XS Max a Apple iPhone 8/8 Plus.**
• Přidržte zapínací tlačítko a jedno z tlačítek hlasitosti.
• Jakmile se zobrazí posuvník, telefon vypněte.
• Na počítači otevřete aplikaci iTunes.
• Připojte iPhone přes kabel k počítači a přitom přidržte zapínací tlačítko.
• Jak bude rozpoznán režim zotavení, tlačítko pusťte.
• Na obrazovce počítače zvolte možnost Obnovit iPhone a potvrďte volbu tlačítkem Obnovit/OK.
Následující postup obnovy továrního nastavení je určen pro zařízení**Apple iPhone 7/7 Plus, Apple iPhone 6/6 Plus/6S/6S Plus a iPhone 4/4S/5S/5C/SE.**
• Přidržte zapínací tlačítko a vypněte telefon posuvníkem.
• Na počítači otevřete aplikaci iTunes.
• Připojte iPhone přes kabel k počítači a přitom přidržte zapínací tlačítko.
• Jak bude rozpoznán režim zotavení, tlačítko pusťte.
• Na obrazovce počítače zvolte možnost Obnovit iPhone a potvrďte volbu tlačítkem Obnovit/OK.
Po dokončení všech uvedených kroků se do iPhonu nainstaluje nejnovější verze iOS, provede se smazání veškerých dat a nastavení. Telefon bude v továrním nastavení jako nový, pouze Apple ID v něm zůstane, jelikož odstranění by musel provést majitel zařízení.
## Jak resetovat iPhone?
V případě neadekvátního chování smartphonu, jako je zamrznutí, zpomalená odezva systému, nebo nefunkčnost tlačítek, vám může pomoci reset iPhone. Existuje několik různých možností, jak resetovat iPhone, každá z nich se hodí na jiný druh problému.
• *Co dělat, když se iPhone „koupal“ ve vodě? Dají se vaše data zachránit?*
### Tvrdý restart
Hodí se pro okamžité vypnutí a zapnutí iPhone při zamrznutí obrazovky, například když se zhroutí software.
**Postup:**
**iPhone 6 a starší** - Stiskněte a přidržte tlačítko Zapnutí/Vypnutí společně s tlačítkem Domů, dokud se neobjeví logo Apple.
**iPhone 7** - Stiskněte a přidržte tlačítko hlasitosti společně s tlačítkem Zapnutí/Vypnutí, dokud se neobjeví logo Apple.
**iPhone 8 a novější** - Stiskněte a uvolněte tlačítko pro zvýšení hlasitosti. Stiskněte a uvolněte tlačítko pro snížení hlasitosti. Stiskněte a přidržte boční tlačítko, dokud se neobjeví logo Apple.
### Měkký reset
Když se objeví drobné softwarové závady, je vhodné telefon s nakousnutým jablkem restartovat, neboli jej vypnout a zapnout.
**Postup: **Stiskněte a přidržte tlačítko Zapnutí/Vypnutí. Posuňte posuvník na obrazovce zleva doprava. Počkejte cca 20 sekund, poté znovu stiskněte a přidržte tlačítko Zapnutí/Vypnutí.
## Zapomenutý kód na iPhone
Každý iPhone je možné uzamknout přístupovým kódem, aby byla vaše data lépe chráněná. Pro zařízení s podporou Touch ID lze místo kódu využít otisk prstu, u přístrojů s Face ID je možné místo kódu využít rozpoznání obličeje.
Nicméně zapomenutí přístupového kódu není nic příjemného. Máte-li uzamčený iPhone a neznáte přístupový kód, budete muset zařízení obnovit = smazat z něj všechna data a nastavení, včetně přístupového kódu. Jen tímto způsobem lze iPhone znovu začít používat. Uživatelé, kteří si dělají pravidelnou zálohu systému a souborů, si mohou data jednoduše obnovit zpět.
• *Tipy, jak nejlépe zabezpečit iPhone před ztrátou dat*
• *Návod, jak odblokovat iPhone*
**Odebrání kódu pro iPhone X a novější, iPhone SE (2. generace), iPhone 8/8 Plus:**
• Zkontrolujte, že iPhone není připojen k počítači.
• Přidržte boční tlačítko a jedno z tlačítek hlasitosti, dokud se neobjeví posuvník pro vypnutí přístroje. Přetažením posuvníku iPhone vypněte.
• Připojte iPhone přes kabel k počítači a přitom přidržte zapínací tlačítko.
• Jakmile bude rozpoznán režim zotavení, tlačítko pusťte.
• Na obrazovce počítače zvolte možnost*Obnovit iPhone* a potvrďte volbu tlačítkem *Obnovit/OK*.
**Odebrání kódu pro iPhone 7/7 Plus:**
• Zkontrolujte, že iPhone není připojen k počítači.
• Přidržte boční tlačítko a jedno z tlačítek hlasitosti, dokud se neobjeví posuvník pro vypnutí přístroje. Přetažením posuvníku iPhone vypněte.
• Připojte iPhone přes kabel k počítači a přitom přidržte tlačítko pro zeslabení hlasitosti.
• Jakmile bude rozpoznán režim zotavení, tlačítko pusťte.
• Na obrazovce počítače zvolte možnost *Obnovit iPhone* a potvrďte volbu tlačítkem *Obnovit/OK*.
**Odebrání kódu pro iPhone SE (1. generace), iPhone 6s a starší:**
• Zkontrolujte, že iPhone není připojen k počítači.
• Přidržte boční nebo horní tlačítko, dokud se neobjeví posuvník pro vypnutí přístroje. Přetažením posuvníku iPhone vypněte.
• Připojte iPhone přes kabel k počítači a přitom přidržte tlačítko Domů.
• Jakmile bude rozpoznán režim zotavení, tlačítko pusťte.
• Na obrazovce počítače zvolte možnost *Obnovit iPhone* a potvrďte volbu tlačítkem *Obnovit/OK*.
### Nastavení nového kódu
Po restartování a zapnutí zařízení iPhone si můžete nastavit úplně nový přístupový kód. Na iPhonu X a novějším volbu provedete v sekci *Nastavení > Face ID a kód*. U starších modelů iPhone zvolte v nastavení možnost *Touch ID a kód*, případně možnost *Kódový zámek*.
## Obnova smazaných SMS na iPhone
Majitelé chytrých mobilních telefonů iPhone mohou pro přenos informací se svými kamarády a známými využít mimo jiné krátké textové zprávy SMS, které pro zařízení Apple nesou označení iMessage. Obsahem zprávy mohou být kromě textu také fotografie, odkazy nebo multimediální soubory. Jestliže jste ztratili své zprávy iMessage kvůli náhodnému smazání, chybě systému iOS nebo továrnímu resetování iPhone, neklesejte na mysli, smazané SMS můžete opětovně obnovit.
• *Pozor na duplikaci fotek v paměti telefonu. Zbytečně přicházíte o úložiště!*
• Propojte iPhone s počítačem pomocí aplikace iTunes. V levém horním rohu aplikace uvidíte ikonu vašeho připojeného iOS zařízení, kterou vyberte. Na obrazovce zvolte možnost*Tento počítač *a zkontrolujte, že nemáte nezaškrtnutou volbu *Šifrovat zálohy iPhonu*. Proveďte zálohování IPhone volbou *Zálohovat *a zařízení z iTunes odpojte.
• iPhone opětovně propojte s počítačem a postupujte dle pokynů v prvním kroku, iTunes však nezavírejte, musí být stále otevřený.
• Stáhněte si a nainstalujte aplikaci iBackupBot. Otevřete ji a v menu zvolte možnost *User Information Manager > Messages > Import*. Budete dotázáni k výběru zálohy iPhone, vyberte tu, kterou jste provedli jako poslední v prvním kroku.
• V dialogovém okně pro import textových zpráv volbu potvrďte stisknutím tlačítka OK. Následně se vám objeví okno*Import File*, v jehož levém dolním rohu zvolte možnost*"Do this for all conflicts"* a potvrďte tlačítkem *Yes*.
• Klikněte na tlačítko OK a software iBackupBot zavřete.
• V aplikaci iTunes zvolte možnost *Obnovit ze zálohy* a vyberte zálohu z druhého kroku. Potvrďte tlačítkem *Obnovit*.
• Jakmile je provedeno restartování zařízení, uvidíte v sekci *Zprávy* všechny vaše předchozí zprávy, včetně iMessages.
## Obnova Apple ID
Apple ID představuje váš osobní účet, díky němuž můžete využívat služby Apple (například App Store, Apple Music, iCloud, iMessage, FaceTime a další). Apple ID je obvykle vaše e-mailová adresa, kterou lze využívat také na dalších zařízeních. Jestliže jste zapomněli vaše Apple ID a nemůžete jej zjistit z jiného přístroje Apple, vyzkoušejte následující postup pro jeho obnovení.
• Otevřete webovou stránku https://appleid.apple.com.
• Klikněte na možnost *"Zapomněli jste Apple ID nebo heslo?"*
• Zadejte své Apple ID (e-mail), případně jej vyhledejte zadáním potřebných údajů.
• Klikněte na tlačítko *Pokračovat.*
• Zvolte si, jak chcete obnovit heslo Apple ID - *Obdržet e-mail*.
Po obnovení hesla se můžete opět přihlásit k účtu.
## Obnova kontaktů
Omylem jste si smazali ze svého iPhonu všechna telefonní čísla? Ztracené kontakty můžete snadno obnovit zpět přes starší verzi archivu kontaktů, kterou jste si uložili v iCloud.
• Přejděte na web iCloud.com a v sekci *Nastavení účtu > Pokročilé *zvolte možnost *Obnovit kontakty*. Uvidíte všechny dostupné verze kontaktů seřazené podle data a času archivace.
• U vybrané verze klikněte vpravo na tlačítko *Obnovit*. Vyčkejte na kompletní obnovení kontaktů.
Postup můžete zopakovat vícekrát a vybrat si tak odpovídající verzi kontaktů, kterou jste měli dříve uloženou ve svém zařízení iPhone.
## Obnova e-mailu
Využívání e-mailového klienta je každodenní rutina většiny z nás. Ať už v iPhone máte Gmail, Yahoo, iCloud, Outlook nebo jiného poskytovatele e-mailových služeb Někdy se může přihodit, že smažete e-mailovou zprávu, kterou později potřebujete. Jak ji obnovit? Stačí udělat postupovat podle následujících instrukcí.
• Přejděte do aplikace Mail a zvolte položku *Zprávy*.
• Mezi složkami najdete mimo jiné schránku*Koš *(případně Smazané), kterou označte a klepněte na tlačítko *Upravit.*
• Nyní se vám zobrazí všechny e-maily, které můžete obnovit. Zvolte potřebné zprávy a klepněte na tlačítko*Přesunout*.
• Zvolte složku, kam se mají e-maily přesunout (například Doručená pošta) a volbu potvrďte.
Tento postup neplatí pro zprávy, které jste smazali již před delší dobou, neboť položky v koši se automaticky promazávají dle vašeho nastavení. Dobu uchovávání smazaných e mailů můžete zkontrolovat v sekci *Nastavení > Mail > Účty*. Vyberte svůj e-mailový účet, pak zvolte *Mail > Pokročilé*. Zde najdete aktuálně nastavenou dobu, kterou můžete upravit.
• *Jak jednoduše chránit data v chytrém telefonu: I. díl – útoky zvenku*
• *Jak jednoduše chránit data v chytrém telefonu: II. díl – aplikace a útoky zevnitř*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2021-08-23',
  true,
  10,
  'Zálohování dat je v dnešní době velmi důležité. Může se vám hodit nejen kvůli případné ztrátě zařízení Apple iPhone, ale také pro obnovení smazaných zpráv, e-mailů nebo kontaktů. '
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
  'jak-odblokovat-iphone-navod-krok-za-krokem',
  'Jak odblokovat iphone? návod krok za krokem',
  'Zadali jste do svého iPhonu několikrát za sebou nesprávný přístupový kód, a telefon se vám tak zablokoval? Poradíme vám, jak jej zase odblokovat a opět bez problému používat.',
  '## Jak odblokovat iPhone, když zapomenete kód?
Majitelé smartphonů Apple iPhone mohou využívat pokročilé **bezpečnostní funkce**. Jednou z nich je **přístupový kód**, který si pro používání telefonu musíte pamatovat. Když ověřovací kód zadáte několikrát špatně, dojde **k zablokování iPhonu. Jak ho zachránit?**
• *Tipy, jak nejlépe zabezpečit iPhone před ztrátou dat*
### Co je přístupový kód?
U zařízení s podporou Touch ID je přístupový kód definován jako **číselný PIN kód o šesti znacích**, na ostatních zařízeních Apple iPhone a Apple iPad se jedná o **čtyřmístný PIN kód**. V systému iOS je možné nastavit mnoho různých pravidel pro přístupový kód tak, abyste si u svého chytrého telefonu zajistili požadovanou bezpečnost. Pro zařízení s podporou **Touch ID** lze místo kódu využít **otisk prstu**, u přístrojů s **Face ID** je možné místo kódu využít **rozpoznání obličeje**. S aktivovanou funkcí pro zadávání přístupového kódu máte jistotu, že jsou vaše soukromá data na telefonu iPhone v bezpečí.
• *Data v chytrém telefonu je potřeba chránit jak před útoky zvenku, tak i před těmi zevnitř.*
### Kdy je nutné na iPhone zadávat kód?
Pokud máte kód na iPhonu nastaven, je nutné ho zadat pokaždé při **restartování, odemknutí, aktualizaci softwaru, vymazání zařízení, instalaci nových konfiguračních profilů iOS** nebo při snaze **zobrazit či změnit aktuální přístupový kód**.
• *Android vs. iOS – souboj velikánů a podrobné srovnání*
### Co když kód zapomenu?
Uživatel by si měl svůj přístupový **kód pamatovat**. Samozřejmě se může stát, že si na kód nemusíte hned vzpomenout, případně si s telefonem může hrát dítě apod. Pokud vy nebo někdo jiný zadá**6× nesprávný přístupový kód**, iPhone se dočasně **zablokuje**. Maximální počet neúspěšných pokusů si však mohl uživatel chytrého telefonu v nastavení změnit.
### Uzamknutý iPhone a jeho odblokování
**Při překročení počtu povolených pokusů**, které máte pro zadání správného přístupového kódu, se na zamykací obrazovce iPhonu objeví varování ***„iPhone je uzamčený“***. Abyste mohli iPhone opětovně používat, musíte jej **odblokovat** některým ze tří uvedených způsobů. Bohužel odblokováním iPhonu se z vašeho smartphonu vymaže nejen nastavení přístupového kódu, ale také **všechna uložená data**. Pokud jste si data **nezálohovali**, přijdete o veškeré kontakty, fotografie, videa a další soubory.
• *Apple: jak probíhá zálohování dat na jednotlivých zařízeních a práce s iCloud*
• *Jak obnovit iPhone ze zálohy?*
## Možnosti provedení odblokování
### 1) Vzdálené odblokování přes iCloud
Tento způsob odblokování iPhone je možné využít pouze v případě, že jste již dříve na svém chytrém telefonu aktivovali***službu „Najít iPhone“***. Tato možnost se na iPhone aktivuje dle následujících pokynů.
#### **Jak zapnout funkci Najít iPhone?**
• Otevřete aplikaci *Nastavení*.
• Vyberte své jméno a potom zvolte možnost *Najít*.
• Zapněte možnost Sdílet moji polohu, čímž zviditelníte polohu svého zařízení pro svou rodinu a přátele.
• Zvolte možnost *Najít [zařízení]* a aktivujte možnost *Najít [zařízení]*.
• *Co dělat, když ztratíte telefon?*
Jestliže máte jistotu, že váš iPhone měl aktivní funkci Najít iPhone, můžete postupovat dle pokynů níže.
#### **Postup odblokování iPhone přes iCloud**
• Na jiném zařízení (například počítač s Windows nebo Mac OS) přejděte k přihlášení na iCloud.
• Přihlaste se ke svému účtu Apple ID.
• Otevřete aplikaci *Najít iPhone*.
• V horní části dialogového okna zvolte možnost *Všechna zařízení*.
• Vyberte zařízení iPhone, které chcete smazat.
• Zvolte možnost *Smazat iPhone* a smažte data a kód iPhonu.
• Nyní je možné iPhone nastavit jako nový, nebo ho obnovit.
### 2) Odblokování s využitím iTunes na PC
Lze využít pro telefony iPhone, které byly již dříve **synchronizované s iTunes** na počítači.
#### **Postup odblokování iPhone přes iTunes**
• Připojte iPhone pomocí kabelu k počítači Mac nebo PC a vyčkejte na propojení.
• Po dokončení synchronizace a zálohování, zvolte možnost *„Obnovit iPhone“.*
• Jakmile se zobrazí zpráva, že při obnově iPhone došlo k problému, zvolte možnost*„Obnovit ze zálohy iTunes“*.
• Vyberte iPhone v iTunes a dle požadovaného data a velikosti zvolte nejvhodnější zálohu.
### 3) Odblokování prostřednictvím zotavovacího režimu a připojení k PC
Nejlepší řešení v případě, že k zálohování a synchronizaci telefonu **nepoužíváte iTunes, ani iCloud**. iPhone, který převedete do zotavovacího režimu, se bude chovat, jako by byl úplně nový.
#### **Postup režimu zotavení iPhone přes PC**
• Zkontrolujte si, že máte na svém PC nebo Mac **aktualizovaný operační systém**. Stejně tak si ověřte **aktuální verzi aplikace iTunes**.
• Vypněte zablokovaný telefon iPhone.
• Přepněte iPhone do režimu zotavení stisknutím a držením požadovaného tlačítka:
**Pro iPhone X nebo novější, iPhone SE (2. generace), iPhone 8/8 Plus **stiskněte a držte boční tlačítko.
**Pro iPhone 7 a iPhone 7 Plus** stiskněte a držte tlačítko pro snížení hlasitosti.
**Pro iPhone SE (1. generace) a iPhone 6s nebo starší** stiskněte a držte kruhové tlačítko plochy.
• V průběhu držení tlačítka váš iPhone připojte k počítači. Tlačítko stále nepouštějte.
• Tlačítko držte do chvíle, než se na iPhonu objeví obrazovka režimu zotavení. Pak můžete tlačítko pustit.
• Najděte zařízení iPhone ve Finderu nebo v iTunes na počítači.
• Zvolte možnost *Obnovit*. Do počítače se stáhne software a zahájí se proces obnovení.
• Až proces skončí, odpojte iPhone od počítače. Telefon nastavte jako nový a je opět připraven k použití.
Po vymazání získáte znovu přístup k zablokovanému iPhonu a jeho opětovnému nastavení. Data můžete obnovit ze zálohy na iCloud. V opačném případě musíte zařízení nastavit znovu, proto se vyplatí dělat zálohu systému iOS a souborů **pravidelně**.
• *Kromě pravidelného zálohování dat nezapomeňte svůj iPhone také čas od času čistit od prachu, virů a bakterií*
## Nastavení nového přístupového kódu
Abyste mohli znovu využívat přístupový kód pro zabezpečení vašich dat na iPhone, musíte jej**znovu nastavit**. Kód by neměl být příliš jednoduchý, ani příliš složitý, abyste si jej snadno zapamatovali. Nedoporučuje se používat jednoduché číselné kódy, například 123456, 000000, 123123, 654321 atd. Vhodná je **kombinace čísel, malých a velkých písmen či speciálních znaků**.
### Změna přístupového kódu v Nastavení
• V nabídce *Nastavení* zvolte možnost *Face ID* (nebo případně *Touch ID*) a kód
• Zadejte váš stávající kód
• V nabídce zvolte možnost*Změnit kód zámku*
• *Co dělat, když se iPhone „koupal“ ve vodě? Dají se vaše data zachránit?*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Zadali jste do svého iPhonu několikrát za sebou nesprávný přístupový kód, a telefon se vám tak zablokoval? Poradíme vám, jak jej zase odblokovat a opět bez problému používat.'
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
  'jak-vycistit-mobil-od-prachu',
  'Jak vyčistit mobil od prachu, virů a bakterií?',
  'Mobilní telefon dostává v průběhu svého života pořádně zabrat, v důsledku čehož se ve všech portech mobilního zařízení hromadí spousta prachu.',
  '## Čištění krok po kroku
Ještě, než s očistnou kúrou začnete, mobil odpojte z nabíječky, vysuňte z něj další kabely (např. sluchátka) a vypněte jej.
• Displej
• Tlačítka (Pokud máte tlačítkový displej)
• Porty
• Reproduktor a mikrofon
• Obal a pouzdro
• Nechte vše vyschnout
• **Sumarizace: Vybavení, co se bude hodit**
### 1. Začínáme displejem
Chcete-li displej (včetně čočky fotoaparátu), a celkově mobilní telefon, očistit od prachu, postačí jej otřít **suchým hadříkem z mikrovlákna**. Tím se ale nezbavíte případné mastnoty, virů či bakterií. K tomu dokonale poslouží **speciální dezinfekční ubrousky**, které vašeho „parťáka“ jednak zbaví nečistot, a jednak jej díky své šetrnosti nepoškrábou.
Při větším znečištění můžete **použít hadřík mírně navlhčený ve vodě**, případně speciální přípravky primárně určené k péči o PC monitory a televizory.
**Na co si dát pozor**
V každém případě dbejte na to, aby se do telefonu skrze otvory nedostala vlhkost.
### 2. Pokračujeme tlačítky
Máte-li telefon vybavený navigačními (ale třeba i klasickými) tlačítky, věnujte pozornost i jim. Po okrajích tlačítek se totiž postupem času začne usazovat špína, a tlačítka pak mohou hůře reagovat na dotyk. Vyčistíte je buď **kouskem vaty nebo tyčinkou na čištění uší**, kterou předem namočíte ve vodě či isopropylalkoholu, který koupíte například v drogerii.
### 3. Na řadě jsou připojovací porty
Ač se to na první pohled nemusí zdát, v připojovacích portech se postupně hromadí opravdu velké množství nečistot. Ty jsou navíc s každým dalším připojením sluchátek či nabíječky více vtlačovány dovnitř. Není proto na škodu porty, resp. konektory, čas od času vyčistit.
K čištění lze použít třeba **jehlu nebo párátko obalené kouskem vaty** (nebo lépe kouskem kosmetického tamponu, neboť z vaty mohou v otvorech uvíznout nepatrné chloupky) či oboustrannou lepící páskou. Někdy ale stačí **zdířky profouknout nebo použít sprej se stlačeným vzduchem**, který je k dostání ve specializovaných prodejnách.
• ***Také jsme psali: ***Jak správně nabíjet baterii telefonu?
### 4. Slyšte a buďte slyšeni, aneb nevynechávejte reproduktor a mikrofon
Máte pocit, že svou oblíbenou hudbu z telefonu už téměř neslyšíte? Pravděpodobně máte zanesený reproduktor, k čemuž vlivem neustálé manipulace s mobilem, dochází docela snadno. Pokud jej nevyčistíte, budete při poslechu hudby či přehrávání videí zbytečně zvyšovat hlasitost a tím i spotřebu energie.
#### Malé nečistoty
V případě malých nečistot a prachových částeček **mnohdy stačí do reproduktoru fouknout** s je hotovo. Jindy se hodí spíše stlačený vzduch v plechovce. Ten ale používejte opatrně a z větší vzdálenosti, jinak vy mohlo dojít k poškození citlivé membrány reproduktoru.
#### Větší nečistoty
V případě větších nečistot s pouhým vzduchem pravděpodobně nepochodíte. **Pomoct si ale můžete klasickým či jednosvazkovým zubním kartáčkem**. Volte však takové, které mají měkké štětiny. Stejným způsobem vyčistíte i mikrofon.
### 5. Nezapomínejte na obal či pouzdro
Používáte-li k ochraně svého telefonu obal či pouzdro, nezapomeňte vyčistit i to. **Stačí jej na několik minut namočit do teplé mýdlové vody**, případně ještě otřít vlhkou mikroutěrkou.
• ***Chytré telefony je třeba chránit nejen zvenčí, ale i zevnitř.****Přečtěte si proto také naše články o tom, jak jednoduše chránit data v chytrém telefonu, a to jak před *útoky zvenku*, tak před *aplikacemi a útoky zevnitř*.*
### 6. Nechejte vše vyschnout
Jak mobilní telefon, tak očištěné pouzdro, je třeba nechat pořádně vyschnout. U mobilu je to nejméně 15 minut. Po uplynutí této doby můžete svého společníka vesele používat dál.
### 7. Sumarizace vybavení, co se bude hodit
• Suchý hadřík z mikrovlákna
• Dezinfekční ubrousky
• Hadřík s vodou
• Jehla nebo párátko obalené vatou
• Sprej se stlačeným vzduchem
## Kdy jít do servisu?
Než se rozhodnete pro návštěvu servisu, v každém případě nejprve vyzkoušejte předchozí kroky, kterými určitě nic nezkazíte.
Často se totiž stává, že ač je telefon a jeho součásti funkční, ale je třeba jen zanesena krycí mřížka, servisy této skutečnosti využijí a danou součást zbytečně zcela vymění, případně ji vyčistí, ale naúčtují zákazníkovi plnou cenu.
**Návštěva servisu je nezbytná tehdy, nachází-li se znečištění uvnitř telefonu.** Za těchto okolností je potřeba zařízení rozebrat, což je u dnešních smartphonů pro běžné uživatele takřka nemožné, a servisu se tak nejspíš nevyhnou.
## Kdy jít k nám?
V momentě, když se vám telefon nemůže zapnout, nebo přijdete o data (fotky apod.) a kontakty.
• ***Psali jsme:***Jak zálohovat fotky, tipy a rady pro fotografy (amatéry i profíky).
## Další informační zdroje k tématu:
• *Věděli jste, že *na mobilních zařízeních se nachází i 7x více bakterií než na záchodovém prkénku*?*
• Tipy, jak zabezpečit OS Android*.*
• Tipy, jak zabezpečit iPhone.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2021-07-19',
  true,
  5,
  'Mobilní telefon dostává v průběhu svého života pořádně zabrat, v důsledku čehož se ve všech portech mobilního zařízení hromadí spousta prachu.'
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
  'jak-zalohuji-data-profesionalove',
  'Jak zálohují data profesionálové ve svém oboru?',
  'Ptáme se vás – lidí z různých profesí, protože data jsou všude kolem nás. ',
  '## Marek Prokop
*
Konzultant a odborník na SEO a spoluzakladatel společnosti H1.cz.
„Obecně to řeším tak, že mám skoro všechno primárně v cloudu. Lokálně mám jen vývojářské věci, které zálohuju na GitHub, svoji muziku, kterou zálohovat nestojí za to, a svoje fotky, které jsou na přenos do cloudu moc velké a ze stejného důvodu je nezálohuju ani jinak.“
##
Maťo Mišík
Český hudebník a výtvarník, syn zpěváka a písničkáře Vladimíra Mišíka.
„Osobně jsem asi stará škola. Nikdy mi k srdci nepřirostla ta cloudová úložiště a jsem radši, když mám data fyzicky u sebe. Takže u mne na stole sedí velký QNAP, ve kterém mám dva velké disky, které se vzájemně zrcadlí. Do něj sypu zálohy svého MacBooka a svůj digitální archív.
Pokud se jedná o nějaká choulostivá data, jako různé přístupy atp., mám je v kopii na dvou fleškách a jednou za čas si je vytisknu i na papír. Takže taková trojitá záloha.“
## Vojtěch Vlk
Foto: *Kryštof Kotrč*
Portrétní fotograf, který již přes čtvrt století také dokumentuje nejrůznější náboženské komunity a rituály. Napsal knihu*TranSpiRituals* (KANT 2016).
„Kromě občasně používaného velkoformátového analogového aparátu fotografuji nejvíce s digitální full frame kamerou Nikon D850 s rozlišením 45,7 Mpx (8256 × 5504 px), která produkuje jednotlivé JPG záběry ve velikosti kolem 20 MB a ve formátu RAW až 50 MB. Z celodenního focení si nosím domu několik desítek giga dat. A ty se musí někam uložit a zálohovat. Nahrávám vše na úložiště NAS, které mám doma, a nejdůležitější data ještě paralelně nahraji na další harddisk, který uchovávám na jiné lokaci (když bych třebas vyhořel). Fotografie z IPhonu jsou na iCloudu. A jak na cestách? Většinou vozím notebook s malým externím harddiskem, kam průběžně zálohuji, a paralelně nechávám i na kartách."
## Marek Jehlička
Letecké práce dronem – foto, video, inspekce a monitoring multispektrální a termokamerou pro zemědělství a průmysl.
„V mém případě je to jednoduché: fotografie a komprimovaná videa zálohuji na externí disky. Aktuálně mi leží na stole 10 TB Seagate, který používám i k zálohám na Maca. Co jsem zatím nevyřešil, jsou zálohy nekomprimovaných videí (ProRes, DNG). Z jednoho menšího natáčení (třeba 15-20 minut záznamu) je to zhruba 300-400 GB dat. Zatím jsem nepřišel na rozumně levné úložiště takových objemů a rád si v tomto ohledu nechám poradit.“
## Petr Jan Juračka
Přírodovědec a fotograf. Má vlastní seriál *Petrova divočina* na TV Nova a *Ze života fotografa* na Mall.tv.
„Když se tak zamyslím, moje paranoia ze ztráty nafocených snímků začala ještě dříve, než jsem přešel na digitál. Ten důvod byl prostý – špatně vyvolaný negativ, poškrábaný film anebo film omylem osvětlený ještě před jeho vyvoláním… to mě hrozně děsilo už odmala. S přechodem na digitální fotografii před zhruba patnácti lety se zdálo být vše jednodušší, ale o data prostě člověk někdy přijde. Dnes je pro mě zálohování a péče o data neoddělitelnou součásti fotografické i filmové práce.
Ještě v dobách, kdy moje data čítala stovky GB, potažmo jednotky TB, jsem řešil zálohy jednoduše. Dva velké externí disky na dvou fyzicky oddělených místech působily jako bezpečné řešení. Jenže tu a tam bylo potřeba jeden z disků fyzicky transportovat k tomu prvnímu a provést zrcadlení nějakým vhodným softwarem. A to už bezpečné nebylo. Navíc data exponenciálně rostla s navyšujícím se rozlišením fotoaparátů, délkou pořízených videosekvencí a ohromnými daty z časosběrů. Nastal čas na zakoupení prvního NAS systému, tehdy ještě se dvěma 8TB disky. Mám to štěstí, že jsem nemusel obětovat polovinu (či jinou část) celkové kapacity pro vzájemné zrcadlení, neboť jsem zaměstnaný na Univerzitě Karlově a mám tak k dispozici neomezený cloud od Googlu.
Co když mi však někdo můj účet nabourá a data smaže? Nebo dostanu v práci výpověď? Klidu mému svědomí dodalo až vybudování dalšího systému NAS v práci na Přírodovědecké fakultě Univerzity Karlovy, kde teď sedí disky o kapacitě vyšších desítek TB - je to našlapaný osmidiskový QNAP TS-832PX. Za mě je to velmi našlapaný systém s velmi rychlou odezvou. NAS má však ode mě jednoduchý úkol – stahovat všechna data z Google Drive fyzicky na můj stůl. NAS spravuji z pohodlí svého domova. V reálu to vypadá tak, že když se vrátím z natáčení s jedním TB dat, nahraji je zhruba přes noc na svůj domácí NAS v Pardubicích. Ten je takřka v reálném čase stihne poslat na Google Drive a jen s malým, zcela zanedbatelným zpožděním se všechna tato data objeví fyzicky u mě na stole v Praze.
Video o tom, jak zálohuji svá data na YouTube: https://www.youtube.com/watch?v=piaLH_CnhXg tak na Mall.TV: https://www.mall.tv/ze-zivota-fotografa/vyzkouseno-overeno-nejlepsi-tipy-jak-zalohovat-fotky-a-na-co-si-dat-pozor
Ještě poznámka k diskům a kartám. Zejména v začátcích svého focení jsem se tu a tam setkal se selháním karty. Ať už selhala během focení nebo až doma při pokusu o stažení dat, jednalo se obvykle o levnější karty výrobců, kteří výrobou paměťových médií pouze doplňují svoji nabídku. Kvalitní a spolehlivé karty však nemusí být nutně vždy ty nejdražší - na svých expedicích jsem dlouhodobě spokojený s kartami i odolnými disky od ADATA. Z jejich série outdoorových disků mi selhal jen jeden, a to po tom, co jej v Makedonii přejel volský potah, následně jsem jej s Petrem Horkým „omylem” vykoupal v termálních lázních v Řecku a pak nám následně spadl z výšky na zem. Po oschnutí jsme však všechna data ještě stáhli a v servisu byla posléze čitelná i po jeho selhání. Tehdy jsem jim definitivně uvěřil… Disky od ADATA jsem používal i ve vysokých nadmořských výškách nad 5000 metrů nad mořem, a to v základních táborech na výpravách na K2 v Pákistánu, Ama Dablam v Nepálu anebo na neobydlených ostrovech v Indonésii či Ekvádoru, kde byly prakticky permanentně ve 100% vlhkosti.“
## Topi Pigula (Tomáš Pigula)
Fotograf, publicista a cestovatel. Publikoval stovky článků včetně fotografií v širokém spektru periodik: Koktejl, Hospodářské noviny, Mladá fronta, Lidové noviny apod.
„Není to tak dlouho, co jsem kontroval množství fotek, které se mi za léta digitálního focení nashromáždilo. Je jich přes 187 000, což je už pořádná nálož na prostor. Když jsem si před drahným časem kupoval 3 TB externí disk k zálohování, myslel jsem si, že mám „nadosmrti“ vystaráno. Netušil jsem, o jak velký omyl jde. Jakmile jsem upgradoval na nový foťák, raketově narostlo množství dat na každý snímek.
V digitálním pravěku jsem zálohoval nejprve na CD a později na DVD, a snímky jsou stále v pohodě k přečtení. Jde o snímky cca 10–12 let zpět do minulosti. Následně jsem začal kupovat externí disky, přičemž 90 % snímků mám dnes zálohovaných na dvou externích discích. Jeden z nich je trvale připojený na desktop a čerpám z nich pro práci (články, přednášky), druhý není připojen nikde a je uložen stranou. Část historických fotek (na těch DVD) je stále nepřeuložená, což mi v hlavě svítí jako červená kontrolka, byť jde spíš jen o vzpomínkové věci než o pracovní. U zbylé části zatím není udělaná záloha, ale mělo by k tomu dojít co nejdříve.
Mám-li to shrnout, tak mě čekají v zásadě dva velké úkoly: zazálohovat na druhý disk to, co zatím v kopii nemám, a promazat snímky, které vlastně nemají moc šancí na využití v budoucnosti. Jeden příklad za všechny, mám zhruba stovku snímků mravenců z Laosu a Kambodže. Opravdu je potřebuji? Ne nadarmo se říká, že nejlepší přítel fotografa je odpadkový koš. Nic nenechávám na kartách, ty musí být čisté pro případné použití.
Poznámka na konec: Důležité je nejen zálohování, ale i systém třídění fotek. Kromě toho, že máte fotku zálohovanou, je dobré vědět, kde a jak ji co nejrychleji najít.
## Petr Špetla
Kameraman, režisér a zakladatel firmy ŠpetlaFilm. Tvoří dokumentární firmy a firemní propagační videa. Snímek Gravitation běžel v hlavním vysílacím čase na Prima Zoom.
„Já se ohledně zálohování dat snažím o co největší diverzifikaci. Pravděpodobně za moji paranoiu mohou strašidelné historky od mých známých, kteří přišli o data z natáčení reklam a museli pak přetáčení uhradit ze svého včetně mastné pokuty. Data na place nahrávám na dvě SDXC karty naráz. Když přijdu domu, přesouvám je na SSD ve stolním počítači. Z toho pak následně kopíruji data na dva duplikované sety disků, do cloudu a na odolný externí disk, který umisťuji mimo pracovnu.“
## **Ing. Jan Štindl**
Tvůrce videí a videoanimací, střihač na volné noze. Od roku 2019 pravidelně dodávám České televizi dokumentární filmy do cyklu dokumentů *Cesty víry.*
„Děkuji za důvěru, ale musím se přiznat, že já jsem v této oblast spíše odstrašující příklad :-), jelikož kromě archivace na externí disky téměř vůbec nezálohuji.“
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  8,
  'Ptáme se vás – lidí z různých profesí, protože data jsou všude kolem nás. '
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
  'zachrana-microsd-karty-za-56-tisic-nebo-2-tisice-korun',
  'Záchrana microsd karty: za 56 tisíc, nebo 2 tisíce korun?',
  'Rada pro vás. Porovnejte si v klidu nabídnuté ceny za záchranu dat. Ukážeme proč.',
  '## 56 tisíc korun? To jako vážně?
Nebudeme vás napínat, vše se zdařilo. A teď pro vás přijde na scénu ten zajímavý fakt, který byl příčinou toho, proč vznikl tento příspěvek. **Zákazník se s námi podělil o informaci, že prý byl u jedné naší konkurenční firmy (samozřejmě nebudeme jmenovat) a tam po něm chtěli za námi v reálném čase hodinový „data mining“ 56 tisíc korun českých!** A kolik platil zákazník u nás – **cca 2 tisíce korun**.
Takže asi tak. Více to rozepisovat nemá smysl. Kontext je vám zřejmý. A dodejme k tomu tématu ještě jednu zajímavou informaci, že paní redaktorka z portálu Mesec.cz (Veronika Doskočilová) si koncem léta 2017 udělala vlastní zkušenost, jak se v praxi dělá cenová politika na tuzemském trhu obnovy dat za paměťových médií. Co si kdo z jejího článku vezme, neboli jak jsme v jejím „mystery-shoppingu“ dopadli my, to už necháme na posouzení každého individuálně.
## A naše cenová politika?
**V první řadě se snažíme nastavit vše rozumně**. Veškeré informace, co a jak děláme a proč to může být za takovou či makovou cenu vám komunikujeme skrze náš FB profil, prostřednictvím webových stránek a specializovaných blogových postřehů, jako např. v článku, kde vám ukazujeme důvody, proč může být obnova ze SSD disku složitější než u HDD, nebo že nám/ani sobě rozhodně nepomůžete, když budete „utrápený“ disk dávat do lednice apod.
Je naprosto srozumitelné, že některé operace jsou náročnější a zdlouhavější a některé jsou zase lehčí, a od toho se odvíjí cenový aspekt. Tak tomu je u všech služeb a na tom není nic k nepochopení. **A také vždy cenu sdělujeme dopředu, a v případě nezdařené záchrany dat zákazník nic neplatí – tudíž hrajeme fair-play**.
### Reálný tým fungující spolu už řadu let
*
Ve zkratce řečeno, snažíme se vám komunikovat dílčí aspekty naší profese (např. že se zdokonalujeme nebo že si vyrábíme vlastní nástroje apod.) co nejpřístupnější formou, abyste o nás z profesní stránky mohli vědět vše nutné a podstatné. Jsem tým reálných lidí, kteří se za svou práci neschovávají.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Rada pro vás. Porovnejte si v klidu nabídnuté ceny za záchranu dat. Ukážeme proč.'
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
  'historie-pevnych-disku',
  'Historie pevných disků: malý průvodce',
  'První plotnový disk byl vyšší než lednička, vážil půl tuny a dnes by se na něj vešla jedna kvalitní fotografie pořízená mobilním telefonem.',
  '## První pevný disk
V roce 1956 byl představen první pevný disk **IBM 350**. Byl určen **pro elektronkový počítač IBM 305 RAMAC** (*Random Access Method of Accounting and Control* = Metoda náhodného přístupu účtování a kontroly). Do té doby se pro ukládání dat používaly děrné štítky nebo magnetické pásky.
Disk IBM 350 už byl postaven na stejných principech, na kterých fungují současné pevné disky. Data byla uložena ve stopách na magnetickém povrchu diskové plotny. Ta se otáčela a nad jejím povrchem se pohybovala čtecí a zapisovací hlava. Čtecí hlava mohla skočit na libovolné místo a nemuselo se převíjet.
*
Pevný disk IBM 350 s kapacitou 4,4 MB Rychlost čtení byla 9 700 znaků za sekundu. Zdroj: https://www.ibm.com/ibm/history/exhibits/storage/storage_PH0350A.html.
## Disková ukládací jednotka IBM 1301
V roce 1961 IBM nahradilo RAMAC modelem **1301 Disk Storage Unit**. Ten používal oddělenou čtecí/zapisovací hlavu pro každý povrch, takže už nebylo nutné vytahovat hlavu pokaždé, když bylo potřeba přistoupit k dalšímu disku. Model 1301 zvládl pojmout 28 megabajtů.
Zdroj: https://www.ibm.com/ibm/history/exhibits/storage/storage_photo.html.
## Další vývoj
• **1963**
Na  scéně se objevil disk s výměnnými médii. Systém s označením **IBM 1311** byl představen 11. října. Tento model zůstal na trhu až do roku 1975.
• **1966**
Firma IBM vyvinula první disk s feritovou hlavou - **IBM 2314**.
• **1973**
Disk **IBM 3340 **(„Winchester“) měl kapacitu 30 MB pouze pro čtení a 30 MB pro čtení a zápis. Disk byl pojmenován podle slavné pušky, která využívá náboje ráže .30-30.
Zdroj: IBM
• **1980**
Společnost **Seagate** začala v roce 1980 prodávat disky **ST506 **– **první 5,25“ disky** s kapacitou 6 MB, 3 600 ot./min. Modelové označení ST506 se stalo na dlouhá léta i názvem rozhraní.
• **1983**
Firma Rodime uvedla na trh první 3,5" disk s kapacitou 10 MB.
• **1988**
Německý vědec Peter Grünberg a francouzský vědec Albert Fert - nezávisle na sobě - objevili **efekt magnetorezistence** a vyvinuli **technologii GMR** (*Giant Magnetoresistance*), která byla použita pro zvýšení hustoty uložených dat.
• **1997**
Na trhu se objevila první čtecí hlava založená na gigantické magnetorezistenci, pouhých devět let po publikování objevu.
První generace GMR disků dokázala uložit na jeden centimetr čtvereční magnetického média řádově 100 milionů bitů. **Přínos objevu GMR přibližuje profesor Ben Murdin z University of Surrey srovnáním: „Bez využití tohoto jevu by nebylo možné uložit na diskový iPod víc než jednu písničku.“ **(Zdroj: Luděk Vainert, „Nobelova cena za obří disky“.)
• **2005 **
První pevný disk s kapacitou 500 GB (Hitachi GST).
• **2006**
V tomto roce firma Samsung použila technologii tzv. kolmého zápisu. Jedničky a nuly jsou zaznamenány na magnetickém povrchu kolmo, a vejde se jich tam tedy mnohem více než při vodorovném záznamu.
• **2007**
Japonská nadnárodní společnost Hitachi uvedla na trh disk s kapacitou 1 TB. Vědci z Googlu se zase zabývaly otázkou nejoptimálnější teploty pro provoz disků.
• **2008**
Seagate uvádí na trh první 1.5TB 3.5 palcový disk. A jako perličku také zmiňme, že v roce 2008 začal Brendan Gregg zkoumat vliv zvuku na obecnou funkčnost pevných disků. Psali jsme o tom článek.
Zdroj: https://bit-tech.net/reviews/tech/storage/seagate-1-5tb-barracuda-7200-11-review/1/
• **2009**
Western Digital předvádí první první 2TB 3.5 palcový disk.
Zdroj: https://www.westerndigital.com/
• **2013**
Provádějí se první testy za pomoci zápisu na disk technologií HAMR.
• **2020**
Skandál s „utajeným“ šindelovým zápisem u disků, které se tvářily, že šindelovými nejsou.
### Použité zdroje:
• Alex Cocilova, Pavel Kreuzige, „Stručná historie pevných disků - 1. díl“ [PC World]
• Milan Baumann, „60 let od představení prvního pevného disku“ [Technický týdeník]
• Redakce, „Časová osa Chipu: Pevné disky“  [*Chip* 07/2008]
• Tommy Khamoushi, „60 years of hard drives history“
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'První plotnový disk byl vyšší než lednička, vážil půl tuny a dnes by se na něj vešla jedna kvalitní fotografie pořízená mobilním telefonem.'
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
  'co-je-sindelovy-zapis-neboli-technologie-smr',
  'Co je šindelový zápis neboli technologie smr?',
  '„Šindeláky“ jsou v našem oboru zajímavé a aktuální téma. Jde o dokonalou ukázku daně ve smyslu „něco“ za něco“.',
  '## Co je SMR?
Zkratka SMR znamená shingled magnetic recording, což do češtiny přeloženo je „šindelový záznam“. Technologie SMR zvyšuje hustotu zápisu na disk, aby výrobce ušetřil (nemusel přidávat další plotnu) a zároveň mohl nabídnout větší kapacitu.
*
### Styl zápisu
Zápis dat probíhá tím způsobem, že se stopy částečně překrývají a připomíná to tvar střešních šindelových tašek na střechy. Tímto klíčovým prvkem zápisu SMR má vzniknout o 15 % větší kapacita oproti zápisům stylem CMR (conventional magnetic recording). *„Technologie SMR může do budoucna zvýšit hustotu zápisu o 25 % a v budoucnosti by to mohlo být až o 50 %“*, říká Eduard Skýva z DataHelpu.
Zdroj: https://www.synology.com/cs-cz/knowledgebase/DSM/tutorial/Storage/PMR_SMR_hard_disk_drives
U klasického CMR zápisu to vypadá takto pro vaše porovnání.
Zdroj: https://www.synology.com/cs-cz/knowledgebase/DSM/tutorial/Storage/PMR_SMR_hard_disk_drives
Zajímavým postřehem, je i to, že práce se zónami, do nichž je disk rozdělen, velmi připomíná optická média (CD, DVD apod.), která už mají svůj „boom“ dlouho za sebou.
### Typy šindelových disků na trhu
Koncoví uživatele zřejmě přijdou do styku jen s prvním typem, a tím je tzv. **Drive managed**, kde veškerá správa dat je na firmwaru. **Host-aware** a **Host-managed **jsou svým primárním zaměřením určeny pro datová centra.
Host-aware (který by si měl brát to nejlepší z Drive-managed a Host-managed) by měl sám rozeznat operační systém a podle toho adekvátně pracovat s daty buď do zón, nebo do cache.
## Na co se SMR může hodit?
Technologie SMR relativně **nemá problém se čtením dat** na disku. Proto může **být užitečný u tzv. cold storage**, tedy pro archivaci a skladování dat, obecně v prostředí, kde se jednou na disk zapíše a pak se s tím už dále v čase nepracuje neboli na takové ty datové „ležáky“. Ideální využití je třeba pro kamerové systémy nebo pro jiný typ sekvenčního záznamu.
## Proč jsou SMR vnímány jako problémové?
### 1. Nepřetržitý zápis
Styl zápisu jsme si popsali. Ale on je právě tím kritickým bodem. On má totiž na svědomí, že po určité době nastane **značné zpomalení rychlosti zápisu**. Dojde totiž k vyčerpání mezipaměťi a disk přestane ve své práci a začne si znovu data sestavovat a zapisovat do pásem. Možná si někdo ještě vzpomene na pár let starou „legendární“ recenzi na 8TB Seagate Archive na portálu DiiT s více než 14hodinovým uklízením na disku, a to vše díky „šindelu“.
### 2. Zápis zasahující do servisní stopy
Toto je velmi důležité, proto jsme to dali zvlášť mimo odstavec zápisu. S technologií šindelového zápisu bylo nutné přidat do servisních dat sekundární translátor, který má na starosti správnou adresaci šindelů. CMR disky do servisních dat zapisují výrazně méně než disky se šindelovou technologií. To hodnotíme jako tzv. Achillovu patu celé SMR technologie.
### 3. Využití v prostředí, kde se často přepisují a mění data
Takže jasný opak tzv. cold storage. NASy, notebooky (to je také klasika, lidi nadávají např. na Windows, ale přitom ten problém „záseku“ právě může mít na svědomí šindelový disk). PC, RAIDy a databáze, kde pracuje s daty, která se neustále mění, a pracuje se s velkým množstvím malých souborů. To je prostředí, kde může disk se šindelovou technologií dělat potíže.
Představte si, že máte v RAID poli jeden šindelový disk, a to se najednou pomalý náhodný zápis může stát velkým neštěstím. Nepředvídatelný výkon šindelového disku zpomalí v poli pak klidně druhý, třetí atd. a najednou se zničehonic ocitne diskové pole v offlinu, protože kvůli nízké rychlosti řadiče disk vyřadily pole. Stačí, aby se s vámi v poli jeden disk např. 10 minut „nebavil“ a „zábava“ začíná.
Takže být správcem velkých serverových polí a nevědět, zda tam 100% mám, nebo nemám šindelový disk, je něco na způsob časované bomby. Vezměte si to, že v naší disciplíně záchrany a obnovy dat je re-build RAIDu zřejmě nejnáročnějším typem záchrany. Vzpomínáte si např. na takové kuriozity jako RAID 5 ze dvou disků?
• Mimochodem, v tom článku, kde píšeme o té kuriozitě z RAID disku, tak tam máme také obecné tipy ke správě RAID polí.
## Jak zjistit, zda je disk SMR, nebo ne?
Western Digital přišel s touhle tabulkou a Seagate se vytasil s tímto. Pak se dá zaměřit **na parametr vyrovnávací cache paměti**, kde, čím menší bude uváděná, tím by to mělo být zřejmější, že se bude jednat o ne-šindelové typy. Samozřejmě vyvstává otázka, zda to může být vždy v každé situaci platné pravidlo. Podle názorů a zkušeností mají SMR standardně 128 MB a více, zatímco CMR by měly mít 64 MB až těch maximálně 128 MB a tato hodnota by měla být pomyslnou štěpicí linií.
### Nástroj
Existuje nějaký speciální spolehlivý nástroj, který průkazně odhalí SMR? Žel, zatím o něm nevíme, ale není třeba hned házet „flintu do žita“.
**Naše rada zní,** že dobře posloužit může**testování disku**, kdy se budete jednorázově **snažit zaplnit 80 % až 90 % procent kapacity disku** např. u zápisu deseti tisíc malých souborů. Pokud bude fungovat na bázi šindelu, tak byste **měli zaznamenat dramatický propad výkonu**.
Jinak na internetu naleznete různé varianty řešení, jak si s testováním pohrát.
Zdroj: https://www.abclinuxu.cz/poradna/hardware/show/448177
## Záchrana dat ze šindelového disku
Pro nás specialisty přibyl se šindelem nový typ závady. Má jméno **sekundární translátor**. Jde o vynucenou komponentu a daň za zvýšení komplexity systému práce šindelových disků. Ale my jako DataHelp s tím už máme zkušenosti a také máme k dispozici příslušné technologické zázemí a vybavení.
V klasických HDD je přítomen jen fyzický translátor (LBA – Logical Block Adressing), který monitoruje přehled sektorů na disku a přeskočení objevených defektů. Vypadá to takto.
Zdroj: https://blog.acelaboratory.com/wd-smr-drives-how-to-get-data-access-if-second-level-translator-is-damaged.html
Ale SMR disky potřebuje ze své podstaty i ten sekundární translátor. Pokud se tento překladač druhé úrovně poškodí, tak se disk chová na „první pohled“ správně, ale vrací 0. Jak funguje sekundární translátor, vidíte na následujícím obrázku.
Zdroj: https://blog.acelaboratory.com/wd-smr-drives-how-to-get-data-access-if-second-level-translator-is-damaged.html
Také je třeba zmínit, že SMR jsou obzvláště citlivé na nenadálé výpadky elektřiny, což „rozhodí“ translátor. Novější disky se SMR nejdříve data zapisují do ne-šindelové části a až potom do šindelové. V momentě vypnutí disku se začne „přepisovat“ do té šindelové.
## Zajímavé články na internetu k tomuto tématu:
• David Ježek, redaktor z Root.cz, který k nám také v minulosti chodil do laboratoře a dělal s námi společně články a rozhovory i pro CDR.cz a Diit.cz, napsal před nedávnem pěkný článek o šindelovém zápisu a jeho budoucnosti.
• Jan Olšan zCnews.cz probírá více do hloubky téma žaloby a kompenzace ze strany výrobců.
• Pokud budete mít více času, přečtěte si velmi podrobný článek o uživateli, kdo používá RAID 6 na svém Synology a v obsahu najdete i printscreeny komunikace s podporou a servisem Western Digital.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  '„Šindeláky“ jsou v našem oboru zajímavé a aktuální téma. Jde o dokonalou ukázku daně ve smyslu „něco“ za něco“.'
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
  'skodi-pevnemu-disku-vlhkost-vzduchu',
  'Škodí pevnému disku vlhkost vzduchu?',
  'Podle seriózních výzkumů může vlhkost ovzduší poškodit jednotku pevného disku (HDD) mnohem více než teplo. Je tomu tak, či není?',
  '## Vysoká vlhkost
Pokud uložíte pevný disk v prostředí s vysokou vlhkostí vzduchu, měli byste na něj dávat dobrý pozor. Jestliže je pevný disk například blízko zvlhčovače, nebo pokud pobýváte v tropické džungli (no, i tuzemské počasí se v posledních letech mění), může v průběhu času uvnitř pevného disku nastat kondenzace a ta způsobí postupnou korozi komponentů, až je disk nenávratně poškozen.
• ***K tématu pevného disku****: **Jak zjistit aktuální stav vašeho HDD?**A také jsme **psali o typech poškození**u plotnového disku, které rozlišujeme na softwarové a hardwarové. *
Kromě toho pevný disk obsahuje desku plošných spojů (*Printed Circuit Board*), která je určena k osazení elektronických součástek. Voda ve vzduchu může časem uvnitř disku kondenzovat, v důsledku toho dojde ke zkratu a deska plošných spojů se poškodí. V takovém případě může ihned přestat pracovat pohon disku.
## Nízká vlhkost
Mnoho uživatelů se **mylně domnívá, že pevný disk může poškodit pouze vysoká vlhkost**. Ve skutečnosti ho může zničit také nízká vlhkost. Extrémně nízká vlhkost vzduchu představuje méně zjevné nebo viditelné riziko, a tím je statický výboj. Jak je všeobecně známo, tento výboj snadno vzniká ve velmi suchém prostředí. Pokud pevný disk zasáhne statický výboj, následky budou katastrofální.
## Detailní průzkum
V roce 2016 byl proveden rozsáhlý průzkum, kterého se zúčastnili odborníci z amerických společností Microsoft a GoDaddy a také badatelé z univerzity Rutgers ve státě New Jersey. Společná vědecká studie nazvaná „*Environmental Conditions and Disk Reliability in Free-cooled Data Centers“* odhalila, že vlhkost vzduchu je pro pevné disky skutečně větší hrozbou než teplota. Disky jsou sice uzavřená (v našem prostředí se používá slovo hermetická) zařízení, ale příliš vysoká nebo nízká teplota vzduchu jim sama o sobě nevadí.
Testy byly provedeny na více než jednom milionu pevných disků v devíti datových centrech společnosti Microsoft po dobu 1,5 až 4 let. Poruchy související s vlhkostí byly tak vysoké, že bylo velmi snadné rozpoznat, která datová centra s volným chlazením mají regulaci vlhkosti a která ne jen podle hodnoty roční míry selhání (AFR) kontrolérů.
## Proč disky selhávají?
**Problém tkví v prudké změně okolní teploty**, kdy dochází ke kondenzaci par. Vzduch umí svou teplotu změnit rychleji než voda, která se do vzduchu vypařuje, případně vodní pára, která se ze vzduchu zkapalňuje. Ohřátí vody obecně trvá déle než ohřátí vzduchu. Dle dostupných poznatků je **hlavní příčinou problému chybovosti pevných disků koroze způsobená kondenzací vody**.
• ***Mohlo by vás také zajímat****: **Víte, proč lidé dávají HDD do lednice?**A proč to nedělat? **Statistiky chybovosti pevných disků**za rok 2018.*
## Které části disku selhávají?
Podle**uskutečněného průzkumu**, který sledoval pevné disky ve vybraných datových centrech firmy Microsoft, dochází k selhání komponent **nejčastěji vlivem vlhkosti a to v 89 % případů**. Na druhém místě s 10 % se nejčastěji kazí paměťové moduly DIMM, na třetí pozici s 5 % se poškozuje procesor (CPU) a na posledním místě je napájecí zdroj počítače (PSU) se 2 %. Výzkum dále uvádí, že vzrůstající vlhkost vzduchu zvyšuje počet selhání diskových řadičů a chyb připojení. Pro omezení vzniku chybovosti je v některých případech levnější disky vyměnit než investovat do drahých systémů na regulaci vlhkosti. Důležité je však dbát na adekvátní správu redundance dat, abyste byli připraveni, když vám některý z harddisků odejde do věčných lovišť.
Vědecká studie uvádí, že velcí provozovatelé datových center mohou v současnosti vykazovat hodnotu indikátoru energetické efektivity PUE (Power Usage Effectiveness) mezi 1.1 a 1.2, což znamená, že pouze 10 až 20 % energie je využito na chlazení. Je tedy možné mluvit o zlepšení, neboť před sedmi až osmi lety se hodnota PUE pohybovala kolem 3.0.
• *Proč je pro obnovu dat z pevného disku důležité čisté pracovní prostředí?*
## Nejlepší teplota provozu
Studie vědců z Rutgers vychází z podobného bádání společnosti Google, která v roce 2007 zveřejnila dokument „*Failure Trends in a Large Disk Drive Population“*, který však nezohledňoval vlhkost okolního vzduchu jako jeden z faktorů selhání HDD. **Odborníci z Googlu zjistili, že nejnižší míra selhání pevného disku je při teplotě v rozmezí od 38 do 45 °C**, což se tedy dá považovat za optimální teplotu pro provoz HDD. To potvrzuje domněnku, že vysoké teploty elektronickým součástkám paměťových médií nesvědčí. **Nejvíce chyb se u testovaných zařízení objevovalo při teplotách pod 25 °C a nad 48 °C.**
## Závěr
Z výše uvedeného vyplývá, že byste měli v okolí jednotky pevného disku zajistit vhodnou míru vlhkosti - ne příliš vysokou, ani ne příliš nízkou. **Důrazně doporučujeme udržovat pevný disk ve vlhkosti 45 až 50 %. **Neměli byste používat jednotku v prostředí s vlhkostí nad 80 %, protože to je maximální vlhkost, kterou jednotka vydrží. A pokud nutně potřebujete uložit disk v prostředí s vlhkostí pod 35 procent, měli byste ho raději nechat bez napájení. Je to jediný způsob, jak se vyhnout statickému poškození.
Stručně řečeno, **uchovávejte HDD ve správném prostředí – nesmí být přehřáté, ani vlhké**. Jinak bude disk náchylnější k poškození. A pak by vzhledem k fyzickému poškození mohla být obnova dat velmi obtížná.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Podle seriózních výzkumů může vlhkost ovzduší poškodit jednotku pevného disku (HDD) mnohem více než teplo. Je tomu tak, či není?'
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
  'zalohovani-dat-pro-firmy-rady-a-tipy',
  'Zálohování dat pro firmy? rady a tipy',
  'Dnes jsme si detailně posvítili na firemní prostředí dat a a řešili jsme populární téma zálohování.',
  '## Problém jménem duplikace a jak ho řešit?
Ale i když se firmy budou držet jednoduchého pravidla pro zálohování, tak to ještě neznamená, že mají vyhráno. **Slyšeli jste o slově duplikace** - vznik duplicitních datových oblastí? To je dnes velmi významným problém a její odstraňování se stává stále potřebnějším. *„Ukládáním stejných dat na více míst mohou firmám vznikat vysoké provozní náklady na datová úložiště. Proto je tu zde deduplikace. Operace, která zabraňuje stejným datovým blokům ukládání v rámci jednoho úložiště*,“ přibližuje Štěpán Mikeš.
S kvalitou provedení deduplikace samozřejmě cena narůstá, ale na druhou stranu **deduplikace** zase **umožňuje úsporu** místa na datovém úložišti, a to kolikrát v praxi **i více než 10 % jeho kapacity**. A jaký operační systém se lépe pro deduplikaci hodí? *„Kdybych se rozhodoval mezi Windows a Linux, tak z hlediska podpory tohoto procesu bych spíše volil platformu Linux,“* prozrazuje nám dále specialista na záchranu dat.
**Než vůbec začnete řešit duplikace**, **doporučujeme si nejdříve definovat,** co se bude zálohovat a také jak stará data. „*Vše závisí na zvolené politice dané firmy v tomto prostředí*,“ uzavírá toto téma, Štěpán Mikeš.
## Optimální interval zálohování pro jednotlivé kategorie dat?
Dát na to obecně platnou odpověď je velmi obtížné. Vše se odvíjí od frekvence změn v úložišti. A jestli má smysl zálohovat data např. po jedné změně položky v databázi? „*Takové rozhodnutí stojí a padá na nejčastěji na osobě, která za to ve firmě zodpovídá*, *ale samozřejmě, že i tak obecně platí, že čím častěji se zálohuje, tím lépe,“* přemýšlí nahlas Štěpán Mikeš, spolumajitel DataHelpu.
**V menších a středně velkých firmách** doporučujeme zálohu dokumentů a účetnictví **provádět minimálně jednou týdne**. A archivaci neboli celkovou zálohu obrazu systému je rozumné provádět minimálně jednou za půl roku.
### **Dejte si pozor na práci s externími disky**
*To známě z naší praxe. U mnoha firem v naší republice panuje velká důvěra k externím diskům (radíme 5 faktorů, dle jakých je vybírat). Jenže jejich opěvovaná mobilita je i kamenem úrazu. Disk se snadno zapomene, upustí a nezapomeňme i zmínit, že bývá velmi náchylný k  mechanickému poškození.*
##
Záloha v decentralizovaném prostředí
To je **častá situace u firem s více než jednou pobočkou**. Zálohování se v tomto případě řeší tak, že ze všech poboček se pomoci zabezpečeného přenosu posílají data na centrální úložiště. „*U větších společností není vůbec výjimkou, že se u např. e-mailů jednotlivých pracovníků zálohuje jen elektronická komunikace za poslední měsíc*,“ osvětluje odborník na záchranu dat.
## Cloud jako magie oblaků? Ano, ale…
**Významní poskytovatelé****cloudových služeb** na trhu disponují **velmi slušnou ochranu dat** na své stráně zákaznického hřiště. „*Horší je to na uživatelském konci, kde se lidským faktorem může vždy něco snadno pokazit. V takový moment, si ale bohužel mnoho firem mylně myslí, že poskytovatel jednoduše data obnoví, jenže tomu tak vždy nemusí být. Prostudovat, co vše poskytovatel služby chrání, nechrání, dělá a nedělá, to je základ*,“ rozvádí dále Štěpán Mikeš.
## Magnetická páska sekvenčním přístupem? Prehistorie, nebo nečekaný pomocník?
Od oblaků se nyní vraťme v čase zpět. **Magnetické pásky** se sekvenčním přístupem se hojně využívaly jako zálohovací řešení v éře velkých sálových počítačů. Má to cenu se s nimi zabývat ve firemním prostředí?
„*To je velmi zajímavé, ale i dnes se jedná o velmi vhodný druh paměťového média pro zálohování velkého objemu dat, která může čítat až několika TB*,“ vysvětluje k tématu Štěpán Mikeš. Pásky se totiž mohou organizovat do knihoven s více čtecími a zapisovacími mechanikami.
Jako minus bychom mohli u magnetické pásky vidět vyšší pořizovací cenu oproti jiným paměťovým médiím společně s nižší přenosovou rychlostí. Ale naopak svou životností pásky mohou dosáhnout až 10 -15 let spolehlivého fungování.
## Software a hardware potřebuje taky archivaci?
Zde je si nejdříve potřeba uvědomit, aby si firma ujasnila, nakolik je záloha software a hardware skutečně nutná. **Je to vždy velmi individuální.** Firmy kolikrát „vypláznou“ astronomické částky na nalezení řešení, aby pak ve výsledku zjistili, že ani to nalezené řešení nepokrývá zdaleka všechna možná rizika havárií. *„Tady bych podotknul to, že kdo zálohuje data dlouhodobě správně, ten je poté ani nemusí složitě zachraňovat,“* usmívá se Štěpán Mikeš.
## Proč firmy neustále v praxi o svá data přicházejí?
Nejčastěji se to děje v důsledků těchto 3 základních chyb:
• zálohuje se, ale špatně,
• zálohování vůbec neprobíhá,
• nearchivuje se.
**Ten poslední případ** – kdy neprobíhá proces archivace dat – **je asi nejvíce zajímavý**. V praxi jde o následující - data existují, ale není jakákoliv možnost je zobrazit a nějak dále s nimi rozumně pracovat, protože už neexistuje celý systém, nebo není dostupný člověk, který archivaci měl na starosti. „*Ze své dlouholeté praxe v našem oboru dobře vím, že to jsou především střední a větší firmy co na to draze doplatí*,“ přemýšlí jednatel a odborník na obnovu dat v jedné osobě.
Důležité je také připomenout, že **všechny 3 základní chyby**, které firmy připravují o jejich data, **jsou selháním lidského faktoru**.
A poslední perlička závěrem – V březnu tohoto roku T-Mobile na svém blogu napsal, že z posledního průzkumu mu vyšlo, **že na každých tisíc firemních zákazníků připadá 24, kteří v uplynulých dvou letech přišli o data, a zároveň to pro ně byla citelná ztráta**.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Dnes jsme si detailně posvítili na firemní prostředí dat a a řešili jsme populární téma zálohování.'
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
  'proc-muze-byt-obnova-dat-z-ssd-slozitejsi-nez-v-pripade-hdd',
  'Proč může být obnova dat z ssd složitější než v případě hdd?',
  '4 hlavní argumenty, proč tomu tak může být.',
  '## Vhodné argumenty na podporu větší složitosti obnovy dat z SSD oproti HDD:
### 1. Absence varování před selháním
Než dojde k selhání pevného disku, s největší pravděpodobností nejprve uslyšíte podivné zvuky způsobené otáčením pohyblivých částí hlavy harddisku. Jednotka SSD je vyrobena z elektronických součástek, které neobsahují žádné mechanické komponenty, proto dopředu nepoznáte, že se životnost SSD blíží ke svému konci. Zatímco u pevného disku vás podezřelý zvuk předčasně varuje před selháním disku, takže máte případně ještě čas a možnost přeuložit data na jiné paměťové médium, nefunkčnost solid-state disku zjistíte až ve chvíli, kdy přestane definitivně fungovat. V této situaci je obnovení dat už řádově těžší.
### 2. Obtížnější lokalizace dat
Data na mechanickém pevném disku prochází řadičem a jednotlivé bity se zapisují na magnetickou vrstvu disku tak, že pomocí cívky a elektrického proudu dochází ke zmagnetizovaní míst. Pro čtení dat stačí jen vrátit elektromagnetickou hlavu harddisku na stejné místo a přečíst magnetickou orientaci bitu. Data na SSD se však ukládají komplexněji. Aby se zamezilo opotřebení flash čipu, umístění uložených dat se pokaždé mění. Tím pádem je při obnově souborů na jednotce SSD obtížnější data vyhledat.
### 3. Funkce TRIM znesnadňuje obnovu dat
Většina současných disků SSD je vybavena funkcí TRIM. Tato funkce automaticky vymaže všechna data, která jsou určena ke smazání bez ohledu na to, zda byla odstraněna záměrně nebo neúmyslně. To znamená, že když omylem vymažete všechny soubory, funkce TRIM je smaže najednou. Větší šanci budeme mít v případě, že půjde o externí formát SSD disku. Takový disk se v lecčems chová jako vyměnitelné jednotky typu USB flash disku. Záznamy o smazaných souborech na něm budou existovat do té doby, dokud nebudou nově přepsány.
#### Jak poznat, že je funkce TRIM povolena, nebo zakázaná?
Pro kontrolu se může použít spuštění příkazového řádku (jako správce) a zadejte: fsutil behavior query DisableDeleteNotify [enter]. Zobrazí se vám jeden ze dvou výsledků. Pokud vidíte DisableDeleteNotify = 0, TRIM je aktivní. Jinak, pokud vidíte DisableDeleteNotify = 1, TRIM je zakázán.
### 4. Méně zkušeností se záchranou dat
Ačkoli jsou v posledních letech SSD stále populárnější, informací o jejich použitých technologiích je stále méně než v případě HDD. Není pochyb o tom, že pevné disky jsou na trhu mnohem déle, takže existuje daleko více nástrojů pro extrakci dat (nedávno jsme o extraci dat překládali z angličtiny pro vás velmi zajímavou studii) z pevných disků než ze solid-state disků. Co se týká záchrany a obnovu dat, specializované odborné firmy mají se starším typem úložného média samozřejmě více zkušeností a znalosti. Obnovení dat z HDD je proto obecně jednodušší než u SSD.
• *Proč je pro obnovu dat z pevného disku důležité čisté pracovní prostředí?*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  '4 hlavní argumenty, proč tomu tak může být.'
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
  'jak-obnovit-ztracene-kontakty-v-androidu',
  'Jak obnovit ztracené kontakty v androidu?',
  'Omylem smazaní kontakt v telefonu? Víme a radíme, jak to co nejrychleji napravit a dostat data zpátky.',
  '## **Když si omylem smažete kontakty, jednejte rychle**
Když uživatel zadá smazání kontaktů v telefonu, **operační systém je ihned přestane zobrazovat**, jakoby již tato data přestala existovat. Ve skutečnosti jsou data v paměťových buňkách až do té doby, **než jsou přepsány dalšími daty**. Z tohoto důvodu je nutné zachovat chladnou hlavu a neukládat do telefonu žádná data a pokud možno ani žádným jiným způsobem nezasahovat do paměti telefonu – **nejlépe telefon okamžitě vypnout**. Jedině pak se **zvyšují šance** na obnovení smazaných kontaktů.
• **Oblíbený článek: **Porovnání atributů Android vs. Apple? Kdo vyhrál?
## **Kontrola zatržení funkce zobrazit všechny kontakty v telefonu**
Poté by měla následovat jednoduchá kontrola toho, které skupiny kontaktů se v telefonu zobrazují a které jsou naopak skryté. V aplikaci „*Kontakty*“ otevřete nabídku menu (tři tečky) a zvolte možnost „*Kontakty k zobrazení*“ nebo podobně pojmenovanou možnost, neboť na různých zařízeních se může název lišit. Na následující obrazovce by měla být označena možnost „*Všechny*“. Pokud tomu tak není, označte tuto možnost a znovu zkuste najít chybějící kontakt. Často se totiž stane, že uživatel má **nevědomky některé skupiny kontaktů skryté**.
• *O Androidu jsme již napsali: **Šifrování dat, ano nebo, ne**? **7 tipů, jak Android systém lépe zabezpečit**? **A co dělat, když telefon ztratíte**?*
## **Obnova za pomoci Gmailu**
Všichni uživatelé telefonů se systémem Android jsou přihlášeni ke svému **Google účtu**. Ten nabízí promyšlenou synchronizaci dat ze svých serverů. Díky tomu lze smazané kontakty **jednoduše obnovovat** v prostředí Gmailu na počítači.
### Jak na to?
Otevřete svůj **Gmail**, v levém horním rohu klikněte na „*Gmail*“ a vyberte možnost kontakty. Nyní se vám otevře databáze vašich kontaktů a to buď v nové, nebo staré verzi. Obě umožňují **obnovení starších dat**, jen se k nim musíte dostat jinou cestou.
Ve staré verzi se nachází nahoře vlevo tlačítko „*Další*“. To rozklikněte a vyberte možnost „*Obnovit kontakty*“. V následujícím vyskakovacím okně zvolíte **časový údaj**, ke kterému se databáze vašich kontaktů vrátí. Pokud jste tedy smazali nedopatřením někoho před 10 minutami, můžete zadat volbu „*před hodinou*“.
V nové verzi se na levé straně obrazovky nachází panel nahrazující klasické menu. Pokud panel nevidíte, klikněte na tři čárky v levém horním rohu. V panelu rozklikněte možnost „*Více*“ a zde klikněte na funkci „*Vrátit změny*“. Opět se zobrazí **vyskakovací okno** s volbou časového údaje, ke kterému se databáze vašich kontaktů vrátí.
## **Využití softwarových nástrojů z internetu**
Kromě elegantní synchronizace z Googlu jsou ve hře i **aplikace a jiný software**, které nabízejí mnohem širší možnosti obnovy dat. Podívejme se tedy na několik osvědčených.
### Super Backup & Restore
Jednou z nejoblíbenějších je tato aplikace, dostupná z obchodu Play Store. Aby však byla schopná zachránit omylem smazaný kontakt, nebo klidně i celou databázi kontaktů po nějaké softwarové nehodě, **musí ji uživatel instalovat již předtím**. Aplikace totiž zálohuje vybraná data do paměti telefonu, nebo na externí paměťovou kartu. Ty pak lze jednoduše kdykoliv obnovit, opět pomocí této aplikace. Hodí se tak výborně nejen na obnovu ztracených dat, ale také na **přenos do jiného telefonu** právě přes paměťovou kartu.
### Obnova dat přes PC s aplikací FoneDog
Další metoda zahrnuje využití PC. Jak již bylo zmíněno na začátku, smazané kontakty **jsou v paměti telefonu**, dokud je nepřepíšou nová data. Toho využívá program FoneDog, který přesně tyto hodnoty v telefonu vyhledává. Po nainstalování do počítače, připojte telefon přes USB konektor. Ujistěte se, že v telefonu máte povolenu možnost „*USB Debugging*“ neboli „*USB ladění*“.
Poté program zkontroluje, zda je telefon připojený v pořádku a následuje volba druhu dat, která program bude vyhledávat. Pokud potřebujete co nejrychleji obnovit **jen kontakty**, nevybírejte jiná data, aby bylo prohledávání rychlejší. Spusťte prohledávání a počkejte. Jakmile se objeví hláška „*Scan Complete*“ klikněte vlevo na položku „*Contacts*“, program zobrazí nalezené položky. Vyberte ze seznamu požadované hodnoty a v následujícím okně klikněte na tlačítko „*Recover*“.
### Co dělat když software selže?
Pokud ani jedna z výše uvedených metod nefunguje a jedná se o vážnější problém, nezbývá, než vyhledat **odbornou pomoc**. Důležité však je **jednat rychle**. Čím delší čas uplyne od ztráty dat, tím menší jsou šance na jejich záchranu.
Aby si mohl běžný uživatel udělat představu o tom, kolik „*smazaných dat*“ dokáží experti obnovit, uvedeme výsledek jednoho testu společnosti **Avast** z roku 2014. Ta tehdy koupila 11 použitých telefonů, které předchozí majitelé uvedli do **továrního nastavení** a smazali svá data. Z nich pak odborníci získali více než: 40 000 fotografií, 750 e-mailů a SMS, 250 kontaktů a e-mailových adres, totožnost 4 předchozích vlastníků a 1 dokončenou žádost o úvěr.
## **Prevence aneb jak si nastavit zálohování kontaktů v telefonu**
Nejlepším způsobem jak přecházet nevratným komplikacím je samozřejmě **prevence**. Zálohovaní dat, zejména kontaktů, je třeba řešit dřív, než o ně přijdeme. První možností je záloha v **cloudovém úložišti**, tedy pomocí internetu. Je to pohodlná a bleskurychlá možnost.
Obnovení může uživatel provést **kdykoliv a odkudkoliv**, kde má připojení k internetu. Druhou stranou mince je fakt, že tato data svěřuje **třetí straně** a pak je na zvážení otázka důvěry. Druhou možností je **ruční zálohování** do počítače či na externí disk (*v minulosti jsme už napsali k tomuto tématu**– **jak ho vybrat*). Tato možnost vyžaduje aktivnější přístup uživatele, avšak za cenu maximálního soukromí.
### **Zálohování přes Google účet? Doporučujeme**
**služeb Googlu****synchronizaci****vždy uložena a propojena s vaším účtem**
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Omylem smazaní kontakt v telefonu? Víme a radíme, jak to co nejrychleji napravit a dostat data zpátky.'
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
  'jak-maximalizovat-zivotnost-ssd',
  'Jak maximalizovat životnost ssd?',
  'SSD má řadu výhod, ale nesmrtelnost mezi ně nepatří. Ale známe fígle, které vám mohou pomoci vyždímat z nich to nejlepší.',
  '## #1: Vypněte defragmentaci SSD disku
U dřívějších HDD (*jak u nich zjistit aktuální stav?*) vám jistě defragmentaci radil každý druhý. V případě SSD tato povinnost odpadá – naopak se ji raději vyvarujte. Vyhledejte ve svém počítači pojem ***Defragmentace***.
V otevřené tabulce vidíte své disky a jejich typ. Pokud máte své SSD nadepsáno správně, nemusíte se ničeho obávat. V opačném případě je potřeba přepnout nastavení disku uvnitř BIOSu, případně se automatické defragmentaci vyvarovat.
• *Víte, k čemu je dobré formátování a kdy se vyplatí tuto funkci využít?*
## #2: Vypněte indexaci souborů
Indexace souborů slouží v našem počítači k rychlejšímu přístupu k souborům. Za tímto účelem si disk schraňuje veškerá data o tom, kde se co nachází, aby žádané soubory nabídl uživateli o něco rychleji. Bohužel tato funkce zapisuje příliš mnoho dat, přičemž je SSD rychlé samo o sobě a není tedy vůbec zapotřebí.
Při jejím ponechání si zaděláváte akorát na nedostatek místo a zkrácení životnosti svého SSD. A pokud byste náhodou přeci jen rozdíl v rychlosti zaznamenali, můžete funkci opět zapnout.
• *Jak neztratit data z USB flash disků?*
K vypnutí funkce zmáčkněte na své klávesnici ***logo „Windows + R“***, napište „services.msc“, najděte funkci „***Windows Search***“, klikněte na ni pravým, zmáčkněte v ***lastnosti*** a přepněte „***typ spouštění“*** na „***zakázáno“***. Nyní otevřete pravým tlačítkem „***vlastnosti“*** svého SSD v „***Tento počítač“*** a odškrtněte dole funkci s názvem „***U souborů na této jednotce indexovat kromě vlastností souborů také obsah***“.
## #3: Omezte funkci Pagefile
Omezení či vypnutí funkce Pagefile je kontroverzní záležitost. Někteří na ni nedají dopustit, jiní v ní nevidí smysl. „*Vše záleží pouze na tom, jakým způsobem používáte svůj počítač*“, říká Aleš Wagner, spolumajitel společnosti DataHelp. Jedná se v krátkosti o vymezení prostoru pro virtuální paměť, aby některé aktuálně využívané procesy mohly pracovat rychleji.
Pokud si potrpíte na několik desítek záložek ve svém prohlížeči, případně máte nízkou paměť RAM, pak si funkce Pagefile najde u vás své využití. V opačném případě se doporučuje funkci snížit buďto úplně nebo alespoň částečně.
• *Víte, jak poznat, že váš počítač byl napadnut malwarem? Psali jsem o jeho příznacích.*
Navštivte ve svých „***Ovládacích panelech***“ záložku „***Systém***“, dále klikněte na „***Upřesnit nastavení systému***“, kde se pod záložkou „***Upřesnit***“ nachází „***Nastavení***“ v panelu „***Výkon***“. Klikněte na její nastavení, přepněte opět na záložku „***Upřesnit“*** a v panelu „***Virtuální paměť“*** klikněte na „***Změnit“***. Zde pod příslušným diskem zaškrtněte políčko „***Nepoužívat stránkovací soubor***“, případně zvolte vlastní velikost.
## #4: Můžete vypnout funkci obnovení systému
Vypnutí této funkce není doporučeno, jelikož vás může v kritických chvílích zachránit. Jedná se o možnost vrácení počítače do stavu, ve kterém byl funkční – alespoň co se softwaru týče. Pokud tedy nepatříte mezi nejzdatnější a nejopatrnější uživatele, bude lepší funkci ponechat zapnutou.
• *Psali jsme také o SSD discích: **Šifrují a ohrožují vaše data*
Pokud hodláte ze svého SSD vyždímat úplné maximum, z hlediska životnosti a kapacity, pak vyhledejte „***Obnovení***“, klikněte na „***Konfigurovat nástroj Obnovení systému***“, dole zvolte možnost „***Konfigovat***“ a zakažte ochranu systému v horní části okna.
## #5: Vypněte a nepoužívejte možnost režimu spánku
Režim spánku jsme v našich starých počítačích používali proto, že výrazně urychlily dobu načítání systému při jeho zapnutí. SSD je ovšem natolik rychlé, že se jedná jen o rozdíly v řádech pár vteřin – přitom je však výrazně zraňována jeho životnost a funkčnost.
Funkci režimu spánku vypnete ***příkazovým řádkem*** (vyhledejte buďto klíčovým slovem ***CMD***, popřípadě přímo slovy ***Příkazový řádek***). Program zapněte pravým tlačítkem a zvolte spuštění jako správce. Zde napište přesně „***powercfg -h off***“ (bez uvozovek) a zmáčkněte ***Enter***.
## #6: Vypněte funkci superfetch
„*Tato funkce slouží k tomu, aby monitorovala vámi nejčastěji spouštěné soubory a aplikace, které poté zapisuje do svého vymezeného prostoru pro jejich rychlejš�� načtení*“, vysvětluje Aleš Wagner, specialista na záchranu dat. Jak jsme už několikrát zmínili, tyto funkce jsou dnes již historické a pro majitele SSD problematické.
• *Víte, co na co byste měli myslet v momentě, že dojde k **ztrátě vašeho telefonu**. *
Vyhledejte ve svém počítači klíčové slovy „***Services“*** nebo „***Služby“***, v dlouhé tabulce funkcí najděte tu s názvem „***Superfetch***“, klikněte na ni pravým a zvolte „***Zastavit“****, *popřípadě „***Vlastnosti“*** a přepněte typ spouštění na „***Zakázáno“***.
## #7: Omezte množství dat, která zapisujete na své SSD
Sedmý bod už je víceméně kosmetický. Pokud máte ve svém počítači i klasický starší HDD, ukládejte nestěžejní soubory na něj. Řeč je zejména o hrách, filmech, seriálech, případně zálohy a nepotřebné soubory.
• *Radíme, jak myslet na své zálohování. **Znáte pravidlo 3 – 2 – 1?*
Doufáme, že jste všechny funkce spolehlivě našli, případně ve starších systémech nalezli alespoň jinou cestou. Věříme, že s touto pomocí vám vydrží SSD o pár let déle.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'SSD má řadu výhod, ale nesmrtelnost mezi ně nepatří. Ale známe fígle, které vám mohou pomoci vyždímat z nich to nejlepší.'
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
  'jak-zjistit-aktualni-stav-vaseho-hdd',
  'Jak zjistit aktuální stav vašeho hdd?',
  'Jak stav vašeho HDD monitorovat, jak předcházet problémům a jak je řešit, pokud nastanou?',
  '##
## Co je to S.M.A.R.T.?
Co je to S.M.A.R.T.? SMART je zkratkou anglického výrazu "Self Monitoring And Reporting Technology", tedy **technologie, monitorující a posuzující stav disku**. Jedná se o důležitý prvek prevence selhání. SMART dokáže na základě získaných údajů **předpovídat případná selhání disku**, a umožní vám data včas zálohovat nebo provést jiná opatření. SMART (jako firmware) je naštěstí součástí drtivé většiny v současné době vyráběných disků.
• *Odblokovat mobil se zaseknutým firmwarem**? Umíme, čtěte.*
### Kontrolované položky a jak interpretovat výsledky testů** **
Pokud SMART stav hlásí FAIL, je potřeba v první řadě pečlivě zálohovat veškerá data. FAIL stav je předzvěstí možných problémů.** **
Výsledky testů zobrazí řadu údajů, v nichž není pro laika lehké číst, pojďme si to tedy přeložit:
• Informace s označením "**Value**" ukazuje aktuální výslednou hodnotu,
• "**Worst**" nejhorší výslednou hodnotu.
• Pod položkou "**Warn**" se skrývá hodnota, při jejímž dosažení nebo překročení není vhodné disk dále používat.
• "**Raw**" značí aktuální či kumulovanou hodnotu sledovaného parametru.
Mezi další důležité položky v tabulce s výsledky patří například **Raw Read Error Rate** (počet chybných čtení dat z plotny), **Power On Hours Count** (počet odpracovaných provozních hodin), **Seek Error Rate** (počet chybných seeků – přemísťování hlavy nad stopu plotny disku) nebo **Calibration Retry Count**, tedy počet opakovaných pokusů o rekalibraci. Posledně jmenovaná položka by měla mít nulovou hodnotu, stejně jako **Reallocated Event count** a **Current Pending Sector**.
## Vhodné programy pro diagnostiku disku
Stav vašeho pevného disku **můžete kontrolovat** s pomocí nejrůznějších užitečných programů. Podrobná **diagnostika HDD** vám dokáže odhalit mnoho aspektů – aktuální stav disku, životnost, výkon, vadné sektory, chyby,… Některé programy mohou pevný disk dokonce monitorovat, tedy nepřetržitě sledovat jeho aktivity.
**Mezi klasické programy na diagnostiku pevných disků se dnes** řadí například utility HD Tune, CrystalDiskInfo a Speedfan, dobrou službu vám prokáže i Hard Drive Inspector.
Utility pro SMART kontrolu disků nabízejí i jednotliví výrobci - příslušný program vydala třeba společnost Western Digital nebo Seagate.
## Došlo k nejhoršímu - co dělat a nedělat?
Důležitou položkou záchrany disku a dat je prevence, jejíž součástí je pečlivá volba disku. Jak ale postupovat, pokud už k nějakému neštěstí došlo?** **
**Nejjistější cestou je odnést disk k odborníkům**, kteří profesionálně provedou záchranu dat a další potřebné kroky. Mezi hlavní příčiny poškození patří nedostatečné zajištění provozních podmínek, viry, výrobní vady, vadné sektory a nejrůznější mechanická poškození.
• *Proč je pro obnovu dat z pevného disku důležité čisté pracovní prostředí?*
Žádná z uvedených příčin není problémem, se kterým by si odborníci ve specializovaném servisu nedokázali poradit. Dostala se vám do počítače voda? I v tomto případě existují způsoby, jak zachránit data.
V žádném případě **nezkoušejte vadný disk amatérsky opravit doma** a stoprocentně se vyhněte "zaručeným" radám, zahrnujícím dvacetiminutový pobyt disku v mrazáku apod.
## Jak prodloužit životnost disku
Jak jsme již výše zmínili, řadě komplikací lze bez problémů předcházet. Vaše data jsou cennou záležitostí, které stojí za to obětovat trochu času, peněz i námahy.
Jednou z **klíčových položek je teplota,** která by u disku neměla přesáhnout hodnotu 40°C. **Pozornost věnujte i umístění disku** nebo jeho fyzické ochraně. Způsobů, jak prodloužit životnost disku, není mnoho, a vyplatí se jimi řídit.
## Pravidelné zálohování je klíč k úspěchu
Nezapomeňte, že pouze **pravidelná kontrola a diagnostika HDD** vám dokáže včas odhalit i skryté poškození pevného disku, a tím předejít ztrátě dat. Pevné disky je však vhodné z preventivních důvodů pečlivě **zálohovat**, neboť nikdy nevíte, co se může přihodit.
Veškeré soubory uložené na jiném paměťovém či cloudovém úložišti (fotografie, dokumenty, videa atd.) můžete v případě potřeby snadno obnovit zpět. Ať už dojde k náhodnému znehodnocení zařízení nebo nezdařenému pokusu o opravy hard-disku, obnova dat ze zálohy vám **ušetří nejen drahocenný čas, ale i peníze**.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Jak stav vašeho HDD monitorovat, jak předcházet problémům a jak je řešit, pokud nastanou?'
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
  'skodi-hlasity-zvuk-pevnym-diskum',
  'Škodí hlasitý zvuk pevným diskům?',
  'Že nadměrný hluk může člověku způsobit újmu, o tom nikdo nepochybuje. Ale že by tohle platilo i u pevných disků? Může je zvuk i třeba nevratně zničit?',
  '## Křik znehodnocuje disky?
Na citlivé elektronické součástky disku mohou neblaze působit vnější vlivy okolního prostředí, mezi něž patří nadměrná nebo příliš nízká vlhkost okolního vzduchu, extrémně vysoká či nízká provozní teplota, působení magnetického pole apod. Věděli jste však, že můžete znehodnotit data uložená na pevném disku pouhým zakřičením? **Ano, je to tak.**
• *Když už jsme ve spojení s pevnými disky u těch neobvyklých témat, tak jsme také psali o tom, proč vážně nedávat poškozený HDD do lednice!*
**Většina zvukových a ultrazvukových frekvencí může poškodit nebo zmást čidla.** Během určitých zvuků dochází k vibracím ploten, které jsou sice neviditelné pouhým okem, ale zásadně ohrožují bezchybný chod paměťového média. V nejhorším případě může dojít k vychýlení hlavičky pro zápis/čtení dat ze své trasy nad paměťovou stopou, což může při překročení určité krajní meze narušit činnost disku. Stačí znát „správnou“ frekvenci a úroveň hlasitosti akustického signálu a diskové pole je vyřazeno z provozu. Následky takového zvuku na harddisk jsou podobné jako při jeho pádu na zem.
• *Proč je pro obnovu dat z pevného disku důležité čisté pracovní prostředí?*
## Působení zvuku na chod disku od Brendana Glegga
Už před více než jednou dekádou demonstroval dopad hlasitého zvuku na data uložená na disku **IT inženýr ****Brendan Gregg****, **který pracuje jako výkonný architekt ve firmě Netflix. **V datovém centru si zkusil co nejhlasitěji zakřičet na JBOD diskové pole a zaznamenával jeho chování**. Výsledek svého konání nahrál na Youtube a toto video má k dnešnímu dni více než 1,7 milionu zhlédnutí. Stručně zapsáno, během kontrolního zápisu datového proudu na disk došlo k neobvykle vysoké latenci.
*
## Connor Bolton navázal v další studii
Na Greggovu práci později volně navázal **Connor Bolton** z Michiganské univerzity, jenž na konferenci 2018 IEEE Symposium on Security & Privacy prezentoval vlastní výzkum. Ten pojednával o destruktivním vlivu zvuků určitých frekvencí na pevné disky**. Potvrdilo se, že diskům škodí akustické rušení ve slyšitelném i ultrazvukovém pásmu**. Rezonance může navíc zmást čidla pro detekci pádu HDD. Významněji jsou ovlivněna zařízení, která nejsou řádně uchycena.
## Poplašné hasicí systémy jako skrytá hrozba
Jak bylo několikrát dokázáno, mikroskopické změny uvnitř moderních pevných disků mohou působením hlasitých zvuků přerušit a dokonce i trvale poškodit funkčnost pevných disků. **Tak silné vibrace může způsobit například hlasitý hasicí systém**.
### 110 dB vede k trvalému poškození
**To se stalo osudným pro mnoho úložných paměťových zařízení** umístěných v datových centrech velkých bank v Austrálii, Francii a Rumunsku. Když se rozezvučel varovný signál sirény hlasitosti 110 dB, došlo k trvalému poškození vnitřních komponent všech přítomných harddisků.
Podobný případ se stal také ve švédském datacentru Nasdaq, kde v roce 2018 poškodil výbuch plynu diskové jednotky serveru. **Kvůli uvedenému incidentu došlo na několik hodin k úplnému výpadku elektronické burzy v celé severní Evropě**.
**Zálohování dat = nejúčinnější prevence ztráty dat**
**Klíčové je ztrátě dat předcházet.** Pravidelné zálohování vašich dat pomáhá minimalizovat dopad případného poškození disku či uložených dat.
### Nejběžnější metody zálohování dat
• **Externí disky** – zálohování dat na externí pevný disk nebo SSD
• **Cloudové služby** – využití online služeb, kam patří Google Drive, Dropbox, Microsoft OneDrive, iCloud a mnoho dalších
• **Síťová úložiště (NAS)** – zálohování dat na úložiště připojené k vaší domácí nebo firemní síti
## Jak nepřijít o cenná data?
**Data pravidelně zálohujte**, nepoužívejte disky, u nichž máte pochybnosti o jejich bezvadné funkčnosti a zajistěte, aby měl počítač aktualizovaný antivirový software. Když budete dodržovat tato jednoduchá pravidla, ušetříte si spoustu stresu a času.
Jestliže potřebujete zachránit data z poškozeného paměťového média, ať už klasického HDD, SSD, flash disku, NAS, nebo RAID, nespoléhejte vždy na bezplatný software na záchranu dat, který nakonec může způsobit více škody než užitku. V případě problémů raději vyhledejte pomoc profesionální firmy specializující se na**záchranu a obnovu dat,** jež má potřebné znalosti, zkušenosti a technické vybavení nutné pro úspěšnou záchranu vašich dat.
#### **Zajímavé články na internetu k tomuto tématu:**
• https://www.root.cz/clanky/nekricte-na-disky-zvuk-i-ultrazvuk-je-muze-poskodit-nebo-zmast-cidla
• https://www.abc.net.au/radionational/programs/greatmomentsinscience/loud-sounds-can-kill-computer-hard-drives/7938388
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Že nadměrný hluk může člověku způsobit újmu, o tom nikdo nepochybuje. Ale že by tohle platilo i u pevných disků? Může je zvuk i třeba nevratně zničit?'
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
  '7-snadnych-tipu-jak-nejlepe-zabezpecit-svuj-iphone',
  'Tipy, jak nejlépe zabezpečit iphone před ztrátou dat',
  'Pojďme se společně podívat na tipy, jak svůj iPhone opravdu zabezpečit co nejlépe.',
  '## Používejte silné heslo nebo otisk prstu pro odemčení obrazovky
Nejjednodušší a nejefektivnější způsob, jak chránit svá data a údaje před zneužitím, je používání silného hesla namísto jednoduchého 4místného kódu. V současnosti je přístupový kód, jenž iOS využívá, šestimístný. Ona dvě „místa“ výrazně snižují riziko zadání každé známé kombinace, tedy riziko použití hrubé síly. Navíc je možno si nastavit vlastní alfanumerický kód či kód obsahující právě tolik číslic, kolik si zapamatujete. Nejlepší je kombinace speciálních znaků, písmen a číslic.
• K tématu otisků prstů a bezpečnosti jsme psali článek.
Nepoužívejte výrazy a čísla, které vás jakýmkoliv způsobem identifikují a mohou být jednoduše uhádnuty. Také si můžete nastavit, že po 10 neúspěšných pokusech o přístup do vašeho telefonu budou všechna vaše data smazána. Tuto volbu však doporučujeme pouze v případě, že svá data pravidelně zálohujete, neboť jejich smazání je nevratný proces.
Na vybraných zařízeních se rovněž nabízí možnost Face ID, kdy prostřednictvím speciálního senzoru dojde k oskenování vašeho obličeje a vytvoření jeho 3D modelu, který bude uložen v telefonu. Při každém dalším odemknutí pak dojde ke srovnání aktuálního skenu a toho již dříve uloženého. Možnost falešné shody v případě Face ID je 1 000 000:1.
## Nastavte si automatické zamykání obrazovky a vypněte oznámení na zamčené obrazovce
Automatické uzamykání obrazovky se může jevit jako úplná banalita, avšak o to více je na ni potřeba myslet. Tato funkce umožňuje, aby se váš iPhone po určité době nečinnosti sám uzamknul. Dobu, po jejímž uplynutí se iPhone uzamkne, je vhodné nastavit na co nejkratší, a to za účelem maximální ochrany zařízení.
I to nejsilnější heslo vám bude k ničemu, pokud se na zamčené obrazovce vašeho iPhone zobrazují oznámení. Zprávy, e-maily a další informace z aplikací mohou obsahovat citlivá data, jako jsou autorizační kódy, finanční údaje a další. Zkrátka, čím méně toho váš telefon zobrazuje na uzamčené obrazovce, tím lépe.
## Povolte Find My iPhone
Pokud iPhone ztratíte nebo vám ho někdo ukradne, aplikace Find My iPhone může být cesta, jak ho získat zpátky. Tato služba, která je součástí iCloud, využívá zabudovanou GPS v telefonu k tomu, aby vám na mapě zobrazila, kde se váš telefon zrovna nachází. Nicméně, k využívání této aplikace se ujistěte, že v Nastavení → iCloud → Find My iPhone (iPad) máte zaškrtnutou možnost Send Last Location. Za zmínku stojí také to, že údaje o poslední poloze vám budou zaslány ještě před tím, než se vás iPhone vybije.
• *Co dělat když ztratíte telefon s Androidem?**Psali jsme o tom, stejně jako o tom, **jak ho lépe zabezpečit**.*
## Zapněte režim USB s omezeným přístupem
Tato obtížně dostupná bezpečnostní funkce byla zavedena v iOS 12. Účinně zabraňuje připojení kteréhokoliv příslušenství USB k zařízení, byl-li váš iPhone déle než hodinu uzamčen. Funkce má zabránit hackerům obcházení přístupového kódu uzamknuté obrazovky a tím i přístup k vašim datům.
Chcete-li se ujistit, že máte režim povolen, postupujte následovně:
• Přejděte na Nastavení → Touch ID a kódový zámek
• (je-li potřeba, zadejte přístupový kód)
• V dolní části nabídky zajistěte, aby byl přepínač USB příslušenství vypnutý (bílý) a aby bylo nutno zadat do telefonu přístupový kód v případě, že se k iPhonu, jenž byl více než hodinu uzamčen, připojí jakékoliv USB příslušenství.
## Používejte dvoufaktorovou autentizaci
Užití dvoufaktorové autentizace je jedním z nejlepších způsobů, jak ochránit vaše Apple ID, jež je vstupem k mnoha vašim datům či službám. Je-li tato funkce zapnuta, smíte ke svému účtu přistupovat pouze z důvěryhodných zařízení. Přihlásíte-li se z nového zařízení, budete vyzváni k zadání nejen svého hesla, ale rovněž i šestimístného ověřovacího kódu, jenž se automaticky zobrazí právě na důvěryhodných zařízeních.
*
*Umíme i „jablka“ ?*
*Zdroj fotky: Vytvořeno ve spolupráci s DALL-E*
## Aktualizujte pravidelně software
Firma Apple vydává pravidelně aktualizace svého software. Doporučujeme vždy instalovat všechny doporučené aktualizace. Tyto updates obsahují dodatečné funkcionality a opravy případných bezpečnostních rizik. Zařízením s iOS obecně příliš nehrozí virová napadení, pokud však nemáte software aktualizovaný, vystavujete se riziku.
Pravděpodobně se nejedná o úkon, na nějž běžně myslíte. Doporučujeme proto aktivovat funkci *Automatické aktualizace. *Nemusíte mít obavy, že by se následně instalovaly nechtěné aktualizace, neboť před jejich instalací budete na tuto skutečnost upozorněni.
### Jak automatických aktualizací docílit?
• Otevřete Nastavení → Obecné.
• Vyberte položku Aktualizace softwaru.
• Zvolte položku Automatické aktualizace a přepněte přepínač na Zapnuto.
• *Někdy se stane, že se mobil skutečně hodně „zle“ zakousne právě na základě své aktualizace. Co dělat? Neházet flintu do žita! **Ukážeme vám, jak tuto situaci řešíme**. *
## Nestahujte aplikace třetích stran
Instalací neoriginálních aplikací a software zvyšujete riziko napadení telefonu virem či malwarem, tedy škodlivým softwarem. Řada lidí obhajuje instalaci neoriginálního software tím, že jim umožňuje přizpůsobit svůj telefon přesně podle svých potřeb cestami, které ale nejsou společností Apple schváleny.
• *Když iPhone spadne do vody, tak to nemusí být konečná! **Radíme, co dělat**.*
Pokud chcete mít svůj iPhone v bezpečí, radíme: Držte se od neoficiálního software a aplikací co nejdál. Případy, kdy byly zařízení s iOS napadeny virem, byly vždy spojeny s neautorizovaným software.
## Nepřipojujte se automaticky k veřejným WiFi sítím
Přestože je velice praktické a užitečné, že se váš iPhone automaticky připojuje k veřejným WiFi sítím, může to být také kámen úrazu. Kyber zločinci totiž dovedou tyto veřejné WiFi hotspoty zneužít. Vytvoří falešnou síť WiFi se stejným názvem a vy tak vůbec netušíte, že jste právě sedli na lep a vesele posíláte svá data a informace vstříc možnému zneužití.
Proto radíme, vypněte na svém iPhone možnost automatického připojování ke známým sítím a vždy se rozhodujte případ od případu, kde se k veřejnému internetu připojíte.
## Zakažte aplikacím přístup ke kontaktům, fotkám, zprávám
Poslední tip je trochu extrémní. Většina aplikací potřebuje přístup k vaší poloze a dalším datům a téměř všichni už jsme si zvykli, že náš telefon o nás ví prakticky všechno a tím nám často usnadňuje život. Možná máte ale instalované aplikace, které již dávno nepoužíváte, a přesto mají stále přístup k citlivým informacím. Projděte si tedy jejich seznam a zakažte přístup k vašim datům všem aplikacím, které právě nutně nepotřebujete.
Pro zvýšení bezpečnosti při používání chytrých zařízení se dá udělat spousta preventivních úkonů. Výše zmíněné tipy představují alespoň základní minimum, které je dobré znát. Pro všechny případy, nezapomeňte svá data také pravidelně zálohovat, ideálně šifrovaně.
## Provádějte zálohování dat
Zálohu dat můžete provést prostřednictvím dvou způsobů. Prvním z nich je záloha do iCloud, druhým pak záloha do vašeho Macu či PC (iTunes Backup).
Metoda zálohy do iCloud je velmi jednoduchá a navíc automatická, tudíž nepotřebujete žádný kabel a rovněž není nutné, abyste si pamatovali datum poslední zálohy. Ne všichni však této variantě důvěřují, a využívají proto iTunes Backup. Tento způsob je vhodný pro uživatele, kteří často využívají PC nebo Mac a chtějí si být jisti, že jsou jejich data zálohována i v případě, že nevyužívají iCloud. Jeho nevýhodou je však to, že zálohování je nutno provádět ručně (a tudíž na něj myslet).
Neumíte-li si mezi danými možnostmi zvolit tu „pravou“, je možno využívat oba způsoby současně.
• *Zálohovací princip 3 – 2 – 1 –**je nesmírně oblíbené, víte proč?*
*Zdroje*:
https://blog.kaspersky.com/iphone-maximum-security-tips/6132/
https://www.lifewire.com/tips-to-improve-iphone-security-2000265
https://www.safegadget.com/51/iphone-security-how-to-securely-use-your-iphone/
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  7,
  'Pojďme se společně podívat na tipy, jak svůj iPhone opravdu zabezpečit co nejlépe.'
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
  'znate-zalohovaci-pravidlo-3-2-1',
  'Znáte zálohovací pravidlo 3 - 2 – 1?',
  'Počet lidí, kteří i navzdory zálohování přišli o svá data, je poměrně vysoký. Poradíme vám, jak ztrátě dat co nejlépe předejít.',
  '## Co je zálohovací strategie 3 - 2 - 1?
Strategie 3 - 2 - 1 ve zkratce znamená, že si vždy uděláte minimálně tři kopie svých dat, z nich dvě budou místní, ale na rozdílných zařízeních, a minimálně jedna kopie mimo domov či kancelář.
• *Radíme, jak nejšetrněji obnovit smazané soubory*
Ukázat si to můžeme na příkladu životopisu ve formátu Word. Jeden soubor s názvem "Zivotopis.docx" máte na svém počítači u sebe doma. Jednu kopii uchováváte na externím HDD, na který provádíte běžné zálohy svého počítače. Další kopii máte uloženou v rámci zálohy na cloudové úložiště - to je kopie, kterou si můžete stáhnout prakticky odkudkoliv. Cloud funguje na bázi pravidelného procházení souborů ve vašem PC a nahrává příslušná data do datového centra.
• *Ještě neukládáte do **cloudu? 5 důvodů**, proč byste měli.*
### Zálohování vs. archivace
Ačkoli se jedná o často zaměňované pojmy, existují mezi nimi určité rozdíly. Ve zkratce řečeno, zálohování je určeno především v případech, kdy je potřebná obnova dat např. z důvodu selhání hardwaru, krádeže počítače aj. Naopak archivace slouží k dlouhodobému uložení dat, která si chcete uchovat do budoucna. Podrobněji o rozdílech referuje následující tabulka:
**Zálohování**
**Archivace**
Umožňuje rychlou obnovu aktuálních a měnících se dat
Ukládá data, jež nejsou aktualizována a uživatel je v danou dobu aktivně nevyužívá
Existují kopie stejných dat na více zařízeních
Obvykle se jedná o jedinou kopii dat
Rychlost obnovy dat je podstatná
Rychlost vyhledávání určitých dat je nepodstatná
Krátkodobé uložení dat; data jsou ukládána po tu dobu, co jsou aktivně užívána
Dlouhodobé uložení dat; ukládá data dobu požadovanou uživatelem či na neurčito
Duplicitní kopie jsou periodicky přepisovány
Nedochází k přepisu ani odstraňování dat
**Kdy je vhodné použít zálohování?**
• Soubor je neustále „aktivní“ a editován.
• Vhodné např pro dokumenty, korespondenci, nastavení aplikací či přechodné systémové informace.
**Kdy je naopak vhodné použít archivaci?**
• V případě ukládání ukončených projektů či primárních dat.
• Vhodné např. pro fotografie a videa, jež mohou být použita někdy v budoucnu, či pro média, jež považujete za cenná pro vaši firmu.
## Proč 2 místní a jedna offsite záloha?
Ať už zálohujete na Macu nebo PC, místní záloha je nejjednodušší cestou, jak svá data uložit a zpětně k nim získat přístup. Pokud přijdete o svůj počítač, můžete použít zálohu na externím HDD, kterou máte doma.
• *Co dělat, když se iPhone koupal ve vodě?*
Offsite záloha je však jednou z klíčových součástí vaší zálohovací rutiny. Pokud totiž uchováváte dvě zálohy na tomtéž místě, existuje u obou prakticky stejné riziko, že o ně přijdete při případných neočekávaných událostech, jako jsou živelné pohromy nebo vykradení bytu či kanceláře. Vaše soubory budou nejvíce v bezpečí, pokud jejich zálohu budete provádět i offsite formou.
*
*Neztraťte hlavu, když přijdete o data, pomůžeme vám!*
*Zdroj fotky: Vytvořeno ve spolupráci s DALL-E*
## Faktory, které vás přesvědčí o užívání cloudu
Jedná se o stále více využívané řešení, jehož rozšíření pramení zejména z postupujícího vývoje technologií a rovněž z rostoucí konkurence mezi poskytovateli cloudu, což má samozřejmě pozitivní dopady na spotřebitele, zejména v oblasti financí.
Mezi nesporné výhody cloudového řešení patří následující:
• **Rychlost a pokrytí širokopásmového připojení**
Nejen, že stále roste rychlost služby, také její schopnost pojímat data z různých lokací se zvyšuje. Svá data můžete do cloudu ukládat nejen z domova, kanceláře, školy aj., ale rovněž v případě, že se zrovna nacházíte na nejvyšší hoře světa – Mount Everestu. Nehrozí tedy riziko, že přijdete o nezapomenutelné zážitky z cest!
• **Komfort**
Jistě by vás nebavilo všude s sebou nosit externí zařízení (někdy to ale může dávat smysl), na které byste si uložili data mimo svou primární lokaci. Díky cloudu lze data nahrávat odkudkoli, jak již bylo výše zmíněno.
• **Odolnost**
Datová centra jsou navržena tak, aby chránila data před výpadky, přerušením služby, selháním hardwaru i před přírodními katastrofami.
• **Sdílení a spolupráce**
Řešení ocení především uživatelé, jež často pracují na společných projektech. Pomocí cloudu je jasně stanoveno, kdo má k datům přístup, a je rovněž možno posílat na soubory jiným uživatelům odkaz, jenž jim umožní data využívat dočasně či permanentně.
• **Příjem dat**
S rostoucím digitálním rozlišením se neustále zvětšuje velikost mediálních souborů, čímž rychle dochází k zaplnění úložiště a zpomalení přenosu dat. Některá cloudová řešení nabízí služby, které umožňují fyzický přesun dat přímo do cloudu.
## Funguje to?
Neexistuje nic jako dokonalá zálohovací strategie – to je potřeba mít neustále na paměti. Systém 3 - 2 - 1 je ale skvělým řešením jak pro osobní, tak i pro obchodní či pracovní použití. „*Tento efektivní systém zálohování dokonce doporučuje od roku 2012 i vláda Spojených Států*,“ uzavírá toto téma Aleš Wagner, spolumajitel společnosti DataHelp a specialista na záchranu dat. Více informací k doporučení zálohovací strategie 3 - 2 - 1 naleznete v této publikaci.
Strategie je vhodná zejména pro uživatele, jež se zabývají fotografováním (v minulosti jsme psali pro fotografy článek, jak zálohovat) či tvorbou videí, kteří disponují velkým množstvím dat. Nicméně, ačkoliv tento fakt dobře znají, realizovat zálohování v praxi je obtížnější. Přečtěte si ještě i názor Štěpána Mikeše, druhého spolumajitele společnosti DataHelp na otázku cloudu ve firemním prostředí.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Počet lidí, kteří i navzdory zálohování přišli o svá data, je poměrně vysoký. Poradíme vám, jak ztrátě dat co nejlépe předejít.'
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
  'vse-co-jste-chteli-vedet-o-pametove-karte-typu-sd',
  'Vše, co jste chtěli vědět o paměťově kartě typu sd',
  'Co tento pojem znamená? Jaké jsou druhy SD karet a na jaká kritéria byste si měli dávat pozor při jejich pořízení? Na všechny otázky si postupně odpovíme.',
  '## Jak SD karta funguje?
Uvnitř plastové placičky o velikosti zhruba 32 × 24 × 2,1 milimetru se ukrývá tzv. flash paměť, neboli pole buněk, které jsou samostatně přepisovatelné. Do jednotlivých bloků paměti je možné elektricky naprogramovat digitální informaci, která zůstává na paměťové kartě uložena i bez napájení.
Informací se rozumí přítomnost nebo absence elektronu, který dává buňce binární hodnotu „1“ nebo „0“. Zapsaná data jsou na paměťové kartě zašifrována pomocí speciálního algoritmu, přičemž každý výrobce používá pro šifrování informací na SD kartě vlastní algoritmus.
• **K tématu šifrování by vás mohlo zajímat**: Povolit proces šifrování dat v Androidu? Výhody vs. nevýhody?
## Kapacita SD karty
Každá SD karta je označena číslem, za nímž následují písmena GB. Tento údaj uvádí tzv. kapacitu, což je maximální celkové množství dat, které je možné na paměťovou kartu uložit. Jinými slovy kapacita představuje prostor pro uložení souborů.
Čím větší číselná hodnota je, tím více dat lze na paměťovou kartu nahrát. Celkový počet souborů potřebných pro naplnění karty není daný, neboť záleží na tom, zda se jedná o fotografii, video nebo třeba textový dokument.
Každý soubor má jinou velikost v závislosti na mnoha různých parametrech. Například na paměťovou kartu s kapacitou 2 GB můžete nahrát až 400 fotografií nebo jiných libovolných souborů o velikosti 5 MB.
## Druhy SD karet
„*Pokud si teprve hodláte pořídit svou první SD kartu, může vás ze začátku zaskočit, kolik různých označení je na výběr*“, vysvětluje Štěpán Mikeš, záchranář dat ze společnosti DataHelp. „SD“ je obecné označení standardu, který udává nezisková organizace Secure Digital Association.
Svůj první standard vydala pod názvem **SD**, někdy je nazýván i SD Version 1.0 nebo SDSC - Secure Digital Standard Capacity. Standard SD je však dnes již překonaný, neboť je schopen pojmout pouze od 8 MB do 2 GB dat.
Druhá verze standardu nese označení **SDHC** neboli „SD High Capacity“ (respektive SD Version 2.0). Objevila se v roce 2006 a má kapacitu až 32 GB. Třetí generace standardu přišla o necelé tři roky později.
Je označena **SDXC**, což znamená „ SD eXtended Capacity“ (či SD Version 3.0) a teoreticky by mohla pojmout až 2 TB dat, na což si však v praxi ještě musíme počkat. Paměťové karty SDXC jsou v obchodech aktuálně dostupné s maximální kapacitou 512 GB. Výrobci samozřejmě koketují i se zavedením větších kapacit, takže se možná na trhu brzy objeví první 1TB modely karet SDXC.
Paměťové karty SD, SDHC a SDXC existují rovněž v menších „micro“ verzích, které používají především výrobci smartphonů nebo drobných outdoorových videokamer. Karty microSD, microSDHC a microSDXC mají shodné kapacity jako jejich větší varianty, jen disponují menšími rozměry 15 × 11 × 1 mm. Pokud využijete speciální plastový adaptér, můžete microSD kartu použít i v zařízeních, které vyžadují SD kartu s klasickými rozměry.
• Takhle přesně zachraňujeme karty z microSD karet, **podívejte se, co vše je náplní naší práce při obnově dat z tohoto paměťového média**
*****
*Zdroj fotky: Vytvořeno ve spolupráci s DALL-E*
## **Rychlost SD karty**
Rychlost paměťové karty je vyobrazena na jejím obalu příslušnými symboly. SD karty se rozdělují dle rychlostních tříd, z nichž každá je na „paměťovce“ označena jiným symbolem.
### **UHS standard**
První označení se týká standardu pro sběrnici, což je fyzické propojení mezi SD kartou a zařízením. Na trhu jsou nyní karty standardu Normal Speed, High Speed a UHS-I, UHS-II, UHS-III (Ultra High Speed). Tyto standardy jsou informací o tom, jaký je maximální tok dat přes sběrnici.
Přenos dat na sběrnici je vždy řízen stanoveným protokolem. Rychlost paměťovek se pohybuje od 12,5 MB/s do 104 MB/s pro standard UHS-I až po 624 MB/s pro UHS-III. Je důležité pamatovat na to, že pokud je SD karta UHS-III v přístroji s podporou pouze UHS-I, nebude dosahovat deklarované rychlosti, protože zařízení nedokáže rychlejší sběrnici využít.
### **Speed Class**
Druhý typ značení se nazývá Speed Class a představuje rychlost flash paměti. U starších a pomalejších karet SDHC jsou označení Class 2, Class 4, Class 6 a Class 10 (číslice uvnitř písmene „C“). Uvedené číslo vypovídá o minimální rychlosti zápisu v MB/s. Karta SDHC Class 10 tedy dokáže zapisovat data rychlostí alespoň 10 MB/.
Naproti tomu UHS standard rozeznává jen Class 1 a Class 3 (číslice uvnitř písmene „U“) a označuje minimální rychlost zápisu v desítkách MB/s. Znamená to, že karta SDHC UHS-I Class 1 zvládne zápis o rychlosti alespoň 10 MB/s, Class 3 až 30 MB/s.
### **Video Speed Class**
Aby to nebylo příliš jednoduché, začínají se prodávat také karty s rychlostní třídou Video Speed Class označované písmenem „V“ a číslem. Zde je naštěstí označení stejné jako v případě Speed Class „C“ tedy, V6 značí 6 MB/s pro zápis, V10, V30, V60 a V90 analogicky 10 až 90 MB/s.
## **Životnost paměti**
Životnost každé paměťové buňky celé flash paměti je omezená a záleží na tom, kolikrát jsou jednotlivé buňky přepsány. „*Obecně se udává, že buňka zvládne okolo 100 000 cyklů přepsání*“, přispívá k tématu Štěpán Mikeš.
• **Mohlo by vás zajímat:**Jak správně vyzrát na baterii telefonu?
Aby byla životnost celé paměti co nejdelší, na paměťové kartě je přítomna hardwarová mezivrstva FTL (anglicky Flash Translation Layer), která se stará o rovnoměrné rozložení informací do všech buněk na flash paměti. Tím se eliminuje situace, že by některé buňky byly přepisovány neustále a jiné ani jednou.
### **Jak dlouho zůstanou na kartě uložená data**
Paměťové SD karty, stejně jako ostatní druhy flash pamětí, jako USB disky, nejsou primárně navrženy k dlouhodobé archivaci dat. Jak bylo popsáno výše, každá paměťová buňka v sobě má binární informaci. To znamená, že „0“ je buňka, která nemá záporný náboj v podobě uvězněného elektronu, kdežto „1“ je reprezentována buňkou, ve které je uvězněný elektron a má tedy záporný náboj. Bohužel, bude-li takováto buňka nečinně vyčkávat, stane se, že zhruba za 10 let se může tento elektron uvolnit a informace z buňky zmizí. Po dekádě v šuplíku tak mohou být data z SD karty neúplná nebo zcela nečitelná.
Pro ty, kdo chtějí za oněch 10 let ušetřit pár stokorun za novou kartu a archivovat na jediné SD kartě cenná data, se nabízí jediná možnost. Jednou za rok si zkopírovat obsah celé karty na jiné úložiště, SD kartu zformátovat a zpět na ni nahrát původní data.
Pokud hledáte paměťové médium, které bude mít delší životnost než SD karty a USB disky, tak vás asi zklameme. S výjimkou M-disků, což je poněkud nákladná a exotická záležitost, mají všechna paměťová média teoretickou životnost do 10 let.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Co tento pojem znamená? Jaké jsou druhy SD karet a na jaká kritéria byste si měli dávat pozor při jejich pořízení? Na všechny otázky si postupně odpovíme.'
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
  'mobil-krehke-ale-celisti-zadni-kapsy-umi',
  'Chraňte svůj mobil! i zadní kapsa umí vycenit „zuby“',
  'Způsoby, kterými si (sami) poškozujeme telefony. Prevence, vědět o nich.',
  '## Malware
Neexistuje spolehlivější způsob, jak si poškodit telefon. A začíná to přitom nevinně. Člověk dumá nad nabídkou nových aplikací. A pak zvědavost zvítězí.
• Na téma malware jsme už psali tematický článek, jak poznat, že je zabydlený v PC.
Ano, malware se nechytá jen na podezřelých webových stránkách, ale i při stahování neznámých aplikací z obchodů. Čtěte si veškeré psané informace k aplikacím pozorněji – rada nad zlato. A co neznám, nestahuji.
## Mobilní sauna v noci na 237 %
Klasika. Vytuhnete v posteli a mobil zůstává až do probuzení v zásuvce. Stav 100 % sice displej začal hlásit u�� o půl jedné ráno, ale protože nikdo nereagoval, tak se z toho nervozitou začal více potit neboli přehřívat. Pro životnost zařízení není horšího postupu.
Ještě lepší varianta může být ta, když si nabíjený přístroj (jak správně k nabíjení baterie přistoupit, psali jsme o tom už také samostatný článek) elegantně schováte (aby byl blíž po ruce) před spaním např. pod polštář. A ten začne mobil „dusit“ ve vlastní šťávě.
## Mobilní sauna ve dne na 100 %
Když už je řeč o přehřátí, nejde jen o nabíjení baterie. Je poměrně velmi snadné zajistit, aby se mobil přehříval i v silném slunečním světle, např. za teplých dnů na pláží, v autě nebo u souseda na grilování.
Sluneční svit a jeho vliv na mobily podceňujeme. Dokonce, i když si půjdete na chvilku zaplavat do bazénu a necháte telefon na stole, může už být pozdě. Předejít procesu „smažení se zaživa“ je ale možné. Magický pokyn v takové chvílí zní - vypnout.
## Tvrdý dopad na zem
Lidská ruka je geniální. Ale má i své mouchy. Věci nám z ní občas padají. Prostě to tak je. A v dnešní době ultratenkých mobilů (vzpomeňme na doby cihlových Nokií, to nám připomíná, že jsme sestavili TOP 10 největších mobilních zrůdností.) znamená často i jen jeden pád minimálně nakřápnuté sklo, nebo škrábanec.
A to je ještě lepší případ, protože alespoň o tom hned víte. Ten horší je, že se telefonu po pádu na oko nic nestane, ale uvnitř jeho vnitřností se něco „pohne“, což není vůbec dobré. Bez ochranného pouzdra ani ránu.
*
*Pozor na zimu a led, telefon může být rychle THE END *
*Zdroj fotky: Vytvořeno ve spolupráci s DALL-E*
## Voda
Toalety, bazény, vany a umyvadla jsou nechvalně známými příklady míst, kam někteří z nás už navždy smutně odloží své vzpomínky (pokud se tedy nepokusí fotky z přístroje zachránit sami na vlastní pěst, nebo za expertní pomoci).
• Bude zajímat majitele „jablek“ – základní rady, jak zabezpečit telefon a co dělat, když se „jablka“ smočila ve vodě.
I když bude výrobce mít certifikát o vestavěné odolnosti proti vodě, nedrážděte hada namočenou nohou. Selský rozum říká, že voda + elektronika spolu dobře vycházet nebudou.
## 24/7
Když jdete na kutě, telefon vypněte. Přišpendlení ve dne v noci na telefonu je pomalým krokem Sraz anonymních mobiloholiků.
• Bude zajímat majitele Androidu – jak obnovit ztracené kontakty a téma šifrování dat.
Pravidelné vypínání na několik hodin umí malý zázrak, přístroj běží daleko rychleji a vyrovnávací paměť hlásí spokojenost.
## Zadní kapsa má dravé zuby
Mobil vykukuje ze zadní kapsy kalhot. Nic proti tomu, gól se oslavit musí, o tom žádná, ale zpětné dosednutí nesmí uvolnit zvuk, jako když se sype sklo.  Mobil nejlépe odložte, abyste na něj vždy viděli.
## Přecpané úložiště (kapacita zaplněnosti 101 %)
Přetížená paměť, zpomalené aplikační procesy a žalostný výkon v ruce. Hrůza a děs.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Způsoby, kterými si (sami) poškozujeme telefony. Prevence, vědět o nich.'
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
  'prisli-jste-o-cenne-fotky-a-videa-z-dovolene-poradime-vam-jak-je-dostat-zpet',
  'Přišli jste o cenné fotky a videa z dovolené? poradíme vám, jak je dostat zpět!',
  'Přijít o fotografie či videa rodiny, kamarádů, ze společných akcí nebo cestovatelských výprav je noční můra snad každého z nás. Jak tomu zabránit a co dělat, když se vaše paměťová karta, externí disk, kamera nebo fotoaparát poškodí a data se stanou nedostupnými?',
  '## Nepodceňujte prevenci a zálohování
Vaše fotky a videa z dovolené se při vytváření ukládají do fotoaparátů, mobilních telefonů, kamer, na paměťové karty a další možná zařízení. Tyto technologie se čím dál více minimalizují a roste jim kapacita. Výrobci si kladou za cíl udělat výrobek menší, komfortnější, lepší atd. Jenže díky tomu jsou produkty často také křehčí, náchylnější k náhlých poruchám a musíme s nimi zacházet opatrně.
• Podívejte se na osvědčené tipy a rady pro zálohování vašich fotografií.
Zároveň není dobré spoléhat na uložení fotek a videí pouze na jedno místo (nejčastěji tomu bývá paměť telefonu či paměťová karta, v lepším případě si je aspoň překopírujete do svého počítače). Zálohujte svá alba raději co nejdřív na více úložných míst (externí disky, cloudová uložiště, jednorázové paměťové karty). To je dobrá příprava na situaci, kdyby se váš hardware rozhodl z ničeho nic odporoučet.
**Základní prevence u elektronických zařízení**
• Nošení ve tvrzeném a vodotěsném pouzdře nebo obalu. Pouzdro ochrání vaši kartu proti mechanickému poškožení, statické elektřine a také vlhkosti.
• Zamezení pádů z výšky.
• Ochrana před politím, prachem, skřípnutím do dveří, přejetím automobilem.
• Zálohování dat na vícero zařízení.
• Když už paměťovou kartu chcete formátovat, tak raději ve fotoaparátu.
## Rizikových situací může být celá řada
Znáte to: půjčíte fotoaparát kamarádovi a za pár okamžiků uslyšíte ránu. Otočíte se a svoji zrcadlovku vidíte na zemi s malými součástkami všude kolem. Paměťová karta s fotkami by s velkou pravděpodobností tuto nehodu měla přežít, ale 100% jisté to není. Pád takového foťáku do rokle nebo setkání s autobusem už jsou vážnější a přitom zase ne až tak nepravděpodobné. Samozřejmě může jít i o jiná zařízení a pro ně specificky nebezpečné situace: CD/DVD, externí disky, paměťové karty, telefony, kamery, flash disky atd.
## Externí disk nereaguje
*
Pokud váš disk nereaguje a přitom víte, že nikam nespadnul ani mu nehrozilo jiné mechanické nebezpečí, mohlo dojít i k poškození elektrickým proudem, náhlým přepětím, zkratem. V takovém případě bývá často poškozena řídící elektronika disku, případně elektromotor nebo samotný souborový systém. Existují i další příčiny poškození pevného disku.
Myslete na to zejména v situacích, kdy s externím diskem pracujete (tehdy je nejzranitelnější). Není rozhodně od věci si externí disky pořídit dva. Jeden menší, pracovní, který budete mít u sebe a budete ho často používat pro sběr nových dat. A druhý s větší kapacitou, který bude uložen na bezpečném místě, do kterého budete čas od času nová data z pracovního disku archivovat.
Velký pozor dejte na následné aktivity s diskem poté, co poruchu objevíte. Disk samotný opatrně odebírejte ze systému a nic dalšího se s diskem nesnažte dělat. Pokud jde o mechanický problém, další snahy o spouštění nebo rozebrání (třeba u známého ajťáka) mohou poškození dat zhoršovat. Roste tím riziko, že data nepůjde vůbec obnovit a prodraží se tím následná záchrana dat u specialisty na externí disky.
## Neviditelná SD Karta
Ukládání fotek na SD kartu (nebo jinou paměťovou kartu) by mělo proběhnout hned při pořízení fotek nebo videí. Kartě sice nehrozí vážné mechanické poškození způsobené pády či otřesy jako u pevných disků (využívají k ukládání dat místo mechanicky točících se ploten čipy flash paměti), je ale rozhodně dobré fotky z karty při nejbližší příležitosti překopírovat na nějaké další úložné zařízení. SD karty (byť se výrobci předhánějí, jak zrovna jeho karta je dokonalá), bohužel díky flash technologii záznamu dat zdaleka bezchybné nejsou, jen trpí jiným typem poruch, obzvláště těch náhlých a nečekaných. Více o fungování a příčinách poruch paměťových karet.
Není vůbec nic neobvyklého, když karta v telefonu či foťáku vyhodí chybu, požaduje z ničeho nic formát nebo zkrátka jeden den funguje a druhý den se bez jakéhokoliv varování v zařízení již nepřihlásí. Člověk přitom ani nemusel nic udělat špatně. Paměťový čip karty obsahuje obrovské množství paměťových buněk, které mají omezenou životnost (množství jednotlivých záznamů). Mohly selhat některé důležité paměťové sekce čipu, mohly fyzicky odejít nějaké důležité datové propojení čipu atp.
V takovém případě zkuste nejdřív kartu v jiném telefonu/zařízení. Nejlépe v několika zařízeních, abyste vyloučili příčinu vadného telefonu. I zde přitom ale dbejte na opatrnost. Díky integraci paměťového čipu do těla karty je obnovení dat kupříkladu při nalomení málo pravděpodobné. Zamezte také dalšímu používání karty a pokusům o záznamy dat na ni. Mohly byste totiž nechtěně přepsat původní cenná data.
Vzhledem k neustále klesající ceně paměťových karet se nabízí ještě jedno preventivní řešení – nakoupit místo jedné karty s velkou kapacitou více levných karet o velikosti jen několika málo GB a používat je pro focení jednorázově (jako jsme to dříve dělali s běžným filmem do foťáku). Po zaplnění kapacity karty si fotky zkopírujte na jiné médium a kartu si přidáte k ostatním někde do šuplíku. Získáte tím automaticky i další zálohu.
## Poškozené CD/DVD
Jde o jedno z nejrozšířenějších médií, které i dnes využívá mnoho uživatelů pro zálohu svých fotek. Na co si dát pozor? Nejčastější příčinou poškození/nedostupnosti dat je poškrábání datové stopy. Mechanika ji pak nemůže přečíst, a proto se ke svým fotkám nedostanete. Dbejte tedy na ochranu spodní strany CD/DVD (té bez potisku), kde jsou data zapsána. Ideálně poslouží pouzdro. Média neohýbejte ani nelámejte.
Pozor také na vhodné uskladnění a celkovou dobu uskladnění. Jde o optická média, která k záznamu dat používají chemickou vrstvu. Ta bývá často citlivá na ostřejší a trvaleji působící sluneční paprsky, nenechte tedy disky válet někde na poličce. Počítejte také s omezenou životností. Obsah vypálený na CD/DVD tam nezůstane věčně, v praxi se udává max. cca 10 – 15 let podle kvality média, záznamové vrstvy, stabilnosti podmínek skladování atp. Je tedy dobré na to myslet a data na discích preventivně co 10 let vypálit na nově zakoupené disky (pokud ještě budou k dispozici) či zálohovat na jiný datový zdroj.
## Telefon ani kamera nejsou nerozbitné
Dnešní uživatel smartphonu má malou kamerku a foťák prakticky neustále u sebe. Kvalita materiálu, ze kterého je smartphone vyroben (pokud nemáte nějaký odolný speciál), ale nebývá příliš dobrá. Chraňte je proto před vlhkostí, pády, vysokými teplotami a dalšími nepříznivými vlivy.
Současně si dávejte pozor, co si do svého telefonu instalujete. Zavirovaná aplikace dnes není nic neobvyklého. Základem by měl být dobrý antivir. Jako vždy ale záleží spíš na chování samotného uživatele. A pokud fandíte „hloupým“ telefonům, na jednu stranu dobře děláte – nepřijdete díky němu o své fotky jen tak. Leda když selže paměťová karta, viz výše v tomto článku.
Podobně byste měli být opatrní i u kamery nebo fotoaparátu. Ty po připojení k počítači fungují jako „velký flash disk“. Jednoduše připojíte, nahraje se vám složka, kde vidíte své fotografie a videa a můžete s nimi pracovat. Případně můžete využít i nějaký software od výrobce zařízení.
Díky jejich křehkosti ovšem může dojít díky otřesům a pádům k poškození hardwaru, kdy může pevný disk nebo samotné zařízení přestat reagovat.
**Co udělat v případě vážné poruchy**
• Ihned vypněte počítač/systém/elektronické zařízení, které s daty pracovalo.
• Nerestartujte a nijak jinak se nepokoušejte datové médium "vzkřísit".
• Zamezte jakémukoliv dalšímu zápisu dat na médium.
• Neobnovujte data (např. pomocí programů ScanDisk, chkdsk, defragmentace disku atd.).
• S médiem dál nijak nepracujte ani jej nezapínejte
• Obraťte se na specialisty na záchranu dat
## Problém s flash diskem
U flash disku dávejte pozor na oblast zápisu dat (USB). Pokud se po připojení disku do počítače disk nahraje, ale objeví se hláška „disk musí být před použitím naformátován“, počítač o něm ví, ale nerozpoznává žádný souborový systém (FAT, FAT32, exFAT). Příčinou je poškození tohoto souborového systému.
K tomu dochází např. po výpadku proudu připojeného disku, při nesprávném odebrání nebo chybou v operačním systému. Pokud jste na disku měli nahraná svá alba, formát rozhodně nespouštějte. Chyba hrozí i co se týká hardwaru, kdy může být poškozen řadič disku nebo chyba paměťového čipu. Zde je poměrně velká šance na úspěch záchrany dat. Ale jen při správném postupu.
## Fotky jste jen omylem smazali? Zkuste program pro obnovu
*Zdroj fotky: Vytvořeno ve spolupráci s DALL-E*
Někdy se člověk omylem „uklikne“ a smaže dokumenty, které nechce. Pokud se ale jedná o pouhé odstranění souborů, lze data zkusit obnovit pomocí volně dostupných programů. Těch existuje hned několik (např. Panda Recovery, Puran File Recovery, EASEUS či CDCheck). Ale nejrozšířenějšími jsou bezpochyby PhotoRec a Recuva (pod odkazy najdete návod, jak programy fungují a jak provést proces obnovy).
Obecně ale doporučujeme k obnově přistupovat trochu s rezervou a neočekávat kladný výsledek automaticky. Pravděpodobnost úspěchu zkrátka nikdy není čistých 100 %. Hlavně musíme rozlišovat, zda se jedná o smazání souborů, a kdy jde naopak o závažnou poruchu, s níž je potřeba obrátit se na odborníky. V takovém případě se vyplatí nevyčkávat a zasáhnout včas.
## Obraťte se na profesionály
Pokud dojde k poškození vašeho datového média, je lepší se do ničeho nepouštět, zachovat chladnou hlavu a přenechat záchranu dat profesionálům. Jestliže jde o fyzické poškození, free software na obnovu smazaných dat nepomůže a vzhledem k složitosti dnešních médií s tím doma (ani váš IT znalý soused) nic moc nesvedete. Odborníci řeší takové případy neustále, mají veliké zkušenosti a disponují potřebnými a účinnými nástroji pro obnovu.
*„Denně se setkáváme s případy, kdy klienti přinesou poškozené médium, na němž mají své fotky a videa z dovolené. Pomocí speciálních nástrojů provedeme pečlivou analýzu poškození a vyhodnotíme, co přesně je možné obnovit a za jakou cenu. Obecně se naše úspěšnost záchrany pohybuje mezi 90 – 100 %,*“ uvádí Štěpán Mikeš, specialista na záchranu dat ze společnosti Datahelp.
## Bojíte se ceny? Zeptejte se
Důvodem, proč lidé nechtějí využívat služeb odborníků, bývá mylné povědomí o vysoké ceně. Ta se v jednotlivých případech liší (záleží na velikosti média a typu poškození) a přesně vám cenu za záchranu dat specialista stanoví vždy po úvodní diagnostice. *„Úvodní diagnostiku provádíme v DataHelpu zdarma, stejně tak jako dopravu a vyzvednutí zařízení kdekoliv v rámci ČR. Dále se pak ceny liší v závislosti na typu úkonu a závažnosti poškození. Pokud se ale záchrana nezdaří, neplatí klient nic,“ *dodává Mikeš.
Například při hardwarovém problému u flash disku nebo paměťové karty vyjde záchrana dat zhruba na 1 500 - 5 000 Kč. U závažnějších mechanických problémů s externím diskem se cena může pohybovat od 5 000 - 12 000 Kč. Nebojte se vždy dopředu ověřit přesný ceníkzáchrany dat a na začátku si nechat provést diagnostiku.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  9,
  'Přijít o fotografie či videa rodiny, kamarádů, ze společných akcí nebo cestovatelských výprav je noční můra snad každého z nás. Jak tomu zabránit a co dělat, když se vaše paměťová karta, externí disk, kamera nebo fotoaparát poškodí a data se stanou nedostupnými?'
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
  'jak-poznate-ze-byl-vas-pocitac-napaden-malwarem',
  'Jak poznáte, že byl váš počítač napaden malwarem?',
  'Děje se vám něco z 8 podezřelých věcí z článku? No, možná máte v PC nezvanou návštěvu.',
  '## Co to je malware?
Pod slovem malware, což je zkratka anglických slov malicious software, se ukrývá označení pro **škodlivý software**.
Malware využívají **kybernetičtí útočníci k nekalým praktikám**, jako je krádež osobních údajů, zašifrování dat v počítači, zneužívání počítače k distribuci dalšího škodlivého kódu nebo propagaci reklam.
Mezi**druhy škodlivého kódu** patří ransomware, crimeware, spyware, adware, trojští koně, počítačové viry a červi.
## Jak se malware šíří?
Malware může být instalován na počítač prostřednictvím škodlivého e-mailu, připojením infikovaného média, stažením škodlivého softwaru z internetu nebo instalací infikovaných aplikací.
•
**Phishingové e-maily** – škodlivý software se nejčastěji vyskytuje v nevyžádaných e-mailech, které obsahují podezřelé odkazy nebo nebezpečné přílohy. Otevřením odkazu či stažením souboru se malware dostane do počítače oběti.
•
**Exploit kity** – zákeřné programy, které využívají zranitelnost počítačových systémů k automatizovaným útokům. Software najde slabé místo, například v internetovém prohlížeči nebo pluginu, a nainstaluje do počítače malware.
•
**Škodlivé soubory** – uživatel si stáhne z internetu na první pohled důvěryhodný soubor, kupříkladu legitimní software. Jeho instalací si však do systému nainstaluje malware.
•
**Připojení k infikované síti **– pokud se uživatel připojí do sítě, která je infikována malwarem, může dojít k infekci počítače.
## Nejčastější typ souborů zneužívaný k šíření malware
Malware se ve většině případů šíří prostřednictvím **spustitelných nebo archivních souborů**. Škodlivý kód může být součástí příloh e-mailových zpráv, maker v dokumentech a skriptech.
•
### **Archivní formáty**
Jsou určeny pro komprimaci a ukládání více souborů do jednoho souboru s vyšší úrovní zabezpečení a komprese. Archivní formáty se používají pro archivaci souborů nebo posílání více souborů jako jeden soubor.
Tyto formáty obvykle podporují různé funkce –**komprese, šifrování, vícevrstvá archivace a integrovaná kontrola integrity**.
**Příklady archivních formátů:**
• ZIP
• RAR
• TAR
• 7Z
• GZIP
•
### **Spustitelné soubory**
Spustitelné soubory, tzv. executables, jsou specifickým typem souborů, které obsahují **instrukce pro provedení určitého úkolu v operačním systému**. Tyto soubory jsou obvykle používány ke spuštění programů, aplikací, služeb nebo skriptů.
**Příklady spustitelných souborů:**
• .EXE
• .MSI
• .COM
• .BAT
•
### **Makra v dokumentech**
Makro vychází z anglického slova Macroinstruction. Jedná se o krátké skripty, které slouží k **automatizaci opakujících se úkolů** (vyplňování formulářů, tvorba grafů, výpočet dat).
Makra se nacházejí v dokumentech, jako jsou například Microsoft Word, Excel a PowerPoint. Pokud útočník do makra ukryje škodlivý kód a uživatel jej nevědomky spustí, nainstaluje se do počítače malware.
•
### **Přílohy e-mailů**
Malware se může šířit prostřednictvím **elektronické pošty**. Adresát obdrží škodlivý soubor jako přílohu e-mailu, který po stažení a spuštění nainstaluje malware na počítač. Přílohou může být libovolný**spustitelný soubor, dokument s makry, obrázek či archiv**. Tyto phishingové e-maily vypadají na první pohled důvěryhodně, nicméně se snaží uživatele pouze oklamat, aby otevřel cizí nebezpečný soubor se škodlivým kódem.
•
### **Soubory PDF**
**PDF** alias Portable Document Format je digitální formát dokumentů, jenž byl vytvořen firmou Adobe Systems s cílem **ukládat a zobrazovat dokumenty nezávisle na softwaru i hardwaru**.
Zákeřný kód může být uložen přímo v PDF souboru, nebo na škodlivé webové stránky odkazují odkazy uvedené v PDF. Jakmile se nakažený PDF soubor otevře, malware se spustí a nainstaluje se na cílový počítač.
•
### **Skripty**
Škodlivý software se může šířit pomocí skriptů **JavaScript a VBS **(Visual Basic Script), jež jsou určeny ke **vzdálenému automatickému spouštění úloh na počítačích**. Buď se malware stáhne při spuštění skriptu JavaScript či VBS, nebo může být skript přiložen k e-mailové zprávě jako příloha a malware se stáhne až po jeho otevření.
•
### **Flash nebo Java applet**
Technologie Flash a Java appletů, která slouží **k vytváření interaktivních webových aplikací, animací a her**, může být zneužita k nekalým praktik��m. Útočník může uložit malware do Flash či Java appletu, případně může být začleněn na webové stránky s appletem. Druhá jmenovaná metoda šíření malware se jmenuje **Drive-by download**. Po spuštění nebo návštěvě infikované stránky se malware stáhne do PC.
•
### **Pluginy a rozšíření prohlížečů**
Další variantou šíření malware jsou**pluginy a doplňková rozšíření internetových prohlížečů**. Uživatel si stáhne škodlivý plugin do svého počítače přes nedůvěryhodný zdroj, phishingový e-mail anebo webovou stránku. Instalace škodlivého rozšíření může**změnit nastavení prohlížeče**. Uživatel je například přesměrován na zavirované webové stránky, zobrazují se mu nebezpečné reklamy, případně dojde k samovolnému stažení dalšího zákeřného softwaru.
•
### **Torrent soubory**
Torrentové soubory jsou určeny ke **sdílení velkých souborů**, jako jsou filmy, hudba, hry a aplikace, pomocí technologie peer-to-peer (P2P). Odkazy na nebezpečné torrenty s malwarem se šíří prostřednictvím různých webů a v diskuzních skupinách. Když se uživatel pokusí stáhnout nakažený torrentový soubor, stáhne se malware, který ihned spustí škodlivý kód.
•
### **Obrázky a multimediální soubory**
Obrázkové a multimediální soubory (videosoubory, hudební soubory a další) mohou být rovněž infikovány malwarem. **Škodlivý kód je v hojné míře součástí obrázku nebo videa**. Může se jednat o tzv. exploit, tedy program zneužívající programátorské chyby systému ve prospěch hackera. K aktivaci malware dojde při prohlížení nebo přehrávání tohoto souboru.
### **Archivní formáty předstihly soubory Office**
**Dle analýzy kybernetických zločinů za 3Q/2022** zveřejněné společností **HP Wolf Security**, kyberzločinci nejčastěji používají pro šíření malware **archivní soubory **(např. ZIP a RAR). Ve srovnání s 2Q/2022 došlo k nárůstu případů u tohoto typu souborů o **11 %.**
O několik let dříve byly kybernetické útoky na počítačové uživatele prováděny převážně přes infikované dokumenty Office (Microsoft Word, Excel a PowerPoint).
**Statistiky Threat Insights Report od HP Wolf Security obsahují zajímavá čísla ohledně šíření malware přes různé typy souborů:**
• **44 %** se šířilo přes archivní formáty
• **32 % **se šířilo přes dokumenty Office
• **20 % **se šířilo přes spustitelné soubory
Celkově bylo zaznamenáno **150 různých formátů souborů**, které byly použity k šíření malware.
## Jak se proti šíření malware chránit?
Zákeřný software se může šířit přes jakýkoliv typ souboru, proto je třeba při práci na počítači **dbát zvýšené opatrnosti**.
•
**Antivirus** – antivirový program pomáhá detekovat a odstranit malware z počítače. Důležité je aplikaci pravidelně aktualizovat.
•
**Software a operační systém** – uživatel by měl používat vždy aktuální verze programů a operačního systému, jež nabízí nejnovější opravy proti zranitelnosti.
•
**Neověřené soubory **– nedoporučuje se otevírat a spouštět neznámé soubory, navštěvovat pochybné stránky a stahovat do zařízení neověřený software.
•
**Firewall **– zabezpečení síťového provozu pomáhá ochránit počítače před nežádoucími připojeními a škodlivými aktivitami.
•
**Bezpečnostní software** – použití antispyware nebo antimalware softwaru pomáhá rychle odhalit a odstranit speciální druhy škodlivých souborů, které by mohly ohrozit bezpečnost počítače.
•
**Zálohování **– pravidelná záloha dat je účinnou prevencí před ztrátou cenných souborů v případě napadení počítače malwarem. Aby bylo možné zálohované soubory obnovit, musí být uloženy na jiném úložišti. Více se dočtete v našem dalším článku o zálohovacím pravidle 3-2-1.
Je důležité, aby uživatel pokaždé pečlivě zvážil, který spustitelný soubor hodlá otevřít, protože škodlivý kód může být ukryt v libovolném spustitelném souboru.
## Jaké jsou nejčastější příznaky přítomnosti malwaru v počítači?
Způsobů, jak narušit zranitelný uživatelský systém, je stále více. Je proto potřeba osvojit si nejen základy potřebné prevence malwarového útoku, ale také**rozeznat jeho počáteční příznaky a provést patřičná opatření**, kterými by se dalo zamezit největším škodám. **Jaké jsou nejčastější příznaky přítomnosti malwaru ve vašem počítači? **
•
### **Zpomalení **
Trvá vašemu počítači o poznání déle, než po zapnutí "naběhne"? Čekáte příliš dlouho na to, aby se spustily některé z vašich programů?  Je známým faktem, že malware má tendence značně zpomalovat chod napadeného počítače a jeho operačního systému, což může mít posléze vliv i na rychlost internetu a aplikací.
• *10 osvědčených rad, jak zrychlit počítač*
#### **Co dělat? **
Pokud jste zaznamenali některé z výše uvedených příznaků a jste si jisti, že nepoužíváte žádnou aplikaci, náročnou na systém, zkuste zapátrat po možných příčinách. „*Může mezi ně patřit nedostatek RAM paměti, nedostatek místa na vašem pevném disku nebo hůře zjistitelný hardwarový problém*“, vysvětluje Aleš Wagner, spolumajitel společnosti DataHelp.
•
### **Vyskakovací okna**
Další z příznaků - a jeden z nejvíce viditelných a nejvíce otravných - jsou nevyžádaná**vyskakovací okna**. Vyskakovací okna, nečekaně se objevující v systému, jsou typickým příznakem **spyware infekce**. Hlavní problém spočívá nejen ve vysokém počtu vyskakovacích oken, ovlivňujících chod vašeho systému, ale především v tom, jak moc je obtížné se jich nadobro zbavit.
Vyskakovací okna jsou nejen obtěžující, ale často je jejich výskyt spojen s dalšími **skrytými hrozbami**, které mohou mít na váš systém fatální vliv.
Abyste předešli spywaru a jeho negativním dopadům na váš systém, **osvojte si následující tyto bezpečností praktiky**:
• neklikejte na podezřelá vyskakovací okna
• neodpovídejte na neověřené a podezřelé e-maily a další zprávy
• buďte opatrní při stahování bezplatných aplikací
Pro odstranění tohoto typu hrozeb budete potřebovat velmi dobrý bezpečnostní softwarový produkt zaměřený proti spywaru. „*Mezi nejpopulárnější produkty, které si s tímto typem malwaru umí kvalitně poradit, patří například Malwarebytes nebo Ad-Aware od Lavasoftu a další*“, říká Aleš Wagner.
• *Zálohovat vaše cenná data na **cloud? 5 důvodů**, proč byste o tom měli vážně uvažovat.*
•
### **Pády**
Pokud se musíte zničehonic potýkat **s náhlými pády jednotlivých programů i celého systému**, nebo zakoušíte - v případě počítačů s OS Windows - nechvalně proslulou "modrou smrt", rozhodně zbystřete. Je to jasné varování, že váš systém nepracuje tak, jak by měl, a že byste měli celou věci prošetřit.
• J*ak být na pád v OS Windows 10 připraven? Radíme, jak zálohovat data ve Windows 10.*
#### **Jaké jsou příčiny tohoto netypického chování systému?**
Může se stát, že se počítač potýká **s technickým problémem**, způsobeným potenciální nekompatibilitou mezi softwarem a hardwarem. Pokud máte podezření na technický problém, rozhodně se obraťte na odborníky.
Může se stát, že jsou **v konfliktu dva různé - například antivirové - programy**. „*Proto je lepší, když má uživatel na svém počítači nainstalován pouze jeden antivirový software*“, říká specialista na záchranu dat.
Pokud prohledáváte svůj počítač kvůli malwaru, jednoduše zahajte kompletní scan celého systému za použití kvalitního antivirového programu. Je důležité mít pro svůj systém spolehlivé bezpečnostní řešení, umožňující skenování v reálném čase, automatické aktualizace a použití firewallu.
•
### **Podezřelá činnost a nedostatek místa na pevném disku**
Dalším varovným signálem je neobvyklá aktivita pevného disku. Pokud zaznamenáte, že váš disk vykazuje výraznou aktivitu i ve chvílích, kdy ho nepoužíváte a neprobíhá žádné stahování ani provoz jakéhokoliv programu, je pravý čas pro otestování počítače.
• *Historie pevných disků: Malý průvodce*
Je dobré se soustředit na to, zda kapacita pevného disku v poslední době výrazně neklesla, nezmizely vám nějaké soubory nebo nedošlo ke změnám v jejich jménech. „*Existuje mnoho typů malwaru, který za využití nejrůznějších metod dokáže zcela zaplnit volný prostor na pevném disku*,“ vysvětluje k tomu Aleš Wagner, odborník na záchranu dat.
• *Víte, podle čeho vybírat externí disk?** *
Mezi další podezřelou činnost na disku patří např. náhlé automatické otevírání a zavírání nejrůznějších programů, vypínání systému bez viditelné příčiny a bez varování nebo ztráta přístupu k některému z disků.
•
### **Neobvyklá síťová aktivita **
Existují případy, kdy uživatel není k internetu připojen přes svůj prohlížeč, není spuštěn žádný program s online aktivitou a nenahrávají se ani nestahují žádná data, a přesto je možné pozorovat vysokou síťovou aktivitu.
V takových případech si ze všeho nejdříve vždy ověřte, zda skutečně v danou chvíli neprobíhá žádná aktualizace, neběží žádný program, který by využíval internetové připojení a neprobíhá žádné stahování ani nahrávání.
• *Proč (ne)využívat bezplatné programy na obnovu dat?*
Pokud skutečně k žádné z výše uvedených aktivit nedochází, měli byste zkontrolovat, kam a jak je síťová aktivita směřována. „*Pomohou vám k tomu programy jako GlassWire, nebo třeba Wireshark“, *doporučuje Aleš Wagner.
•
### **Nová domovská stránka v prohlížeči **
Zaznamenali jste, že se zničehonic změnila úvodní stránka vašeho prohlížeče? Objevila se ve vašem prohlížeči zcela nová a neznámá lišta? Zkusili jste přejít na svůj oblíbený blog, ale byli jste přesměrováni na odlišnou webovou adresu?
K těmto věcem obvykle dochází tehdy, když při návštěvě podezřelé webové stránky nechtěně kliknete na link nebo vyskakovací okno. Tato činnost často spustí stahování škodlivého, nevyžádaného softwaru, který je posléze bez vašeho vědomí nainstalován na váš počítač. Důsledky jsou nejen obtěžující, ale také škodlivé. Opět je i zde potřeba kompletně proskenovat systém antivirovým softwarem.
•
### **Deaktivace bezpečnostních řešení**
Pokud znenadání **přestal fungovat váš antivirový program** nebo je deaktivována možnost jeho aktualizace, je potřeba okamžitě zjistit, co se vlastně stalo. Je důležité vědět, že některé typy malwaru jsou speciálně navržené tak, aby deaktivovaly bezpečnostní řešení ve vašem počítači a znemožnily vám tím jakoukoliv obranu.
Pokud se výše uvedené obtíže nevyřešily ani rebootem počítače či vypnutím a opětovným zapnutím antivirového programu, byl váš počítač s největší pravděpodobností zasažen malwarem – stejně tak tomu bude i v momentě, že bez neznámé příčiny nefungují aplikace jako např. Správce úloh nebo Editor registru.
**A jak spolehlivě poznáte, že byl váš antivirový program zasažen? **„*V takový moment bych doporučoval prověření jiným antivirovým programem, např. ESET Online Scanner se ani nemusí instalovat*“, radí na toto téma Aleš Wagner.
• *Víte, co okamžitě udělat, když ztratíte telefon? Poradíme vám.*
•
### **PC rozesílá podezřelé zprávy**
Říkají vám vaši přátelé, že od vás dostávají **podezřelé e-maily nebo zprávy přes nejrůznější messengery**? Tyto zprávy obvykle obsahují i podezřelé odkazy nebo jiné přílohy.
• *Jak odstranit kryptovirus z počítače a co to vlastně je?*
Ze všeho nejdříve si - většinou ve složce "Odeslané" - ověřte, že zprávy byly skutečně zaslány z vašeho účtu. Pokud v odeslaných žádné podezřelé zprávy nevidíte, znamená to, že k odeslání došlo **prostřednictvím aplikace, kterou nemáte pod kontrolou**.
**Ať už ve složce odeslaných zprávy najdete nebo ne, měli byste postupovat podle následujícího návodu:**
• okamžitě se odhlaste ze všech vašich účtů, a to jak na počítači, tak i na mobilních zařízeních
• nastavte u vašich účtů nová, extrémně silná hesla. S tvorbou a ukládáním hesel vám mohou pomoci i nejrůznější aplikace
• nikdy nepoužívejte stejná hesla pro různé účty! Používání odlišných hesel pro každý z účtů značně snižuje pravděpodobnost napadení
• pokud to jde, používejte dvoufázové nebo dvoufaktorové ověření
„*Může i nastat případ, že sám PC oznámí, že vaše IP adresa je na černé listině tzv. blacklistu. Tady existuje i varianta, že váš PC je už napojen v botnetu jako pěšák v poli, který nekontrolovatelně rozesílá spam. Tady už to chce zásah odborníků*“, popisuje specialista na záchranu dat.
## A co říci závěrem?
**Vědomosti jsou klíčem k bezpečí.** Včasným rozpoznáním malwaru můžeme předejít skutečně fatálním důsledkům, ať už v podobně nefunkčnosti počítače nebo krádeže naší identity. „*Pro běžného PC uživatele by**neměla otázka zabezpečení končit jen u instalace bezpečnostních programů. Je také důležité, aby se i alespoň trochu orientoval v tom, jak se malware v okamžiku napadení systému chová, aby případně mohl jeho dopad co nejvíce minimalizovat*“, uzavírá vše Aleš Wagner, specialista a spolumajitel společnosti DataHelp.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  13,
  'Děje se vám něco z 8 podezřelých věcí z článku? No, možná máte v PC nezvanou návštěvu.'
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
  '-naucili-jsme-se-zachranit-data-z-wd-my-cloud-duo',
  'Naučili jsme se zachránit data z wd my cloud duo',
  'Dnes se nám podařilo najít postup, jak poškozené databáze spojit se souborovým systémem.',
  '## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Dnes se nám podařilo najít postup, jak poškozené databáze spojit se souborovým systémem.'
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
  'technologie-hamr-co-to-je-a-jak-to-funguje',
  'Technologie hamr: co to je a jak to funguje',
  'Požadavky na zvyšování dat o úložných kapacitách se nevyhnutelně zvyšují, a proto se technologie neustále vyvíjí.',
  '## Co to je?
HAMR je zkratka anglických slov Heat-Assisted Magnetic Recording, což přeloženo do češtiny znamená tepelně asistovaný magnetický záznam. Jedná se o technologii magnetického ukládání dat založenou na metodě kolmého zápisu Perpendicular Magnetic Recording (PMR), která je doplněna o miniaturní laserovou diodu na každé zapisovací hlavičce. Dioda požadované místo na disku zahřeje, aby byl zajištěn zápis dat s požadovanou kvalitou, polaritou a stabilitou.
## Jak to funguje?
Technologie HAMR umožňuje zapisovat stejně velká data na menší oblasti, čímž se řádově zvyšuje hustota zápisu. Na paměťové médium je tak možné uložit mnohem více informací. Konkrétní místo se před zápisem dat zahřívá laserem zhruba na 650 °C a zase se rychle ochlazuje. Tento proces trvá jen necelou nanosekundu a opakuje se s každým zapisovacím cyklem. Plotny disku jsou vyrobeny ze skla, které poměrně spolehlivě zvládá teplotní změny. Jednotky s technologií HAMR disponují současnými standardy klasických 3,5“ disků, takže není potřeba nic měnit v počítači, nebo na jiném zařízení, ke kterému jsou připojeny. Disky typu HAMR jsou plně kompatibilní a používají se stejným způsobem jako stávající HDD.
## Kdy budou pevné disky s HAMR v prodeji?
První demonstrace energeticky asistované technologie zápisu proběhly již v roce 2013. Zpočátku se zdálo, že HAMR nebude mít budoucnost, neboť miniaturizace prostoru pro zapisování dat byla pro výrobce hodně náročná úloha. Letos v únoru však společnost Seagate Technology oznámila, že první zařízení s technologií HAMR budou komerčně dostupné ještě v roce 2019. Firma od roku 2017 společně s vybranými partnery testovala zkušební disky, které byly podrobeny důkladným zkouškám v ostrém provozu. Seagate sází na HAMR i z toho důvodu, aby získal navrch nad svým technologickým rivalem Western Digital, které se teď hodně spíše soustředí na SSD technologie.
Společnost Seagate se pochlubila se svými úspěchy v testování nové technologie zápisu na oficiálních webových stránkách, kde uvádí, že sestavila více než 40 000 disků HAMR na stejné automatizované montážní lince jako jiné dosavadní produkty. Testy prokázaly spolehlivost přenosu dat a jednoduchost použití pro koncového uživatele.
Na trhu se mají nejdříve objevit 16TB pevné disky Seagate Exos, které mají spatřit světlo světa ještě v letošním roce. Modelová řada HDD Seagate Exos by měla být dále v roce 2020 doplněna o 20TB a 24TB jednotky a o tři roky později v roce 2023 se možná dočkáme až 40TB modelů. Předpokládá se, že v té době by se již mohlo jednat o zařízení s vylepšenou technologií HDMR (Heated-Dot Magnetic Recording) dosahující kapacity až 100 TB. Přesná dostupnost, včetně pořizovacích cen, zatím nebyla zveřejněna. Zařízení vybavena technologií HAMR budou s největší pravděpodobností o něco dražší než zařízení harddisky s konkurenční technologií MAMR (Microwave-Assisted Magnetic Recording), jejíž výrobní postup není tak technicky náročný.
## Továrny na skleněný substrát
Technologie HAMR a MAMR by měly být brzy velmi populární, což dokazuje výstavba továren, které se zaměřují na výrobu skleněných substrátů pro pevné disky. Japonská společnost Hoya plánuje za 270 milionů dolarů postavit již třetí závod se skleněným substrátem v Laosu. Produkce by měla být zahájena na začátku roku 2020. Hoya vlastní další dvě továrny v Thajsku a ve Vietnamu.
Firma dodává materiál především pro výrobce Seagate, Western Digital a Showa Denko, jež skleněný substrát využívají zejména pro 2,5palcové disky. V nedaleké budoucnosti se očekává navýšení odbytu. Výrobci by mohli materiál využít na výrobu ploten nových 3,5palcové disků spolupracujících s technologiemi HAMR a MAMR.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Požadavky na zvyšování dat o úložných kapacitách se nevyhnutelně zvyšují, a proto se technologie neustále vyvíjí.'
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
  'umela-inteligence-jako-hudba-budoucnosti-zalohovani-dat-ve-21-stoleti',
  'Umělá inteligence jako hudba budoucnosti zálohování dat ve 21. století',
  'Jak funguje strojové učení? Správa dat s využitím AI? Samostatné zálohování? Velké otázky zítřejšího světa.',
  '## Definice pojmů
Abychom mohli alespoň trochu porozumět problematice umělé inteligence je třeba nejprve znát základní pojmy.
### Umělá inteligence (AI - Artificial Intelligence)
Vědní obor informatiky zabývající se inteligencí strojů. Zahrnuje systémy zvládající řešit komplexní úlohy pro učení, rozhodování, plánování, postupné zvyšování výkonu apod. Umělá inteligence není jen otázka skutečnosti, ale také představivosti lidí. Co všechno by mohly stroje umět, se odráží v řadě známých sci-fi filmů - Terminátor, Matrix, Transformers, TRON, Ex Machina, Já, robot a další.
### Slabá umělá inteligence (ANI - Artificial Narrow Intelligence)
Určitě jste se s tímto druhem již setkali, aniž byste to věděli. Spadá sem například hlasový asistent Apple Siri a dá se říci, že i v jistém smyslu čtečky otisků prstů na chytrých telefonech. ANI dokáže pracovat pouze v určité oblasti, případně dokáže řešit jen jeden typ problému, na něž má předdefinovanou sadou funkcí.
### Obecná umělá inteligence (AGI - Artificial General Intelligence)
Někdy bývá označována také jako „silná AI“, „plná AI“ nebo „AI na lidské úrovni (human-level AI)“. Označuje se tak strojová inteligence, jež provádí úlohu stejně dobře, ne-li lépe, než člověk bez nutnosti předchozího programování. Zpracování obrovského množství dat lidským uvažováním s neuvěřitelnou rychlostí by se brzy mohlo stát realitou. Například jeden z nejrychlejších superpočítačů na světě, K sestavený firmou Fujitsu, uměl (v srpnu 2019 byl vyřazen z provozu a bude nahrazen počítačem Fugaku v roce 2021) za 40 minut nasimulovat jednu sekundu neuronové aktivity.
### Umělá superinteligence (ASI - Artificial Super Intelligence):
Stroj s inteligencí ASI by měl ve všech aspektech předčit lidskou inteligenci a ne ji pouze napodobovat. Podle odhadů by trvalo celá desetiletí, než by došlo k důkladnému výzkumu umělých superinteligentních strojů, a tedy i supervýkonných robotů. Inteligentní stroje tak nemohou člověka dobýt alespoň jedno století.
### Strojové učení (ML - Machine Learning)
Strojové učení je podobor umělé inteligence, jenž se zabývá algoritmy a technikami pro zpracování velkého objemu dat. Systém se dokáže postupem času na základě nabytých zkušeností ve svých výpočtech zlepšovat, aniž by k tomu potřeboval explicitní naprogramování nebo zásah člověka.
## Jak funguje strojové učení?
Předpokládejme, že stroji s umělou inteligencí přidělíme nějaký úkol. AI vstupní data nejprve analyzuje pomocí neuronové sítě, která funguje podobně jako lidský mozek. Neuronová síť se pomocí svých "nervových" uzlů snaží ze zadaných dat rozpoznat číselné vzorce, které je nutné nejprve převést do adekvátní sekvence pro jejich rozpoznání. Zadáním velkého množství dat se stroj každý den naučí něco nového, což nám stačí pro krátkou představu o tom, jak funguje umělá inteligence.
*
## Správa dat s využitím AI
V posledních letech dochází k zásadním změnám, neboť nejen noví hráči na trhu mění zavedený způsob, jakým se provádí klasické zálohování dat. Podniky stále častěji využívají cloudová úložiště, chytrá mobilní zařízení, internet věcí (zkratka IoT pro anglická slova Internet of Things), umělou inteligenci (AI) či strojové učení (ML). Firmy zpracovávají narůstající objem dat, aby splnily své obchodní cíle, a zároveň se snaží omezit množství IT infrastruktury používané ke zpracování, ukládání a správě dat. Společnosti nahrazují fyzická datová centra modelem SaaS (anglicky Software as a Service neboli Software jako služba) a cloudovými službami, jež jsou poskytovány přes internet.
O automatizaci zálohování a obnovu dat se v organizacích vždy stará příslušné IT oddělení. Zálohování/archivování souborů je u�� od nepaměti považováno za nutné zlo, které se s nástupem nových technologií stává ještě složitějším. Firmy se samozřejmě musejí chovat zodpovědně a mít zadní vrátka, pokud se objeví jakýkoliv problém s přístupem k datům, ať už hovoříme o selhání serveru, napadení virem, výpadku elektřiny apod. Navíc je zabezpečení citlivých osobních údajů zákazníků vyžadováno vládními předpisy.
## Nové trendy = nové bezpečnostní hrozby
S rozvojem technologií bohužel narůstá také počet kybernetických hrozeb, jež by mohly narušit plynulý provoz podniku. Z tohoto důvodu i firmy, které se specializují na bezpečný přístup k datům a nabízí produkty pro zálohování/obnovy dat, inovují svá stávající řešení. Například společnost Acronis, jež nabízí své technologie pro zálohování dat ve více než 45 zemích světa, uskutečnila ve spolupráci s americkým Ponemon Institute zajímavou studii týkající se ochrany dat ve firmách.
**Výsledky průzkumu IT bezpečnosti ve firmách:**
- 62 % dotázaných IT profesionálů z celého světa uvedlo, že má jejich bezpečnostní infrastruktura mezery, jež jsou zneužitelné k jejímu překonání
- 45 % účastníků průzkumu se potýká s ochranou rozšiřujícího se bezpečnostního perimetru v důsledku rozvoje internetu věcí (IoT), Bring-Your-Own-Device metody práce (BYOD) a mobilního či cloudového ukládání dat
- 46 % respondentů vidí jako příčinu častého narušení datové bezpečnosti vytrvalost, sofistikovanost, expertízu a financování útočníků
- 64 % dotázaných  věří, že jsou k porozumění a k rozpoznávání současných hrozeb zapotřebí nové technologie včetně AI a ML
Útočníci vyvíjejí zcela nové sofistikované druhy ransomware a malware s jediným cílem - napadnout systém uživatele. Zákeřné programy většinou útočí na zálohovací software, případně na zálohy samotné, aby bylo uživateli znemožněno obnovit systém do původního stavu před infekcí. Tradiční metody zálohování a obnovy dat již nejsou schopny svou funkci adekvátně vykonávat, protože tyto technologie nebyly navrženy tak, aby zvládly složitost dnešních IT prostředí. Umělá inteligence a strojové učení by mohlo být klíčem k tomu, jak zůstat o krok napřed před rychle se rozvíjejícími metodami kyberzločinců.
## Zálohování s vlastním řízením
Naštěstí některé pokročilé technologie, které zajišťují rychlejší a komplexnější připravenost na obnovu dat, umožňují podnikům využívat nový typ zálohování označovaný jako samostatné zálohování (self-driving backup). Tento typ zálohování využívá technologie AI a ML pro automatizaci operací, správu zálohování a obnovy dat, včetně nastavení, monitorování a sledování úrovně služeb (anglicky Service Level Agreement - zkratka SLA). Samostatné zálohování umožňuje IT profesionálům nastavit požadované výsledky ochrany dat a také průběžně optimalizovat operace zálohování a obnovy pro dosažení potřebných výsledků.
## Jak funguje samostatné zálohování?
Samostatné zálohování využívá schopnost AI a ML pro porozumění datových vzorců, které se starají o procesy zálohování a obnovy dat. Pokud by mělo při záloze/obnově informací dojít k nesplnění cílů, operace se upraví a aktualizují ihned, jakmile je tato abnormalita identifikována. Není to však jednoduché. Tato schopnost vyžaduje určité znalosti technologií umělé inteligence a strojového učení. IT odborníci musí nejprve nainstalovat zálohovací systém samostatného zálohování a stanovit cíle ochrany dat + SLA. Poté systém začne plnit úkoly nezbytné k realizaci těchto cílů prostřednictvím zabudované automatizace a procesů. Kontroluje se, zda jsou splněny všechny SLA, a v případě potřeby je včas upozorněno IT oddělení.
Systém samostatného zálohování získává postupem času znalosti o celém IT prostředí podniku, jeho zdrojích a výkonu těchto zdrojů. Když chce "ajťák" přidat nová pracovní zatížení nebo systémy, může předpovídat, zda a jak může dosáhnout různých SLA pro tato pracovní zatížení a systémy. Toto porozumění není statické, protože systém zálohování s vlastním řízením shromažďuje více informací o operacích na ochranu dat. Tímto způsobem může odhalit nové vzorce a mnohem lépe odhalit anomálie, čímž se stane chytřejším.
## Závěr
Automatizace zálohování dat ve firmách může zabránit vzniku chyb způsobených člověkem a může zajistit konzistentní bezchybné zálohovací prostředí. Je otázkou, co nás čeká v budoucnosti, až se zálohování souborů plně zhostí AI. Věřme, že to bude krok kupředu tím správným směrem, aby by se minimalizovala rizika spojená s nedostatečnou ochranou dat a aby nás chytré stroje nepřeválcovaly svým myšlením.
## Další zajímavý obsah k tématu umělé inteligence a práci s daty
• Popsaný příklad, jak firma AmerisourceBergen začala využívat A. I. pro práci s daty v jejich ERP systému.
• Interview s profesorkou z Oxfordu Ginou Neffovou, která studuje dopady strojového učení na lidskou společnost.
• Studie od aliance Partnership on AI to Benefit People and Society, která zastřešuje sedm mikro-studií spoluprací systémů umělé inteligence a lidmi.
• Česká studie z finančního sektoru, která poukazuje na to, že 47 % finančních ředitelů se obává zbytečně, že by je A. I. v budoucnu připravila o práci.
• Velmi unikátní interview s Vladimírem Kullou, ředitelem vývojového a konstrukčního centra Siemensu.
## Použité obsahové zdroje a inspirace pro tento článek:
• Why Artificial Intelligence-Powered Backup is the Future of Backup and Disaster Recovery - Disaster Recovery Journal. *Welcome to Disaster Recovery Journal* [online]. Copyright © 2019 Disaster Recovery Journal [cit. 02.12.2019]. Dostupné z: https://www.drj.com/articles/online-exclusive/why-artificial-intelligence-powered-backup-is-the-future-of-backup-and-disaster-recovery.html
• How AI and machine learning is changing Backup and Recovery? - NG-IT is a leading private and hybrid cloud provider. *Homepage - NG-IT is a leading private and hybrid cloud provider* [online]. Dostupné z: https://ng-it.co.uk/how-ai-and-machine-learning-is-changing-backup-and-recovery/
• Learning machines go forward with backup: The Case for AI in Data Backup and Recovery | CloudPOST. *CloudPOST | CloudPOST News* [online]. Copyright © [cit. 02.12.2019]. Dostupné z: https://cloudpost.us/learning-machines-go-forward-with-backup-the-case-for-ai-in-data-backup-and-recovery/
• Artificial Intelligence in Backup. *Vembu: Simplifying Data Protection for Virtual & Physical Data Centers* [online]. Dostupné z: https://www.vembu.com/blog/artificial-intelligence-and-virtual-machine-backups-a-brief-perspective/
• 403 Forbidden. *403 Forbidden* [online]. Dostupné z: https://www.acronis.cz/jak-umela-inteligence-napomaha-s-ochranou-vasich-dat
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2019-12-02',
  true,
  8,
  'Jak funguje strojové učení? Správa dat s využitím AI? Samostatné zálohování? Velké otázky zítřejšího světa.'
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
  'android-10-jake-prinasi-bezpecnostni-zmeny',
  'Android 10: jaké přináší bezpečnostní změny?',
  'Bezpečnost uživatele na prvním místě – alfa a omega nového Android 10.',
  '## Změny, které přináší Android 10
Android 10 se **snaží přinést větší míru kontroly nad uživatelovými daty**. Jako open-source platforma může být implementován Android jakýmkoliv způsobem, jakým výrobce zařízení bude chtít, s několika málo požadavky na funkce a vzhled prostředí. S Androidem 10 zavede Google pro všechny výrobce jednotné a pevně dané umístění menu pro Soukromí a Polohu, **nehledě na to, jaký smartphone uživatel bude používat**. Tak bude mít každý uživatel Androidu 10 na kterémkoliv zařízení přehled, kde nastavení najde, místo zdlouhavého procházení řady nabídek.
### Žádost o oprávnění a geofencing
Mezi další požadavky, které Android 10 uvádí, patří **žádosti o oprávnění** pro aplikace a opětovné potvrzování těchto voleb častěji (například přístup k poloze zařízení). Podobně Android 10 představí funkce **geofencingu**, kde namísto vypnutí a zapnutí sledování polohy může uživatel vybrat možnost, kdy geofencing funguje, jen když je aplikace **spuštěna v popředí**.
### Omezení přístupu aplikací k sériovému číslu a IMEI
Android 10 se rovněž snaží **zlepšit své postavení****také na dalším kontroverzním poli**. Zavádí nová omezení pro přístup aplikací k neměnitelným identifikátorům zařízení, jako jsou **sériové číslo a IMEI**. Místo toho bude Google vyžadovat po vývojářích, **aby používali****resetovatelné identifikátory ke sledování uživatelů**. To umožní, že tyto digitální stopy budou moci být vymazány.
Toto téma je zvláště důležité díky **zvýšené informovanosti o sledování uživatelů **kvůli cílené reklamě. V tomto průmyslovém odvětví se debatuje o hrozbách shromažďování permanentních identifikátorů už celou dekádu. Android má „*advertising ID*“ a iOS nabízí podobný „*Identifier for Advertisers*“. Apple začal vyžadovat po inzerentech IDFA v roce 2013, Google zavedl AAID o rok později, konkrétně tedy v roce 2014.
Nyní tato opatření čím dál více **expandují i mimo inzerci**. V Androidu 10 mají vývojáři stále relativně trvalé možnosti pro ID. Cílem je nastavit **větší rovnováhu **mezi schopností vývojáře sledovat uživatele a možností uživatele mít nad tímto sledováním nějakou kontrolu. „*Chceme umožnit uživatelům, aby mohli resetovat svá ID, nebudou-li chtít být nadále sledování*,“ říká D’Silva.
Mnoho změn v **Androidu 10** zvýrazňuje napětí, mezi snahou vytvořit platformu co nejflexibilnější a otevřenou a současně prosazující určité požadavky na bezpečnost a soukromí. D''Silva zdůrazňuje, že přechod na **resetovatelná ID** vyžadoval **rozsáhlou spolupráci** s výrobci a vývojáři.
## Nová omezení
Podobně Android 10 zavádí **nová omezení**, pokud jde o schopnost aplikací přecházet z **chodu na pozadí do popředí**. Pro příklad: aplikace s budíkem bude mít stále možnost upozornit vás spuštěným alarmem, ale pokud je již spuštěna jiná aplikace, nebude se moci budík zobrazit na **celou obrazovku**. Cílem je **omezit přerušení** a zejména nečekaná překvapení. Vývojářům však takové změny mohou připadat jako rozpad open source kořenů systému Android.
„Je *to o rovnováze, kterou se snažíme nastavit. Zajistit, aby vývojáři stále měli svobodu pro inovace a zároveň chránit uživatele*,“ říká D’Silva. „*Při rozhodování na toto téma se vracíme se tam a zpět. Ne vždy musíme mít pravdu, ale vždy zvažujeme oba aspekty*“.
### Šifrování
Jedna z nejvýznamnějších změn se mezitím uskuteční ještě hlouběji pod kapotou. Zajímat vás bude určitě to, jak Android 10 zvládne šifrování webu. Standardně povolí standard TLS 1.3 u všech připojení, která jej podporují. Nejedná se o věc, které byste si během surfování na webu všimli. Tato aktualizace však ukončí podporu zastaralých kryptografických algoritmů a zvýší bezpečnost, rychlost a efektivitu šifrování dat při přenosu.
Všechna nová zařízení uvedená na trh s Androidem 10 také zavedou implementaci šifrování disku. Tuto funkci zvládnou díky vlastnímu šifrovacímu schématu s názvem Adiantum, které Google vyvinul začátkem tohoto roku, aby zavedl silnější ochranu nesčetným zařízením Android na trhu. Adiantum je stále založeno na zavedených a prověřených šifrovacích schématech, ale implementuje je efektivněji, takže mohou běžet na jakémkoli zařízení. Produktům se starší verzí systému Android se prozatím doporučuje, ale nevnucuje šifrování zařízení.
„*Adiantum je pro nás opravdu velká změna – řekněme pětiletá cesta k přesunu celého ekosystému. A bude mít dlouhý konec,“* říká René Mayrhofer, vedoucí zabezpečení platformy Android (parádní rozhovor vyšel začátkem prosince na Lupa.cz). Nové verze Androidu nelze sestavovat od nuly. Ekosystém se staví na **starších chipsetech** a **jádrech** a ty jednoduše nejde vybavit zpětně **novým hardwarem** podporujícím šifrování.
Android 10 také přidává další **požadavek na šifrování**. Implementuje tzv. „*Šifrování založené na souborech*“ namísto starého schématu, známého jako „*šifrování celého disku“.* Šifrování založené na souborech, které bylo původně zavedeno v systému Android 7 Nougat, umožňuje zařízení **bootovat přímo na zamykací obrazovku**, aniž je vyžadovalo heslo.
To znamená, že služby přístupnosti a alarmy mohou začít fungovat, jakmile se **zařízení zapne**. Šifrování založené na souborech je také **bezpečnější** pro **zařízení používaná více lidmi** nebo s „*pracovním profilem*“, který odděluje profesionální a osobní aplikace a data.
• K tématu by vás možná mohlo zajímat o nebezpečích levných čínských smartphonů.
Opět díky tomu, že zařízení **nemusí být dešifrováno**, aby zobrazilo zamykací obrazovku. Místo toho může dešifrovat pouze data relevantní pro konkrétního přihlášeného uživatele poté, co byl telefon spuštěn.
Tým Androidu vydal nové **bezpečnostní knihovny** pro kodéry, založené na své současné práci se šifrováním souborů, aby je mohli začlenit do svých vlastních aplikací skrze nástroj **Jetpack development od Googlu**. Cílem je podstatně rozšířit výhody a pomoci vývojářům se **správným zabezpečením** jejich aplikací, i když nemají rozsáhlé znalosti v tomto oboru.
Tyto nástroje v kombinaci s ostatními vylepšeními zakomponovanými do Androidu 10 rovněž posílí ochranu v „*sandboxech*“, které chrání aplikace proti úniku dat, nebo získání oprávnění, které by neměly mít. Android 10 je dokonce navržen k využívání „*malých sandboxů*“, které individuálně oddělují systémové procesy a komponenty aplikací, které mají potíže se vzájemnou součinností nebo mají potencionálně zabugovaný kód.
„*Když se podíváme, kolik bugů máme hlášeno v každoročním programu na odměňování nalezených bugů, drtivá většina z nich je spojena s bezpečností paměti, nebo věcmi jako je třeba Bluetooth*,“ říká Xiaowen Xin, vedoucí produktový manažer pro bezpečnostní funkce Androidu. „*Tudíž zpřísňujeme přidávané možnosti rok co rok, protože to nelze dělat plošně. Je to iterační proces*.“
**Evoluce zabezpečení a ochrany soukromí** Androidu za víc než 10 let zcela přepracovala pozici systému v mnoha směrech. Avšak platforma natolik různorodá a přizpůsobivá jako Android, bude mít vždy **více slabostí**, na kterých bude třeba pracovat. Příklad je téma StrandHogg, slyšeli jste o něm?
„*Google bude vždy zavádět dobrá bezpečnostní opatření, která posílí Android,“* říká Nikolaos Chrysaidos, výzkumník mobilního zabezpečení a malwaru v Avast Antivirus. „Ale *v čem si myslím, že Android ještě zaostává, je kontrola a omezování nadužívání podezřelých nástrojů pro vývoj reklam. A Google Play obchod potřebuje je mnoho zlepšení ohledně kontroly podezřelých aplikací.“ *Ke slovům pana Chrysaidose se pěkně doplňuje to, co v závěru svém článku píše pan redaktor Kůžel na Mobilmania.cz , a to že Google Mobile Services dostanou od konce ledna 2020 už jen pouze telefony s Androidem 10.
Ačkoli vylepšení zabezpečení a ochrany osobních údajů v systému Android 10 jsou spíše o **odladění** než o **dramatických gestech**. Musíte ho ale zvládnout na jedničku. Zvláště ve chvíli, kdy na vaši práci spoléhá 2,5 miliardy lidí.
## Zdroje, ze kterých jsme čerpali pro tento článek:
• The Android 10 Privacy and Security Upgrades You Should Know About | WIRED. *WIRED*[online]. Copyright © [cit. 02.12.2019]. Dostupné z: https://www.wired.com/story/android-10-privacy-security-features/
• Android 10 | Android. *Android | The platform pushing what’s possible*[online]. Dostupné z: https://www.android.com/android-10/
• Best Android 10 features you should know about!. *Android Authority*[online]. Copyright ©2019 Android Authority [cit. 02.12.2019].
• 10 Android settings that''ll strengthen your security | Computerworld. *IT news, careers, business technology, reviews | Computerworld*[online]. Copyright © 2018 [cit. 02.12.2019].
• 10 things to know about Android 10. *The Keyword | Google*[online]. Dostupné z: https://www.blog.google/products/android/android-10/
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  '2019-12-02',
  true,
  7,
  'Bezpečnost uživatele na prvním místě – alfa a omega nového Android 10.'
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
  'statistiky-chybovosti-pevnych-disku-za-rok-2018',
  'Statistiky chybovosti pevných disků za rok 2018',
  'Cloudový poskytovatel Backblaze pravidelně zveřejňuje na svém blogu statistiku chybovosti pevných disků, které sama provozuje.',
  '## Navýšení kapacity úložiště
Rok 2018 byl pro Backblaze ve znamení migrace. Firma nahradila pevné disky s nízkými kapacitami 2, 3 a 4 TB za disky s vyšší hustotou záznamu 8, 10 a 12 TB, ve čtvrtém kvartálu přidala dokonce i 14TB disky. Celkem vyměnila 13 720 pevných disků a k tomu pořídila ještě dalších 13 389 pevných disků s vysokou kapacitou, čímž došlo k navýšení dostupného úložiště z 500 PB na 750 PB (petabytů). Pro lepší představu o počtu nových zařízení si představte, že technici museli v uplynulém roce zprovoznit přibližně 75 disků denně.
## Co se změnilo v roce 2018?
Backblaze už nevlastní žádné 4TB disky od výrobce Western Digital, pouze 383 kusů pevných disků WD s kapacitou 6 TB, jež mají ve společnosti 0,37% zastoupení. Firma sice sleduje mnoho disků značky HGST (Hitachi Global Storage Technologies), která spadá pod Western Digital Corporation, nicméně od WDC nepořizuje více disků z důvodu nevýhodné nákupní ceny.
**Psali jsme také k tématu výrobců disků:***Jakou značku pevného disku vybrat pro NAS úložiště**?*
Ve čtvrtém čtvrtletí firma přidala 1200 nových disků Toshiba 14 TB (modely s označením MG07ACA14TA) a stejný počet kusů disků HGST s kapacitou 12 TB (označení modelu HUH721212ALN604), které se v předchozím kvartálu velice osvědčily. Po jednom měsíci testování bylo zaznamenáno pouze jedno selhání. Mezi dalšími přírůstky je 6045 modelů 12TB disků Seagate ST12000NM0007. Nyní jich firma vlastní přesně 31 146 kusů, což představuje 29,7 % z celkového množství všech pevných disků.
**K tématu**: *Rockový kytarista Michal Pavlíček využíval také kdysi disky od Toshiby a to konkrétně **MK2002TSKB a 42D2KBDBFML4, paměť 2TB. Přečtěte si více o záchraně dat pro Michala Pavlíčka.*
## Porovnání dat v posledních 3 letech
Firma zaznamenává statistiky každý rok, a tak se rozhodla porovnat zastoupení všech disků v posledních třech letech. **Došla ke dvěma zjištěním. Jednak je z tabulky jasně znatelná migrace na disky s větší kapacitou a dále také zlepšení celkové roční míry chybovosti**.
Zatímco v roce 2016 byla hodnota AFR rovna 1,95 %, v roce 2017 došlo ke snížení na 1,77 % a v loňském roce se jednalo jen o 1,25 %. Naopak došlo k navýšení celkové sumy zařízení. V roce 2016 Backblaze vlastnil 71 940 kusů pevných disků, v roce 2017 to bylo 90 523 kusů a poslední suma za rok 2018 činí 104 778 zařízení.
### **Postřehy:**
• V roce 2016 byla průměrná velikost používaných pevných disků 4,5 TB. V roce 2018 vzrostla průměrná velikost disku na 7,7 TB.
• Míra poruchovosti disků v roce 2018 byla nejnižší, jakou kdy firma zaznamenala, a to pouze 1,25 %.
• Ani jeden ze 45 disků značky Toshiba s kapacitou 5 TB (konkrétně model MD04ABA500V) od 2. čtvrtletí 2016 neselhal.
• 10TB jednotky Seagate (model ST10000NM0086), kterých firma vlastní něco málo přes 1200, si drží slušnou hodnotu chybovosti AFR. V roce 2018 byla jen 0,33 %.
## Celoživotní statistiky
Porovnání počtu selhání pevných disků (tady najdete strukturovaný přehled typů poškození) za rok je přínosné, nicméně pro dlouhodobé použití je zajímavější statistika, která zahrnuje počet selhání všech disků za celou dobu jejich fungování. Backblaze tato data eviduje pro 15 různých modelů pevných disků od 20. dubna 2013 do konce roku 2018.
Nejmenší poruchovost měl 10TB model Seagate ST10000NM0086 s hodnotou AFR 0,46 %. Na druhé pozici se v těsném závěsu umístily 4TB pevné disky HGST HMS5C4040BLE640 s 0,46% mírou selhání.
Pokud by vás zajímaly detailnější materiály, z nichž se vycházelo v rámci zveřejněné statistiky chybovosti pevných disků (najdete přehledné tabulky s daty). A pokud máte statistik stále málo…Tak by vás finálně mohla uspokojit studie o extrakci dat z vyřazených disků a telefonů. Závěry ze studie jsou pikantní.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Cloudový poskytovatel Backblaze pravidelně zveřejňuje na svém blogu statistiku chybovosti pevných disků, které sama provozuje.'
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
  'jak-poznat-falesna-uloziste-a-softwarove-tipy-pro-jejich-detekci',
  'Jak poznat falešná úložiště a softwarové tipy pro jejich detekci',
  'Naši technici (Eda a oba Ondřejové) už mají poměrně bohatou praxi se záchranou dat z fake úložišť. Proto vznikl tento článek.',
  '## Jak je rozpoznat?
Fake paměťové zařízení se často tváří, že má **větší úložnou kapacitu, než jakou ve skutečnosti disponuje**. Parametry říkají, že USB disk má 32 GB, i když ve skutečnosti je to přetaktovaná 4 GB fleška.
• Připojíte zařízení k počítači a vše se zdá být v pořádku. Operační systém paměťové médium rozpozná a zobrazuje se deklarovaná (ale zde už pozor falešná) kapacita. Jakmile se však pokusíte např. na takový 32 GB disk zapsat soubor větší, než je 4 GB (reálná kapacita média), systém vás varuje, že pro zápis souboru na disku není dostatek paměti.
• Dále padělek od skutečného produktu poznáte dle **přenosové rychlosti, která je nižší, než by měla být**.
• A když už budete vědět, na co se dívat, tak se samozřejmě šetřilo i po vizuální stránce. Použité **materiály vypadají lacině** a dají se od sebe snadno oddělit i bez zásahu speciálních nástrojů. Tělo falzifikátu je vyrobeno z levného plastu a **vnitřní součástky jsou taktéž nevalné kvality**.
## Software pro analýzu falešných paměťových zařízení
Pokud si nejste jisti, zda držíte v ruce originální produkt, nebo padělané zařízení, můžete vyzkoušet software určený k analýze zařízení pro ukládání dat. Existuje několik různých nástrojů, které vám pomohou rychle a snadno odhalit pravost pevného disku, flash disku, SSD nebo paměťové karty.
### Důležitá doporučení při testování:
Než začnete s testováním zařízení, proveďte zálohu všech důležitých dat, která se nachází na podezřelém zařízení. Úložné zařízení by se mělo otestovat alespoň dvakrát, pro jistotu raději použijte dva různé programy. Paměťové médium můžete vyzkoušet sami tím, že ho zaplníte velkými soubory, abyste zjistili, zda inzerovaná velikost odpovídá realitě.
#### Check Flash
Bezplatný program pro kontrolu rychlosti čtení a zápisu připojených disků. Software vám pomůže s odhalením upravených vlastností diskových oddílů nebo s uložením a obnovou hlavního zaváděcího záznamu MBR (Master Boot Record). Dále dokáže spustit povrchové skenování nebo vyčistit celý disk a diskové oddíly. Všude ve světě se dočtete, že tento program patří mezi nejrychlejší ze všech, budiž.
#### ChipGenius
Jednoduchá aplikace (není nutná instalace), která uživateli zobrazí všechny dostupné informace o připojeném USB zařízení. Program je určen ke zjištění detailů, které jsou potřebné k opravě poškozených flash disků, nicméně dobře poslouží i pro zobrazení detailních vlastností hardwaru - verze USB protokolu, aktuální rychlost, čísla VID a PID (identifikační číslo výrobce a identifikační číslo zařízení), sériové číslo, model zařízení a další, včetně dodavatele čipu, čísla čipu CPU a flash ID kódu.
#### H2testw
Program dokáže vyhodnotit, zda jsou data na disku přepsána bezpečně, což se může hodit například při prodeji zařízení. Rychlost softwaru bohužel není příliš vysoká – může to trvat i několik hodin.
• Odkaz ke stažení: https://www.heise.de/download/product/h2testw-50539
#### RMPrepUSB
Nástroj pro vytvoření bootovacího (zaváděcího) USB zařízení. Obsahuje praktický rychlý test, který ověří kapacitu připojeného zařízení. Provedením testu odstraníte všechna data uložená na disku – záloha je tedy nutná.
• Odkaz ke stažení: https://www.rmprepusb.com
#### BurnIn Test
Program otestuje skutečnou kapacitu USB jednotky a navíc vám řekne, zda má disk schopnost ukládat a obnovovat data bez poškození. Dále jej lze použít k ověření správnosti zápisu a čtení velkého množství dat s detekováním nadměrné kapacity či nevyhovující rychlosti procesu.
• Odkaz ke stažení: https://www.passmark.com/support/bit_fake_USB_detection.php
#### USB Memory Stick Tester
Malá open source aplikace určená pro testování vyměnitelných paměťových médií (například USB flash disků) a zjištění případných závad. Appku je možné využít k zapsání dat na zařízení a ověření správnosti operace.
• Odkaz ke stažení: https://usbmst.sourceforge.net
## Zajímavé odkazy k dalšímu prostudování
• Odhalení telefonu tvářícího se jako Xiaomi mi4 (hodně detailní a se doplňujícími fotografiemi)
• 11 znaků podezřelého internetového obchodu
• Jak poznat levné SD karty z eBay?
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Naši technici (Eda a oba Ondřejové) už mají poměrně bohatou praxi se záchranou dat z fake úložišť. Proto vznikl tento článek.'
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
  'ctecky-otisku-prstu-u-mobilu-a-jejich-bezpecnost',
  'Čtečky otisků prstů u mobilů a jejich bezpečnost',
  'Z biometrických metod jsou velmi oblíbené čtečky otisků prstů. Odemknutí telefonu dotykem prstu se považuje za vyšší stupeň zabezpečení.',
  '## Jak chránit data v telefonu?
Nejpoužívanějším operačním systémem mobilních telefonů je OS Google Android. Internet je plný rad a návodů, **jak zabezpečit mobilní telefony s Androidem****– **my také jeden píšeme (a pravidelně ho aktualizujeme). Existuje hned několik různých možností, mezi něž spadá přihlašování pomocí hesla, PINu či gesta. Jedním z novodobých způsobů zabezpečení smartphonů jsou **biometrické autentizační systémy**, které se nabízejí téměř ve všech novějších přístrojích. Způsobů je hned několik: heslo, PIN nebo gesto. Čím dál větší oblibě se také těší telefony, které se dají odemknout otiskem prstu nebo díky rozpoznání obličeje majitele.
## Co je biometrie?
Biometrie je metoda založená na rozpoznání oprávněného uživatele podle naskenování části jeho těla. V tomto případě smartphone pozná majitele prostřednictvím speciálních senzorů, které snímají otisku prstu, skenují oční duhovku anebo identifikují hlas osoby. **Čtečky otisků prstů** jsou z uvedených biometrických metod nejpopulárnější a údajně také nejlepší, co se týká zabránění neoprávněného přístupu k mobilnímu zařízení. Oproti běžnému zámku obrazovky se odemknutí telefonu dotykem prstu považuje za vyšší stupeň zabezpečení.
K hlavním výhodám patří to, že biometrické údaje, jako je struktura obličeje nebo pokožky na prstech, máme stále stejné. Tedy za předpokladu, že se nám nestane nějaká zásadní nehoda.
Jsou ale snímače otisků prstů skutečně tak bezpečné, jak se uvádí? Není **význam biometriky** přeceňován a nebylo bezpečnější pamatovat si PIN? Když vezmeme v úvahu, že telefon skenuje jen část otisku prstu, protože čidlo na něm je menší než celý „polštářek“ skenovaného prstu, začíná to být hodně zajímavá úvaha. Odborníci v New Yorku a Michiganu testovali zabezpečení telefonů pomocí společných rysů otisků prstů a dokázali bez majitelů odemknout 65 % zkoušených mobilů!
## Jak fungují čtečky otisků prstů?
Existuje několik různých technologií, které se používají pro snímání otisků prstů. Starší mobilní telefony využívají **optické skenery**. Po přiložení prstu na senzor se získá jeho obraz, který se pomocí speciálních algoritmů analyzuje. Optický snímač vyhledá na fotografii světlá a tmavá místa představující prohlubně a výstupky prstu, tzv. kožní papilární linie. Čím je pořízená fotografie prstu detailnější, tím přesněji je možné rozpoznat majitele smartphonu. Jelikož přiložený prst zabraňuje přístupu světla k senzoru, pro pořízení obrázku musí disponovat osvětlovacími diodami. Optické čtečky jsou sice levné, ale bohužel nejsou příliš spolehlivé. Obraz se zachycuje jen ve 2D podobě, takže je možné je snadno oklamat například otiskem prstu vytisknutým na tiskárně.
Senzory otisků prstů v moderních smartphonech na trhu používají **kapacitní skenery**. Tato metoda je založena na uchování elektrického náboje ve shluku drobných kondenzátorů, které jsou schopny po přiblížení prstu ke snímači velice přesně zjistit tvar papilárních linií. V místě výstupků dojde v kondenzátoru ke změně náboje, naopak v případě prohlubní zůstane elektrický náboj nezměněn. Získaná data se převedou z analogového signálu na digitální a porovnají se záznamem majitele přístroje. Kvalitu a tedy i bezpečnost kapacitní čtečky ovlivňuje počet kondenzátorů ve snímači. Základní modely obsahují stovky kondenzátorů, pokročilejší varianty i několik tisíc. Kapacitní senzory jsou v porovnání s optickou metodou o poznání bezpečnější, jsou však i podstatně dražší.
Poslední dostupným druhem jsou **ultrazvukové skenery**, představují zatím nejpokrokovější technologii pro snímání otisků. Chytré mobilní telefony mají senzor integrován do displeje, jenž je vybaven ultrazvukovým vysílačem a přijímačem. Po přiložení prstu se vyšle ultrazvukový signál, který rozpozná papilární linie podle paprsku odraženého zpět k senzoru. Čím déle člověk prst drží na snímači, tím detailnější otisk prstu je možné získat. Tato metoda je rychlá, spolehlivá a je možné ji využít, i když máte mokré nebo špinavé ruce. Ultrazvukové čtečky již jsou dostupné na trhu.** Verzi od společnosti Qualcomm** můžete najít v několika nových high-end zařízeních vybraných výrobců.
Dobrému zabezpečení v tomto případě nahrává i to, že pokud máte prst mastný nebo mokrý, nemusí vás čtečka testem pustit dál a odemknout telefon.
## Jsou biometrické čtečky bezpečné?
Biometrický systém, který se původně zdál být spolehlivou záležitostí, je bohužel nejspíš překonán. Otisk prstu člověka je sice unikátní, ale jeho rysy mohou být u lidí dost podobné. A jelikož čtečky pro rozpoznání otisků prstů jsou menší než samotný prst, pro ověření přístupu k zařízení jim stačí najít shodu pouze u části papilárních linií na bříšku prstu. Tak vznikají **falešné otisky prstů**.
Vědci už dokonce vyvinuli systém DeepMasterPrints založený na principu **neuronových sítí**, který podle skutečných otisků prstů vygeneroval umělé vzorky. S jeho pomocí se dokázali nabourat do zařízení s úspěšností až 77 %. Když vezmeme v úvahu, že některé smartphony (například Apple iPhone) mají neomezený počet pokusů pro odemknutí přístroje, potencionální útočník by mohl metodou pokus-omyl zabezpečení velmi snadno prolomit.
## Jdou zfalšovat biometrické údaje?
I když obejít uvedený typ zabezpečení není nic jednoduchého, v praxi se bohužel objevilo několik pokusů obelhat čtečky biometrických údajů. Padělají se nejen otisky prstů, ale dokonce celé ruce. Dvěma hackerům z Německa se podařilo zmást čtečky společností Hitachi a Fujitsu obyčejným **modelem voskové ruky**, jejíž výroba trvala 15 minut.
Krádež citlivých údajů o vaší osobě může proběhnout i na dálku. Některé levné notebooky mají nedostatečné šifrování dat, takže útočník může **otisky** **ukrást **přímo z počítače, v němž jsou uloženy na disku. Pokus, který se zdál být ve finále hodně úspěšný, přitom vyšel na 25 amerických dolarů.
• *K tématu šifrování dat jsme už v minulosti psali – **Android a šifrovaní**. *
• *K tématu levných produktů jsme už psali o **nebezpečí levných čínských smartphonů**.*
Společnost Forbes nedávno uskutečnila zajímavý test, který měl ověřit úroveň zabezpečení smartphonů s funkcí rozpoznání tváře. Výsledek byl překvapivý.
Mobilní telefony s operačním systémem Android odemkl** trojrozměrný model obličeje** vytisknutý na 3D tiskárně, zatímco **smartphony iPhone X** v testu obstály na výbornou. Důvodem jsou různé použité technologie. Společnost Apple investovala mnoho času do vývoje vlastního systému Face ID, který pro ověření obličeje vytváří detailní hloubkovou mapu. Na druhou stranu mobilní telefony Android nabízí pouze základní levnější alternativu skenování tváře.
Test proběhl na 110 telefonech a 40 % telefonů s Androidem se podařilo snadno obalamutit.
## Jaké zabezpečení používat?
Musíme si uvědomit, že žádné řešení není stoprocentně bezpečné. Nikdy bychom neměli přístupové údaje dávat nikomu cizímu, ať už osobně nebo je odesílat elektronicky přes SMS nebo e-mail. Pro ověření totožnosti jedince se doporučuje používat **dvoufázové ověřování**, což je kombinace biometrického údaje se silným heslem. Radši hned dodáváme, že hojně používané „12345“ není silné heslo. Pro klid duše se určitě vyplatí data na telefonu pravidelně zálohovat, protože nikdy nevíte, co se může stát a kdo vám může zařízení odcizit.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Z biometrických metod jsou velmi oblíbené čtečky otisků prstů. Odemknutí telefonu dotykem prstu se považuje za vyšší stupeň zabezpečení.'
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
  'studie-o-extrakci-dat-lide-nechavaji-v-pouzitych-pocitacich-a-mobilech-citliva-data',
  'Studie o extrakci dat: lidé nechávají v použitých počítačích a mobilech citlivá data',
  'Lidé nechrání dostatečně své soukromé informace. Jak dokazuje nedávný experiment.',
  '## Jaká paměťová zařízení zakoupil?
Navštívil 31 podniků a ukořistil celkem 85 různých zařízení, za které zaplatil 600 dolarů, což je v přepočtu zhruba 13 tisíc korun. Jednalo se o 41 stolních nebo přenosných počítačů, 27 vyměnitelných médií (například flash disky a paměťové karty), 11 pevných disků a 6 mobilních telefonů.
Uvnitř zastaralých pevných disků a telefonů, které byly vyrobeny v době, kdy bylo cloudové úložiště ještě v plenkách, se mohly s největší pravděpodobností nacházet kopie fotografií, textů a
e-mailových konverzací, případně jiný důvěrný materiál. Aby Frantz skutečně zjistil, zda je možné ze zakoupených zařízení získat jakékoliv původní soubory, pustil se do procesu extrakce dat.
## Jak ze zařízení získal data?
### Počítače
U stolních počítačů a notebooků nejprve zkoušel, zda po spuštění vyžadují nějaké heslo. Poté na ně aplikoval skript napsaný v prostředí PowerShell, který procházel paměť a indexoval všechny obrázky, dokumenty, uložené e-maily a historie konverzací instant messengerů. Roztříděná data uložil do archivu a extrahoval prostřednictvím USB flash disku do svého počítače k dalšímu zkoumání. Data se mu nepovedlo získat pouze u jednoho notebooku značky Dell.
### Pevné disky
U harddisků postupoval obdobně. Jelikož většina z nich využívala rozhraní IDE (Ultra ATA), vložil je do speciální IDE dokovací stanice na harddisky a data z nich začal hromadně vysávat a třídit tentokrát pomocí Python skriptu. Zjistil, že ani jeden disk nebyl zašifrován a všechny očividně fungovaly správně. Výjimkou byl pouze jeden starý pevný disk s kapacitou 20 GB od Hitachi, jehož obsah na plotnách byl vymazán korektně.
• **Mohlo by vás dále zajímat k tématu:**Víte, jak zjistit aktuální stav HDD?
### Mobilní telefony
Zakoupené telefony byly velmi staré, a proto si pro jejich nabití musel Frantz pořídit z internetového obchodu eBay tři různé proprietární nabíječky. To navýšilo náklady o dalších 50 dolarů (cca 1000 Kč). Mobilní telefony nevyžadovaly PIN, nicméně u některých nemohl pro jejich zastaralost najít software, aby je propojil s počítačem a vytáhl z nich potřebné informace.
### Flash disky a paměťové karty
Tyto druhy paměťových úložišť stačilo připojit k počítači a pro třídění dat opět spustit Python skript.
• **Mohlo by vás dále zajímat k tématu:**Víte, jaká je životnost paměťových karet?
## Jak probíhalo zpracování dat?
Následovalo skenování elektronických dat ze všech zakoupených paměťových médií nástrojem Python, jenž je založen na optickém rozpoznávání znaků (OCR). Nástroj pomocí regulárních výrazů vyhledával citlivé informace, jako jsou e-mailové adresy, data narození, údaje o kreditních kartách, čísla řidičských oprávnění, pasů a další.
**Celkový počet zpracovaných souborů**:
• **214 019** obrázků (soubory s příponami JPEG, TIFF, GIF, BMP, PNG, BPG, SVG)
• **3 406** dokumentů (soubory s příponami DOC, DOCX, PDF, CSV, TXT, RTF, ODT)
• **148 903** e-mailů (soubory s příponami PST, MSG, DBX, EMLX)
## Co odhalil výsledek experimentu?
I když metoda OCR není 100% přesná, neboť některá data není možné adekvátně extrahovat z obrázků nebo PDF souborů, používané regulární výrazy pro zjištění citlivých informací jsou poměrně detailní. Ukázalo se, že použitá elektronika obsahuje velké množství soukromých údajů, které patří jejich bývalým majitelům, a to včetně osobně identifikovatelných informací (PII). Čísla kreditních karet často překvapivě pocházela z naskenovaných obrázků, kde byla rozpoznána přední anebo zadní strana karty.
**Počet nalezených citlivých údajů**:
• 611 e-mailových adres
• 50 dat narození
• 41 čísel sociálního zabezpečení SSN (obdoba čísla občanského průkazu, které se používá v USA)
• 19 čísel kreditních karet
• 6 čísel řidičských průkazů
• 2 čísla cestovních pasů
**Experiment ukázal, že pouze dvě zařízení z celkového počtu 85 byla vymazána správně, a to jeden notebook Dell a jeden pevný disk Hitachi. Zašifrována byla pouze tři média ze všech testovaných**. Frantz sice neposuzoval, zda-li některý z dokumentů nebo obrázků mohl mít jakoukoli hodnotu použitelnou pro vydírání, obecně se ale dá říci, **že** **získání citlivých údajů ze starých paměťových úložišť je finančně nákladnější, než jejich prodejní cena na černém trhu**.
• **K tématu šifrování jsme už psali**: Šifrovat, nebo ne v případě mobilů s Androidem?
## Závěr
Frantz zjištěné poznatky zveřejnil na svém blogu, aby tak zvýšil povědomí o nedostatečném odstraňování citlivých informací z pevných disků, počítačů a mobilních telefonů. Pokud svou elektroniku chcete někomu darovat nebo prodat, měli byste si obsah zařízení smazat sami a nespoléhat se na to, že to za vás udělá nový majitel. Krádeže identity jsou v dnešním elektronickém světě bohužel běžnou záležitostí, tak nedávejte příležitost případným podvodníkům.
## Jak nadobro smazat citlivé údaje?
Pro vymazání informací z počítačů, telefonů a tabletů existuje několik různých postupů. Nikdy však nemáte jistotu, že bude proces odstranění dat nevratný. Klasickým smazáním, případně naformátováním paměti, data sice neuvidíte, ale to neznamená, že se nedají obnovit.
Z tohoto důvodu doporučujeme staré přístroje fyzicky zlikvidovat, tedy je poškodit tak, aby se data v paměti už nikdy nedala přečíst (pokud jste se tak skutečně rozhodli, že už o daná data nestojíte). Mluvíme o poškození například kladivem, vrtačkou, spálením, rozdrcením, mikrovlnami, termitovou reakcí apod. Při likvidaci elektroniky některou z uvedených metod je třeba dodržet bezpečnostní opatření, aby nebyl nikdo zraněn.
Pokud vám přece jen stačí data smazat, pro pevné disky bez polí RAID údajně dobře funguje aplikace DBAN. Pro harddisky s RAID nebo SSD můžete vyzkoušet systém Parted Magic.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Lidé nechrání dostatečně své soukromé informace. Jak dokazuje nedávný experiment.'
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
  'poskozeny-hdd-do-lednice',
  'Poškozený hdd nebo ssd do lednice?',
  'Pevný disk přestane fungovat. Všechny informace a soubory na něm uložené jsou rázem nedostupné. Co uděláte?',
  '## Internet je plný „zaručených“ odpovědí
Zoufalí uživatelé na mnoha webových stránkách najdou jednoduché řešení, jak zachránit poškozený HDD. Návody uvádějí, že zaseknutý harddisk stačí zchladit, tedy umístit na nějakou dobu do lednice. „Proč ne?“ řekne si nezasvěcený jedinec a vloží pevný disk do lednice, nebo ještě hůře do mrazáku. A to je chyba. **Nefunguje to, elektroniku ještě více poškodíte**.
• **K tématu:**Víte, jak poznáte stav vašeho HDD?  A začátkem roku 2019 tu byl zajímavý experiment o extrakci dat z vyřazených paměťových médií. A víte, jaký byl závěr experimentu?
## Kdy (teoreticky) může pomoci dát disk do lednice?
Abychom uvedli informaci na pravou míru, zmrazení pevných disků fungovalo... kdysi dávno. Staré typy pevných disků trpěly mechanickou závadou, kdy se čtecí hlava při přehřátí zasekávala na čtecím obvodu. Ochlazením zařízení se čtecí hlava uvolnila, jinými slovy se odlepila od plotny, na níž se zasekla. **Takže ano, nefunkční pevný disk můžete umístit do lednice, ale jen pokud vlastníte několik desítek let starý model**, jehož maximální kapacita činí několik MB nebo GB dat.
Zchlazení „archaického“ elektromechanického zařízení **se doporučuje využít pouze jako poslední možnost v nevyhnutelných situacích**, kdy nemáte k dispozici žádnou zálohu dat, které jsou uloženy na onom nefunkčním harddisku. Pokud tak učiníte, vložte disk nejprve do vodotěsného obalu, jinak se s ním můžete rovnou rozloučit. Disk vložte na několik hodin do ledničky, čímž na chvíli obnovíte jeho funkčnost. Tento krátký čas rychle využijte ke zkopírování všech souborů, než disk zcela odejde na věčné časy.
## Zálohování je klíčem k úspěchu
**Novodobé disky do ledničky nevkládejte**. U moderních pevných disků se totiž nemůže stát, že by se čtecí hlava (přečtete si, jak se nám podařilo zachránit data krásných mladých fashion bloggerek, které měli také problém se čtecí hlavou na disku) na plotně zasekla. Stejně tak to nezkoušejte ani u jednotek SSD, neboť neobsahují žádné pohyblivé součásti. Žádná elektronika nefunguje 100% napořád, a proto předcházejte podobným problémům pravidelnou zálohou souborů.
### Další zajímavé zdroje k tématu:
• 3 roky starý článek z PC Worldu, kde je součástí obsahu i 11 minut videa s pokusem (bez titulků) od americké společnosti ACS Data Recovery.
• Článek (v češtině) z roku 2008 bloggera, který dosti detailně popisuje, jak mu záchrana v mrazáku zafungovala. Přikládáme jen čistě pro zajímavost.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Pevný disk přestane fungovat. Všechny informace a soubory na něm uložené jsou rázem nedostupné. Co uděláte?'
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
  'studie-od-blancco-android-a-ios-za-1-ctvrtleti-2018',
  'Studie od blancco: android a ios za 1. čtvrtletí 2018',
  'Občas člověk narazí na velmi zajímavé údaje. Tak jsme si udělali čas a vyzobali něco do češtiny.',
  '## Většina výrobců Android zařízení používá pro bezpečné mazání dat aperiodické náhodné přepsání
Zaregistrovali jsme, že Android zařízení (zejména starší přístroje) vyžadují složitější postup pro smazání citlivých dat. V posledním čtvrtletí jsme zjistili, že 67,2 % mobilních výrobců, s nimiž pracujeme, používá pro Android zařízení náš navržený standardní postup pro mazání dat: **aperiodické náhodné přepsání ***(aperiod random overwrite)*.
V 1. čtvrtletí roku 2018 se toto číslo zvýšilo na 74,2 %, což ukazuje, že výrobci, s nimiž spolupracujeme, používají bezpečné metody mazání dat. Nicméně, 6 % Android zařízení stále používá nespolehlivé metody, jako je **tovární nastavení (factory reset)** a **Android smart reset.** Tyto metody nedoporučujeme, protože mnoho Android zařízení není ve výchozím nastavení šifrováno, takže data se nesmažou.
• Android vs. iOS? Kdo v čem je lepší x horší?*Trochu jsme to studovali v minulých psaních. Bacha, článek pěkně dlouhý :-)*
Zařízení s iOS primárně mažou data pomocí zabudovaného mazání iOS od společnosti Apple, což je naše navržená metoda pro rychlé a efektivní mazání dat u těchto zařízení.
## Sluchátka / mikrofony způsobují pohromu v iOS i Android zařízeních ve výrobních střediscích
Níže uvedený graf zobrazuje nejběžnější diagnostické testy, které probíhají na iOS a Android zařízeních po celém světě. Porovnejte tyto běžné testy s největšími poruchami, které diagnostika odhaluje. Testování podsvícení displeje a podání barev, testování reproduktorů a nabíjení akumulátorů se používá téměř po celé přístrojové desce.
*
Přestože nebyly mezi deseti nejčastěji testovanými diagnostickými problémy, Android i iOS zařízení zaznamenala problémy s mikrofony a sluchátky.
• *Mohlo by vás bavit k tématu:*Nejčastější způsoby, jakým si lidé ničí své smartphony.
Android zařízení selhala v testu z 3,22 %, zatímco iOS zařízení ve 4,44 %. Mobilní výrobci a zejména prodejci by měli tento problém sledovat a zvážit jeho přidání do seznamu diagnostických testů, pokud tam již není standardně zahrnut.
Znepokojující je však skutečnost, že 13,75 % testovaných Android zařízení selhalo v testování key menu, přestože tento problém byl nejméně pravděpodobný (tvoří pouze 4,5 % testů).
• *Mohli by vás zajímat k tématu:*Víte, co okamžitě podniknout za první kroky, když ztratíte telefon?
## Zákazníci Androidu si stěžují ve větší míře než uživatelé iOS
Android zařízení stále dominují na trhu s více než 60 %. Tato zařízení přinesená do maloobchodních prodejen a testování, které používá diagnostiku od společnosti Blancco, ukázaly nedostatky v našem testování výkonu, u našich testů to bylo asi 19 %, u iOS kolem 15 %.
Největší potíže se svým zařízením měli zákazníci v Evropě: přes 30 % testovaných zařízení. V Asii mělo problém s výkonem 86,7 % testovaných iOS zařízení. Zdá se, že asijští zákaznícu neváhají svůj telefon reklamovat, anebo maloobchodní prodejci provádějí více diagnostických testů.
### Žádné překvapení: iPhone 6 a 6S patří mezi nejhorší iOS zařízení
Stejně jako podle posledních čtvrtletních mobilních hlášeních, patří Apple iPhone 6 a 6S stále mezi nejhorší-výkonné iOS modely, asi 22 % a u 16 % byly nutné opravy na základě diagnostických zjištění.  Zatímco u zařízení iPhone 6 se poruchovost stabilně pohybuje mezi 20-26 %, u modelů iPhone 6S, které byly rovněž přineseny k opravě, poskočila z 11 % v 1. čtvrtletí 2017 na 16 % v 1. čtvrtletí roku 2018.
### Problémy s Bluetooth obtěžují zákazníky se iOS zařízeními
Řada mobilních zařízení, která byla uvedena do maloobchodních prodejen v 1. čtvrtletí roku 2018, měla především problémy s Bluetooth, Wi-Fi a sluchátky.
Zajímavé je, že ani jeden z prvních pěti problémů v 1. čtvrtletí roku 2017 není uveden mezi problémy v 2. čtvrtletí roku 2018, i když problémy s technologií Bluetooth a Wi-Fi byly na předních místech ve 4. čtvrtletí 2017. Zdá se, že se za rok toho hodně změnilo!
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Občas člověk narazí na velmi zajímavé údaje. Tak jsme si udělali čas a vyzobali něco do češtiny.'
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
  'proc-a-jak-rootovat-android',
  'Jak rootnout android?',
  'K čemu je to užitečné a jak ho provést? Praktická využití a možná nebezpečí? Vše se dozvíte v tomto článku.',
  '## **Zakázané jablko oprávnění**
To, že je konkrétní telefon rootnutý, je jen zjednodušené označení toho, že uživatelský účet má udělena nejvyšší oprávnění operačního systému. **Běžné oprávnění** udává uživateli možnost prohlížet, vytvářet, měnit a mazat data v telefonu. Avšak pouze **ve vymezených souborech a adresářích**. A stejně tak mají tato oprávnění i uživatelovy aplikace.
S hodně velkou nadsázkou by se dalo říct, že je to jako v restauraci, kde vám z kuchyně donesou jakékoliv jídlo, které si objednáte. Jakmile máte jídlo na svém stole, můžete si s ním dělat, co chcete. Nesmíte však nikdy do kuchyně. Nesmíte se podívat, z čeho a jak kuchař vaří. Nemáte k tomu oprávnění.
• **Mohlo by vás též zajímat:**Jak obnovit ztracené kontakty v Androidu? Verze 10 přináší nové změny v oprávnění. Přečtetě si jaké.
## **K čemu je oprávnění root užitečné**
Na uvedeném příkladu s restaurací a kuchyní lze také srozumitelně vysvětlit, jaké možnosti skýtá **nejvyšší oprávněn**í uživatele, tedy root. Najednou smíte vstoupit do kuchyně, a pokud víte jak, můžete pokrm vylepšit dle svých chutí. Jídlo vám pak může více chutnat, ale pokud nevíte přesně, co děláte, můžete vytvořit nepoživatelnou šlichtu, nebo dokonce něco nenávratně zničit.
Vraťme se tedy k našim Androidům. Jakmile se nám podaří získat pro svůj uživatelský účet nejvyšší oprávnění, **můžeme v operačním systému vytvářet, měnit a mazat všechna data ve všech adresářích**. Proč ale nemá uživatel přístup ihned po prvním spuštění telefonu?
## **Ve svěrací kazajce pro vlastní bezpečí**
Protože výrobci mobilních telefonů dbají na bezpečí svých zákazníků (na tohle téma jsme nedávno psali o výrobcích telefonů z Číny). Tedy alespoň většina, neb jak jsme psali v jednom z našich článků, i mezi výrobci telefonů se výjimečně najdou ti, kteří uvedou na trh zavirovaný telefon. Ale zpět k tématu.
Stěžejním důvodem proč telefony od výroby nedávají uživateli oprávnění root je to, že pak **nemohou toto oprávnění získat ani jeho aplikace**. Nemůže se tedy stát, že kdejaká „apka“ si jednoduše a nepozorovaně začne dělat, co chce v naší Androidí „kuchyni“. Především nahlížet do osobních účtů, využívat placené služby či jiné neřesti. Dalším důvodem je to, aby ve své neodbornosti **uživatel nedopatřením telefon nezničil**.
## **Praktická využití rootu**
Nyní se dostáváme k tomu, co je na rootu nejzajímavější a to je jeho využití. Pro začátek jsou zde možnosti některých stahovaných aplikací, které bez rootu mají omezenou funkčnost. Nejčastěji to bývají funkce **pokročilého zálohování dat**, změny systémových nastavení za účelem **zvýšení výkonu****či prodloužení výdrže baterie**.
• Zálohovat na Androidu, to je jedním z našich 7 tipů na lepší zabezpečení systému. A k tématu telefonních baterií jsme psali taktéž nápovědný článek.
V neposlední řadě nové možnosti změny vzhledu celého uživatelského prostředí. Pokročilejší uživatelé potřebují root, aby mohli použít ještě mocnější nástroje, jimiž jsou alternativní **Recovery**. Pro jednoduchou představu je to prostředí, které běží mimo uživatelské prostředí Android. Uživatel se do něj musí přepnout ihned po zapnutí telefonu, ještě před tím, než najede samotný systém Android.
Zde pak může všechno v telefonu smazat nebo naopak **vytvořit kompletní zálohu celého systému včetně všech dat**. Výsledná záloha neboli obraz, může mít později cenu zlata, dojde-li nějaké nepříjemné situaci. Může také provádět flash instalace od binárních souborů či malých aplikací až **„flashnutí“ ROM a úplně jiné verze operačního systému**. K využití alternativní Recovery je však zapotřebí ještě odemknutí Bootloaderu, což by však vyžadovalo samostatný článek.
## **Nebezpečí rootu**
Rizika spojená s oprávněním root jsou nasnadě. Špatný zásah do těch nesprávných souborů mohou vést k „**Bricknutí**“ telefonu, tedy ve volném překladu k vytvoření drahého těžítka. Někdy se může jednat o poškození vratné, v případě, že telefon spustí alespoň Recovery, nebo i bez zjevných známek života stále komunikuje alespoň skrz USB. Bohužel někdy se může jednat i o nevratnou „totálku“.
I když si uživatel sám telefon nepoškodí, **může se stát terčem podvodných aplikací**. Ty by mohly využít rootu ve svůj prospěch a nenápadně získat přístup k citlivým údajům uživatele. V neposlední řadě **s rootem automaticky telefon ztrácí záruku výrobce**.
## **Kdy je root ku prospěchu a kdy je na škodu**
Každý by měl zvážit před rootováním svého telefonu především tyto základní otázky: *„je pro mě root přínosem, nebo jen rizikem bez užitku*?“ V zásadě lze říci, že telefony, které ještě jsou v záruce a všechny své funkce plní bez ztráty kytičky, root prostě nepotřebují**. Root nabízí nové možnosti** buď tam, kde výrobce šetřil na vývoji a **optimalizaci své vlastní verze Androidu** anebo tam, kde již zavřel dveře softwarové podpoře a **aktualizacím**. Právě zde je root nepostradatelný díky komunitě nadšených vývojářů, kteří se snaží potenciál různých telefonů využívat naplno díky **kompilaci nových ROM** založených na nových anebo vylepšených verzích Androidu. Rovněž je root určen pro nadšence, kteří záruka, ne záruka chtějí využívat pokročilých možností, které root přináší.
## **Jak provést root Androidu**
Nyní se dostáváme k tomu, jak vlastně takový root operačního systému Android provést. Potíž je v tom, že **jediný univerzální návod neexistuje**, neboť každý výrobce, ba dokonce i různé modely od jednoho výrobce mají postup specifický. V obecné rovině však lze popsat asi takto.
V zásadě existují dvě cesty jak dosáhnout oprávnění root. Tou první a snazší je **použití některé z aplikací**, které všechny práce odedřou za nás. Nejznámějšími aplikacemi s nejširším portfoliem podporovaných zařízení jsou například KingoRoot, BaiduRoot, One Click Root, Towelroot. Některé z nich vyžadují připojení kabelem k PC s nainstalovanou aplikací, jiné fungují samostatně v telefonu s využitím cloudu. Jediné co uživatel musí udělat, je ověření, která aplikace podporuje právě jeho telefon s konkrétní verzí systému Androidu.
XDA
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'K čemu je to užitečné a jak ho provést? Praktická využití a možná nebezpečí? Vše se dozvíte v tomto článku.'
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
  'jak-na-zalohu-a-obnovu-dat-ve-windows-7',
  'Jak na zálohu a obnovu dat ve windows 7',
  'Umíte si představit, že byste přišli o všechny soubory, které máte uložené na počítači?',
  '## Kam zálohovat?
V prvním kroku průvodce je třeba zvolit cílové místo pro uložení zálohy. Doporučujeme zálohu ukládat na jiný disk, než máte nainstalovaný operační systém Windows. Externí disk je pro tyto účely ideální volba, ale může se jednat i o externí nosič CD, DVD atd. Jestliže jste paměťové médium zapojili či vložili až při vybírání cíle, pro jeho zobrazení v seznamu obnovte dialogové okno. Disk vyberte a přejděte na další krok.
**-  Fotíte rádi a často? Podívejte se kam ideálně zálohovat fotky (v článku najdete i zálohovací mindset spolumajitele DataHelpu, Aleše Wagnera, též náruživého fotografa)**
## Jak zálohovat?
Po výběru cíle pro zálohování se vás systém zeptá, zda chcete zálohování automatické nebo manuální. U první možnosti počítač sám rozhodne, u kterých dat se provede kopie. Abyste měli přehled o tom, která data byla zálohována a která nikoliv, je lepší si vybrat druhou variantu a vybrat si ručně, co se bude zálohovat.
## Co zálohovat?
V dalším kroku nastavení vás čeká výběr konkrétních složek určených k záloze. Nezapomeňte ve spodní části okna zaškrtnout políčko pro vytvoření bitové kopie celého systému. Tato možnost se vám může hodit, když dojde ke znehodnocení pevného disku. Bitová kopie umožní opětovné obnovení celého operačního systému včetně aplikací, jedná se o kompletní zálohu diskového oddílu 1:1. Na poslední obrazovce průvodce si zkontrolujte zvolené nastavení a volitelně si upravte plán automatického zálohování, na konec spusťte proces zálohování. Vytvoření stínové kopie systému a kopírování souborů zabere až několik desítek minut v závislosti na objemu dat určených k záloze.
## Jak data obnovit?
Postupujte obdobně jako u zálohování dat. Připojte externí pevný disk, SSD nebo jiné paměťové médium, na němž máte uloženou zálohu dat. Na počítači najděte možnost obnovy přes tlačítko Start - Ovládací panely - Systém a údržba - Zálohování a obnovení. Zde ve spodní části okna vyberte možnost Obnovit moje soubory (nebo Obnovit soubory všech uživatelů).
## Rady a tipy:
1. Zálohování dat se vyplatí i v případě, že máte nové zařízení, které by mohlo několik let fungovat bez jakéhokoliv problému. Nikdy nevíte, co se může stát, ať už mluvíme o ztrátě, odcizení nebo znehodnocení přístroje třetí osobou.
2. Jakékoliv paměťové médium využité k zálohování dat (externí pevný disk nebo solid-state disk, flash disk, DVD, Blu-ray apod.) mějte vždy uloženo na bezpečném místě, aby k němu neměly přístup cizí osoby.
3. Pro ještě větší úroveň bezpečnosti můžete vaše zálohované soubory zašifrovat.
4. Abyste mohli uložit bitovou kopii systému na disk, musí být naformátován pomocí systému souborů NTFS.
5. Zálohování souborů se netýká pouze počítačů, ale také jiných zařízení se systémem Windows 7. Proveďte si kopii dat i na svém tabletu nebo chytrém mobilním telefonu.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Umíte si představit, že byste přišli o všechny soubory, které máte uložené na počítači?'
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
  'nebezpeci-levnych-cinskych-smartphonu',
  'Nebezpečí levných čínských smartphonů?',
  'Za posledních pár let se mnoho zákazníků také v Česku naučilo vyhledávat čínské značky, které svou cenou jsou až neodolatelně přijatelné.',
  '##
## **Všechno něco stojí**
Čínské značky chytrých telefonů mohou být na první pohled cool a levné. Ale bacha na to.
Na první pohled je každému jasné, že **výkon hardwaru** by měl být přímo úměrný ceně. Každý megabyte RAM a každý GB úložiště, stejně jako každé jádro procesoru **výrobce něco stojí**. Jak je tedy možné, že papírová výbava telefonů nových čínských značek šlape na paty renomovaným značkám, a přesto je cena poloviční, někdy až čtvrtinová?
• Nejhorší formy mobilů aneb Dark Side Of The…
Vzbuzuje to zvědavost. Kde se výrobci podařilo tolik ušetřit? Inu druhá stránka věci je **softwarová podpora**. Tyto telefony se většinou vždy prodávají s **mírně zastaralým Androidem**. Následná podpora a vydávání aktualizací v podstatě neexistují. Tímto jsme ušetřili za početný tým IT inženýrů.
## **Nechtěné bonusy**
Na trhu se objevilo také pár „*povedených*“ modelů. Tyto telefony přišly už z výroby s **drobným bonusem**, o kterém uživatel nemohl nic tušit. Jednalo se o **virus trojan Triada.231**, jenž byl obsažen v základním systémovém procesu **Zygote**.
• **Mohlo by vás zajímat k tématu**: 7 tipů, jak si zabezpečit lépe Android a iPhone. A pokud by vás zajímalo i detailní porovnání těchto dvou velikánů, určitě se podívejte, protože o tom jsme už také psali.
Skrz něj pak mohl ohrožovat všechny další aplikace. V tomto případě tedy nebylo řešení ani obnovení do továrního nastavení, neboť vir byl implementován ještě před prvním spuštěním. Odhalili to bezpečnostní experti z ruského portálu Dr.Web., kde je uveden výčet více než **40 infikovaných telefonů. **Mezi nimi byly například telefony **Cubot Rainbow, Doogee Shoot 1 a 2, Doogee X5 Max a Pro, 10 modelů značky Leagoo, myPhone Hammer Energy, Prestigio Grace M5 LTE, Zopo Speed 7 Plus.**
U levných čínských smartphonů se objevily také jiné neduhy podobného charakteru. Když už výrobce vydal OTA aktualizaci, začaly uživatelům vyskakovat **nepožadované reklamní stránky**, nebo se samovolně instalovat aplikace.
## **I čínské telefony mohou zazářit – doslova**
Reputaci čínských telefonů nepřispěl ani poslední výzkum německého Spolkového úřadu pro ochranu před zářením. Ten změřil hodnotu SAR, tedy údaj vypovídající o **množství energie, které je absorbováno živou tkání v elektromagnetickém poli**. Množství záření je sledovaným parametrem telefonů, i když zatím výzkumy neprokázaly jeho nebezpečnost pro lidský organismus. Nejhůře v žebříčku dopadly právě telefony čínských značek a obsadili hned 10 předních pozic. Více se můžete dočíst na webu Svět Androida.
## **Velmi drahá sleva**
Pokud tedy budeme uvažovat s důsledky takového chování výrobců, kteří se neštítí podsouvat uživatelům **agresivní software**, aby si vykompenzovali nízkou cenu produktu, není tedy zas tak těžké představit si, jaké bezpečnostní hrozby by mohly následovat.
O zabezpečení dat se dá taky pochybovat a scénář, kdy se uživateli **sama od sebe nainstaluje aplikace**, která mu osobní data zablokuje a požaduje výkupné za navrácení dat, není žádné přehnané sci-fi.
V takových případech naštěstí lze vyhledat **odbornou pomoc se záchranou dat,** ale o výhodném nákupu levného telefonu už nejspíš nepadne ani slovo.
### Zajímavé odkazy na užitečný a doplňující obsah na internetu
• Videopromo představení 5 nejlepších čínských smartphonů
• TOP 10 nejprodávanějších smartphonů v Číně za rok 2017
• Rozhovor o tajemstvích čínských značek a jak se obecně na asijském trhu zorientovat
• Ze začátku roku 2018 USA vláda varuje nad používání čínských značek Huawei a ZTE
• Článek z roku 2016, který vám dobře představí pozadí těch největších čínských hráčů na dnes již celosvětovém trhu
A na závěr něco úsměvného…protože se to také z velké části tematicky dotýká Číny a chytrých telefonů.
*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Za posledních pár let se mnoho zákazníků také v Česku naučilo vyhledávat čínské značky, které svou cenou jsou až neodolatelně přijatelné.'
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
  'zivotnost-usb-flash-disku-na-cem-zavisi-a-co-ji-ovlivnuje',
  'Životnost usb flash disků – na čem závisí a co ji ovlivňuje?',
  'To je vždy ožehavé téma - životnost u paměťových médií. Pokusíme se to celé vhodně rozklíčovat v USB problematice, abyste věděli, na co si dávat pozor.',
  '## **Velice stručný náhled do útrob flash disku**
Flash disk se skládá z **paměťových mikročipů** na křemíkové destičce. Neobsahuje tedy žádné pohyblivé součástky. Z toho plyne základní vlastnost flash disku a to **mechanická odolnost**. Proto je tak vhodná pro každodenní přenášení a snese i trochu toho násilí. Jak tedy samotná „*fleška*“ funguje?
V paměťových mikročipech jsou buňky, které uchovávají informaci 1 nebo 0 a tuto informaci uchovávají i po odpojení od zdroje elektrického proudu. Pak je zde speciální **logický obvod** pro obsluhu všech paměťových buněk, který je označován zkratkou **FTL** (Flash Translation Layout).
Jeho úkolem je říkat počítači, ze kterého přitékají data, do kterých buněk má tato data uložit. No a nakonec známý **USB konektor**, popřípadě nějaká světelná dioda.
## **Čím víc mě používáš, tím dříve umřu**
Základní vlastností zmíněných paměťových buněk je to, že se zvyšujícím se počtem zápisů se zvyšuje **opotřebení této buňky**, které nakonec vede k jejímu poškození a není schopna správně uchovat informaci. Tím dojde k tomu, že uchovaná data začnou **vykazovat chyby** a v konečném důsledku může být celý flash disk nečitelný.
Proto je základní parametr životnosti flash disku udáván v počtu zapisovacích cyklů, nebo také počtu „**cyklů čtení/zápis**“. Ty se běžně pohybují **od 10 000 u nejlevnějších kousků po 100 000 u běžných flash disků**. V praxi to znamená, že pokud bude flash disk sloužit k občasnému zálohování fotek a přenášení textových dokumentů mezi několika počítači, nemusí majitele toto opotřebování paměťových buněk nijak trápit.
Horší je to v případě, kdy slouží flash disk jako **rozšíření paměti počítače**, ať už v rámci funkce Windows ReadyBoost, jako další místní disk nebo jakkoliv jinak „nastálo“ připojené zařízení. Množství zápisů se zvýší na číslo obsahující o pár cifer víc a běžná „fleška“ odchází za pár let do křemíkového nebe. Nezřídka i dříve.
## **FAT vs. NTFS**
Zmíněná životnost jednotlivých buněk se dá úspěšně řešit tím, že se jednotlivé jedničky a nuly zapisují do celé paměti **rovnoměrně** a nikoliv jen do několika málo nešťastných bloků. Toto rovnoměrné zapisování má na starost výše zmíněná FTL mezivrstva.
Aby však počítač věděl, do kterých buněk mu FTL data rozmístilo, je na začátku celé flash paměti **FAT tabulka**, tedy jakási mapa uchovaných dat. Tato tabulka se s každým zápisem na flash disk aktualizuje. Takže i přes sebelepší snahu o rovnoměrné opotřebení díky FTL, mapa ke všem datům **je opotřebována jako první a tím jsou i data ztracena**.
Vývoj jde samozřejmě kupředu a tak existují možnosti jak s nevyhovujícím formátem dat FAT bojovat. Pokud je flash disk zformátován a převeden na **NTFS formát dat**, je výše uvedený problém odstraněn. Bohužel se pak flash disk stane pro většinu další elektroniky, jako jsou televize, či autorádia **nečitelný**.
## **Mechanická odolnost v mezích spotřebního zboží**
Bylo zmíněno, že jsou flash disky mechanicky odolné, což je pravda. Proto bylo třeba vybavit flash disky Achillovou patou a tou nejčasněji bývá samotný **USB konektor.** Asi každý z nás už si někdy všimnul, že úplně nový USB konektor lze jen těžko zasunout do počítače a v něm se pak drží zuby, nehty.
A stejně tak všichni víme, že po roce konektor do USB portu vklouzne jako nic a ještě se pak lehce viklá. Na obale flash disku ani na stránkách výrobce se takový údaj hledá jen velice obtížně, ale samotný USB konektor je **konstruován průměrně na 1500 zasunutí**.
## **Ani „fleška“ v trezoru není ideální záloha dat**
Možná si po přečtení předchozích odstavců řeknete, že flash disky jsou ideální pro zálohování do trezoru. Jednou data zapsat a pak je nechat zamčené někde v šuplíku. Pak vám prozradíme poslední vlastnost flash pamětí. Zapsaná data se uchovávají i bez elektrického zdroje, avšak podle výrobců je takto **garantováno jen 10 let**.
Na některých diskuzních fórech se hovoří jen o **7 zaručených** letech. Ani toto řešení proto není zcela ideální a je dobré čas od času „flešku“ někam připojit, nebo po pár letech zkopírovat data na další úložiště. Koneckonců, flash disk je jen další spotřební zboží.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'To je vždy ožehavé téma - životnost u paměťových médií. Pokusíme se to celé vhodně rozklíčovat v USB problematice, abyste věděli, na co si dávat pozor.'
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
  'android-vs-ios-souboj-velikanu-a-podrobne-srovnani',
  'Android vs. ios – souboj velikánů a podrobné srovnání',
  'Kdo s koho? Podívali jsme se všemu důkladně na zoubek.',
  '## Začněme softwarem
### Bezpečnost
Otázka **bezpečnosti** by měla být při výběru operačního sytému pro uživatele jednou z hlavních priorit. Zde není třeba zdlouhavě diskutovat o v��tězi. **iOS v iPhonech je vyvíjen pro úzký okruh zařízení**. Operační systém se vším všudy i samotný telefon pochází od stejného výrobce, který tak updaty s bezpečnostními záplatami vypouští **mnohem rychleji**, než jeho konkurent Google.
Naopak Android (*už jsme také psali, co dělat, **když si smažete v Androidu kontakty*) je k dispozici ostatním výrobcům telefonů a ti si jej **upravují k obrazu svému**. Výsledkem je prodleva, kdy tento výrobce musí zapracovat bezpečnostní update od Googlu do své verze Androida. Všeobecný omyl pak panuje ohledně otevřenosti systému po stránce bezpečnosti.
Podle článku[1] Satishe Shetty z The Enterprise Mobilty Blog **není Android více zranitelný**, protože je otevřený, ale kvůli jeho „*roztříštění*“. To znamená, že ve světě je současně mnoho různých verzí systému Android a navíc je každá spravována někým jiným. Výsledkem je jednoznačně větší množství bezpečnostních hrozeb.
Představu o jakém **roztříštění** je řeč, si uděláte z tabulky 1 a 2[2].
Verze operačního systému iOS
Zastoupení ve všech zařízeních
iOS 11
87,33%
iOS 10
8,90%
starší
3,77%
Verze operačního systému Android
Zastoupení ve všech zařízeních
Android 8.1 Oreo
0,50%
Android 8.0 Oreo
4,10%
Android 7.1 Nougat
7,80%
Android 7.0 Nougat
23,00%
Android 6.0 Marshmallow
26,00%
Android 5.1 Lollipop
18,00%
Android 5.0 Lollipop
4,90%
Dalším faktorem je **atraktivita pro hackery** a jiné podvrtané živly. V roce 2016 patřilo přes **86 % trhu právě Androidu** a necelých **13 % iOS[3]**. Je tedy jasné, na koho budou většinou mířeny hackerské útoky a viry. V této bitvě proto **jasně vítězí iOS.**
### Dostupnost
**Co se týká ceny, Apple patří mezi nejdražší značky na trhu**. Pokud si chcete pořídit nejnovější iPhone XS s operačním systémem iOS, připravte si alespoň 21 tisíc korun. Samozřejmě přes inzerát si můžete pořídit starší typy smartphonu iPhone za lepší cenu, ale finančně jsou obecně na tom zařízení s platformou Android o poznání lépe. Android sice není tak prestižní záležitost jako iOS, nicméně při nákupu nejste omezeni nabídkou několika aktuálních přístrojů, ale máte velký výběr z nepřeberné škály značek od různých výrobců.
Nový chytrý mobilní telefon s Androidem a podobnou výbavou jako iPhone XS seženete za zlomek ceny. Například telefony Samsung Galaxy Note 9 nebo Huawei P20 Pro stojí nové o více než 7 tisíc korun méně. Z hlediska dostupnosti má tedy navrch OS Android.
### Uživatelské prostředí
Druhým zásadním krokem při výběru iOS nebo Androidu je **filozofie uživatelského prostředí**. Apple nedává svému uživateli téměř žádnou možnost volby a sám mu diktuje, co je pro něj nejlepší. Prostě **ikony v pevném rastru a hotovo.** Po několika letech, kdy si uživatelé Androidu užívali na svých plochách widgety, přidal Apple také jednu stránku pro widgety. A to je vše.
Podobně tomu je s **grafickým designem systému**. Ten je daný, jednoduchý a neměnný. Apple sice klade velký důraz na **design a estetiku**, ale vkus je stále velmi subjektivní záležitost.
Na druhou stranu je takto jednoduché uživatelské prostředí vhodné **opravdu pro každého**, lidi s diagnózou křemíkového handicapu nevyjímaje. Budete-li vybírat telefon pro babičku, **myslete na to**.
U Androidu má uživatel **mnohem větší volnost**. Může si vzhled systému měnit nainstalovanými motivy a domovské plochy upravovat k obrazu svému (a dokonce si můžete pomocí speciálních spouštěčů tzv. launcherů změnit vzhled celého uživatelského rozhraní) ať už rozložením ikon, widgety nebo aplikacemi třetích stran. Poslední verze Androidu navíc po estetické stránce **začínají dotahovat iOS**. V této disciplíně proto opět jasného vítěze určit nemůžeme.
### Aplikace
Alfou i Omegou smartphonů jsou **aplikace**. Obě platformy mají vychytané obchody s aplikacemi - **App Store a Google Play**. Každý má trochu jiný přístup k vývojářům a kritéria pro přidávání nových aplikací, ale oba fungují perfektně. Na App Store je o dost méně aplikací než v Google Play. **2,2 miliony proti 3,5 milionům**[4]. Zde však platí poučka o tom, že méně je někdy více.
Na Google Play je mnoho aplikací často podobných jako vejce vejci a navíc není tak **přísně kontrolována** jejich optimalizace ze strany Google. Zato Apple si kvalitu aplikací **hlídá mnohem pečlivěji** a dávám vývojářům pevné mantinely. Druhá strana této mince je cena.
V App Store jsou **aplikace dražší**, kdežto u Googlu jsou zdarma, sponzorované reklamou nebo levnější. V minulosti se proto vývojáři více soustředili na aplikace pro iOS a pro Android vydávali aplikace později nebo vůbec. Dnes je však **situace vyrovnanější**. Nicméně kvalitou vyhrává iOS.
Android má však **jedno eso v rukávu**. Uživatel totiž může docela jednoduše instalovat aplikace i z jiných zdrojů, než pouze z Google Play. Přináší to jisté **bezpečnostní riziko**, ale mají uživatelé iOS co závidět.
#### Obchod s aplikacemi - uživatelské prostředí
Jak již bylo zmíněno, každý operační systém má svůj oficiální internetový obchod s aplikacemi určený pro danou platformu. Android má Google Play a iOS má App Store. **Který z nich je lepší?** To je poměrně záludná otázka, neboť nezáleží pouze na celkovém počtu mobilních aplikací. I když pro Android je dostupný širší výběr softwaru, **Apple jej umí mnohem lépe uspořáda**t. Příjemnější prohlížení aplikací v telefonu a relevantnější doporučené aplikace nabídne App Store.**Na druhou stranu lepším vyhledáváním disponuje obchod Google Play**. Navíc dokáže appky instalované přes webový prohlížeč na vašem počítači nebo notebooku řadit do fronty.
Na telefonech iPhone je možné snadno nakupovat software otiskem prstu přes službu Touch ID, podobně to lze nastavit také na Android zařízeních. **Plusové body mají oba obchody za možnost vrácení peněz zpět, pokud se vám hra nebo aplikace nezamlouvá. **V Google Play je tato možnost aktivní 2 hodiny po nákupu, zato v App Store můžete u některých aplikací zažádat o vrácení peněz dokonce až po 90 dnech od data nákupu. Sečteno, podtrženo, o malý chloupek v tomto klání vítězí Apple App Store, jenž má mimo jiné přísnější pravidla pro schvalování nového obsahu, a tudíž i menší počet pochybných aplikací.
• **K tématu otisků prstů**: Jak fungují čtečky?
### Hlasový asistent
Menší revoluce ve světě smartphonů  přišla spolu s **paní/slečnou Siri**. Apple opět dokázal být o krok napřed a uvedl hlasovou asistentku, která nejen rozumí tomu, co uživatel říká, ale také **reaguje**. Tím umožňuje skutečné **ovládání telefonu hlasem**. Vytočit telefonní číslo, zapnout navigaci, spustit hudbu, přečíst zprávu nebo vyhledávat na webu.
Google sice záhy reagoval funkcí **Google Now**, avšak skutečný kontr zasadil Applu až nyní. Jeho nový **Google Asistent** přináší skutečné schopnosti umělé inteligence. Zde Siri „*o prsa*“ prohrává a vítězí Google. Abychom však byli objektivní, Google Assistent je k dispozici také pro iOS.
### Mapy
Navigační aplikace obou systémů obsahují podobné funkce. **Google Mapy i Apple Mapy je možné využívat offline**. Uživatelé v nich mohou hledat trasy v závislosti na aktuální dopravní situaci a mohou se nechat hlasově navigovat přímo na stanovené místo, ať už jdou pěšky, jedou v autě, nebo chtějí využít spoje městské hromadné dopravy. Google Mapy nabídnou navíc ještě plánovač tras pro jízdní kola, včetně cyklostezek.
**Rozsahem a kvalitou celkově vítězí Google Mapy**, neboť obsahují mnohem více zajímavých míst, jsou detailnější a přesnější. Pokud mají uživatelé možnost si při vyhledávání trasy vybrat, většina z nich si na mobilním telefonu otevře Google Mapy. A tím myslíme i majitele smartphonů iPhone, kteří si mohou Google Mapy pro iOS dodatečně stáhnout. V tomto srovnání je jasným favoritem Android, který má Google Mapy nastavené jako výchozí navigační aplikaci.
### Zprávy a volání
**Základní funkce pro volání a odesílání zpráv jsou uspokojivé na obou platformách, avšak jejich organizace je v Androidu trochu matoucí**. Společnost Google shlukuje veškerou komunikaci do služby Hangouts, kam spadají SMS, videochaty, skupinové konverzace a další zprávy obdržené prostřednictvím Wi-Fi nebo vaší mobilní sítě. K dispozici jsou dále klasické Zprávy a existuje také řada instant messengerů (Skype, Snapchat, WhatsApp, Viber, Slack,...). Aby toho nebylo málo, skoro každý výrobce si vymýšlí vlastní alternativy aplikací pro zasílání zpráv a volání, kterými nahrazuje standardní Google software.
**Apple v tom má jasno už od začátku**. Na každém iPhonu a iPadu jsou pro příjem zpráv a volání předinstalovány aplikace FaceTime a iMessage, takže je teoreticky velmi jednoduché se spojit se svou rodinou a přáteli. iMessage nabízí integraci aplikací třetích stran, vtipné smajlíky, GIF animace a mnoho dalšího. I když se tato aplikace používá velmi intuitivně, nejlépe funguje při komunikaci s jiným uživatelem smartphonu iPhone. Pro jednoduchost použití a konzistentní rozhraní připadá vítězství v kategorii zprávy a volání systému iOS.
### Cloudové služby
Společnost Google nabízí službu Google Disk zdarma. Uživatelé Android zařízení získají 15 GB pro uložení libovolných souborů napříč platformami. S iCloudem od firmy Apple dostanete bezplatně jen 5GB úložiště, které funguje pouze na operačních systémech Windows, Mac a iOS.
• **Psali jsme také**: 5 rad, pro pokročílé používání Google disku
**Měsíční poplatek úložiště na Google One dle prostoru:**
• 100 GB - 60 Kč
• 200 GB - 80 Kč
• 2 TB - 300 Kč
• 10 TB - 3000 Kč
• 20 TB - 6000 Kč
• 30 TB - 9000 Kč
**Měsíční poplatek úložiště na iCloudu dle prostoru:**
• 50 GB - 25 Kč
• 200 GB - 79 Kč
• 2 TB - 249 Kč
**Cloudové úložiště Androidu se snadněji používá a je efektivnější než iCloud.** Google Disk je navíc kompatibilní s iPhonem, zatímco iCloud je funguje pouze pro iOS, proto vyhrává Google a jeho zelený robot.
• **K tématu**: Jak probíhá zálohování dat na jednotlivých zařízeních a práce s iCloudem.
### Kompatibilita s další elektronikou a příslušenstvím
Jedna z věcí, která **výrazně zvyšuje užitnou hodnotu smartphonu** je jeho **příslušenství**. A to ať už se jedná o obyčejné kryty či pouzdra, nebo elektroniku od hodinek počínaje po domácí spotřebiče konče. Zde vítězí ekosystém Apple. Úzký sortiment aktuálních iPhonů, uzavřený operační systém a tendence majitelů jablečných produktů více utrácet jsou lákadlem pro ostatní výrobce. Na trhu je tak vždy více příslušenství pro iPhony, než pro bambiliony různých Androidů.
Dalším plusem pro iOS je **dokonalá provázanost** s ostatními výrobky Apple, od hodinek, tabletů až po MacBooky. Zajišťuje ji funkce zvaná **Kontinuita**, díky které lze činnosti jako psaní zpráv, mailů, telefonování, prohlížení webu, vytváření dokumentů a podobně začít na jednom zařízení a pokračovat na druhém. Pro Android sice existují alternativy v podobě aplikací třetích stran, ale plynulost a intuitivnost v podání Apple zachází mnohem dál. **Tady iPhony vyhrávají**.
V čem však jednoznačně vedou Androidy je pak natolik obyčejná věc jako **USB konektor**. USB je prostě všude a mít možnost zacházet se soubory v telefonu stejně jednoduše jako se soubory na flash disku je prostá, leč neocenitelná výhoda.
### Soukromí
Poslední dobou **čím dál častěji skloňované slovo**. V moderním světě internetu, cílené reklamy, sociálních sítí a chytrých telefonů už téměř **žádné soukromí neexistuje**. Přesto se však tu a tam může najít někdo, kdo se o své soukromí zajímá. Pak je volba jasná. IPhony patří mezi **nejdražší telefony** právě proto, že chrání soukromí svého majitele.
• **K tématu:**7 tipů pro lepší zabezpečení vašeho iPhonu.
Od vydání iPhonu 5S zavedla Apple takzvanou „*bezpečnou enklávu*“ (Secure Enclave), která uchovává data z otisků prstů a hesla v samostatném mikročipu odděleně od operačního systému. Data uvnitř každého iPhonu chráněného heslem jsou tak **zašifrována** a nelze je se k nim nabourat zvenku bez přístupového hesla uchovaného právě v bezpečné enklávě.
**Mike Ash**, americký programátor, který se o zabezpečení iPhonů snažil zjistit maximum informací po kauze FBI vs. Apple z roku 2016, napsal: „*bezpečná enkláva používá zabezpečený spouštěcí systém a šifrovanou paměť, aby zbytek systému nemohl číst ani manipulovat s jeho daty, což efektivně vytváří malý počítač v počítači, který je těžké napadnout*.“[5] To znamená, že ani samotný Apple se nedostane do takto šifrovaného iPhonu.
Systém Android od verze 5.0 také nabízí **šifrování celého zařízení**, které bez klíče nelze přečíst, takže uživatelova data jsou v bezpečí. Avšak Google přesto určitá data ze zařízení **získává**, většinou s nevědomým souhlasem majitele. Používá je pro **cílenou reklamu** a jinou monetizaci, což je daň za to, že Android a služby od Googlu jsou zdarma. Boj o uživatelovo soukromí proto **vyhrává iOS**.
## Pokračujme přes hardware
### Výkon
S výkonem iPhonů je to poměrně jednoduché. Jsou prostě výborně optimalizované, a byť mají často papírově slabší hardware než Androidí konkurenti, jsou **vždy rychlé a plynulé**. Také díky tomu byly v minulosti mnohé nadupané mobilní hry vydávány jen na iPhone. V současnosti jsou i vlajkové lodi s Androidem natolik výkonné, že se rozdíly stírají.
Pokud budeme navzájem srovnávat konkurenty ve stejné cenové kategorii, **nenajdeme žádné propastné rozdíly**. Dokonce se čím dál častěji objevují high-end smartphony dravých čínských výrobců, kteří dokáží nabídnout stejný výkon za poloviční cenu.
V současnosti je hardware již natolik výkonný, že se ani Android nezadýchá. Jedinou slabinou iPhonů je **absence slotu pro paměťové karty** a cenová politika pro volbu vnitřní paměti. Zohledníme-li tedy poměr ceny a výkonu, je výhodnější Android
### Kamera
Dříve platilo, že iPhone udával laťku, co se týkalo **kvality fotografií**. Poslední vlajkové lodě konkurence, především Google Pixel 2, iPhone těsně poráží. Ovšem s klesající cenou telefonů s Androidem **klesá i kvalita fotoaparátu**. Zájemci o nejlepší fotomobil na trhu musí rozbít prasátko tak jako tak. Před rokem vedl Apple, dnes Google. A příští rok? Kdo ví.
### Výbava
Zde přicházíme na bojiště, kde **jasně dominuje Android**. Existuje dost technologií a vychytávek, které u Apple nenajdeme. Od zmíněných paměťových karet, přes USB OTG, dnes už dokonce ani 3,5 mm jack. NFC nebo dvě SM karty jsou také běžný standart i u levných Androidů.
Dále třeba **IR senzor**, laserem zaostřovaný fotoaparát nebo vysoce **odolné tělo**. V sortimentu telefonů s Androidem lze ještě dneska najít ty, kterým lze jednoduše sundat zadní kryt a **vyměnit baterii**. Něco o čem si Jablka mohou nechat jenom zdát. Zde zkrátka **vyhrává Android**, protože každý si může najít to svoje.
### Výdrž baterie
S novým iPhonem není problém zůstat bez nabíječky více než celý den. Optimalizace hardwaru i softwaru jde ruku v ruce a telefony umějí šetřit s energií. Avšak vlastnost Li-Ion akumulátorů je, že s přibývajícím počtem vybití a nabitý **slábnou**.
• **Mohlo by vás zajímat**: Jak skutečně správně nabíjet baterii telefonu
A to jak u Androidu tak u iOS. Výhodou některých Androidích maratonců je to, že mají **buď obrovskou baterii s dvojnásobnou kapacitou** oproti iPhonům a nebo, jak zmíněno v předchozím odstavci, mají vyměnitelnou baterii. Platí zde tedy stejně jako u výbavy, že zájemce o iPhone se prostě musí spokojit s tím, co v **Cupertinu** rozhodli, že je dostačující.
### Nabíjení
Mobilní operační systém Android měl dlouhou dobu v nabíjení navrch. Mnoho telefonů s Androidem nabízelo funkci rychlého a bezdrátového nabíjení mnohem dříve, než se objevilo u přístrojů s platformou iOS. Bezdrátové nabíjení a rychlé nabíjení se nejprve objevilo u smartphonů iPhone 8, iPhone 8 Plus a iPhone X a od té doby ho můžete najít také u všech novějších modelů mobilních telefonů Apple.
**Stojí za zmínku, že dobíjecí adaptér pro iPhone je nutné zakoupit zvlášť, zatímco při nákupu Android telefonu je většinou už součástí balení**. Rozhodnutí v této kategorii není až tak jednoduché, ale porovnáme-li mobilní telefony Android a iPhone za podobnou cenu, Android zařízení nabízí delší životnost baterie, a proto zelený robot vyhrává nad nakousnutým jablkem.
## Konečný verdikt
**Určit jasného vítěze není tak jednoduché**. Výše uvedená kritéria nemají stejnou váhu pro každého. Proto si každý musí určit, na čem mu záleží u smartphonu nejvíc. Jestli je to **ochrana soukromí** a **jednoduché ovládání**, pak můžeme doporučit iPhone.
Pokud je to **maximální vybavenost** nebo **obrovská baterie**, pak volte Android. Oba systémy ušly velký kus cesty, dospěly a přitom si zachovaly svou vlastní filozofii. Telefony s Androidem nabízí nekonečné možnosti volby, iOS zase neotřesitelné zdi uzavřeného systému.
[1] Enterprise Android Vs iOS: Which is More Secure? (https://blog.codeproof.com/2017/01/30/enterprise-android-vs-ios-which-is-more-secure)
[2] Android vs. iOS: Which smartphone platform is the best? (https://www.digitaltrends.com/mobile/android-vs-ios)
[3] Apple Vs Android – A comparative study 2017 (https://www.moontechnolabs.com/apple-vs-android-comparative-study-2017)
[4] Android vs. iOS: Which smartphone platform is the best? (https://www.digitaltrends.com/mobile/android-vs-ios)
[5] Friday Q&A 2016-02-19: What Is the Secure Enclave? (https://www.mikeash.com/pyblog/friday-qa-2016-02-19-what-is-the-secure-enclave.html)
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  14,
  'Kdo s koho? Podívali jsme se všemu důkladně na zoubek.'
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
  'jak-jednoduse-chranit-data-v-chytrem-telefonu-i-dil-utoky-zvenku',
  'Jak jednoduše chránit data v chytrém telefonu: i. díl – útoky zvenku',
  'Udělejte si chvíli času a projděte si spolu s námi pár základních pokynů, které vám pomohou zabezpečit data na mobilním zařízení.',
  '## 1. Zámek obrazovky
**aktivujte funkci pro uzamčení displeje**Po deseti neúspěšných pokusech o přihlášení se zařízení samočinně zablokuje. Vybrané high-end smartphony disponují také vyspělým biometrickým zabezpečením, u nichž pro odemknutí displeje můžete využít čtečku otisků prstů nebo senzor k naskenování oční duhovky.
Volba záleží na vás, nicméně jakýkoliv zámek obrazovky je **z hlediska bezpečnosti lepší než žádný**.
Nikdy totiž nevíte, kde můžete telefon zapomenout, případně nemáte jistotu, že vám ho nikdo cizí neukradne nebo vám na něj v nestřežené chvíli nenainstaluje sledovací software tzv. keylogger, který snímá stisknuté klávesy a získané informace odesílá útočníkovi. Zámek obrazovky se doporučuje využívat rovněž na přenosných počítačích nebo tabletech.
## 2. Webové stránky
Do mobilního internetového prohlížeče **si nainstalujte doplněk Adblock**, jenž vám bude blokovat nevyžádanou reklamu. Zobrazování reklam je při procházení webových stránek nejen rušivé, ale rovněž nebezpečné. Reklama se může stát vstupní bránou kybernetického zločinu na vašem zařízení a to na ni nemusíte ani kliknout, stačí ji pouze zobrazit.
Proti škodlivému malwaru se vyplatí bojovat blokováním vyskakovacích tzv. pop-up oken a zakázáním JavaScriptu. I když snížíte riziko potencionálních hrozeb na minimum, přes to si**dávejte pozor, kam přesně se dotýkáte prstem na obrazovce**. Může se totiž stát, že omylem přejdete na úplně jiný odkaz, než jste zamýšleli, a své zařízení zavirovat návštěvou infikované stránky.
## 3. Phishing
Podvodná technika phishing, která se snaží z uživatelů na internetu vymámit citlivé údaje prostřednictvím elektronické komunikace, se dá mnohem hůře odhalit na mobilních zařízeních než na klasických počítačích. Nevyžádané e-maily tohoto typu poznáte podle toho, že se vás snaží donutit k prokliknutí odkazu.
Nebezpečné e-maily zpravidla naléhají, abyste co nejdříve přešli na odkaz v těle zprávy. Odesílatelem může být jak na oko známá korporace, tak nějaká osoba, kterou vůbec neznáte, a přes to vám píše až nezvykle přátelsky. **Falešné elektronické poště se bohužel nevyhnete**, do poštovní schránky chodí každému, takže si dávejte pozor. Podezřelé e-maily, neznámé reklamy nebo zprávy psané špatnou češtinou raději ani neotevírejte a rovnou je smažte. Nikdy neklikejte na skryté odkazy, u nichž nevíte, kam budete přesměrováni.
Podvodné zprávy se rovněž šíří na sociálních sítích. **Vyhýbejte se sdílení poplašných zpráv**, jejich pravost si nejprve ověřte například v databázi na webové stránce hoax.cz.
Nedávejte šanci útočníkům, aby využili vaši důvěřivost ke krádeži hesla, čísla kreditních karet, kontaktů apod.
## 4. Automatické zálohování
Nikdy nevíte, co špatného se může přihodit, a proto **svá data pravidelně zálohujte**. Funkci automatického zálohování do cloudu najdete ve všech operačních systémech, stačí ji jen povolit, pokud již není defaultně nastavena.
Kdybyste si náhodou telefon zničili, ztratili ho nebo vám ho někdo ukradl, budete mít všechny aplikace a data automaticky synchronizována v cloudu. K zálohování dat můžete použít výchozí nastavení systému nebo různé specializované aplikace, jež si můžete nakonfigurovat podle svých priorit.
## 5. Dvoufázové ověření
Bez ohledu na to, zda máte účet u společnosti Apple, Google nebo Microsoft, **aktivace dvoufázového ověřování je nutnost.** Jejím zapnutím bude váš účet chráněn další úrovní zabezpečení. Kdykoliv se budete chtít přihlásit na účet z nového zařízení nebo umístění, budete muset zadat jeden údaj navíc.
• **Mohlo by vás k tématu zajímat:**Víte, jak si nejčastěji sami mobily ničíme?
Jakmile vyplníte uživatelské jméno a heslo, na mobilní telefon vám bude odeslána SMS zpráva s jedinečným časově omezeným identifikačním klíčem, který musíte zadat do systému pro ověření totožnosti. I když by kyberzločinec znal vaše přihlašovací údaje, nemá šanci se do účtu dostat přes druhý stupeň zabezpečení. Jestliže jste na cestách nebo váš mobilní telefon zrovna nemůžete pro ověření použít, je možné zadat jeden z předem nadefinovaných jednorázových kódů.
## 6. Šifrování
Novější smartphony disponují možností šifrování dat. Všechna data na zařízení budou automaticky zašifrována, čímž jsou chráněna proti nežádoucímu zjištění cizí osobou.
• **Radíme k tématu:**Co dělat, když ztratíte telefon?
Informace budou čitelné pouze tomu, kdo bude znát dešifrovací klíč. Tuto funkci se na mobilním telefonu vyplatí používat, ale dávejte si pozor. V případě zapomenutí přístupového klíče se můžete do systému opětovně dostat jedině obnovením továrního nastavení.
## 7. Bezpečné připojení
Pro připojení k internetu si vždy vybírejte jen bezpečné bezdrátové připojení. **Nesurfujte na webových stránkách přes bezplatné nebo veřejné Wi-Fi **sítě obzvláště tehdy, když přistupujete k citlivým údajům (např. internetové bankovnictví apod.). Informace odesílané prostřednictvím veřejných sítí může získat kdokoliv, kdo si je umí zobrazit.
Raději se připojujte přes mobilní data, sice to nebude zdarma, ale aspoň nebudete riskovat krádež osobních údajů. Na web můžete rovněž bezpečně přistupovat přes službu VPN (virtuální privátní síť), která šifruje veškerou vaši komunikaci i data. Na dnešních telefonech zvládnete síť VPN sami hravě nastavit. A ujistěte, že máte vypnutou funkci Bluetooth.
**Povědomí o úskalích používání mobilních technologií by měl mít dnes každý člověk**. Hackeři mohou přes nezabezpečený telefon snadno získat přístup k bankovnímu účtu, sledovat polohu, zašifrovat soubory nebo data ukrást.
A jak se jim to podaří? Nevědomky vás nalákají k prokliknutí výhodné nabídky skrze falešnou e-mailovou zprávu či podvodnou reklamu. Někdy si do svého zařízení stáhnete viry skrze nakaženou mobilní aplikaci.
Počítačoví podvodníci jsou velmi vynalézaví a kybernetické zločiny jsou tak na denním pořádku. I přes zvýšenou opatrnost mnohdy stačí jedno neuvážení kliknutí a máte zaděláno na velký problém.
## Hrozby se týkají zařízení uživatelů i firem
Výčet možných hrozeb jsme zdaleka nevyčerpali. Rok od roku na Android zařízeních narůstá také počet **ransomware útoků**. Tento typ vyděračského software zašifruje na smartphonu nebo tabletu důležitá data privátním klíčem a pro obnovení jejich přístupu musí uživatel zaplatit výkupné.
Ani po zaplacení částky však nemáte jistotu, že svá data ještě někdy uvidíte. Bezpečnost a ochrana dat se netýká pouze jednotlivců, ale také společností a jejích zaměstnanců. Dle průzkumů se dotýká dvou třetin firem. Příčinou problémů jsou samotní zaměstnanci, kteří přistupují k údajům společnosti přes své soukromé mobilní telefony.
• Jak má probíhat zálohování ve firmách? Rady a tipy.
Abyste svá zařízení dostatečně chránili před jakýmkoliv potencionálním útokem zvenčí, **nemusíte se přitom nutně vzdávat komfortu při jeho používání.** Nemusíte ani utrácet velké peníze za novější přístroje věhlasných značek propagující vylepšené bezpečnostní prvky.
**Někdy postačí aspoň zběžně zkontrolovat nastavení zařízení ihned po nákupu**. Mnozí lidé však zcela zapomínají na prevenci, a proto jsou zbytečně vystaveni bezpečnostním rizikům. Některé užitečné funkce jsou totiž ve výchozím nastavení telefonu nebo tabletu deaktivovány.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Udělejte si chvíli času a projděte si spolu s námi pár základních pokynů, které vám pomohou zabezpečit data na mobilním zařízení.'
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
  'jak-jednoduse-chranit-data-v-chytrem-telefonu-ii-dil-aplikace-a-utoky-zevnitr',
  'Jak jednoduše chránit data v chytrém telefonu: ii. díl – aplikace a útoky zevnitř',
  'Čím víc jich máte, tím většímu nebezpečí se vystavujete. Víte, co dělají aplikace za vašimi zády, respektive ve vaší kapse?',
  '## Hrozby se týkají zařízení uživatelů i firem
Velké množství podvodů se v roce 2016 odehrálo na zařízeních s operačním systémem Android. Lidé si sami stahovali aplikace obsahující škodlivý software přímo z oficiálního obchodu Google Play, neboť Google neměl správně ošetřenou bezpečnostní otázku uploadu nových aplikací. Google se ze své chyby poučil a zaměřil se na odstranění tzv. fakeových aplikací, jež pod rouškou důvěryhodného nástroje vykrádali přihlašovací hesla a platební údaje uživatelů.
## Vzdálený vyhledávač zařízení
Aplikace mohou být sice zlým pánem, ale i dobrým sluhou. Mějte zadní vrátka, i kdyby došlo k nejhoršímu - ke ztrátě nebo odcizení vašeho smartphonu - pro jistotu si nainstalujte doplňkovou aplikaci pro vzdálené vyhledání vašeho přístroje. Nezapomeňte, že abyste mohli tuto technologii v případě nutnosti použít, zařízení musí mít zapnuté sledování polohy. Pro chytré telefony iOS je určena sledovací aplikace "Find my iPhone", Microsoft má "Find my phone” s pro platformu Android můžete použít “Android Device Manager”.
## Antivir
Základ zabezpečení je pochopitelně antivir. Instalací důvěryhodného antivirového programu nic nezkazíte. Stejně jako byste ho měli mít nainstalován na svém PC, je vhodné jej mít aktivní i ve svém smartphonu.
Kdyby byl váš počítač zavirován a nevěděli byste o tom, připojením mobilního zařízení přes USB konektor by se infekce mohla snadno přenést i na něj.
psali v minulém díle
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Čím víc jich máte, tím většímu nebezpečí se vystavujete. Víte, co dělají aplikace za vašimi zády, respektive ve vaší kapse?'
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
  'dark-side-of-the-mobil',
  'Dark side of the mobil',
  'Inspirovat se designově např. termostatem z roku 1983? 10 nejpodivnějších telefonů nového tisíciletí.',
  '## 1. Nokia N-Gage
*
Kdokoliv ve vedení Nokie, jenž schvaloval designové návrhy, zřejmě nedokázal říct „*ne*“, nebo **postrádal soudnost**, když se schvaloval **prototyp modelu N-Gage**.
Jednalo se o telefon určený pro hraní her a každý jeho uživatel píšící SMS také vypadal jako při hraní videohry. No, vlastně tak vypadal při jakékoli manipulaci s telefonem.
## 2. Nokia 7600
Pak zde máme Nokii 7600. Tato **skoro-čtvercová věc** byla zřejmě vymyšlena proto, aby nikdo nepoznal, co že to má majitel telefonu v kapse od kalhot.
Sečteno a podtrženo jde velmi zjednodušeně o telefon z roku 2003, inspirovaný **vzhledem termostatu** z roku 1983.
• Jak správně nabíjet baterii telefonu? Vyhněte se spousta mýtům a legendám.
## 3. Blackberry Passport
Další v pořadí je mladý přírůstek do panoptika a to model **Passport od Blackberry.**
Pokud neuznáváte podlouhlý obdélníkový formát obrazu HDTV a vyhovuje vám spíše čtvercový poměr stran, jako na historické televizi, pak je Passport přesně pro vás. Výborný tip na upgrade telefonu pro dědečka.
## 4. Motorola Flipout
Tento malý hlavolam je důkazem snahy inženýrů o inovaci za každou cenu. Evidentně všichni rádi v pracovních přestávkách soutěžili ve skládání Rubikovy kostky.
Výsledkem je tento **malý otočný mobil pro pisálky** a doufejme, že snad taky poslední telefon se **čtvercovým displejem**.
## 5. Sidekick konstrukce
Bývala doba, kdy vyklápěcí telefony, neboli „*Véčka*“ byly prostě cool. Avšak přehnaná touha přijít s **evolucí tohoto trendu**, byla při poněkud samoúčelná.
Vznikla konstrukce „*Sidekick*“, což byly telefony s QWERTY klávesnicí pod displejem, jenž se vysouval po kratší straně telefonu. Někteří náruživí pisálci si možná přišli na své, ale Sidekick byl pochopitelně předurčen k **nízké popularitě**.
• Nejčastější způsoby, jakým si mi – lidé – chytré telefony rozbíjíme.
## 6. Huawei KFC edition
V Čínské lidově demokratické republice šel vloni do prodeje jistý telefon značky **Huawei** s vyobrazením **kolonela Sanderse** a datem 1987 na zadní straně. Stalo se tak k třicátému výročí působení obou značek na území Číny.
Do dnes nevíme, zda tento nepřehlédnutelný červený telefon slouží zároveň jako slevový kupón ve **fastfoodovém řetězci**, nebo se dá využít k jen navázání konverzace s obtloustlým pojídačem fritovaných kuřecích šmakulád.
## 7. Vertu Signature Touch
Ne každý si libuje ve smaženém jídle. Někteří nejedí maso vůbec a nenosí oblečení z kůže.
Tito stateční lidé jistě nebudou mít rádi telefon za 160 000 Kč, který má zadní část pokrytou **kůží aligátora**, či nějakého savce, aby mohl svému majiteli sloužit jako **vysoce estetický doplněk **značkové kabelky, kvůli které také zahynul nějaký živočich.
## 8. Solarin za 320 000 Kč
Jistě si říkáte, že za 160 000 Kč byste si telefon nikdy nekoupili. V tom případě nezoufejte, výrobce Sirin Labs, myslí i na ty, kteří vědí, co chtějí a nehodlají na smartphonu šetřit.
Jejich Solarin tedy stojí „*rozumných*“ **320 000 Kč**. Nemůže se vám tak nikdy stát, že byste se styděli na golfovém hřišti před svým obchodním partnerem vytáhnout z kapsy telefon.
• Co dělat, když ztratíte telefon?
## 9. Bluetooth telefon
Na Amazonu se dá najít spousta bizarních artiklů. Jedním z nich je zařízení 2v1 od neznámého čínského výrobce. Vypadá jako exemplář telefonu do sbírky miniatur, který se nosí zavěšen na uchu jako handsfree.
Na druhou stranu, Čína produkuje i horší bizarnosti, než je tato **telefonující náušnice**.
## 10. RED Hydrogen
Naši krasojízdu největších světových bezradností zakončíme telefonem RED Hydrogen. Pokud vám za 24 000 Kč připadá iPone X příliš usedlý, jistě vás zaujme tento **geek/retro/sájsfikšn telefon**.
Designově vybočuje z řady a jistě se bude perfektně hodit k některému z kostýmů Marvel universa pro příští Comic Con. Telefon přichází také s technologickou novinkou v podobě „*holografického*“ displeje.
## 11. Motorola V70
Vypadá jako „*véčko*“, pracuje jako „*véčko*“, ale není to „*véčko*“! O čem je řeč o extravagantním **hybridu s otáčecím flipem**, kulatým a inverzním displejem, hliníkovým obalem a modrým podsvícením. Seznamte se, prosím – tohle je **Motorola V70**! Kritiky zbožňovaný i nenáviděný telefon je výstřelkem progresivního designéra **Tima Parseyho**.
Na první pohled vás jistě upoutá **oválný displej**, který je posazený na oblé obdélníkové tělo. To hází oslnivá prasátka, protože je tvořeno **třpytivou chromovou konstrukcí**. Celý obrázek extravagance dokresluje „*retro*“ externí **anténa** z leštěného kovu.
## 12. Samsung Serene
Na první pohled si ho mnozí spletou s peněženkou, stolním budíkem nebo retro meteostanicí. Ve skutečnosti je to ale **výjimečný m**obil, který se drží vzhůru klávesnicí, jeho tlačítka jsou uspořádána do kruhu a véčková konstrukce se otevírá **motoricky**.
Tenhle **oboustranný mobil**, který je „*dítětem*“ Samsungu a Bang & Olufsenu, se v době své největší slávy (rok 2006) prodával za **neuvěřitelných 32 000 korun**! Další krkolomnost na vás čeká při fotografování.  Aby čočka telefonu nenarušovala hladký design přední a zadní části, umístil ji výrobce do **boku kloubu. **Potřebuje tohle další komentář? Asi ne.
## 13. The Buddha Phone C91
Představit si **Spocka**, jak telefonuje prostřednictvím zlatého telefonu s otočným displejem, není nic složitého. Stejně dobře si dokážeme představit, jak tímhle modelem ohromuje zarputilý buddhista zbytek rodiny. Že bychom ale „*Buddha Phone“* vytáhli na poradě, to si tak úplně představit nedokážeme.
Tenhle „*buddhist*-*friendly*“ mobil se začal prodávat v roce 2009. Vybaven je 2,0 palcovým displejem, 1,3 megapixelovým fotoaparátem, FM rádiem, duální podporou SIM, audio a video přehrávačem, microSD slotem a obsahuje také **buddhistickou hudební skříňku**. Co tím výrobci chtěli říct? Netušíme…
## 14. Energizer Power Max P18K Pop
Je to cihla? Není to cihla? Těžko říct. Na první pohled tak rozhodně vypadá. Ve skutečnosti to ale je novinka z modelové řady **Power Max**, jejíž baterie má **šokující kapacitu 18 tisíc mAh**! Tomu odpovídá také tloušťka telefonu, která má úctyhodných **18 milimetrů**.
Takhle velká baterka zákonitě potřebuje co nejrychlejší nabíjení. Power Max P18K Pop proto podporuje **18W nabíjení**. Využít ho můžete nejen jako chytrý telefon, ale také jako **powerbanku** pro další zařízení.
## 15. Siemens Xelibri 8
Taky vám chybí ty retro doby, kdy jsme na provázku na krku nosili peněženku s drobnýma a klíče? Máme pro vás dobrou zprávu! Do dob dávno minulých se můžete vrátit prostřednictvím telefonu **Siemens Xelibri 8**, který se nosí jednoduše na krku.
Součástí balení je **zlatá spona s kovovým řetízkem**, mobil tak může sloužit jako extravagantní šperk. Nejmenší telefon z řady **Xelibri **nedisponuje **číslicovými tlačítky**. Vše v telefonu ovládáte velkou klávesou s potvrzovacím tlačítkem a hlasovým ovládáním. Takže Siri, běž se vycpat! Máš silnou konkurenci!
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Inspirovat se designově např. termostatem z roku 1983? 10 nejpodivnějších telefonů nového tisíciletí.'
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
  'co-to-vlastne-je-raid-a-jake-je-jeho-uziti',
  'Co to vlastně je raid a jaké je jeho užití?',
  'Sprej na komáry? Tatík slavného bojovníka z Mortal Kombat ? Pořád vedle.',
  '## **Co to "RAID" vlastně je?**
Nejprve je třeba si definovat, **co to RAID je**. Ve zkratce RAID - *Redundant Array of Independent disks* je pole jednotlivých pevných disků uspořádaných tak, aby se prokládáním a ukládáním dat dosáhlo redundantních dat na fyzicky jiném disku.
V případě fyzického selhání disku při správně nakonfigurovaném poli jsou data v bezpečí. „*RAID ale neslouží jako záloha dat v případě nechtěného smazání nebo napadení virem. Proto není vhodné spoléhat jen na fyzické pole, ale nejlépe je kombinovat diskové pole s další zálohou kritických dat*,“ říká Štěpán Mikeš, odborník na záchranu dat a spolumajitel DataHelp. Vždy je **lepší prvotně investovat do většího počtu disků****než mít jedno jediné úložiště**, kdy v případě selhání je velké riziko, že veškeré data budou nenávratně ztracena.
## **Typy diskových polí RAID**
Ač se většinou setkáváme s rozdělením diskových polí dle jejich druhu, existuje také několik typů diskových polí RAID. Jedná se o pole:
• **hardwarová**, kdy veškeré výpočetní funkce přebírá řadič,
• **pseudo-hardwarová**, kdy řadič funguje pouze jako rozhraní a výpočetní funkce provádí SW,
• **a softwarová**, kam řadímě typicky linux, dynamické disky, LVM aj.
## **Druhy RAID polí**
**RAID pole je definováno podle druhu číslicí**. „*Nejčastěji používané druhy řetězení jsou RAID 1 a RAID 5, které poskytují dostatečné zabezpečení vůči fyzickému výpadku, ale nejsou příliš výhodné, jelikož vyžadují větší počet fyzických jednotek s žádným či minimálním výkonovým nárůstem*,“ doplňuje Aleš Wagner, specialista na záchranu dat a spolumajitel DataHelpu.
Další druh pole je **JBOD** a **RAID 0**, které nepatří mezi skutečné fyzické zálohování, ale těží z technologie řetězení disků. Co je nevýhoda u těchto dvou je, že v případě fyzického výpadku jednoho či více disků jsou data částečně nebo úplně ztracena.
• *Jak zabezpečit provoz NAS úložiště?*
Poté existují také disková pole RAID 1, RAID 2, RAID 3, RAID 4, RAID 5, RAID 6 a RAID 7 nebo víceúrovňové řetězení polí.
### **JBOD a RAID 0**
**JBOD** neboli Just a Bunch of Disks není pole jako takové, **jde jen o spojení více disků****do jednoho svazku**. Používá se u malých síťových disků jako snadná forma rozšíření kapacity. Data jsou ukládána na disk první, dokud nedojde kapacita.
**Jakmile kapacita na disku A dojde, data jsou poté zapisována na disk B**. Obrovská výhoda je nenáročnost budování pole a snadného rozšíření o další disky. Zásadní nevýhoda je nulový výkonnostní zisk, kdy neroste ani rychlost čtení ani rychlost zápisu.
V případě selhání disku A nebo disku B (*do pole lze připojit více disků, než-li pouze dva. Ve většině případů se však používá pouze dvoudisková konfigurace*) jsou data ztracena, jelikož nemají žádnou kopii k dispozici a lze obnovit jen data, která se nachází na nepoškozeném disku.
• *Jak maximalizovat životnost SSD disků?*
**RAID 0 **je druhý typ neredundantního pole, kdy jsou data mezi dvěma a více disky prokládány bit po bitu. **Velkou výhodou je zisk ve čtení i zápisu**, kdy v použití například se dvěma disky je čas potřebný k čtení a zápisu redukován na polovinu, jelikož se jeden soubor čte ze dvou disků.
Tím pádem je rychlost téměř dvojnásobná. **Jde o snadné řešení, kde je potřeba zrychlit reakce operačního systému či když je potřeba odstranit limitaci při zápisu velkých souborů**. Druhou výhodou je stejně jako v případě JBOD zvýšení kapacity o přidaný disk.
Pro vysvětlení: *Do RAID 0 pole zapojíme 2 SSD disky o kapacitě 120 GB. Data jsou v RAID 0 ukládány formou ABAB, první bit je na disku A, druhý bit na disku B, třetí bit na disku A... Při čtení souboru se část čte z disku A a část z disku B a tím pádem je rychlost dvojnásobná. Jelikož se spojily dva disky, výsledná kapacita je rovněž dvojnásobná, tedy 240 GB. *
**Obrovskou nevýhodou je absence jakékoliv redundantní zálohy proti fyzickému výpadku**. „*V případě, že jeden nebo druhý disk selže, jsou veškerá data ztracena bez možnosti obnovy*,“ vysvětluje Štěpán Mikeš. Jelikož jsou data prokládána bit po bitu, při selhání jednoho nebo druhého existuje pouze polovina informace.
• *Znáte zálohovací systém 3 – 2 – 1? a radíme taky jak předejít přepětí v síti.*
Tento druh pole se využívá jako vyrovnávací nebo dočasná paměť, popřípadě pro nekritická data, kde je naopak potřeba získat vyšší výkon z disků spojením.
### **RAID 1**
Diskové pole **RAID 1 **je používáno nejčastěji. **Pole je tvořeno 2 disky, mezi kterými se veškeré data zrcadlí.** Co je uloženo na disku A je zároveň uloženo i na disku B. **Jeho obrovskou výhodou** je, že v případě selhání disku A jsou veškerá data uchována na disku B a naopak.
**Díky tomu jde o nejlepší způsob, jak ukládat kritická data a zároveň být chráněn před fyzickým výpadkem disku**. Nevýhodou je nákladnost pořizování pole a nulový nárůst výkonu či kapacity.
Pro RAID 1 je potřeba pořídit identický disk 2x, ale výsledná kapacita je stejná jako v případě pořízení jediného disku. Dále neroste rychlost čtení ani zápisu, jelikož jsou všechna data zapisována na dva disky. „*Je potřeba si také uvědomit, že RAID 1 slouží jen jako záloha proti fyzickému výpadku disku, nikoliv proti náhodnému smazání dat*,“ upozorňuje Aleš Wagner.
### **RAID 5**
Pole **RAID 5** je častěji **využíváno v data centrech**. Pro vybudování jsou **potřeba disky tři**. První dva disky jsou propojeny a data jsou prokládány mezi disky, třetí disk obsahuje samoopravovací kód.
Využívá způsob jako v případě RAID 0, nicméně je odstraněna nevýhoda v případě výpadku jednoho disku. **Výhoda je zdvojnásobená rychlost čtení**, kdy se data čtou bit po bitu, které jsou rozprostřeny mezi disk A a disk B.
• *Ani s RAIDem nejste v bezpečí. Jak to?*
V případě selhání jednoho disku jsou data stále k dispozici. Při výměně poškozeného disku se data automaticky nahrají na nový disk a nedojde k žádné ztrátě. **Nevýhoda je** nižší rychlost zápisu mezi disky, jelikož při každém zápisu se také generují informace a poté ukládány na disk obsahující samoopravovací kód.
Kapacita je také redukována na 2/3. Při zakoupení například tří disků s kapacitou 2 TB je celková kapacita v RAID 5 pouze 4 TB, nikoliv 6 TB.
### **RAID 6**
Diskové pole RAID 6 funguje na podobném principu jako RAID 5, liší se však **výpočtem samoopravných kódů**. Skládá se minimálně ze**čtyř disků**. Na dvou discích se zapisují data a na dalších dvou jsou uloženy samoopravné kódy, přičemž každý se vypočítává jiným způsobem. Díky tomu je pole RAID 6 **odolné proti selhání dvou disků najednou**. Existuje také možnost, že by byly paritní informace rozloženy na všech čtyřech discích, ale tato konfigurace se příliš často nepoužívá.
Co se týká **přenosových rychlostí**, v porovnání s RAID 5 je rychlost čtení zhruba na stejné úrovni, zatímco rychlost zápisu je o něco pomalejší kvůli nutnosti výpočtu dvou paritních bloků. Do celkového součtu všech disků tak nemůžeme započítat dva disky, takže RAID 6 má rovněž horší poměr ceny a kapacity. Každopádně se tento typ diskového pole nejvíce vyplatí použít s pěti disky a více.
## **Víceúrovňová disková pole**
### **RAID 10 a 01**
Při zapojení víceúrovňového pole se v případě **RAID 10****kombinují pole RAID 1 a RAID 0**. V takovém případě **jsou potřeba 4 disky**. První dva disky spojíme do pole RAID 1, kdy zrcadlíme veškerá data, kdy data uložena na disku A jsou stejná jako na disku B.
Stejný postup je použit pro druhý pár disků, kdy opět data uložená na disku C jsou stejná, jako data na disku D. Při vybudování dvou samostatných polí RAID 1 se tyto dvě pole spojí do RAID 0 pole.
**Spojené diskové pole pak získají výhodu v rychlosti čtení a zápisu, která je dvojnásobná oproti klasickému RAID 1 poli** a zároveň je odolná vůči selhání dvou disků a odstraňuje nevýhodu RAID 0 pole. Nevýhoda je vyšší náročnost budování pole a nutnost použití 4 disků. Kapacita je redukována na polovinu.
RAID 01 je stejné koncepce, jen se prvně vybudují RAID pole 0 a poté se spojí do pole 1. **Výhody a nevýhody jsou prakticky stejné**.
### **RAID 50**
Stejně jako **RAID 5**, využíváme stejného postupu. Pro vybudování **opět využijeme 3 disky a spojíme je do pole**. Tento postup se opakuje a vybuduje se stejné druhé RAID 5 pole. Tyto dvě pole stejně jako v případě RAID 10 spojíme do sebe skrze RAID 0 pole.
Výhodou je vyšší rychlost čtení a zápisu a samotné pole je odolné vůči výpadku jednoho disku z podúrovně RAID 5 pole. Nevýhoda je v nutnosti použít 6 a více disků pro pole a konfigurace je náročnější.
### **RAID 60**
Jde o málo využívané víceúrovňové pole disků, které se **kombinují dvě RAID 6 pole do sebe a jsou spojeny opět do RAID 0.** Toto pole je **jedno z nejbezpečnějších polí**, které těží z vysoké rychlosti a díky použití dvou paritních disků obsahujících samoopravné kódy je pole jištěno proti výpadku dvou disků z každého RAID 6 pole.
Spojením do RAID 0 se poté zvyšuje rychlost čtení a zápisu, jelikož je každý bit prokládán mezi dvě pole. **Nevýhodou je v nutnosti použít minimálně 8 disků**.
## **Méně užívaná RAID pole**
Další RAID pole nejsou příliš užívána, jelikož nejsou natolik důmyslné.
**RAID 2** používá složitý samoopravný kód, který snižuje přístupovou dobu na pole, ale nepotřebuje velký počet disků při budování.
**RAID 3** je rozšířený strukturově podobný jako JBOD, jen je přidán jeden disk navíc, který obsahuje paritní data z ostatních disků. Výhoda je nutnost použití jen jednoho disku navíc a je větší rychlost nežli RAID 2, nicméně disk obsahující paritní data je extrémně využíván, a představuje tak rizikový článek v celém poli.
**RAID 4** je podobný jako RAID 3, nicméně neukládá data po bitech ale po blocích.
**RAID 7** je odvozen od RAID 3 a RAID 4, ale navíc je doplněn o možnost ukládání dat do vyrovnávací paměti. Má k dispozici vestavěný operační systém a účelový procesor pro správu pole zajišťující rychlejší provádění operací při čtení a zápisu dat. RAID 7 vytvořila společnost Storage Computer Corporation, takže ke čtení/zápisu dat vyžaduje specializovaný řadič. RAID 7 poskytuje trojitou paritu.
## **Závěr**
Na závěr je třeba dodat, že RAID**neslouží jako záloha před náhodným smazáním dat** nebo při infekcí souborů, **chrání pouze před fyzickým výpadkem disků**. V případě používání pole RAID je třeba data ukládat i na jiné místo, nejlépe geograficky odlišné, aby bylo zabráněno možné infekci nebo náhodným smazáním.
**Pro domácnosti je nejlepší možnost využívat dvě malé RAID pole**, přičemž jedno je aktivně využíváno a další data jsou uložena na externím disku (rady, jak ho vybrat), který není trvale připojen k počítači a je chráněný před smazáním.
*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  9,
  'Sprej na komáry? Tatík slavného bojovníka z Mortal Kombat ? Pořád vedle.'
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
  'amazon-cloud-drive-jak-s-nim-pracovat-a-zalohovat-data',
  'Amazon cloud drive: jak s ním pracovat a zálohovat data',
  'Od roku 2015 funguje Amazon Drive jako další cloudová platforma. Výhody a nevýhody? Jdeme na to.',
  '## Kapacity/ceny
Do Amazon Cloud Drive bylo dříve možné díky jednomu z předplacených tarifů ukládat neomezené množství dat. Jednalo se o promyšlenou marketingovou strategii firmy, aby dokázala obstát ve velké konkurenci podobných služeb a nalákala tak co nejvíce zákazníků. 8. června 2017 Amazon tuto výhodnou nabídku zrušil a pro cloudovou službu představil nový ceník.
• Zálohovací řešení 3 – 2 – 1? Znáte?
**Bezplatná verze** úložiště Amazon vám **poskytne 5 GB prostoru** na libovolná data a k tomu, pokud jste členem služby Amazon Prime, můžete ukládat do služby Prime Photos neomezené množství fotografií + získáte až 5 GB pro upload videí a dalších multimediálních souborů.
### Amazon dále nabízí dva různé placené tarify
U prvního z nich si můžete za 12 dolarů ročně předplatit balíček, který obsahuje 100GB cloud pro vaše digitální soubory.
Navíc jestli jste členem služby Amazon Prime, do oněch 100 GB se vám nebudou započítávat fotografie. Součástí balíčku je rovněž možnost zálohování dat z vašeho chytrého telefonu, tabletu nebo počítače prostřednictvím mobilních aplikací Amazon Drive a Prime Photos, což se může hodit pro obnovu dat v případě ztráty, poškození nebo odcizení vašeho zařízení.
• 5 důvodů, proč se vyhnout práci s bezplatnými aplikacemi na obnovu dat.
Druhý tarif vám za 60 dolarů přinese možnost uploadu až 1 TB dat na cloudové úložiště ročně, přičemž maximální kapacita může dosáhnout 30 TB dat. Stejně jako u předchozí varianty, když jste členem Amazon Prime, můžete si nahrávat libovolný počet fotografií a obrázků nad rámec 1TB prostoru.
## Výhody
- 5 GB pro uložení souborů zdarma + nahrávání nekonečného množství fotek
- Bezplatné aplikace pro počítače s operačními systémy Windows/Macintosh a smartphony s Androidem a IOS - Možnost zálohování souborů z cloudu do mobilního zařízení
- Volba, změna nebo zrušení předplatného kdykoliv chcete
## Nevýhody
## Link na stažení
Software Amazon Drive je dostupný jednak pro počítače s operačními systémy Windows a Mac OS a navíc také jako mobilní aplikace pro chytré telefony s platformami Android nebo iOS.
Odkazy pro stažení aplikací Amazon Cloud Drive (pro Windows, Macintosh, Android, iOS) najdete na stránce https://www.amazon.com/b/?_encoding=UTF8&%2AVersion%2A=1&%2Aentries%2A=0&node=16409408011
## Jak to vypadá v praxi
Mobilní i desktopové aplikace Amazon Drive vám umožní jednoduše přistupovat ke všem uloženým dokumentům, hudbě, multimédiím nebo videím. Po prvotním nastavení aplikace můžete ve svém cloudu vytvářet nové složky nebo přesouvat data mezi stávajícími.
Samozřejmostí je také možnost prohlížení fotografií, videí, PDF či textových souborů přímo na serveru. Vybraný obsah můžete sdílet s vašimi kamarády, kolegy či rodinou prostřednictvím odkazů, s nimiž můžete dále pracovat v textových zprávách, e-mailech apod.
Praktickou vychytávkou v mobilní verzi aplikace je ukládání souborů z cloudového úložiště Amazon do chytrého telefonu nebo tabletu.
• Věčné téma – jak správně nabíjet baterii do chytrého telefonu?
## Jak si založit účet
https://www.amazon.com/b/?_encoding=UTF8&node=15547130011&ref_=cd_auth_homeBudete přesměrováni na jednoduchý formulář, kde do prvního políčka vepište svou e-mailovou adresu a pod položkou "Do you have an Amazon.com password?" zaškrtněte volbu "No, I am a new customer" (Jsem nový uživatel).
Na další stránce vyplňte své jméno, opětovně svou e-mailovou adresu a zvolte si heslo, které musí mít alespoň 6 znaků. Kliknutím na potvrzovací tlačítko se ihned dostanete do svého nového cloudového úložiště.
• Může se hodit – Co dělat, když ztratíte telefon?
Webové rozhraní Amazon Drive je intuitivní a přehledné, dokumenty je možné organizovat do přednastavených složek anebo si můžete vytvářet vlastní hierarchie dle potřeby. Své soubory můžete uploadovat přes modré tlačítko Upload, případně je přetáhnout z počítače levým tlačítkem myši pomocí funkce drag & drop.
## Rady a tipy:
Kapacita - Abyste zjistili, kolik místa máte na Amazon disku již zaplněno a kolik vám zbývá, stačí přejít na stránku Manage Storage - https://www.amazon.com/clouddrive/manage.
Předplatné - Změnu nastavení předplatného (limitů pro upload souborů), včetně volby platební metody, kdykoliv provedete také v sekci Manage Storage - https://www.amazon.com/clouddrive/manage.
Jazyk - V případě, že se vám automaticky nedetekuje správné jazykové rozhraní, můžete provést  změnu po přihlášení do služby Amazon Drive. Vpravo nahoře zvolíte položku pro nastavení účtu (Account Settings) a z menu Change Language si vyberete z nabídky preferovaný jazyk a potvrdíte kliknutím na tlačítko OK.
RAW formáty - Především majitelé digitálních zrcadlovek ocení, že Amazon Drive rozpozná fotografie vyfocené v surovém formátu RAW. Mezi podporované přípony patří NEF (fotoaparáty Nikon) a CR2 (některé fotoaparáty Canon).
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Od roku 2015 funguje Amazon Drive jako další cloudová platforma. Výhody a nevýhody? Jdeme na to.'
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
  'obelstete-datovou-smrtku-naucte-se-odezirat-z-plotny',
  'Obelstěte datovou smrtku. naučte se odezírat z plotny',
  'Nejčastější signály, že pevný disk mele z posledního? Hardware a software disku se to nebojí říct naplno.',
  '## V první řadě pomůže pouhé pozorování systému:
**#1 Časté zamrzání operačního systému**, například při kopírování dat nebo i běžném prohlížení naznačuje problém se zápisem/čtením, což mohou mít na svědomí špatné sektory na disku.
Disk s více špatnými sektory lze stále používat, jak je obvyklé, ale pokud systém začne zapisovat data do chybného sektoru, může dojít k zatuhnutí, nebo restartu operačního systému. Chybné sektory nejrychleji odhalíte kontrolou SMART (Co to přesně je a jak s tím pracovat se dozvíte v tomto článku) dat přes specializovaný program.
**#2 Při kopírování dat na disk dochází k prodlevám v přístupu nebo konečné nečitelnosti dat.** Opět může být vina chybných sektorů, doporučujeme znovu kontrolu SMART dat.
**#3 Disk neúměrně dlouho načítá data a systém je znatelně pomalejší.** Toto může signalizovat opět špatné sektory nebo chybu vyrovnávací paměti.
**#4****Názvy složek se mohou samovolně změnit ve změť nesrozumitelných znaků nebo při prohlížení fotografií je soubor neúplný, nebo nelze vůbec přečíst**. V nejhorším případě dochází k samovolnému mizení dat z disku nebo k celkovému poškození konzistence.
**#5 Systém často padá do takzvané modré smrti – BSOD (Blue Screen Of Death)**. V mnoha případech se nedaří počítač spustit do systému. Na vině jsou opět chybné sektory, nebo v nejhorším případě půjde o chybu řadiče. Závěrem je, že disk se po více zapnutích stane nečitelný, nebo pro systém neviditelný.
## Životnost disku lze odhalit sledováním, jak se disk fyzicky chová:
**#1 Při zapnutí počítače se disk neúměrně dlouho načítá v BIOSu**, popřípadě se nenačte vůbec a je potřeba počítač několikrát restartovat než samotný BIOS (firmware počítače) disk detekuje. Časté problémy s detekováním disku způsobuje chybná řídící logika disku a může vyústit v nemožnost disk načíst v systému a znemožní data zálohovat.
• Nepodceňujte pravidelnou údržbu úložiště v PC. Je to jedna z našich 10 rad na zrychlení počítače.
**#2 Disk se zahřívá**, to lze poznat především v přenosném počítači, kde je disk doslova pod rukama. Teplo nesvědčí žádné komponentě a nadměrné zahřívání znamená velmi rychlý konec. Životnost lze prodloužit lepším chlazením disku, ale je pravděpodobné, že dlouhotrvající vysoké teploty už mohly disk nenávratně poškodit. V takovémto případě raději co nejrychleji zálohujte a kritická data na disk dále neukládejte.
**#3 Jakmile disk naběhne, ozývá se klapavý mechanický zvuk** a při pokusu o přístup na disk může být systém nestabilní. To může ukazovat na problém se čtením popřípadě řadičem. Konec je nevyhnutelný a je třeba co nejdříve provést zálohu.
**#4 Ticho a velmi opožděné spouštění naopak signalizuje selhání vnitřní elektroniky**, popřípadě motoru starající se o roztáčení disku. V takovém okamžiku je disk většinou už nespustitelný. Tady pomůže už jedině specialista. Podívejte se radši i na první kroky, které radíme uživatelům podniknout.
Všechny výše popsané symptomy jsou orientační, protože nikdo nemůže přesně vědět, jak dlouho takový disk ještě vydrží a kdy dojde k jeho totálnímu selhání.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Nejčastější signály, že pevný disk mele z posledního? Hardware a software disku se to nebojí říct naplno.'
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
  'kolecko-rotuje-a-hodiny-presypaji-to-me-ale-uz-vazne',
  'Kolečko rotuje a hodiny přesýpají, to mě ale už vážně…',
  'Expresivní výrazy tady nepomohou. Za to našich 10 osvědčených rad, jak zrychlit počítač, by mohlo. Přesvědčte se sami.',
  '## 1. Čistka v programech a aplikacích
Proč je počítač pomalejší? **Velké množství nainstalovaných programů**. Ty jednak zabírají místo v úložišti, často se automaticky spouštějí na pozadí již při startu systému a také se velice rády **samy aktualizují**.
To má dopad na **kapacitu operační paměti** a **procesoru**. Vývojáři se snaží tyto neblahé jevy eliminovat **kvalitní optimalizací**. Stačí však jeden nebo dva špatně optimalizované programy a počítači začne docházet dech.
Nejjednodušší je **otevřít seznam nainstalovaných programů** a **aplikací**, pečlivě jej prohlédnout včetně popisů jednotlivých programů a za kamaráda „ajťáka“, nebo pomoci Googlu zjistit, k čemu v počítači jsou. Ty, které se Vám nainstalovaly „*nedopatřením*“ nebo je již nehodláte používat, odinstalujte.
Jsou však také programy, které si potřebujete ponechat a občas používat, avšak jejich služby se **samy spouštějí při startu Windows** a prodlužují tak naběhnutí plochy. To lze zakázat v **konfiguraci systému**.
• Jestliže používáte Windows 7, stiskněte klávesy „*Win*“ a „*R*“ současně, do okna Spustit napište *msconfig* a potvrďte. V záložce „*po spuštění*“ pak ručně zakážete programy, které nechcete po zapnutí automaticky spouštět.
• Ve Windows 10 (radíme také, jak na zálohu a obnovu dat v tomto systému) je postup podobný. Klávesami „*Ctrl*“ „*Shift*“ „*Esc*“ otevřete správce úloh a opět v záložce „*po spuštění*“ můžete zakázat nechtěné programy.
Toto řešení je určeno spíše pro uživatele, kteří dokáží posoudit jednotlivé programy a jejich funkce. Citelný dopad na chod systému má takováto čistka jen v případě, že je v počítači nainstalovaný opravdu bezohledný program, který nebere ohled na pomalejší hardware.
## 2. Vypnutí grafických prvků
Na starších počítačích může být onou příslovečnou kotvou táhnoucí počítač ke dnu **grafické prostředí Windows**. To je v „*sedmičkách*“ i nových „*desítkách*“ plné efektní grafiky a animací, což není pro některé slabé stroje prospěšné.
Abychom je vypnuli, je třeba otevřít Ovládací panely, modul Systém. Vlevo je možnost **Upřesnit nastavení systému**. V následujícím okně otevřít nastavení výkonu a vybrat možnost „*optimalizovat pro výkon*“. Tím se vypnou všechny níže uvedené efekty. Lze je také zakázat či povolit jednotlivě.
Toto nastavení se znatelně projeví pouze **u velmi slabých či starých notebooků** a jde spíše o takovou poslední možnost z nouze.
• Polili jste si notebook vodou? Rychlý postup, jak ho ošetřit.
## 3. Údržba úložiště
Windows potřebuje **určitou volnou kapacitu pevného disku**. Obecně alespoň 10-15 GB. Pokud se u ikony pevného disku zobrazuje červená hodnota volného místa, je nejvyšší čas **udělat na disku pořádek**. Nejjednodušším řešením je například:
• přesunout fotky a videa na externí disk, flashdisk, nebo cloudové úložiště (o těch mimochodem píšeme seriál na pokračování – podívejte např. na Dropbox nebo Google Disk.
• promazat nepožívané soubory ze složky „stahování“, kde se často hromadí zbytečné gigabajty dat
• provést vyčištění disku kliknutím pravým tlačítkem na ikonu disku, a ve vlastnostech vybrat funkci „vyčistit“.
Další je na řadě **defragmentace**. Ta se týká jen klasických magnetických disků. Opět otevřeme „*vlastnosti*“ pevného disku a v záložce „*nástroje*“ vybereme funkci defragmentovat.
## 4. Nenáročný antivirový program
Není výjimkou, že podobně, jako jsme psali v první kapitole o automaticky spouštěných programech, je jedním takovým samotný **antivirový program**. Některé počítače se prodávají již s nainstalovaným antivirem, který nehledí na výkon PC a bere si tolik výpočetního výkonu, kolik chce. Antivir bychom však **neměli rušit úplně**, ale raději jej nahradit jiným, úspornějším.
• Jak poznáte, že PC byl napaden malwarem a co dělat?
Například na webu AV comparatives, lze najít aktualizované žebříčky antivirových programů podle různých aspektů. Pak si stačí vybrat jeden z mnoha, který vyhovuje našim požadavkům.
## 5. Pokročilé možnosti systému
Pro ty, kdo chtějí využít **pokročilejších funkcí systému Windows**, máme **4 tipy na zrychlení**.
### Vypnutí stránkování
Funkce, která umožňuje vyčlenit určité místo na pevném disku, se kterým systém zachází jako s operační pamětí RAM. Toto řešení je ale efektivní pouze ve spojení s rychlým SSD diskem a nikoliv s klasickým magnetickým.
• Jak maximalizovat životnost SSD
Pokud tedy máte v počítači klasický disk, otevřete „*Ovládací panely*“, modul „*systém*“ a vlevo možnost „*upřesnit nastavení systému*“. Vyberte záložku „*upřesnit*“ a „*nastavení*“ výkonu. Zde znovu záložku „*upřesnit*“. Dole klikněte na nastavení virtuální paměti.
V následujícím okně vyberte možnost „*nepoužívat stránkovací soubor*“ a pak „*nastavit*“. Dejte si však pozor na možné riziko. Pokud počítač nedisponuje dostatečně velkou operační pamětí RAM, může se stát, že ta dojde, **systém se ukončí chybou** a **uživatel přijde o všechna neuložená data**.
### Ukládání do mezipaměti
Toto je opět přínosem pouze při použití na SSD disku. Otevřete „*tento počítač*“, pravým tlačítkem klikněte na SSD disk a vyberte vlastnosti. V záložce „*hardware*“ klikněte na „*vlastnosti*“ a dalším okně v záložce „*obecné*“ klikněte na „*změnit nastavení*“. V následujícím okně vyberte záložku „*zásady*“ a zaškrtněte možnost ukládání do mezipaměti.
### Indexování
Jedná se o funkci, která urychluje vyhledávání v počítači. Pokud uživatel vyhledávání nepoužívá a ani nehodlá používat, může klidně tuto funkci vypnout. To lze provést jednoduše ve vlastnostech pevného disku, kde stačí odškrtnout možnost „*indexovat*“.
### Šifrování
To, jak již název napovídá, zabezpečuje obsah počítače. K jeho vypnutí se dostanete v Ovládacích panelech, v modulu Nástroj Bitlocker
Výše uvedené **čtyři funkce** pomohou trochu vylepšit svižnost systému na starších PC, avšak je nutné, aby uživatel věděl, co dělá. Tyto funkce totiž s sebou mohou nést **jistá rizika**, **především vypnutí stránkování a šifrování**.
## 6. Nastavení režimu napájení notebooku
Systém Windows myslí také na notebooky a jejich baterie. Proto obsahuje takzvaná **schémata napájení**. Ty slouží k tomu, aby **vyvažovala výkon a spotřebu notebooku**. Ve výchozím nastavení jsou nastavena tak, aby poskytovala vyvážený stav.
Nic však nedáte za to, když své nastavení zkontrolujete. Stačí v oznamovací oblasti hlavního panelu (spodní lišty) rozkliknete ikonku baterie. V následující nabídce můžete rovnou **přepínat mezi jednotlivými schématy**. Kliknete-li na odkaz „*možnosti*“ můžete v dalším okně nastavit pokročilé možnosti jednotlivých schémat.
• Mohlo by vás taky zajímat - jak předejít napětí v síti.
## 7. Nastavení bootovací sekvence
Opustíme-li prostředí Windows, máme určité možnosti pro zrychlení počítače, především pak jeho spouštění. Bude to ale vyžadovat **změnu hodnot v BIOS nebo UEFI**, což není rozhodně prostředí pro běžného uživatele. Chybné nastavení by mohlo znamenat **nefunkční PC** až do doby návštěvy odborníka.
Zkrácení času od okamžiku zapnutí PC do okamžiku, kdy se objeví animace spouštění Windows lze docílit tak, až v prostředí BIOS nebo UEFI **upravíme nastavení pořadí bootování** tak, aby na prvním místě byl pevný disk s instalací Windows a až za ním USB konektor či DVD mechanika. Univerzální návod na tento postup není, protože **každý BIOS či UEFI má trochu jiné prostředí**.
## 8. Navýšení RAM
Nyní se dostáváme k **vylepšení hardwaru**, tedy fyzických součástí uvnitř PC. Jako první volíme operační paměť neboli RAM. Jedná se o nejjednodušší a nerychlejší vylepšení. Jeho hlavním přínosem je to, že dovolí operačnímu systém **uložit si zde více programů** a jejich dat, se kterými pak může pracovat mnohonásobně rychleji, než kdybychom je museli neustále načítat z pevného disku. Navíc, jak jsme uvedli výše, dostatek RAM může uživateli dovolit **vypnutí stránkování**.
Výhodou navýšení kapacity RAM je také to, že je do počítače stačí vložit a ihned je systém připraven k použití **bez nutnosti jakýchkoliv úprav softwaru**. Po finanční stránce se také jedná o nejlevnější investici.
## 9. SSD disk
Jedním z nejlepších technologických pokroků v oblasti PC je **masové rozšíření pevných disků typu SSD**. Ty oproti klasickým magnetickým neobsahují žádné pohyblivé součásti a data se v nich ukládají podobně jako třeba ve známých flash discích. Hlavní výhodou je krom energetické úspornosti také jejich **rychlost**. Jsou mnohonásobně rychlejší než HDD, úspěšně se na nich dají využívat pokročilé funkce.
V současnosti se investice o SSD pohybuje průměrně **okolo 3 000 Kč**, podle kapacity i více, ale na výkon má vynikající vliv. Nevýhodou je, že uživatel musí dostat data, potažmo celý systém ze starého disku na nový. K tomu jsou však často SSD vybaveny nějakým **softwarem od výrobce**, který má přechod usnadnit
## 10. Procesor
Poslední úpravou vnitřností PC, která pozvedne jeho výkon, je samozřejmě **výměna procesoru**. Zde by běžný uživatel měl dát velký pozor. Jednak při výběru musí sehnat procesor kompatibilní s paticí své základní desky, tak zvaný „*socket*“ a jednak musí počítat s tím, že musí systém Windows na tuto změnu připravit. Znamená to, že než před plánovanou výměnou procesoru naposledy vypnete PC, proveďte „*sysprep*“ neboli **The System Preparation Tool** v příkazovém řádku. Pro přesný postup doporučujeme najít si podrobný návod na webu, mimo jiné i na oficiálních stránkách Microsoftu.
**výrazné navýšení výkonu**
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  8,
  'Expresivní výrazy tady nepomohou. Za to našich 10 osvědčených rad, jak zrychlit počítač, by mohlo. Přesvědčte se sami.'
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
  'cloudove-uloziste-mega-jak-s-nim-pracovat-a-zalohovat-data',
  'Cloudové úložiště mega: jak s ním pracovat a zálohovat data',
  'Víte, že na něm můžete ze začátku využít až 50 GB zdarma pro vaše data? Sepsali jsme průvodce cloudovým úložištěm Mega.',
  '## Jak to všechno začalo?
Službu Mega spustil **zakladatel Kim Dotcom z Německa** (vlastním jménem Kim Schmitz) dne 19. ledna 2013. Stalo se tak přesně po roce, kdy byl zastaven chod jeho předchozího podobného projektu. Server MegaUpload, jeden z nejpoužívanějších webů pro sdílení dat na internetu, byl zablokován americkou vládou za porušování autorských práv kvůli šíření milionů nelegálních souborů.
Dotcom se však i přes četné problémy nevzdal a vytvořil nové, tentokráte bezpečné, úložiště souborů pod zkráceným názvem Mega.
## Výhody
+ Podpora několika desítek jazyků včetně češtiny a slovenštiny
+ Přehledné a intuitivní grafické rozhraní
+ Možnost náhledu do rozhraní služby i bez registrace
+ Maximální velikost souboru není omezena
+ Data jsou šifrována během přenosu i na samotném úložišti
+ Mobilní aplikace Mega je k dispozici pro Android, iOS, Windows Phone a BlackBerry
+ Podporuje verzování souborů
## Nevýhody
- Neplacená verze Mega nabízí kapacitu pouze 50 GB
- Placené tarify jsou ve srovnání s konkurencí dražší
## Kapacity/ceny
**Vytvořením účtu ve službě Mega získáte ihned 50 GB úložného prostoru zdarma** a budete moci přijímat zprávy od svých přátel a spolupracovníků. V případě že potřebujete kapacitu cloudu navýšit, můžete si vybrat některý z placených balíčků předplatného.
• *Znáte obecné výhody cloudu**jako takového pro ukládání dat?*
### Dostupné tarify:
• Mega Pro Lite - 200 GB prostoru a 1 TB přenosu za 4,99 eur/měsíc
• Mega Pro I - 1 TB prostoru a 2 TB přenosu za 9,99 eur/měsíc
• Mega Pro II - 4 TB prostoru a 8 TB přenosu za 19,99 eur/měsíc
• Mega Pro III - 8 TB prostoru a 16 TB přenosu za 29,99 eur/měsíc
## Link na stažení
Abyste mohli využívat cloudovou jednotku Mega na svém počítači nebo notebooku, nemusíte mít nainstalovaný žádný program. **Mega běží přímo ve webovém prohlížeči**. Nicméně pro jednodušší synchronizaci dat mezi více počítači a cloudem si Mega připravil desktopového klienta MEGAsync, který je dostupný pro operační systémy Windows, Mac OS a Linux. Po jeho instalaci můžete zkontrolovat nebo nastavit jeho činnost kliknutím na ikonku zástupce programu v systémové liště.
Do internetových prohlížečů Firefox a Chrome si můžete navíc přidat praktický doplněk, který sníží přístupovou dobu k nahraným souborům, zvýší rychlost stahování souborů a vylepší bezpečnost využívání služby. Pro pohodlnější přístup do cloudového úložiště Mega z vašeho smartphonu nebo tabletu je třeba si nejprve nainstalovat bezplatnou mobilní aplikaci.
**Odkazy pro download aplikace Mega:**
• Android - https://play.google.com/store/apps/details?id=mega.privacy.android.app
• iOS - https://itunes.apple.com/us/app/mega/id706857885?mt=8
• Windows Phone - https://www.microsoft.com/cs-cz/store/p/mega-privacy/9wzdncrcwsjr?rtc=1
• MEGAsync - https://mega.nz/sync
## Jak si založit účet
1. Přejděte na stránku https://mega.nz a klikněte na tlačítko Vytvořit účet.
2. Objeví se vám krátký registrační formulář, do něhož je třeba zadat své jméno, příjmení, e-mail a zvolit si heslo. Nakonec ještě zaškrtněte políčko, že souhlasíte s obchodními podmínkami služby Mega.
3. Ověřte správnost e-mailu kliknutím na odkaz, který vám přijde do schránky.
4. Přihlaste se do služby Mega na svém počítači a to je vše.
Jestliže si nejste jistí, zda vám bude služba vyhovovat, **můžete si ji vyzkoušet i bez registrace.** Pro tuto možnost klikněte na hlavní stránce na tlačítko Try without account.
## Rady a tipy:
**Výběr vhodného hesla** – vaše heslo tvoří hlavní dešifrovací klíč, proto by nemělo být příliš krátké nebo jednoduché na uhodnutí. Pozor! Pokud zapomenete heslo ke svému uživatelskému účtu, nebude možné jej z bezpečnostních důvodů žádným způsobem obnovit. Bez hesla už nikdy nebudete mít přístup k souborům v cloudu.
**Automatické zálohování**
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Víte, že na něm můžete ze začátku využít až 50 GB zdarma pro vaše data? Sepsali jsme průvodce cloudovým úložištěm Mega.'
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
  'cloudove-uloziste-google-disk-jak-s-nim-pracovat-a-zalohovat-data',
  'Cloudové úložiště google disk: jak s ním pracovat a zálohovat data',
  '4. díl našeho cloudového průvodce. Tentokrát jsme si blíže posvítili na Google Disk. Co vše umí a neumí? ',
  '## Co všechno v něm najdete?
Součástí Disku jsou kancelářské aplikace Google Docs, které vám pomáhají upravovat vaše textové soubory, dokumenty, tabulky, formuláře, obrázky nebo prezentace v online prostředí. Všechny soubory editované pomocí kancelářského balíku se automaticky ukládají do cloudu.
Google Disk podporuje verzování většiny typů souborů, takže se v případě potřeby můžete pohodlně vrátit k dřívější verzi.
V historii najdete sto posledních revizí včetně informace, kdo soubor změnil, a to po dobu maximálně 30 dnů. Úložiště je propojené s dalšími službami, které Google nabízí - poštovní klient Gmail, Fotky Google či kalendář, což vám výrazně usnadní zálohování (znáte zálohovací princip 3 – 2 – 1?).
**Praktickou funkcí je možnost sdílení specifického obsahu s vašimi přáteli nebo kolegy**, což se hodí například pro jednodušší spolupráci více uživatelů na stejném projektu bez nutnosti zasílání e-mailových zpráv s přílohami.
## Jak začít Google Disk používat?
Pro zahájení práce s Google Diskem je **zapotřebí se nejprve zaregistrovat**. Na webové stránce https://drive.google.com klikněte na tlačítko "Přejít na Google Disk" a založte si uživatelský účet dle pokynů na obrazovce.
Jakmile se do účtu přihlásíte, v menu v levé části obrazovky uvidíte jednotlivé položky Google Drive - Můj disk, Počítače, Sdíleno se mnou, Nedávné atd. Kliknutím na tlačítko Přidat nad základním menu můžete na Disku vytvořit nové složky, soubory nebo dokumenty. Služba podporuje uploadování pomocí funkce Drag and Drop, tedy přesunování souborů do úložiště přetahováním myší.
### Link na stažení
Disk Google můžete používat online ve webovém rozhraní, nicméně je dostupný rovněž jako klient pro desktopy a laptopy s operačními systémy Windows (čtěte také, jak zálohovat ve Windows 10 rozhraní) nebo Mac OS. Dále existují bezplatné mobilní aplikace pro smartphony a tablety s platformami Android a iOS.
• Velký průvodce zálohování po světě Applu.
### Odkazy pro download aplikace Google Disk:
Windows/Mac OS - https://www.google.com/intl/cs_ALL/drive/download
Android - https://play.google.com/store/apps/details?id=com.google.android.apps.docs
iOS - https://itunes.apple.com/app/google-drive/id507874739
### Tarify a ceny
Registrací do cloudového úložiště Google Disk **automaticky získáte zdarma 15 GB úložného prostoru** na serverech Googlu pro ukládání vašich dat - fotografií, videí, nákresů, diagramů, poznámek, dynamických tabulek, hudby a dalších. Kapacitu bezplatné verze je možné za měsíční poplatek rozšířit pomocí předplatného na 100 GB, 1 TB, 2 TB, 10 TB, 20 TB či 30 TB.
#### Přehled Google Disk tarifů s cenami:
• 100 GB - 59,99 Kč měsíčně/599,99 Kč ročně se slevou 17 %
• 1 TB - 299,99 Kč měsíčně/2 999,99 Kč ročně se slevou 17 %
• 2 TB - 599,99 Kč měsíčně
• 10 TB - 2 999,99 Kč měsíčně
• 20 TB - 5 999,99 Kč měsíčně
• 30 TB - 8 999,99 Kč měsíčně
## Výhody
+ Spolehlivé a rychlé cloudové úložiště pro zálohování a synchronizaci souborů k soukromým i firemním účelům.
+ Bezplatná verze nabízí slušnou startovací velikost úložiště 15 GB.
+ Neomezený přístup k dokumentům z počítače, chytrého mobilního telefonu či tabletu, ať jste kdekoliv.
+ Možnost sdílení vybraných souborů s dalšími uživateli. Nastavení práv pro zobrazení, komentování a úpravu souborů.
+ Dbá na bezpečnost, data jsou šifrována pomocí protokolu SSL.
+ Offline režim umožňuje zpřístupnit soubory bez nutnosti připojení k internetu.
+ Vyhledávání podle názvu nebo obsahu, funkce sledování historie souborů.
+ Bezplatné pokročilé nástroje a mobilní aplikace pro Android a iOS.
+ Je k dispozici ve všech jazycích, které Google podporuje.
## Nevýhody
- Maximální velikost nahraného souboru je 5 TB.
- Předplatné s vyšší kapacitou úložiště je poměrně drahé.
- Chybí možnost pro streamování médií a ochrana souborů heslem.
- Zdlouhavé nastavování různých práv k rozdílnému obsahu pro větší množství uživatelů.
## 5 rad a tipů pro pokročilé používání Google Disku:
**Google Keep** - Zaznamenejte si hlasové poznámky pomocí jednoduchého doplňku zdarma pro internetový prohlížeč Google Chrome. Aplikace vám pomocí štítků usnadní organizaci všech poznámek, seznamů, vyfocených obrázků a videí, na které aktuálně nemáte čas, ale chcete se k nim později vrátit. Rozšíření Keep funguje v počítači, notebooku i na chytrých mobilních zařízeních a veškeré soubory jsou neustále synchronizovány.
**Quickoffice** - Mobilní aplikace od Google, která vám umožní rychle a jednoduše otevírat a editovat dokumenty, tabulky anebo prezentace vytvořené v systému Microsoft Office. Odkaz ke stažení aplikace pro Android a iOS najdete na stránce https://support.google.com/quickoffice/answer/3381968?hl=cs.
**Doplňky pro Google Chrome** - V internetovém obchodě Chrome najdete přes 100 různých aplikací, které vám pomohou rozšířit hranice vaší práce s dokumenty v Google Disku. Instalace do prohlížeče Chrome je snadná a nic nestojí, takže můžete vyzkoušet, který nástroj vám bude nejlépe vyhovovat.
**Sdílení z aplikací** - Do Google Disku můžete uploadovat soubory z mnoha různých mobilních aplikací třetích stran. V dnešní době je funkce sdílení téměř samozřejmostí, která vám urychlí práci s kopírováním z mobilních zařízení do cloudu.
**Hierarchie** - Pro nastavování přístupových práv k jednotlivým souborům využívejte hierarchii adresářové struktury. Oprávnění se vždy dědí směrem dolů, takže pokud má nějaký uživatel povoleno upravovat danou složku, může upravovat i podložky umístěné v ní. Dávejte však pozor na situaci, kdy si uživatel vytvoří v nějaké složce vlastní složku s vlastními právy.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  '4. díl našeho cloudového průvodce. Tentokrát jsme si blíže posvítili na Google Disk. Co vše umí a neumí? '
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
  'apple-jak-probiha-zalohovani-dat-na-jednotlivych-zarizenich-a-prace-s-icloud',
  'Apple: jak probíhá zálohování dat na jednotlivých zařízeních a práce s icloud',
  'Vše co jste chtěli vědět o zálohování pro platformu Apple na jednom místě. To zní dobře, že? :-)',
  '## Zálohování iOS zařízení
V současné době se smartphony stávají pro řadu uživatelů přenosnou kanceláří, plnou důležitých dat, zpráv, dokumentů a kontaktů. Ztráta těchto dat bez možnosti obnovení může mít nedozírné následky, s pravidelnou prevencí lze ale této ztrátě snadno předejít.**Určitě se nevyplatí zálohu zanedbávat**, navíc se jedná o jednoduchý a relativně rychlý proces.
• *Znáte **zálohovací pravidlo 3 – 2 – 1?*
Stejně jako u všech zařízení od společnosti Apple máte i u iOS zařízení hned několik možností zálohy. **Jednoduchou variantou je iCloud**, kde záloha probíhá ve chvíli, kdy jste připojeni na jakoukoliv Wi-Fi síť. Zálohované soubory se nacházejí v cloudovém úložišti, nepotřebujete tedy žádné další zařízení.
Zálohy na iCloudu obsahují skoro všechna data a nastavení uložená v zařízení. Některá data se již na iCloudu nacházejí automaticky - jsou to například kontakty, kalendáře, poznámky, Můj fotostream a Knihovnu fotografií na iCloudu. Při zálohování do iCloudu nedochází k záloze dat, uložených v jiných cloudových službách.
Další možností je **zálohování v iTunes**. K tomu budete potřebovat své iOS zařízení a počítač s iTunes. Připojte svůj iPhone či iPad k počítači USB kabelem a spusťte iTunes. V horní části okna aplikace iTunes klikněte na ikonku svého iOS zařízení a poté v sekci “Záloha” zvolte “Zálohovat”. Obdobným způsobem pak probíhá obnovení zálohy z iTunes.
• *Co dělat v momentě, když **iPhone spadne do vody**? *
## Zálohování Macu
Zálohování Macu není o nic méně důležité, než zálohování ostatních zařízení. Obrovskou výhodou Macu je nativní software, díky kterému pro vás **zálohování nebude znamenat žádnou práci navíc**. V Apple Menu v horní části vaší obrazovky zvolte Předvolby -> Time Machine, kde zvolíte disk, na který má zálohování probíhat. **Doporučujeme nastavit automatické zálohování**, díky kterému už se nebudete muset o nic víc starat. Time Machine automaticky zálohuje úplně všechno, takže můžete ze záloh obnovit jak jednotlivé soubory, tak celý systém. Time Machine se v tomto článku budeme ještě podrobněji věnovat.
*
## Jak zálohovat na CD/DVD?
Další možností zálohy Macu je zálohování na iCloud nebo vypálení zálohy na CD či DVD. Jste-li majitelem Macu s integrovanou optickou jednotkou nebo připojenou externí DVD mechanikou, můžete své soubory zálohovat na CD nebo DVD. Ze všeho nejprve vložte do jednotky prázdný disk. Otevřete Finder - možnost otevření Finderu při vložení CD nebo DVD do mechaniky lze nastavit automaticky jako výchozí. Poté, co se na vaší ploše objeví vložený disk, klikněte na něj a do jeho okna přesuňte z okna Finderu soubory, které na disk chcete vypálit. Zvolte příkaz Soubor -> Vypálit.
Chcete-li mít soubory zálohované na externím zařízení (externí HDD – radíme, jak vybrat, USB flash disk – jak z něho neztratit data), ale nepotřebujete kompletní zálohu přes Time Machine, můžete jednotlivé soubory ve Finderu jednoduše zkopírovat a po připojení externího zařízení k Macu opět vložit.
### Práce s Time Machine
Jak jsme již zmínili výše, **funkce Time Machine** je nativní součástí každého iMacu či MacBooku. **Díky ní probíhá automatické ukládání aktuální kopie všech souborů**, které máte na svém Macu, na zvolený externí disk, odkud můžete soubory kdykoliv snadno obnovit.
Jediné, co musíte udělat, je připojit externí disk k vašemu Macu a spustit Time Machine. Potvrďte využití připojeného disku pro zálohování - a Time Machine odvede zbytek práce zcela za vás. Program zaindexuje a zazálohuje obsah vašeho disku na externí jednotku a poté bude již záloha probíhat automaticky, jen je zapotřebí, abyste měli disk připojený k počítači.
#### Jak probíhá obnova ze zálohy v Time Machine?
Při spuštění aplikace můžete na pravé straně vidět jednotlivé zálohy. Stačí kliknout na požadovaný čas, vyhledat soubor, a ten již jednoduše obnovíte. V Time Machine je navíc možné vyhledávat prostřednictvím Spotlightu, Cover Flow a Quick Look.
## Zálohování Apple Watch
K zařízením, obsahujícím řadu důležitých dat, se přidaly i **chytré hodinky Apple Watch**. Byla by škoda o daná data přijít, proto se vyplatí i zde provádět pečlivou zálohu. **Ta probíhá automaticky** do propojeného – pokud jste taktéž vlastníky - iPhonu, odkud lze opět obnovit. Jaká data obsahuje záloha Apple Watch?
• Data aplikací
• Rozložení aplikací na ploše
• Nastavení ciferníku, včetně aktuálního ciferníku, přizpůsobení a pořadí
• Nastavení Docku, včetně pořadí a dostupných aplikací
• Obecná nastavení systému, například ciferníku, jasu, zvuku nebo haptiky
• Zdravotní a kondiční data z Apple Watch
• Nastavení upozornění
• Playlisty synchronizované s Apple Watch
• Synchronizované fotoalbum
• Časové pásmo
Pokud párování Apple Watch s iPhonem zrušíte, vytvoří iPhone automaticky zálohu vašich hodinek a z Apple Watch se smažou všechna data. Pro zajištění úplného zazálohování je zapotřebí provést zrušení párování v dosahu iPhonu.
## Co je to iCloud
iCloud je **cloudové úložiště** pro majitele zařízení od Applu, respektive pro majitele iCloud účtu. Lze na něj provádět zálohy zařízení, knihovny fotografií a dalších dat.
**Ve výchozím nastavení nabízí bezplatné úložiště o velikosti 5GB**, kdo chce ale iCloud využívat naplno pro nejrůznější zálohy, neobejde se bez příplatku za vyšší kapacitu.
• *I když vlastníte Apple platformu iCloud není od věci zálohovat i na další možné cloudové úložiště jako např. Dropbox - o nich i píšeme seriál na pokračování.*
### Ceny tarifů za iCloud jsou aktuálně:
• 50 GB - 25 Kč / měsíčně
• 200 GB - 79 Kč / měsíčně
• 1 TB - 249 Kč / měsíčně
• 2 TB - 499 Kč / měsíčně
## Záloha iOS zařízení do iCloudu
K záloze informací z vašeho iOS zařízení do iCloudu dochází denně v případě, že je dané zařízení zapnuté, uzamčené, připojené ke zdroji napájení a k Wi-Fi síti.
• Pro automatické zálohování navštivte z domovské obrazovky Nastavení -> iCloud -> Záloha.
• Zde zapněte možnost “Záloha iCloud” (u verzí iOS starších, než 10.3),
• případně Nastavení -> lišta s vaším jménem v horní části -> iCloud ->Záloha na iCloudu (iOS 10.3 a novější).
Pokud nedojde k zálohování po dobu delší, než 180 dní, společnost Apple si vyhrazuje právo zálohy vašeho zařízení z iCloudu odstranit.
## Nastavení a zrušení záloh do iCloudu
O aplikacích, které se budou do iCloudu zálohovat, můžete rozhodnout sami - selekcí zálohovaných aplikací zároveň na iCloudu ušetříte místo.
• V iOS 10.3 a novějším klepněte na Nastavení -> panel s vaším jménem -> iCloud -> Úložiště -> Spravovat úložiště.
• Zde klepnete na název příslušného iOS zařízení a v části “Vyberte data k zálohování” vypnete ty aplikace, které nechcete zálohovat.
### Pokud chcete zálohování do iCloudu zcela vypnout, postupujte podle následujících pokynů:
iOS 10.3 a novější:
• z domovské obrazovky přejděte na Nastavení -> panel s vaším jménem -> iCloud -> Úložiště -> Spravovat úložiště.
• Zde klepnete na název požadovaného iOS zařízení a poté na Smazat zálohu -> vypnout a smazat.
• U iOS 10.2 a staršího klepnete na domovské obrazovce na Nastavení -> Obecné -> Úložiště a využití iCloudu.
• Zde v sekci iCloud klepnete na možnost Spravovat úložiště -> název vašeho iOS zařízení -> Smazat zálohu -> Vypnout a smazat.
### Chcete-li vypnout zálohování do iCloudu na Macu,
• klikněte na Apple Menu v panelu nabídek v horní části vaší obrazovky -> Předvolby systému -> iCloud. Zde kliknete na Správa -> Zálohy.
• Dále stačí už jen vybrat některou ze záloh, kliknout na Smazat a potvrdit.
Smazáním zálohy vždy vypnete zálohování daného zařízení do iCloudu.
### Záloha obsahu iCloudu
Než smažete své zálohy z iCloudu, je dobrým nápadem pořídit si jejich kopii a uložit ji na pevný disk, na externí úložiště a pro jistotu ještě na jiné cloudové úložiště.
### Záloha dokumentů a souborů na iCloudu – Mac
• U operačních systémů OS X Mountain Lion a novějších otevřete aplikaci, ve které jste soubor vytvořili.
• V horní části obrazovky zvolte Soubor -> Otevřít -> iCloud.
• Otevřete požadovaný dokument a klikněte za současného stisku klávesy Alt na Soubor -> Uložit jako.
• Vyberte umístění pro uložení dokumentu a klikněte na Uložit.
Po upgradu na iCloud Drive lze soubory, uložené na iCloud Drivu, stáhnout i z webu iCloud.com.
• Na svém Macu se přihlaste na iCloud.com.
• Otevřete aplikaci iCloud Drive, Pages, Numbers nebo Keynote.
• Klikněte na šipku, směřující dolů - požadovaný dokument se stáhne na váš pevný disk do složky Stahování / Downloads.
### Kopírování dokumentů z aplikace iCloud Drive v iOS 9
• Na svém iOS zařízení otevřete aplikaci iCloud Drive.
• V levém dolním rohu klepněte na Sdílet a zvolte způsob odeslání kopie souboru.
### Záloha fotografií a videí – iOS
Pokud máte zapnutou Knihovnu fotografií na iCloudu, ukládají se vaše fotografie a videa automaticky na iCloud.
• Chcete-li pořídit kopii těchto souborů, klepněte na domovské obrazovce na Nastavení -> iCloud -> Fotografie.
• Poté zvolte Stáhnout a ponechat původní a proveďte import souborů do vašeho počítače.** **
### Záloha fotografií a videí – Mac
• V OS X Yosemite 10.10.3 a novějším otevřete aplikaci Fotky - její ikonku naleznete v Docku ve spodní části vaší obrazovky.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  8,
  'Vše co jste chtěli vědět o zálohování pro platformu Apple na jednom místě. To zní dobře, že? :-)'
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
  'dropbox-jak-s-nim-pracovat-a-zalohovat-data',
  'Dropbox: jak s ním pracovat a zálohovat data',
  'V dnešním článku se dozvíte výhody a nevýhody cloudového úložiště Dropbox.',
  '##
## Co je Dropbox?
Webové úložiště, které je založeno na cloudovém řešení. Nahrazuje klasické přenášení souborů na CD, externích discích, flash discích apod. elektronickou cestou. Všechny vaše fotografie, textové materiály a multimediální soubory máte kdykoliv po ruce ve vašem počítači nebo ve sdílené složce na internetu.
• *V dalším díle cloudových průvodců jsme si na paškál vzali Microsoft One Drive. *
Dropbox můžete používat na jakémkoliv běžném operačním systému - Microsoft Windows, Linux a MacOS, i na chytrých mobilních telefonech s platformami Android, iOS nebo BlackBerry.
• *Záloha a obnovat dat ve Windows 10*
## Jak to všechno začalo?
Historie vzniku služby Dropbox se datuje do roku 2007. Založil jej student Massachusettského technologického institutu (MIT) jménem Drew Houston především pro své potřeby, jelikož se mu často stávalo, že zapomínal svůj USB disk s materiály.
• *Používáte USB disky, jak z nich neztratit data?*
Jiná existující online řešení pro úschovu souborů byla dle jeho soudu nedostatečná z hlediska rychlosti, kapacity a četných chyb, tak se rozhodl vytvořit vlastní systém a zpřístupnit jej i dalším lidem, kteří se potýkali se stejným problémem. O Dropbox byl velký zájem, časem byl doplněn o řadu užitečných funkcí a dnes ho používají miliony uživatelů.
## Jak to všechno začalo? Jak začít Dropbox používat?
• Na webových stránkách www.dropbox.comsi nejprve vytvořte svůj uživatelský účet.
• Ověřte svou e-mailovou adresou kliknutím na odkaz ve zprávě, kterou byste měli zanedlouho obdržet.
• Stáhněte si a nainstalujte aplikaci Dropbox do svého počítače a přihlaste se ke svému učtu.
• Odkaz ke stažení aplikace: https://www.dropbox.com/downloading
• V nastavení programu (sekce Advanced settings) si vyberte složku (Dropbox location) pro ukládání dat, která se bude automaticky synchronizovat s vaším diskem na serveru. A dále si zvolte také složky, které se mají synchronizovat s počítačem. Pokud nenastavíte jinou cestu, výchozí umístění složky je C:/Users//Dropbox.
• Nastavení je kompletní. Nyní když uskutečníte v Dropbox složce jakoukoliv změnu, provede se také ve složce v cloudu. Pokud máte jakékoliv problémy s instalací nebo nastavením služby, zkuste navštívit oficiální nápovědu Dropboxu na stránce: https://www.dropbox.com/help
## Jaké jsou možnosti?
Dropbox je možné používat dvěma způsoby - buď bezplatně, nebo jako placenou verzi. U Dropboxu zdarma můžete využívat pro uložení souborů 2 GB prostoru, kterou můžete pomocí pozvánek dalším uživatelům rozšířit až na 16 GB.
Druhou možností je placená verze, v tomto případě máte na výběr ze dvou variant Standard a Advanced. První vychází na 10 € měsíčně, pokud si ji předplatíte na celý rok. V ceně je 2TB kapacita, integrace Office 365, chytrá synchronizace, 56bitové AES a SSL/TLS šifrování dat a mnoho dalšího. Naopak Dropbox Advanced nabízí od 15 € měsíčně neomezené úložiště a další rozšířené funkce.
Vlastnosti verzí můžete porovnat na stránce: https://www.dropbox.com/business/plans-comparison
## Výhody
+ Spolehlivé cloudové úložiště pro zálohování a synchronizaci souborů pro soukromé i firemní účely.
+ Možnost sdílení dokumentů mezi další uživatele, kteří pracují například na stejném projektu.
+ Ke svým souborům můžete kromě aplikace na počítači přistupovat také přes desktopové rozhraní nebo smartphone.
+ Díky popularitě službu podporuje stále více aplikací.
• *5 důvodů, proč využívat cloud?*
## Nevýhody
- Bezplatná verze nabízí pouze 2GB úložiště. Poplatek se pohybuje od 10 € za měsíc.
- Rozhraní je sice intuitivní, nicméně nepodporuje český jazyk.
### 10 rad a tipů pro pokročílé používání Dropboxu
• S aplikací 1Password můžete vytvořit silná hesla pro všechny vaše účty, která budou uložena jako zabezpečený soubor v Dropboxu. Aplikace je zdarma pro Android a iOS, za poplatek pro Windows a Mac. Ke stažení zde.https://agilebits.com/store.
• Posílání velkých souborů, které se nevejdou do e-mailové přílohy, můžete dotyčnému snadno poslat přímo do Dropboxu přes aplikaci DBinbox. Více informací na https://dbinbox.com.
• Bezplatná aplikace Scanbot pro iOS a Android vám pomůže s naskenováním jakéhokoliv dokumentu přes kamerku vašeho telefonu a jeho upload do cloudu.
Odkaz ke stažení: https://scanbot.io/en/
• Fotografie vám mohou v Dropboxu zabírat velkou kapacitu, přesuňte je rychle na Google Disk
• Jestliže potřebujete uložit fotografie z Instagramu do Dropboxu, použijte funkci save-your-instagram-photos-to-dropbox.
• Uložte si své oblíbené písničky ze Soundcloudu do Dropboxu.
• Ukládejte si screenshoty do svého osobního cloudu. Stačí v nastavení Dropboxu v sekci Preferences - Import zaškrtnout možnost "Share screenshots using Dropbox".
• V případě krádeže zařízení, které má přístup k vašemu Dropbox účtu, jej odstraňte ze seznamu povolených zařízení v menu Settings - Security - Devices.
• Připojením vašeho Facebook profilu k Dropboxu získáte 125 MB úložného místa navíc. To samé platí, i když budete sledovat účet @Dropbox na Twitteru.
• Posílejte jednoduše PDF soubory do čtečky e-knih Kindle přes funkci
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'V dnešním článku se dozvíte výhody a nevýhody cloudového úložiště Dropbox.'
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
  'microsoft-one-drive-jak-s-nim-pracovat-a-zalohovat-data',
  'Microsoft one drive: jak s ním pracovat a zálohovat data',
  'V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.',
  '## Co je One Drive?
OneDrive je prostor vyhrazený v internetovém úložišti pro ukládání vašich osobních souborů, ke kterým máte přístup z jakéhokoliv zařízení připojeného k internetu. Se službou OneDrive společnosti Microsoft budete mít všechna data na jednom místě. K souborům v cloudu můžete přistupovat pouze vy nebo je můžete sdílet se svými přáteli, přičemž pro přístup k veřejným souborům není vyžadován Microsoft účet. Dokumenty je možné editovat online na vašem počítači, tabletu, notebooku atd.
• *Jak si poradit se notebookem plným vody?*
## Jak to všechno začalo?
Služba OneDrive, která se dříve jmenovala SkyDrive, vznikla sloučením několika jiných cloudových služeb firmy Microsoft. Televizní společnost British Sky Broadcasting Group provozující kanály BSkyB si soudně nárokovala právo na užívání jména Sky. Spor s Microsoftem vyhrála, a tak muselo dojít k přejmenování. SkyDrive se tak plně zaměřil na hosting souborů v online světě s novým označením OneDrive, jež se používá i dnes. Cloudová služba je založena na webovém uživatelském rozhraním založeném na HTML5.
## Jak začít One Drive používat?
• Přejděte na stránku https://onedrive.com a klikněte na tlačítko Sign up for free.
• Založte si Microsoft účet a správnost e-mailu ověřte kliknutím na odkaz, který vám přijde do schránky.
• Přihlaste se v aplikaci OneDrive na vašem počítači.
V případě problému s nastavením služby nebo funkcemi můžete navštívit oficiální centrum nápovědy k produktu Microsoft OneDrive na stránce https://support.office.com/cs-CZ/OneDrive, kde najdete mnoho užitečných rad a návodů pro začátečníky i pro pokročilé uživatele.
• *Jak pracovat a zálohovat v Dropboxu?*
### Link na stažení
Abyste mohli OneDrive využívat na svém počítači, tabletu, chytrém mobilním telefonu nebo Xboxu, je třeba si nejprve nainstalovat aplikaci a vytvořit si uživatelský účet. Jestliže využíváte počítač nebo notebook s operačním systémem Windows 10, máte službu OneDrive na PC zpravidla již předinstalovanou.
Odkaz pro download OneDrive (i pro Macintosh) najdete na webu https://onedrive.live.com/about/cs-CZ/download.
## Výhody
+ Přístup k vašim souborům a fotografiím, ať jste kdekoliv.
+ Možnost nastavení automatické synchronizace složek, což se hodí především pro zálohování dat.
+ Mobilní aplikace OneDrive pro chytré telefony zdarma - je dostupná pro smartphony s operačními systémy Android, iOS a Windows Phone.
+ Jednoduché nastavení uživatelských práv pro práci se soubory dalším lidem, přičemž vidíte jejich změny a komentáře.
+ Podporuje více než 270 různých typů souborů.
## Nevýhody
- Bez internetového připojení nemůžete své soubory zálohovat, ani uploadovat. Pro správné fungování je vyžadováno rychlé připojení k internetu bez limitu přenesených dat.
- V základní verzi služby OneDrive zdarma máte pouze 5 GB úložného prostoru.
- Automatické ukládání historie změn souborů pro možný pozdější přístup je přístupný pouze u dokumentů Microsoft Office.
- Malá úroveň zabezpečení. Data se ukládají na serverech poskytovatele a nejsou šifrována, tudíž existuje riziko neoprávněného přístupu k datům cizím osobám.
- Smluvní podmínky služby obsahují informaci, že Microsoft může ve vašich souborech hledat závadný obsah, že může takové soubory smazat a případně vám zablokovat účet.
## Jaké jsou možnosti?
Microsoft OneDrive je pro uživatele dostupný v několika různých tarifech, které se liší podle toho, pro koho má být cloudové úložiště určeno - zda pro jednotlivce nebo pro firmy. OneDrive pro jednotlivce existuje ve čtyřech různých variantách. S bezplatnou verzí OneDrive Basic zákazník získá 5 GB volného prostoru zdarma. Pokud potřebuje místa více, za poplatek 49,99 Kč/měsíčně si může dokoupit větší variantu OneDrive 50 GB. Dále existují dva zvýhodněné balíčky OneDrive pro jednotlivce s kancelářskou sadou Microsoft Office 365: 1. Office 365 pro jednotlivce + 1TB OneDrive s prémiovými funkcemi za 1899 Kč na rok nebo 2. Office 365 pro domácnosti + 5TB OneDrive s prémiovými funkcemi za 2699 Kč na rok až pro 5 zařízení.
OneDrive pro firmy má tři různé varianty: 1. Plán 1 (1TB úložiště) za cenu 50,40 €/rok na uživatele, 2. Plán 1 (neomezené úložiště) za 100,80 €/rok na uživatele a 3. Office 365 Business Premium (výhodný balíček úložiště + Office 365) za 126,00 €/rok na uživatele. Více informací o cenách OneDrive najdete na oficiální stránce Microsoft: https://onedrive.live.com/about/cs-cz/plans.
## 8 rad a tipů pro pokročilé používání One Drive
• Naučte se sdílet soubory - Je to velmi jednoduché, ve webovém rozhraní OneDrive klikněte pravým tlačítkem myši na soubor, který chcete sdílet. Získáte embed kód, jenž můžete poslat přátelům nebo jej vložit například na svou facebookovou zeď.
• Změňte nastavení synchronizace - Přejděte do OneDrive a pravým tlačítkem myši zvolte ikonu Windows v systémové nabídce, kde najdete možnost úložiště OneDrive - Nastavení synchronizace.
• Přistupujte k souborům offline - V systémové liště najděte mezi ikonkami OneDrive a pravým tlačítkem myši otevřete nastavení, kde zaškrtněte volbu pro zpřístupnění OneDrive souborů, i když počítač není připojen k internetu.
• Přistupujte ke starším verzím - Když změníte nějaký soubor, nemusíte se bát, že byste přišli o předchozí verzi. Ve webovém rozhraní OneDrive můžete obnovit všechny starší verze souborů. Stačí kliknout pravým tlačítkem myši na tento soubor.
• Používejte mobilní aplikaci - Uploadovat soubory do OneDrive jde jednoduše také přes bezplatnou mobilní aplikaci OneDrive pro iOS, Android nebo Windows Phone zařízení.
• Záloha fotografií - Velmi užitečnou funkcí v mobilních telefonech je zálohování vyfocených snímků do OneDrive. V telefonu nastavíte přes aplikaci OneDrive - Možnosti - Nastavení - Nahrání obsahu fotoaparátu.
• EXIF informace - U fotografií nahraných do OneDrive můžete přistupovat k jejich vlastnostem. EXIF informace zobrazují detailní informace o fotografii - kde byla pořízena, jakým fotoaparátem byla vyfocena apod.
• Kompatibilita s Xbox - Multimediální soubory z OneDrive si můžete prohlížet v herních konzolích Xbox 360 a Xbox One. Soubory ve formátu MP4, MOV a M4V půjdou přehrát stoprocentně, stejně tak videa uploadovaná z iPhonu.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.V novém díle našeho cloudového průvodce rozebíráme úložiště One Drive.'
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
  'vykouzlili-jsme-usmev-na-tvari-maga-rockove-kytary-michala-pavlicka',
  'Vykouzlili jsme úsměv na tváři mága rockové kytary Michala Pavlíčka',
  'Zachraňovali jsme data z disků českému šestistrunnému mágovi. A povedlo se!',
  '## Jaké datové médium se zachraňovalo?
Šlo o pevné disky.
• Maxtor – 6Y2L040411, paměť 120GB
• Toshiba  -  MK2002TSKB, 42D2KBDBFML4, paměť 2TB
## Co se přesně stalo?
U obou disků byla kompletně poškozená elektronika - vnější(PCB) i vnitřní (předzesilovače čtecích hlav).
## Příčina poruchy
Chybovost na stráně výrobců disků Maxtor i Toshiba.
## Postup záchrany dat
Nejdříve jsme museli pečlivě odpájet čipy firmware z PCB, přečíst jejich obsah a zapsat do jiné PCB. Potom se musely měnit vlastní čtecí hlavy.
• *S firmwarem často pracujeme, například při ruční **odblokaci mobilního telefonu**.*
Následně se nám podařilo z obou disků vytvořit 100% binární kopie a stáhnout všechna uložená data na disk nový. U staršího disku 120GB Maxtor vše zabralo cca dva dny. U novějšího 2TB Toshiba cca dva týdny.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Zachraňovali jsme data z disků českému šestistrunnému mágovi. A povedlo se!'
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
  'jak-spravne-nabijet-baterii-telefonu',
  'Jak správně nabíjet baterii telefonu?',
  'Vyfotit selfie s ním umí dnes každý, ale správně a efektivně ho nabít? No…',
  '## #1 Vyvarujte se kompletnímu vybití
Patrně největší mýtus je teorie, že bychom měli baterii vždy nabít dosyta a pokud možno ji následně celou vyčerpat a zbytečně nenabíjet. V dávných legendách se pravilo, že si jinak baterie zapamatují pouze využívanou kapacitu a v ostatních budou zaostávat. Ironií osudu je pravda na druhé straně.
Li-Ion bateriím kompletní vybíjení naopak ubližuje. Dokonce natolik, že při extrémním vybití dochází v jejím vnitřku k vysoké nestabilitě, která může vyústit až v explozi. Věděli jste, proč se mobilní telefon vypíná předčasně, i když je zcela zjevné, že ještě drobet šťávy má? Už víte, seznamte se s ochrannou pojistkou.
Výjimkou je situace, kdy přístroj chybně udává kapacitu baterie. Po úplném vybití a následném nabití baterie se totiž měření kapacity zkalibruje.
## #2 Nebojte se nabíjet častěji
Lithium-iontové baterie obecně nemají příliš v lásce nadměrnou hloubku vybíjení, přestože nedosáhnou úplné nuly. Čím hlouběji necháte baterii spadnout, tím rychleji bude degradovat a tím méně nabíjecích cyklů od ní můžete očekávat.
Není třeba řešit konkrétní procenta, kdy hodit mobil do nabíječky. Vězte ovšem, že udržování baterie ve vyšších procentech je výrazně prospěšné, byť se jedná o pouhé doušky šťávy několikrát za den.
## #3 Pozor na přebíjení
Druhým extrémem oproti vybíjení je přílišné nabíjení. Baterie v našich telefonech jsou naštěstí relativně chytré a nenechají si zbytečně ubližovat, i když je necháte například přes noc v nabíječce. Dnešní chytré telefony si totiž umí nabíjení řídit samy, a proto se po dosažení plné kapacity baterie nabíjení přeruší (předpokladem je samozřejmě správná funkčnost telefonu). Horší je to ovšem s vyššími teplotami, ke kterým během nabíjení může docházet.
Pokud zaznamenáváte vyšší teploty svého zařízení během nabíjení, vyjměte jej raději z napájení po kompletním nabití a nenechávejte je v nabíječkách napospas vedru. Při 0°C ztrácí baterie přibližně 6 % své kapacity za rok, ve 25°C už za rok přijdete o 20 % maximální kapacity, a při 40°C dochází ke ztrátě až o bolestných 35 %.
## #4 Počet nabíjecích cyklů a četnost nabíjení
Nyní již víme že, Li-Ion a Li-Pol akumulátorům prospívá častější nabíjení po menších dávkách. Někdo by však mohl namítat, že životnost udává výrobce v počtu nabíjecích cyklů. Není to úplný mýtus, jen je třeba správně chápat termín „*nabíjecí cyklus*.“ Je to nabití akumulátoru z 0% na 100%. Pokud jej tedy nabijete pětkrát z 50% na 70%, bude to dohromady jeden nabíjecí cyklus. Takovéto jednoduché součty jsou jen orientační. Na životnost bude mít vliv také to, zda nabíjíme z 0% na 20% nebo z 80% na 100%. Ideální rozpětí pro nabíjení je od 20% do 70%.
Celkově vzato nás počet nabíjecích cyklů trápit nemusí. Při běžné době používání mobilního telefonu tento počet s vysokou pravděpodobností nepřekročíme, a pokud bude baterie ztrácet kapacitu, bude to nejspíš v důsledku jejího stáří.
## #5 Používejte správnou nabíječku
Není nabíječka jako nabíječka. Ačkoliv mají dnešní zařízení většinou stejný konektor (vesměs Micro USB), ne vždy se jedná o tytéž parametry. Pokud se vaše zařízení přehřívá, vyzkoušejte nabíječku s menším napětím. Nejlépe zvolte tu, kterou jste dostali přibalenou ke svému mobilnímu telefonu. Pokud možno se vyvarujte levným variantám, se kterými může baterie vzplanout.
Při volbě napětí nabíječky záleží pouze na tom, zda preferujete životnost či rychlost nabíjení. Vyšší napětí zpravidla nabije vaši baterii rychleji, avšak výrazně zkracuje její životnost. Nejlépe volte nabíječky s menším napětím pro noční nabíjení, a vyšší napětí pro krátkodobé nabíjení.
• *A víte, jak ještě docílit lepší životnosti i v obecné rovině chodu vašeho zařízení (mobil, tablet, notebook nebo PC)? **Formátujte**!*
Dobíjet zařízení lze bezpečně také z počítače. Většina USB výstupů na PC však nabídne maximální proud 500 mA (oproti cca 2 A u výkonnějších nabíječek), a je proto potřeba počítat s poněkud pomalejším nabíjením.
## #6 Pozor na revoluční technologie
Výrobci mobilních telefonů se poslední roky předhánějí v metodách rychlého nabíjení, ať už se jedná o funkci Quick Charge, bezdrátové nabíjení nebo jiné. Bohužel se jedná o metody, které baterii mrzačí násilným způsobem. Některé mobilní telefony dokonce touto funkcí oplývají, ale raději nejsou se speciálními nabíječkami ani distribuovány. V případě, že čas od času přece jen budete chtít metodu rychlého nabíjení využít, čiňte tak pouze u přístroje, ke kterému byla rychlonabíječka dodána.
• *V rámci článků o chytrých mobilních telefonech jsme také psali základní rady a tipy, **co dělat, když ztratíte telefon**nebo jak naši **záchranáři dat provádějí jeho deblokaci**zaviněnou aktualizací firmwaru. Nezapomněli jsme ani na Iphone problematiku – **7 triků**, jak si zajistit lepší bezpečnost nebo co dělat, když vám **„jablíčko“ spadne do vody**.*
Všechny tyto zvláštní funkce jsou spíše krabičkou poslední záchrany, nikoliv metodou, ke které byste se měli sklánět při každém nabíjení. Důvod je opět stejný: vyšší napětí baterii ubližuje.
## #7 Pozor na vysoké teploty a mechanická poškození
Vysoké teploty nejsou škodlivé jen při nabíjení, ale také při používání zařízení. Vyvarujte se přímému žáru ze sluníčka, nenechávejte jej pařit v autě a dopřejte mu chvíli klidu při náročném hraní.
Nechte zařízení chvíli odpočinout, vyhledávejte stíny a nižší teploty. Vypnout telefon pomůže, mávat s ním vzduchem také. Chladnička ovšem není řešení – v extrémních teplotách dojde ke sražení vlhkosti v telefonu, která může poškodit interní komponenty.
• *S vysokými teplotami úzce obecně souvisí **přepětí v síti. Jak se mu vyvarovat?*
Pozor byste si měli dávat i v případě, že došlo k mechanickému poškození baterie, například v důsledku pádu mobilního telefonu. Takto poškozená baterie se totiž může začít přehřívat.
## #8 Nenechte telefon vybitý dlouho
S tímto problémem se nejčastěji můžeme setkat u starších telefonů, které už nikdo nepoužívá. Leží kdesi ve skříni a čekají na krušnější časy. Vězte ovšem, že baterie potřebují určitou energii i v případě, že telefon zrovna nepoužíváte.
Pokud takový telefon necháte bez dozoru dostatečně dlouho, přijde baterie o veškerou svoji šťávu a riskujete její poškození. V horších případech přijde o schopnost pojmout jakoukoliv kapacitu a stane se z ní pouze těkavá zarážka do dveří.
## #9 Pořiďte si telefon s vyměnitelnou baterií
Nejedná se zrovna o radu, jak se správně starat o baterii telefonu, ale rozhodně se jedná o skvělé preventivní opatření. Není následně nic jednoduššího, než za pár stovek zakoupit baterii novou a pokračovat s čistým štítem. Bohužel jsou mobilní telefony s vyměnitelnými bateriemi v současné době na ústupu, a jsou stále častěji nahrazovány zařízeními s nevyměnitelnou baterií. K té se uživatelé bez složitějšího rozebrání telefonu nedostanou, a musí se tak uchýlit k návštěvě servisu.
## #10 Jedině originální baterie
Patříte-li do čím dál menší skupiny vlastníků zařízení s vyměnitelnou baterií, čeká na vás jedno úskalí. Při výběru nové baterie je důležité mít na paměti, že úspora několika mála stokorun se prodraží. Někdy se může dokonce majiteli ošklivě vymstít.
Na internetu jsou běžně nabízeny neoriginální baterie původem z Asie, které lákají na nižší cenu nebo vyšší kapacitu, než originál. Pomineme-li fakt, že údaje kapacitě těchto akumulátorů jsou přikrášlené, je potřeba uvědomit si, že pravděpodobně nebudou mít zabudovanou spolehlivou elektroniku pro kontrolu nabíjení, což povede k přehřívání, vytečení či dokonce explozi akumulátoru. Jednoduchá rada tedy zní: Kupujte originální baterie od spolehlivých prodejců!
## #11 Správné skladování nepoužívané baterie
Máte-li někde schovanou rezervní baterii a víte, že zde bude ležet velmi dlouho, máme pro vás jednoduchou radu. Rozhodně by měla být uložena na místě, kde teplota nepřekračuje 25°C. Klesnout by naopak neměla pod 5°C. Samozřejmostí je suché prostředí, takže lednička v žádném případě.
Nejčastějším omylem při skladování je však úroveň nabití. Většinu lidí logicky napadne, že na 100% nabitý akumulátor vydrží nejdéle. Je to jen další mýtus. Ano, 100% je lepší než úplně vybitý, avšak pro nejdelší zachování kapacity je ideální hodnota 40-50%. Při této hodnotě je akumulátor nejstabilnější. Zároveň by neměl ležet bez dobíjení věčně. Jednou až dvakrát za rok se se měl částečně dobít, případně částečně vybít, aby po dobití byl opět na 50% nabitý.
## Ani při sebevětší péči nevydrží žádná baterie věčně, a o její kapacitu neodvratně přijdete
Za cenu neustálého dohlížení možná její životnost prodloužíte o několik měsíců, v lepším případě i o rok. Přesto budete zanedlouho pociťovat problémy, které jsou nejlépe řešitelné výměnou baterie nebo nového zařízení.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  7,
  'Vyfotit selfie s ním umí dnes každý, ale správně a efektivně ho nabít? No…'
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
  'jak-vybrat-pevny-disk-do-nas-serveru',
  'Jak vybrat pevný disk do nas serveru?',
  'Víte, jaké jsou pravidla pro výběr? Pomůže vám poradit jak na to.',
  '## Co je NAS?
Pod zkratkou NAS (Network Attached Storage) se ukrývá datové úložiště, které je připojené k domácí nebo kancelářské síti přes LAN. Do tohoto inteligentního úložného zařízení můžete ukládat libovolná data (například dokumenty, fotografie, videa, hudbu) a sdílet je s různými uživateli po celém světě. K serveru NAS můžete přistupovat jak přes webový prohlížeč, tak přes speciální aplikaci v chytrém mobilním telefonu nebo tabletu. NAS tvoří jeden nebo více pevných disků, které tvoří větší datové struktury nebo RAID pole.
## Co je RAID?
Označení RAID (Redundant Array of Independent Disks) představuje pole jednotlivých pevných disků uspořádaných takovým způsobem, aby se prokládáním a ukládáním dat dosáhlo redundantních dat na fyzicky jiném disku.
• *RAID polí existuje hned několik druhů. Jaké to jsou, se dozvíte v našem dalším článku!*
## Jaká jsou pravidla pro výběr disku?
Vybíráte-li pevný disk do NAS serveru, je jedním z hlavních pravidel znát všechny informace o serveru. Jedině tím předejte případnému nevhodnému výběru, zapříčiněnému nekompatibilitou. Základním pravidlem je, že jedině stoprocentně kompatibilní disk vám zaručí perfektní fungování.
Seznamy podporovaných a kompatibilních zařízení většinou naleznete přímo na stránkách výrobce. Obecně by se dalo říci, že pokud sáhnete po proslulých a ověřených značkách typu Western Digital (řada RED) nebo Seagate, nedá se téměř nic zkazit.
• Kapacita úložiště
• Účel NAS serveru
• Výdrž disku
• Značka disku
• Kompatibilita
### Kapacita úložiště
Dalším důležitým kritériem výběru je kapacita úložiště, přičemž je opět potřeba zohlednit faktory, jako je účel používání vašeho NAS serveru. Větší NAS server pro firemní účely má zcela jiné požadavky, než jeho domácí verze.
Pečlivě zvažte, zda je nasazení NAS serveru zrovna ve vašem podniku natolik velké, aby bylo nutné zakoupení skutečně velkokapacitních pevných disků. Větší výrobci produkují speciální série velkokapacitních disků pro business použití.
Zapomeňte na 500GB disky, které jsou dnes již běžným vybavením kdejaké domácnosti. Na výběr máte i z disků o velikosti od 1TB až do 10 TB a více. Důležité je zjistit, zda váš NAS server podporuje disky o vámi zvolené kapacitě.
### Účel NAS serveru
Při výběru disku je velice důležité zohlednit i účel použití vašeho NAS serveru. Pokud je server spíše "pasivní" a využíváte ho hlavně k zálohování či dlouhodobému ukládání dat, nebojte se sáhnout po pomalejším disku s nízkou spotřebou a tichým chodem.
• *A co pomalý SSD disk, který mele z posledního? Víme, **jak maximalizovat jejich chod**.*
Streamujete z NAS serveru multimediální soubory - například filmy o vysoké kvalitě do vaší chytré televize? Pak je potřeba zvolit takový disk, který si s úlohami tohoto typu poradí, tedy rychlejší a s označením 24/7, tedy optimalizovaný pro nonstop provoz.
### Výdrž disku
Jak je to s výdrží pevných disků? Ta závisí nejen na výrobci, ale i na značce NAS serveru a v neposlední řadě na účelu jeho používání. Existují statistiky, sledující hodnotu s názvem AFR, tedy míru chybovosti.
• *Radíme, jak zjistit aktuální stav pevného disku.*
V průměru 80% disků bývá funkčních i po pěti letech provozu. Podle průzkumu jednoho z českých technologických serverů (Živě.cz) si překvapivě dobře vedou kromě Western Digital i disky značky Hitachi.
### Značka disku
Která značka pevného disku pro váš NAS server bude skutečnou sázkou na jistotu? Mějte na paměti, že vždy je potřeba vybírat z disků, které váš NAS server podporuje - seznam podporovaných disků naleznete na stránkách výrobce. Obecně patří mezi nejoblíbenější a nejlépe hodnocené značky WD (Western Digital) a Seagate.
#### Seagate
NAS HDD společnosti Seagate nabízí disky řady Enterprise, lišící se od sebe rychlostí, velikostí cache a pochopitelně i kapacitou.
#### Western Digital
Sáhnete-li po značce Western Digital, můžete se rozhodnout mezi početnější řadou RED nebo Gold. Druhá jmenovaná řada se kromě nastavení pro nonstop provoz vyznačuje širokým výběrem kapacitních variant (do 10TB), konfigurací pro vysoké zatížení a zároveň nižší spotřebou energie.
Za klasiku mezi HDD pro NAS se ale považuje řada RED od WD, kde najdete i verzi Mobile. Někteří výrobci nabízejí k diskům i redukční rámečky pro případ, že by vámi zvolené HDD neodpovídalo formátu disku (z 2,5" na 3,5").
### Kompatibilita
Před nákupem konkrétního modelu NAS se vyplatí ověřit, zda si bude rozumět s pevnými disky, které do něj chcete umístit. Každý výrobce by měl mít na svých internetových stránkách zveřejněný seznam kompatibility (compatibility list), díky němuž můžete snadno zkontrolovat, jaká zařízení HDD nebo SSD jsou s NAS kompatibilní.
• Seznam kompatibility pro NAS QNAP
• Seznam kompatibility pro NAS Synology
• Seznam kompatibility pro NAS Asustor
## Nastavení NAS serveru
Pokud svůj NAS server nastavujete poprvé, neváhejte se obrátit na odborníky, kteří vám profesionálně poradí jak se samotným nastavením na základě vašich požadavků, tak i se správným výběrem všech potřebných komponent.
• *Víte, jak **NAS server správně zabezpečit**? Radíme.*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Víte, jaké jsou pravidla pro výběr? Pomůže vám poradit jak na to.'
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
  'co-je-spyware-a-jak-se-mu-nejlepe-branit',
  'Co je spyware? a jak se mu nejlépe bránit?',
  'Čtete rádi detektivky? Pak víte, že špehování osoby často přináší velmi užitečné informace.',
  '## Odkud lze spyware získat?
Spyware do počítače přichází několika způsoby. Nejčastěji jako shareware schován v na první pohled pro vás **užitečném****programu** nebo aplikaci. Po instalaci a spuštění se zařízení infikuje a špehování začíná. Uživatelé o něm nevědí, autoři programu však ano. Spyware může být také umístěn na pochybných webových stránkách (erotika, warez, nelegální stahování hudby a videí) nebo zaslán jako e-mailová příloha.
• *V e-mailové příloze se často šíří malware! **Víte, jak poznáte, že jste si ho stáhli?*
## Jak poznám, že mám spyware?
Projevů infikování zařízení spywarem je hned několik. Zde jsou nejčastější:
• v hlavním panelu operačního systému se objevují nové nebo neznámé ikony;
• výsledky vyhledávání se zobrazují v jiném internetovém vyhledávači;
• pomalý start nebo „zpomalení“ počítače;
• chybové hlášky, dlouhé načítání stránek, nevyžádaná změna domovské stránky;
• časté zobrazování reklamních pop-up oken;
• podezřelá aktivita na pevném disku (zaplnění volného místa), pády systému.
## Jaké informace může odesílat?
Tvůrci spyware programů se často brání tím, že využívají pouze data určená k marketingovým účelům, tedy k lepšímu cílení reklamy na vás. Konkrétně však od vás mohou získat:
• historii prohlížení webových stránek;
• informace o souborech v počítači;
• uživatelská hesla, celé dokumenty i seznam otevřených souborů;
• informace o užívaném softwaru nebo část registru systému.
## Jak mu předcházet?
Nikdy neinstalovat do vašeho zařízení nic, co není vydáno od důvěryhodného autora, dále nenavštěvovat stránky pochybného charakteru. Tedy nelegálnímu softwaru, programům z neznámých zdrojů, podezřelým programům a přílohám e-mailů nebo stahování hudby a filmů z nelegálních stránek se vyhýbejte okruhem.
• *Jak bezpečně zálohovat v systému Windows 10?*
Aktualizovaný operační systém, aktualizovaný prohlížeč Chrome nebo Mozilla, firewall a antivirová ochrana s rozšířením na spyware zde slouží jako proaktivní krok proti infikování zařízení proti jakémukoliv nežádoucímu napadení. Při nedodržování základních pravidel proti spywaru však často ani tato výbava nestačí.** **
## Jak ho odstranit?
Pokud máte podezření na spyware v počítači, pak prvním krokem je instalace antispywarového programu. Využít můžete z placené i bezplatné nabídky. Patří mezi ně:
• Microsoft Security Essentials (slouží také jako antivir);
• Microsof Windows Defender;
• antivir Avast s integrovanou antispyware ochranou;
• AVG Anti-Spyware Free;
• Spy Emergency / Spyware Doctor.
Nainstalovat, spustit, nechat identifikovat spyware, odstranit jej a po restartu zařízení test pustit znovu. Často se na poprvé nepodaří identifikovat vše.
## Jsem jako uživatel Apple iOS a Mac OS X chráněn proti spyware?
Ne. Zařízení od společnosti Apple mohou být také infikované spywarem. Je zde nižší pravděpodobnost, ale přeci jen je.
• *Princip zálohování 3 – 2 – 1**, znáte? Hodí se!*
Spyware není radno podceňovat. Pokud víte, že jste někdy v minulosti nainstalovali program z neoficiálního zdroje nebo občas zabrouzdáte do různých oblastí internetu, i přes absenci běžných projevů spywaru je dobré udělat si preventivní test jedním z bezplatných verzí antispyware programu. Nikdy nevíte, zda vaši činnost právě nyní někdo nesleduje.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Čtete rádi detektivky? Pak víte, že špehování osoby často přináší velmi užitečné informace.'
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
  'jak-jsme-zachranovali-milionove-fotografie-ondreje-pychy',
  'Jak jsme zachraňovali milionové fotografie Ondřeje Pýchy',
  'Jedna povedená fotografie má cenu přinejmenším zlata a pokud se porouchá disk se stovky takovými fotografiemi, je zaděláno na pořádnou škodu.',
  '## Jaké datové médium se zachraňovalo?
3 TB externí mechanický plotnový disk značky Seagate využívající médium 3,5“. Tato série se bohužel vyznačuje vysokou reklamací až ze 60 %.
## Co se přesně stalo?
U disku náhle přestaly fungovat čtecí hlavy. Ukázalo se také, že jsou poškozené plotny.
## Diagnostika poškození
V prvé řadě byla nutnost se podívat na samotné čtecí hlavy, jejich funkčnost a načítání. Zde jsme zjistili, že díky hardwarové závadě došlo k poškození hlav, které následně fyzicky narušily povrch vedlejších ploten obsahujících cenná data. Jelikož jsou zásadní pro chod, disk se přestal načítat.
• *Čtěte také, jak jsme **zachraňovali data milým bloggerkám z Check Czech Fashion**.*
## Příčina poruchy
Porucha vznikla chybou na straně výrobce disku. Součástky, které disk obsahoval byly vadné. Hardware nebyl správně nastaven a zpracován. Funkčnost čtecích hlav brzy odešla. Kvůli vadným hlavám došlo k poškození samotných ploten disku, které přestaly fungovat.
## Postup záchrany dat
Nefunkční disk Ondřeje bylo nutno rozdělat a demontovat nejdříve samotné plotny. Následně jsme provedli čtení a rekonstrukci dat ze servisní stopy a čtení firmwaru z elektroniky disku. Nakonec jsme zapsali data do náhradního PCB a vyměnili čtecí hlavy za funkční.
## Ponaučení a prevence
• Vždy zvažte, zda data, které máte umístěné na disku jsou pro vás cenná. Pokud víte, že je můžete někdy v budoucnu ještě využít, zálohujte si je na virtuálním cloudovém úložišti, od kterého nezapomeňte heslo. Google Drive nebo Dropbox nabízejí bezplatný prostor o velikosti až 2 GB.
• Pokud vlastníte disk značky Seagate, buďte obezřetní. Disky této značky v testech vycházejí jako nejvíce poruchové.
• I při sebeopatrnějším zacházení s diskem se může stát, že jeho hardware bude vadný. Data tak můžete i nenávratně ztratit.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Jedna povedená fotografie má cenu přinejmenším zlata a pokud se porouchá disk se stovky takovými fotografiemi, je zaděláno na pořádnou škodu.'
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
  'koupit-hybridni-sshd-nebo-jen-ssd-disk',
  'Koupit hybridní sshd, nebo „jen“ ssd disk?',
  'Pojďme se podívat na to, jaký je rozdíl mezi běžnými SSD a hybridními disky.',
  '## Co je to SSD?
**SSD** znamená **solid-state drive**, tady disk bez pohyblivých částí, jenž je nutno připravit pro práci. Můžeme tedy říct, že se jedná o větší a výkonnější USB disk. Vaše soubory jsou zapsány na paměťové čipy místo na otočné magnetické plotny, jako je to v případě HDD (*mrkněte taky na náš detailnější popis, **jak funguje HDD*).
• *Zmínili jsme **USB disk**, víte, jak z něho zbytečně neztratit data?*
## Co je to SSHD?
**SSHD** znamená **solid-state hybrid drive. **Jedná se o tradiční pevný disk (HDD) obohacený o paměť SSD disku (přibližně 8 GB z celkové kapacity). Ve vašem počítači ho uvidíte jako jeden disk a kontrolní čip bude rozhodovat, zda data zapíše na HDD část, nebo SSD část. Některé značky SSHD disků rozpoznají, které programy využíváte nejčastěji, a budou se snažit soubory z nich zapisovat na SSD část pro rychlejší práci s nimi. Co se týče výkonu samotných programů a souborů zapsaných na SSD části, zde výkon stále kolísá za SSD, ale je lepší než u HDD.
## Kdy si pořídit jaký?
Pro získání odpovědi na tuto otázku je potřeba si určit, zda disk budete kupovat do svého prostorem omezeného notebooku nebo do stolního PC.
• *Jak probíhá **záloha a obnova dat u Windows 10**? Pomůžeme vám.*
### Kdy si pořídit SSD?
SSD disk je ideální pro operační systém a uplatnění najde všude tam, kde je potřeba získat rychlý přístup k datům. Doporučuje se především pro náročné uživatele, kteří na PC pracují každý den, případně pro ty, kteří používají náročné aplikace (např. aplikace na střih videí aj.) Preferujete-li tedy výkon před kapacitou, řešení v podobě SSD disku je tím pravým. Vzhledem k tomu, že není příliš náchylný k mechanickému poškození, hodí se také v případech, kdy disk plánujete často přenášet.
### Kdy si pořídit SSHD?
Nechcete-li dělat přílišné ústupky a potřebujete získat jak rychlý přístup k datům, tak i vyšší kapacitu pro své dokumenty, hudbu či fotografie, poohlédněte se po SSHD disku. Doporučuje se zejména tam, kde není možné osadit více disků či SSD s vyšší kapacitou. Mimo jiné potěší i jedince s omezeným rozpočtem.
### Pro notebook
Pokud plánujete pracovat na **notebooku**, který má často místo pouze na jeden disk, pak se musíte rozhodnout mezi výkonem a kapacitou. Pokud preferujete výkon (rychlé načtení operačního systému, přesun dat apod.), pak je SSD jasnou volbou. Pro co největší objem dat na jednom disku potom SSHD. Jestli cena je vaším rozhodujícím faktorem, držte se klasického HDD disku.
Pokud svůj notebook budete často přenášet, neměli byste zapomenout na riziko pádu, ke kterému jsou náchylné jak HDD, tak SSHD. Jedním z faktorů může být také **celková konfigurace notebooku/PC.**
Jestliže se jedná o starší nebo slabší kousek, který má jen málo paměti RAM (např. méně než 4 GB), lze **zabít dvě mouchy jednou ranou.** Pokud nahradíte HDD novým SSD, lze v systému nastavit funkci *PageFile*, neboli virtuální paměť RAM vyčleněnou na disku. Operační systém pak toto vyčleněné místo používá jako RAM. Toto však považujeme za nouzové řešení, protože tím výrazně **trpí životnost SSD disku**, jak jsme ostatně uvedli v našem dalším článku.
• *Voda v notebooku. To není moc legrace k popukání – jde o vaše data. **Radíme, co dělat krok po kroku**.*
Ve volbě disků často hlavní roli hraje právě cena. Stejnou kapacitu SSD můžete v HDD podobě koupit až za šestinu ceny. Pozor je nutné si dát také na velikost disku, jelikož se SSHD jednotlivých značek liší a vámi pořízený by se nemusel vejít do vašeho notebooku.
### Pro stolní PC
V otázce **stolního PC** prostor, velikost a počet disků nehrají příliš důležitou roli. Pokud budete chtít, můžete zabudovat i několik disků dle vaší libosti. V tomto případě tedy není důvod pro investování do SSHD disku. Mnoho nejnovějších PC mají v sobě jak SSD, tak HDD, kdy operační systém je umístěn na kapacitně menším SSD disku (pro rychlejší spuštění) vedle dalších programů, kdežto HDD nabízí mnohonásobně vyšší kapacitu pro dokumenty, hudbu a fotografie.
• *Hudba a fotografie jsou důležité položky „chytrých“ telefonů; víte, **jak zabezpečit OS Android**a jak **iPhone**?*
## Jak fungují?
### SSD disk
SSD disk je typem úložného zařízení, které představuje alternativu ke klasickým pevným diskům. Zařízení je založeno na soustavě energeticky nezávislých flash pamětí osazených na destičce tištěného spoje. Stejně jako u flash disků, i zde se data ukládají do paměťových čipů. Jedná se tedy čistě o elektronické ukládání dat, ke kterému nejsou potřebné pohyblivé mechanické části.
### SSHD disk
SSHD disk kombinuje vlastnosti obou světů, tedy jak SSD pyšnící se svou rychlostí, tak HDD poskytující vyšší kapacitu. SSHD disk disponuje zabudovaným řadičem paměti a sám rozděluje a zapisuje data dle četnosti jejich užívání. Rychlost prvního bootu po instalaci systému je poměrně pomalá, avšak po několika nabootováních je již disk schopen rozpoznat často používané systémové soubory, které přesune na SSD část, díky čemuž dojde ke zrychlení naběhnutí systému.
## Srovnání disků
### Výhody a nevýhody jednotlivých disků
Při pořízení SSHD, SSD nebo HDD je vhodné také vycházet z dalších výhod a nevýhod jednotlivých disků. Díky absenci pohyblivých částí u SSD tyto disky vykazují menší spotřebu a nevydávají hluk a jsou odolné vůči otřesům, což může být pro některé rozhodujícím faktorem.
• *Radíme, jak úspěšně a rychle **zefektivnit i váš stávající SSD disk**.*
Naproti tomu nevýhodou je omezená životnost maximálním počtem zápisů do stejného místa (výrazně nižší než u HDD). Omezená životnost se týká všech flash pamětí, nevyjímaje ani tu část hybridního disku, která souží ke **zrychlení celého SSHD.** Z principu je navržena k tomu, aby byla neustále zaplněna nejčastěji používanými soubory a přepisována, což jí na životnosti nepřidá. Nelze tedy říct, že jedna volba je jasně lepší než druhá. V tomto případě záleží na preferencích samotného uživatele.
### Rychlost
Rychlost jednotlivých disků ve specializovaném softwaru dosahuje pořadí výše cen. Nejrychlejší přenos dat a spuštění systému Windows vyhrává SSD, kousek za ním je SSHD. HDD disk v rychlosti pokulhává a je za ostatními značně pozadu.
### Poměr cena/výkon
V době, kdy hybridní disky ještě nebyly v prodeji, by současný stav cen hovořil ve prospěch SSD. Za dvojnásobnou cenu přinášejí totiž mnohonásobný nárůst výkonu. SSHD však zamíchaly kartami, neboť za cenu vyšší jen v řádu 10 % nabízí dvakrát vyšší výkon než klasický HDD. Svým výkonem sice nejsou ani zdaleka na úrovni SSD, zato poměrem cena/výkon se deklasovaly HDD.
### Spolehlivost
Spolehlivost HDD disků lze určit poněkud obtížněji. Záleží na značce a řadě disků. Má se však za to, že nejméně spolehlivé jsou disky od značky Seagate, nejvíce Hitachi (HGST) a někde uprostřed je značka Western Digital.
U SSD je žebříček spolehlivosti značek ještě složitější. Značka konečného produktu je sestavena z NAND pamětí od jednoho výrobce a řídícího čipu od výrobce druhého. Na trhu je tedy velké množství kombinací, jejichž srovnání by bylo na samostatný článek. S investováním do disku je to trochu jako se sázkou do loterie, proto doporučujeme vždy zálohovat.
• *Proč může být obnova dat z SSD složitější než v případě HDD?*
• *Výpis značek, které **umíme**zachránit u Seagate **a které u *
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  7,
  'Pojďme se podívat na to, jaký je rozdíl mezi běžnými SSD a hybridními disky.'
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
  'sifrovani-dat-na-androidu-ano-nebo-ne',
  'Šifrování dat na androidu: ano, nebo ne?',
  'Toť velmi zajímavá otázka. Znáte toho skutečně všechny výhody i nevýhody?',
  '## Je šifrování nějak složitým procesem?
Lze zašifrovat vaše osobní účty, nastavení telefonu, nainstalované aplikace, multimediální obsah a jiné soubory. Šifrování soukromých elektronických informací by mělo být nutností zpravidla na firemních telefonech a tabletech. Celý postup se skládá pouze z několika jednoduchých kroků.
• *Provedli jsme velké srovnání  Android vs. Apple* - *čtětě, co si z toho vzít. Jak funguje proces šifrování na Android 10?*
## Jak správně Android zašifrovat?
V nastavení mobilního telefonu nebo tabletu s OS Android přejděte do Nastavení - sekce Osobní - Zabezpečení a zvolte možnost Šifrovat telefon/tablet. Budete informováni o průběhu procesu a vyzváni k připojení nabíječky.
Následně si budete muset zvolit heslo, bezpečnostní gesto nebo PIN kód pro zpětné dešifrování, které musí obsahovat specifický počet znaků a číslic. Potvrzením volby se zařízení začne šifrovat. Smartphone či tablet se bude několikrát restartovat a v průběhu operace ho nebudete moci používat.
• *Když se mobil zasekne při nahrávání aktualizace, to je k vzteku. Umíme s tím pomoci. Jak to děláme, čtěte v našem článku o **odblokování mobilu**.*
Jakmile je šifrování dokončeno, automaticky se vygeneruje dešifrovací klíč, který je bezpečně uložen v Androidu. V případě potřeby můžete zašifrovat také připojenou SD kartu, aby z ní nebylo možné číst ani kopírovat data. Stačí v sekci Zabezpečení zvolit tuto možnost.
Před samotným šifrováním dat je vhodné pro prevenci nečekaných problémů uskutečnit kompletní zálohu. Nikdy nevíte, co se může stát, a určitě nechcete o své soukromé soubory zcela přijít.
• *Jak na správné **zabezpečení telefonu s Androidem? Máme 7 prvotřídních tipů**. A víte, jak a proč Android rootovat? Též jsme o tom psali.*
## Šifrování instant messaging aplikací – soukromé chatování
Někomu šifrování celého telefonu kvůli jeho povaze nemusí vyhovovat, přesto by chtěl některé z výhod šifrování využít. Například **šifrování konverzací v různých kecálcích**, typu Messenger, Whatsapp či Viber. Takzvané end-to-end encryption, neboli **koncové šifrování** je za poslední rok ve většině z nejčastěji používaných aplikací již implementováno. O co se jedná? Ve zkratce o to, že obsah konverzace se může **zobrazit jen na straně odesílatele a adresáta**, neboť jsou odesílaná data zašifrována a případný špeh, je bez správného klíče nedokáže rozluštit. Klíč k odšifrování je uložen pouze v koncových zařízeních, tedy v mobilu odesílatele a adresáta.
Často vydavatel aplikace doplňuje, že šifrované zprávy **neukládá na svých serverech**, nebo je v krátkém časovém období nenávratně maže. Tento další stupeň ochrany soukromí nabízí například Signal, Telegram, LINE, klasická verze Facebook Messengeru, Viber a další. Aplikace Whatsapp funkci také nabízí, avšak na webu se objevili více či méně pobouřené zprávy o jistých zadních vrátkách, které jsou v ní ukryté (zdroj "root.cz").
## Šifrované brouzdání – s Torem velmi pomalu ale soukromě
Někteří uživatelé PC se již možná setkali s webovým prohlížečem Tor, většina pravděpodobně ne. V kostce se jedná o speciální prohlížeč, který komunikuje s internetem pomocí protokolu Tor. Ten zaručuje, že data paketu putující z jednoho počítače jsou zašifrována tak, že každý router po cestě dokáže rozšifrovat pouze **jednu vrstvu šifrování** a tím zjistit jen adresu následujícího routeru. Nikdo kromě cílového serveru nemá klíč k rozšifrování samotného obsahu putujícího paketu. A cílový router zase nemá informaci o původním odesílateli paketu, pouze posledního routeru.
Tento prohlížeč se nyní objevil pro pilotní provoz také na platformě Android. Časem by však měl být **vyvinut do plné verze**. Nevýhodou, která se se však s torem spojuje, je pomalá odezva, která plyne z výše uvedeného principu.
## Národní bezpečnost vs. naše soukromí
Následující odstavec bude pojednávat o platformě iOS, nikoliv Android. Vzniknul střet zájmů, který obecně může ovlivnit jakoukoliv platformu zprostředkující soukromou komunikaci, nebo data. Jde o debatu mezi národními bezpečnostními složkami a technologickými korporacemi na téma ochrany soukromí a je stále aktuální.
Po střeleckých útocích v Americkém Texasu v roce 2017 a Kalifornii v roce 2015 se do sebe pustili FBI a Apple. FBI nedokázala prolomit zabezpečení iPhonů, které patřili útočníkům, a požadovala po společnosti Apple, aby jim otevřeli zadní vrátka. Ten to zcela odmítnul. Vzniká tedy spor mezi zájmy národní bezpečnosti a vyšetřovatelů a právem na soukromí samotných občanů.
Jak tato soudní válka nakonec dopadne, si netroufáme předpovídat, ale mohlo by se stát, že soukromí ve formě šifrování by se mohlo stát za určitých okolností nelegálním. To nás nutí k zamyšlení. (zdroj "FBI vs Apple")
## Výhody šifrování
• zajištění bezpečnosti vašich dat, bez přístupového kódu se k nim nedostanou nepovolané osoby.
• vhodný způsob ochrany souborů v případě ztráty nebo krádeže zařízení (psali jsme také, ztráta či krádež iPhonu a co dělat).
• šifrování a dešifrování dat je funkce integrovaná přímo v operačním systému Android.
• nemusíte si stahovat žádnou jinou aplikaci.
• je možné šifrovat jak telefon/tablet, tak SD kartu.
• běží neustále na pozadí, takže se šifrují i nejnověji používané soubory.
## Nevýhody šifrování
• při každé aktivaci zařízení je vyžadováno heslo pro dešifrování. Pokud si nastavíte složitý kód, může být neustálé odemykání poněkud zdlouhavé.
• prvotní šifrování dat u déle používaného přístroje může trvat až několik hodin dle počtu souborů a nainstalovaných aplikací, telefon je třeba v tuto dobu mít celou dobu v nabíječce (jak správně nabíjet baterii).
• šifrování/dešifrování je nevratné, při přerušení procesu kódování může dojít ke ztrátě dat.
• při testování zařízení se zapnutým šifrováním souborů se prokázalo, že se jedná o zabezpečení, které výrazně zpomaluje systém. Procesor je při šifrování a dešifrování dat mnohem více zatěžován (u čtení dat až o 70 %), a proto je třeba počítat s ochranou osobních údajů na úkor rychlosti zařízení.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Toť velmi zajímavá otázka. Znáte toho skutečně všechny výhody i nevýhody?'
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
  'jak-odstranit-kryptovirus-z-pocitace-a-co-to-vlastne-je',
  'Jak odstranit kryptovirus z počítače a co to vlastně je?',
  'Pokud se stanete obětí nebezpečného kryptoviru je potřeba co nejdříve jednat. Ale jak? ',
  '## Co kryptovirus dělá?
„*To, že jste se stali obětí kryptoviru, můžete zjistit velice záhy. Hlavním posláním tohoto typu softwaru je totiž ovládnutí vašich souborů a jejich znepřístupnění,“* vysvětluje specialista na záchranu dat. Soubory mohou být zašifrovány, čímž se pro vás stanou zcela nepoužitelnými, a za jejich odšifrování většinou útočníci požadují nemalé výkupné. Zanedlouho poté, co byl váš počítač infikován, obdržíte zprávu - buďto e-mailem, nebo přímo zobrazenou na monitoru - s žádostí o platbu, po jejímž uhrazení získáte kód, díky kterému můžete své soubory opět uvolnit k používání.
Viry využívají nejrůznější metody šifrování a dešifrování. Nejrozšířenější kryptovirus s názvem CryptoWall používá systém RSA-2048. Ostatní kryptoviry používají například systém RSA-2048 nebo kombinaci či upravenou podobu jiných systémů. Platba je většinou požadována v Bitcoinech kvůli zachování anonymity útočníka.
• *Pozor na SSD disky: Šifrují a ohrožují vaše data!*
Mezi známé příklady tohoto typu softwaru patří VaultCrypt, TeslaCrypt, CTB-Locker, výše zmíněný CryptoWall, KEYHolder, CryptoLocker nebo asi ten nejznámější Wanna Decryptor neboli Wanna Cry. Útoku WannaCry neodolaly systémy velkých organizací po celém světě, včetně společnosti NHS nebo španělské Telefóniky.
## Způsoby vydírání
Tvůrci kryptovirů jsou při požadování platby opravdu vynalézaví a snaží se uživatele co nejvíce zastrašit. V České republice se objevovaly případy zpráv, které vypadaly jako od Policie ČR. Většinou bylo uživatelům oznámeno, že vstoupili na nelegální stránku nebo byl v jejich počítači nalezen protizákonný obsah. Po uhrazení "pokuty" je jim přislíbeno odšifrování souborů. Pro platbu si útočníci často vybírají doslova šibeniční lhůty, po jejichž uplynutí se soubory stanou zcela nepoužitelnými.
Kryptovirům se můžete částečně vyhnout instalací nejnovější verze spolehlivého antivirového softwaru a pravidelnými aktualizacemi vašeho operačního systému. „*Samozřejmostí by mělo být stahování legálního softwaru z oficiálních zdrojů a automatické mazání podezřelých příloh bez jejich otevření*,“ připomíná Aleš Wagner. Veškerý důležitý obsah vašeho počítače si pravidelně pečlivě zálohujte - jednu kopii byste měli ponechat v počítači, jedna záloha by se měla nacházet na externím disku v místě vašeho bydliště nebo pracoviště a jednu zálohu byste měli ukládat "mimo" - například do cloudu.
• *5 důvodů, proč využívat cloud?*
## Jak odstranit kryptovirus
Ze všeho nejdříve stáhněte a nainstalujte anti-malware scanner od některé z ověřených společností, zaměřených na bezpečnost. Tento software je jedním z klíčových faktorů k permanentnímu odstranění malwaru z vašeho počítače.
Stáhněte si ESET Online Scanner a proveďte druhý scan, abyste se ujistili, že na vašem počítači skutečně neběží žádný další malware.
Nyní je načase přistoupit k obnově vašich souborů. Nebude to jednoduché a v ideálním případě byste tento krok měli nechat na odbornících, s trochou šikovnosti to ale zvládnete i sami. Pokud zálohujete, můžete si oddechnout - jednoduše soubory obnovte ze zálohy za pomoci nástrojů ve Windows.
• *Radíme, jak **obnovit data z Windows 10*
Shadow Volume
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Pokud se stanete obětí nebezpečného kryptoviru je potřeba co nejdříve jednat. Ale jak? '
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
  'co-delat-kdyz-ztratite-telefon',
  'Co dělat, když ztratíte telefon?',
  'Ztráta či krádež telefonu je velice nepříjemnou záležitostí, a to nejen kvůli ztrátě přístroje jako takového, ale i kvůli ohrožení citlivých dat.',
  '## Uzamčení obrazovky
„*Pokud se váš telefon dostane do rukou cizí osobě, jediná věc, která mezi ní a vašimi daty v první chvíli stojí, je uzamčená obrazovka*,“ říká na úvod Aleš Wagner, specialista na záchranu dat. Proto je důležité nastavit na ní co nejneprostupnější ochranu. Kód či gesto k odemčení většinou naleznete v Nastavení -> Zabezpečení nebo Nastavení -> Zámek obrazovky. U iOS pak v Nastavení -> Touch ID a kódový zámek.
Umožňuje-li to váš přístroj, použijte k přístupu do telefonu i biometrické údaje, jako je otisk prstu nebo rozpoznání obličeje. Nastavujete-li odemykání gestem, zvolte gesto co nejkomplexnější, které nebude snadné uhádnout.
## Nastavení zprávy na uzamčenou obrazovku
U některých telefonů můžete v Nastavení -> Zabezpečení -> Informace o majiteli nastavit kontaktní údaje, podle kterých vás případný nálezce může najít.
## Android Device Manager
Majitelé zařízení s operačním systémem Android mohou využít nástroje Android Device Manager, který jim pomůže se sledováním ztraceného nebo ukradeného zařízení. „*Postačí jen mít aktivovaný Google účet*,“ pokračuje Aleš Wagner, spolumajitel společnosti DataHelp.
• *7 tipů, jak se lépe postarat o zabezpečení OS Android*
Díky Android Device Manageru můžete své zařízení také na dálku vymazat. Android Device Manager si můžete stáhnout jako aplikaci od společnosti Google, ovládat ho můžete i přes webové rozhraní. „*Android Device Manager vám po přihlášení k vašemu Google účtu zobrazí veškerá vaše zapnutá zařízení na mapě. Obdobně jako u služby Najít iPhone si jeho prostřednictvím můžete na dálku přehrát zvuk nebo obnovit výchozí nastavení*," blíže vysvětluje specialista na záchranu dat.
## Jak najít iPhone přes službu iCloud?
Společnost Apple myslí i na případy, kdy dojde ke ztrátě nebo odcizení mobilního telefonu s iOS. Důležité je mít aktivovanou službu Najít iPhone. Na stránce icloud.com/find se přihlaste za pomoci svých přihlašovacích údajů k iCloud účtu a vyhledejte své zařízení.
• *Doporučujeme - velký průvodce zálohování pro platformu Apple, čtětě :-)*
Pokud zjistíte, že se nachází daleko od vás, zapněte Režim ztráty a na dálku uzamkněte zařízení unikátním kódem. Dále na uzamčené obrazovce nastavte zobrazení zprávy, která by měla obsahovat sdělení o tom, že zařízení bylo ztraceno, a výzvu, aby vás nálezce kontaktoval na alternativním telefonním čísle nebo e-mailové adrese. „*Vrácení telefonu může urychlit i zmínka o nálezném,*“ dává dobrou radu Aleš Wagner, odborník na záchranu dat.
• *Víme, co dělat, když se Váš iPhone koupal ve vodě!*
## Dvoufázová a dvoufaktorová autentifikace
Dvoufázové a dvoufaktorové ověření dodá vašemu zařízení ještě další úroveň zabezpečení. Při pokusu o přístup do vašich Google či iCloud účtů. Dvoufaktorové ověření u Google účtu si můžete aktivovat zde, v iOS zařízeních pak v Nastavení -> Apple ID -> Heslo a zabezpečení.
## Poznamenejte si důležité údaje
Dobrým nápadem je také poznamenat si na nějaké bezpečné místo IMEI kód svého telefonu, stejně jako jeho sériové číslo. Obvykle tyto údaje najdete v Nastavení -> O tomto telefonu -> Status, v případě iOS zařízení pak v Nastavení -> Obecné -> Informace. Tyto údaje pak můžete v případě zcizení zařízení poskytnout policii.
## Telefon je pryč. Co teď?
• **Zavolejte si**
Ze všeho nejdříve zkuste na svůj telefon zavolat nebo poslat zprávu. Díky tomu zjistíte, jestli se třeba nenachází ve vaší těsnější blízkosti. Na Android zařízeních můžete z webového rozhraní Android Device Manager, u iOS zařízení pak na webu iCloud.
• **Zamkněte své zařízení**
Pokud se vaše zařízení neozvalo, příslušné weby ještě neopouštějte. Můžete na nich totiž nastavit zprávu, která se zobrazí případnému nálezci, na dálku zařízení uzamknout nebo vymazat. Poslední možnost rozhodně proveďte v případě, že jste si jisti, že vám byl telefon ukraden.
• **Nahlaste ztrátu zařízení**
Pokud jste již veškeré hledání vzdali, je potřeba nahlásit ztrátu telefonu. Kontaktujte svého poskytovatele mobilních služeb a uveďte, co se stalo, aby se zabránilo nezákonnému využívání vašeho telefonního čísla. Měli byste také zkusit kontaktovat místní policejní oddělení.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Ztráta či krádež telefonu je velice nepříjemnou záležitostí, a to nejen kvůli ztrátě přístroje jako takového, ale i kvůli ohrožení citlivých dat.'
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
  'jak-na-zalohu-a-obnovu-dat-ve-windows-10',
  'Jak na zálohu a obnovu dat ve windows 10',
  'Prevence je klíčová. Operační systém Windows 10 nabízí hned několik odlišných nástrojů pro zálohu i obnovení.',
  '## Vyplatí se i využít řešení třetích stran?
Kromě „vestavěných“ nástrojů můžete při zálohování nejen ve Windows 10 využít i řešení třetích stran. Například aplikace Carbonite automaticky zálohuje všechny vaše soubory, fotografie a dokumenty a v zašifrované podobě je uloží do cloudu.
Za minimální náklady tak dostanete neomezené zálohování nejen do cloudu, ale i do svého počítače nebo na pevný disk. Mezi služby, spojené s Carbonite, patří i správa verzí, ochrana smazaných souborů a mobilní aplikace, díky které získáte přístup ke svým souborům prakticky odkudkoliv.
## Vestavěné zálohovací nástroje ve Windows 10
Pokud se nechcete obracet k jiným společnostem, můžete využít výkonných zálohovacích a obnovovacích nástrojů, které jsou u Windows 10 nativní. Při zálohování nezapomínejte na to, že byste si jednu kopii měli ponechat v počítači, jednu na externím disku a jednu na místě, jako je třeba cloudové úložiště.
• *Cloud je super řešení pro vaše data. **Přečtěte si 5 věcí**, proč ho skutečně využívat.*
## File History
Nástroj File History byl poprvé představen u Windows 8 a i u „desítek“ zůstává i nadále primárním nativním řešením pro zálohu a obnovu. File History nevytváří kompletní zálohu vašeho PC, ale zaměřuje se na zálohování vašich osobních souborů. „*Ve File History nastavíte zálohování všech vašich souborů například na externí disk a necháte aplikaci, aby odvedla zbytek práce*“, radí Aleš Wagner, expert na záchranu dat. File History neprovádí jen běžnou zálohu, ale zachovává i předchozí verze vašich souborů, které můžete posléze snadno obnovit.
Ve výchozím nastavení zálohuje File History důležité složky jako Plocha, Dokumenty, Stahování, Hudba, Obrázky, Videa a části složky AppData. To, jaké soubory a složky budou zálohovány, je ale zcela na vás, stejně jako umístění, do kterého se obsah bude zálohovat.
File History poskytuje uživatelům spolehlivý způsob, jak se ujistit, že jsou jejich soubory a složky pravidelně zálohovány.
## Backup and Restore
Uživatelé Windows 7 jistě znají funkci Backup and Restore, která se po krátké přestávce (ve Windows 8.1 nebyla obsažena) vrátila do Windows 10. „*Nástroj Backup and Restore vám umožní obnovit jakoukoliv starou zálohu z Windows 7 do Windows 10*“, doporučuje Aleš Wagner, spolumajitel společnosti DataHelp. Můžete ho ale použít také k záloze souborů na svém stávajícím operačním systému, a to způsobem, který znáte z Windows 7.
Na rozdíl od File History můžete Backup and Restore využít ke snadné záloze prakticky všeho na vašem pevném disku. Backup and Restore ale bohužel nedisponuje schopností uchovávat starší verze vašich souborů.
K nástroji se dostanete stiskem Startu, zadáním textu „backup“ a následným výběrem položky „Backup and Restore (Windows 7)“. „*Nastavení zálohování je jednoduché. Vyberete si buďto externí disk, nebo umístění na síti, zvolíte složky k záloze a nastavíte plán. Vše poté probíhá automaticky*“, pokračuje specialista na obnovu dat.
• *Stalo se vám, že jste omylem něco vyhodili z koše a nechtěli jste to? **Psali jsem už i o tom, jak to zachránit**.*
## Co je to záloha obrazu systému?
V Backup and Recovery máte i možnost vytvoření kompletní kopie celého systému namísto zálohy jednotlivých vybraných složek.
Díky tomuto nástroji dojde k pořízení snapshotu celého vašeho systému - osobních složek, nainstalovaných aplikací, souborů operačního systému a všeho dalšího. Výhoda tohoto způsobu zálohování spočívá zejména v obnovení. Pokud váš pevný disk selže, můžete ho snadno a relativně rychle nahradit a obnovit obraz. Vrátí vás to přesně tam, kde jste skončili, aniž byste museli přeinstalovat Windows, všechny aplikace, a následně kopírovat zálohované soubory.
• *Využíváte SSD disky? Radíme, **jak maximalizovat jejich životnost**.*
„*Zálohovací proces je při ukládání obrazu systému o něco pomalejší, proto je dobré naplánovat si ho tak, aby byl proveden přes noc*“, vysvětluje blíže Aleš Wagner. Tato varianta je také náročnější na velikost úložiště - počítejte s tím předem.
Pokud se vám nechce provádět kompletní záloha celého obrazu systému, můžete v případě problému svůj operační systém obnovit zpět do původního stavu použitím funkce „Reset your PC“ a poté jen znovu nainstalujete všechny potřebné aplikace a obnovíte jednotlivé soubory.  ˇ
### Jak na pořízení zálohy?
V ovládacím panelu klikněte na Backup and Restore. Poté klikněte na možnost vytvoření systémového obrazu v levé straně okna. Vyberete si, kam bude záloha umístěna - buďto na externí disk, DVD, nebo na umístění v síti.
## OneDrive
OneDrive není skutečným záložním řešením ve smyslu výše uvedených příkladů. Díky jeho plné integraci s OS Windows 10 ho ale k záloze můžete klidně použít. Soubory ve OneDrive jsou umístěné v cloudu, ale také ve všech zařízeních, která jste synchronizovali s vaším OneDrive účtem. V případě selhání počítače nebo systému tedy stačí přihlásit se do OneDrive a můžete vaše ztracené soubory opět snadno a rychle obnovit.
OneDrive je i skvělou možností pro takzvaný 3-2-1 způsob zálohování, kdy máte jednu kopii ve svém počítači, jednu na externím disku a jednu v cloudu.
• *O metodě 3 – 2 – 1**jsme už taky psali. Čtěte, jak na to!*
## System Restore
Pokud s vaším systémem Windows nastaly problémy, na které běžná řešení nestačí, měli byste vyzkoušet i obnovu systému - System Restore. Je skvělou nápravou běžných typů problémů, způsobených například nově nainstalovanou aplikací nebo ovladačem.
„*System Restore vytváří pravidelně body obnovy, od kterých se posléze můžete odrazit*“, uvádí dále specialista na záchranu dat. Body obnovy jsou vlastně snapshoty vašich systémových souborů, jako jsou programové soubory, nastavení registru nebo hardwarové ovladače. Bod obnovy můžete vytvořit kdykoliv, systém pak sám za sebe vytváří obnovy každý týden. Body obnovy se dále vytvářejí před každou významnou systémovou událostí, jako instalace nového ovladače zařízení, aplikace, nebo spuštění aktualizace systému Windows.
• *Přepětí v síti, to je jedna z nejvíce podceňovaných věcí, víte, **jak mu případně předejít?*
Mnozí uživatelé Windows jistě Obnovu systému důvěrně znají a vědí, že se na ni v případě problémů mohou spolehnout. Obdobně jako u zálohy běžných souborů se i u systémových záloh rozhodně vyplatí provádět tyto zálohy více způsoby a ukládat je na vícero typů úložišť. Při práci s počítačem je totiž důležité mít vždy na paměti heslo „Better safe than sorry“.
## Rozšířené možnosti spuštění - jak obnovit zálohovaný systém
„*Systém Windows prakticky od počátku nabízí již při startu jisté způsoby obnovy, díky kterým můžete napravit určité problémy. U Windows 7 máte možnost spuštění systému v nouzovém režimu nebo ho ovládat pomocí příkazového řádku - stačí při startu systému stisknout klávesu F8*“, radí znovu Aleš Wagner, spolumajitel společnosti.
U systému Windows 8 a 10 jsou pokročilé možnosti spouštění o něco rozdílnější. Pokud se Windows nespustí normálně, objeví se vám tyto možnosti automaticky. **Chcete-li se k nim dostat sami, otevřete Nastavení -> Aktualizace a zabezpečení -> Obnovení -> Rozšířené spuštění a klikněte na „Restartovat teď**“. Další možností je držení klávesy Shift při kliknutí na Restart v menu Start.
Poté můžete obnovit systém Windows z vámi vytvořeného obrazu systému, použít Obnovu systému k nápravě problémů a provádět další úlohy údržby. V tomto menu se můžete i vrátit k některé z předchozích verzí Windows, je-li k dispozici. Tato stejná nabídka by měl také zobrazit, pokud počítač nemůže načíst systém Windows normálně.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  7,
  'Prevence je klíčová. Operační systém Windows 10 nabízí hned několik odlišných nástrojů pro zálohu i obnovení.'
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
  'jak-obnovit-smazane-soubory',
  'Obnovte si ztracené soubory svépomocí. ale pozor, má to svá rizika',
  'Smazali jste si v počítači omylem soubor? Nezoufejte, možnosti tu jsou - provedeme vás způsoby obnovení smazaných souborů.',
  '## Je soubor opravdu smazaný?
Pokud si nejste jisti, zda jste soubor opravdu trvale smazali, nejprve projděte svůj počítač. U systému Windows to znamená otevřít Koš a prohledat ho. K prohledání Koše můžete využít vyhledávací pole v pravém horním rohu okna, případně můžete kliknout pravým tlačítkem a srovnat soubory podle data, díky čemuž uvidíte soubory či složky, které jste smazali naposledy.
• *Jak předejít hledání smazaného souboru ve Windows 10 a jak zálohovat?*
„*Je potřeba si ale uvědomit, že programy jako CCleaner při svém spuštění vyprázdní Koš. Pokud tedy máte obdobný program spuštěný na pozadí*, *de facto si tím nikterak nepomůžete a obnovu souboru bude lepší radši stejně přenechat kvalifikovaným odborníkům*,“ radí Aleš Wagner, specialista na záchranu a obnovu dat.
## Zkontrolujte své zálohy
Pravidelné zálohování by mělo být běžnou součástí vaší rutiny. Ušetříte si tím spoustu času a starostí při případném nechtěném smazání souboru. Systém Windows má vlastní zálohovací nástroje, proto je zálohování většinou jen otázkou několika kliknutí.
• *Nebojte se cloudovat neboli zálohovat – **5 věcí, proč je cloud**efektivním zálohovacím způsobem.*
## Apple
A jak je tomu u Macu? Pokud je poslední věcí, kterou jste provedli, pouhé smazání souborů, klikněte ve Finderu v panelu nabídek v horní části obrazovky na Úpravy -> Odvolat akci. Soubor se vrátí do jeho původního umístění. Můžete také rozkliknout ikonku Koše (v pravé části Docku) a na daný soubor kliknout pravým tlačítkem -> Vrátit zpět.
Jak ale na Macu obnovit soubory, které jste z Koše smazali? Pokud máte aktivovanou Time Machine, můžete obnovit soubory ze zálohy. Zálohujete-li do Dropboxu, najdete při troše štěstí své soubory v něm.
## Software
Na obnovu smazaných dat můžete využít i speciální software. Mezi nejčastěji používané programy patří Recuva od tvůrců CCleaneru. „*Recuva je poměrně solidní softwarový nástroj, který určitě můžete zkusit, ale nedá vám 100% spoleh*, *že vám soubory skutečně vrátí*,“ popisuje Aleš Wagner, spolumajitel společnosti DataHelp.
Tento způsob se může na první pohled jevit jako snadný a spolehlivý, je však také riskantní, protože zahrnuje zapisování na disk. „*Po instalaci nástroje, jako je Recuva, je možné přepsat data smazaného souboru programovými daty Recuvy. Proto, když s tímto nástrojem chce člověk pracovat, tak ho rozhodně neinstalovat na stejný disk, ze kterého se data smazala. To by byla ta největší chyba*,“ blíže vysvětluje specialista na záchranu dat.
• *Bezplatné programy na obnovu dat**: Téma, ke kterému jsme se také vyjádřili.*
Stejně tak je možné, že další programy, běžící na pozadí, budou moci zapisovat na disk a přepisovat data. Skutečně kvalitní a spolehlivý software mají k dispozici firmy, specializující se na záchranu dat, proto bude lepší obrátit se na ně.
## Profesionální obnova dat
Pokud jste přišli o skutečně důležitá či citlivá data, nemáte k dispozici žádné zálohy a netroufáte si využít volně dostupný software, existuje ještě nejspolehlivější a nejbezpečnější varianta, a tou je záchrana dat z rukou profesionálů.
• *Přečtěte si také, jak jsme se **školili v Polsku minulý rok**.*
„*Pokud je to možné, vypněte co nejdříve svůj počítač. Čím déle totiž běží, tím více dat se na zapíše na pevný disk a klesá tak šance na záchranu*,“ radí dále Aleš Wagner. Profesionálové mají po ruce skutečně kvalitní a silné nástroje a udělají vše pro to, abyste svá ztracená data dostali zpět. Investované peníze se vám v tomto případě rozhodně vyplatí.
• *Víte, co je reverzní inženýrství?**Aneb z naší praxe, jak zachraňujeme data.*
## Prevence
Nejlepší prevencí proti ztrátě dat je pravidelné a pečlivé zálohování. Zálohy byste v ideálním případě měli provádět jak na pevné úložiště v počítači, tak i na externí HDD a do cloudu.
• *Víte, jak správně vybrat externí HDD?*
A pamatujte; obnova ze zálohy je vždy rychlejší, bezpečnější a jistější, než alternativní způsoby zpětného získání smazaného souboru.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Smazali jste si v počítači omylem soubor? Nezoufejte, možnosti tu jsou - provedeme vás způsoby obnovení smazaných souborů.'
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
  'jak-predejit-pripadnemu-prepeti-v-siti',
  'Jak předejít případnému přepětí v síti?',
  'Jednou z mála věcí, které mohou doslova jako blesk z čistého nebe udeřit do jakékoliv elektroniky ve vaší síti a kompletně ji vyřadit, je přepětí. Stačí jedno malé škobrtnutí a jakékoliv cennosti putují do křemíkového nebe. Jak tomu zabránit?',
  '## Přepěťová ochrana je chytrým tahem
Jistě každý zažil případy, kdy stačilo nahození ledničky, pračky, špatné žárovky, aby se pojistky rozhodly obrátit vzhůru nohama. I takové situace mohou být smrtelné pro některá zařízení, od mobilních telefonů, přes televizory až po drahé počítačové sestavy a notebooky.
*
Reklamace jsou většinou smeteny pod stůl, vinou majitele, který se tak dočká pouze smradu plastu v pokoji.
Řešením není žádné obalení hromosvodu do gumáků nebo párátka v pojistkách. Ochranu však nabízejí přepěťové ochrany, které fungují jako běžné prodlužovačky či rozdvojky. Komu by nevyhovovala zbytečná kabeláž, může se ohlédnout i po adaptérech, které se rafinovaně skryjí před zásuvkou ve zdi.
## Výměna počítačového zdroje
Častou příčinou jsou také samotné spotřebiče, zejména počítačové zdroje se setkávají s kritickými stavy. Pokud máte podezření, že právě zde je zakopaný pes, nechte si vyměnit zdroj dříve, než s sebou vezme zbytek počítače nebo čehokoliv dalšího.
• *Čtěte také o **5 důvodech, proč se vyplatí zálohovat do cloudu*
Výměna počítačového zdroje není drahá záležitost, zvláště pokud nejste náruživí hráči počítačových her. Pro maximální jistotu se můžete poohlédnout po takovém modelu, který je vybaven OVP, neboli přepěťovou ochranou – lepší být připraven, než plakat nad desítkami tisíc korun.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Jednou z mála věcí, které mohou doslova jako blesk z čistého nebe udeřit do jakékoliv elektroniky ve vaší síti a kompletně ji vyřadit, je přepětí. Stačí jedno malé škobrtnutí a jakékoliv cennosti putují do křemíkového nebe. Jak tomu zabránit?'
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
  'odblokovat-mobil-je-hracka-kdyz-teda-znate-spravnou-vterinu',
  'Odblokovat mobil je hračka, když teda znáte správnou vteřinu',
  'Ráno se probudíte. Pustíte mobil a zacyklí se vám nešťastně jeho nahrávací proces. Kladivo a špatnou náladu prozatím odložte. I s tímto si dokážeme poradit.',
  '## Co je firmware a jak dochází k blokaci?
Každý dnešní mobilní telefon má svůj tzv. hlavní firmware, což je vlastně označení pro operační systém celého přístroje. „*Ale abychom byli maximálně přesní, tak musíme zmínit i to, že mobily mají firmware více než na jedné konkrétní úrovni jako je právě příkladem hl. operační systém. Na těch dalších úrovních to je firmware pro Wi-Fi nebo pro vůbec komunikaci s telefonní sítí*“, rozvádí více do detailů Aleš Wagner. Ale právě firmware, který je spjat s daným operačním systémem telefonu, tak ten je právě příčinou zablokování přístroje.
Vše začíná takto. Mobilní přístroj vždy uživatele čas od času svého majitele upozorní, neboli notifikuje, že je možné aktualizovat firmware, což je dobré pro zvýšení stability funkčnosti. A pak je samozřejmě už jen na uživateli, zda povolí aktualizace, nebo ne (samozřejmě ještě existuje varianta, že si uživatel najde sám špatný firmware, kterým se následně snaží aktualizovat svůj mobil, ale tato varianta není tak častá).
• *Proč využívát cloud pro zálohu dat?*
A pak jsou i mobilní přístroje, které prostě „nemají potřebu uživatele o všem informovat“ a aktualizace firmwaru probíhá kolikrát bez jeho vědomí. „*A to byl přesně známý případ v minulém roce v prosinci, na který doplatili uživatelé telefonů značky Xiaomi, kteří si nezakázali v nastavení telefonu vypnutí automatické aktualizace firmwaru. Chyba byla způsobena v kódu u českého jazyka ze strany výrobce.*“ doplňuje majitel společnosti DataHelp.
*
V momentě, když se aktualizace mobilu najednou nemůže podařit, tak se mobil vnitřně zablokuje, anebo dojde k jeho zacyklení. „*To zacyklení vzniká tak, že procesor v telefonu se neustále snaží dokončit aktualizaci, která se mu ale z nějakého důvodu nedaří. Takže se spouští ten kolovrátek. A v takovým momentě mobil vypnete jen vytažením baterky*“, přibližuje specialista na záchranu dat, Aleš Wagner.
• *Co dělat, když se iPhone koupal? Radíme v našem článku.*
## A jak vrátit zpět mobil na svět „živý a zdravý“?
Specialista se nejdříve musí dostat k „vnitřnostem“ telefonu. Takže je nutné telefon rozebrat a připravit se na práci s jeho základní deskou. „*To vypadá jako práce na pár minut, ale ono samotné rozlepení telefonu probíhá tak, že nejdříve musíme sundat měděné pásky, kdy samozřejmě šroubky jsou až vtipně pod nimi*“ usmívá se Aleš Wagner.
Když je deska připravena a mobil řádně rozlepen, tak si specialista vše odnáší do speciálně upravené laboratoře, kde přibere na pomoc mikroskop. „*Náš technik musí potom najít na desce 2 ultra malé body, které musí ručně propojit, aby pak mohl telefon úspěšně resetovat do továrního nastavení. Ten resetovací proces potom musí technik provést ve vhodném časovém okamžiku, což je takový malý adrenalin na závěr“, *dále pokračuje Aleš Wagner.
A nyní nastává už finální krok k zprovoznění mobilního přístroje – dohledání za pomocí internetu příslušného firmwaru, který potom technik ručně nahraje. A jaká je cenová hladina? „*Cenově celá tato operace zmrtvýchvstání mobilu vychází od 2 do 8 tisíc korun. Ono hodně záleží na konkrétní modelové náročnosti“,* vysvětluje Aleš Wagner, specialista na záchranu dat.
• *7 tipů, jak zabezpečit OS Android na svém telefonu.*
• *Návod, jak odblokovat iPhone, když zapomenete kód.*
Může si člověk sám pomoci při zablokování mobilu při aktualizace firmwaru, nebo je lepší radši vyhledat odbornou pomoc? „*Tak člověk si samozřejmě může přečíst nějaký obecný chytrý článek či se podívat na YouTube, aby se pokusil svépomocí vzkřísit telefon, ale otázkou je, jestli se mu opravdu stoprocentně podaří převést do úspěšné praxe i v jeho případě. A dokonce musím říci, že mezi naše zákazníky na odblokování mobilu patří i lidé, kteří si nejdříve pokusili pomoci sami podle nějakého návodu“, *uzavírá téma zprovoznění a odblokace telefonu, majitel společnosti Data Help.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Ráno se probudíte. Pustíte mobil a zacyklí se vám nešťastně jeho nahrávací proces. Kladivo a špatnou náladu prozatím odložte. I s tímto si dokážeme poradit.'
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
  'co-delat-kdyz-se-iphone-koupal-ve-vode-daji-se-vase-data-zachranit',
  'Co dělat, když se iphone „koupal“ ve vodě? dají se vaše data zachránit?',
  'Žbluňknul vám váš drahocenný kapesní miláček do vody? Pak se jistě strachujete nad jeho životem. Resuscitaci člověka byste možná zvládli, ale záchrana mobilního telefonu se na školách neučí. Co tedy dělat?',
  '## Krok #1 – Okamžitě vypnout
Stejně jako byste nelili vodu do zásuvky, byste neměli nechávat mobilní telefon běžet při podezření na zásah vodou. Stačí jeden špatný zkrat ve špatnou chvíli na špatném místě, a může se jednat o poslední kapku mobilní životaschopnosti. Okamžitě tedy vypnout.
• *I jeden špatný zkrat v elektřině bez přítomnosti vody může započíst datovou katastrofu. Jak se bránit případnemu přepětí v síti?*
## Krok #2 – Otřít ručníkem
Vezměte čistý hadřík, ručník či jinou čistou suchou látku, a pořádně telefon osušte se všech stran. Nenechte se ale unést momentem. Prudké otírání může vodu naopak vtlačit více do nitra. Postupujte tedy pomalu a jistě.
• *Pro majitele různých zařízení Apple jsme sepsali velkého průvodce zálohováním.*
## Krok #3 – Vypojte všechno
Každá skulinka do sebe okamžitě žene vodu, a tak je potřeba se k těmto místům co nejdříve dostat. Vyjměte tedy telefon z krytu, vytáhněte sluchátka, SIM kartu, případně i další konektory. Pokud vlastníte telefon jiné značky, nezapomeňte otevřít i zadní kryt a vyjmout baterii. Apple takové řešení bohužel nenabízí, jedinou jistotou by byla návštěva servisu.
## Krok #4 – Oklepat
Nepoužívejte raději žádné fény, které svoji silou vodu nevysuší, ani nevyženou ven. Raději vezměte mobilní telefon do ruky a pořádně s ním švihejte. Nejdříve z jedné strany, poté z druhé. S trochou štěstí vyklepete alespoň pár kapek.
• *Znáte 5 důvodů, proč byste měli využívat cloud?*
## Krok #5 – Ponořte jej do sáčku rýže
Zatímco někteří tvrdí, že rýže nepomáhá, druzí nedají na tuto metodu dopustit. Pokud si chcete být maximálně jistí záchranou svého mobilního telefonu, nepřeskakujte tento krok. V rýži nechte mobilní telefon sušit alespoň 24 hodin, v lepším případě 48 hodin.
## Krok #6 – Nenabíjejte jej
Dokud neprovedete veškeré předešlé kroky, vyvarujte se jakémukoliv nabíjení. I kdybyste se jen chtěli přesvědčit o tom, zda funguje či ne. Po vysušení v rýži zkuste mobilní telefon zapnout. S trochou štěstí bude v naprostém pořádku. Pro horší scénář pokračujte v článku.
## Pokud se telefon nezapnul
Není všem dnům konec. Mobilní telefon může být jen vybitý. Zkuste jej zapojit do akumulátoru a zapnout během nabíjení.
• *Radíme: **Jaký externí disk? 5 užitečných rad pro výběr*
Jestliže je telefon funkční, může být buďto zcela zachráněn nebo mít jen poškozenou baterii. Nechte jej tedy nabíjet alespoň půlhodiny a poté z akumulátoru vyjměte. Pokud se i přesto vypne, stačí vyměnit baterii.
• *Víte, jak správně nabíjet baterii do mobilu?*
## Nic nezabralo
Všechny důležité kroky jste podnikli, telefon jste nechali sušit 1-2 dny, chvíli jej nabíjeli, a ani tak se vám nepodařilo ho zprovoznit? V takovém případě už pomůže jen zručnost profesionálů. Pokud si netroufáte na kompletní rozebrání sami, zaneste jej do nejbližšího servisu.
Pokud je na vás cena opravy příliš drahá, a tak se rozhodnete raději koupit zcela nový mobil, nemusíte se loučit se svými daty. Naše služby zahrnují i záchranu dat z mobilních telefonů. O své fotky, videa či cenné dokumenty tedy nepřijdete.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Žbluňknul vám váš drahocenný kapesní miláček do vody? Pak se jistě strachujete nad jeho životem. Resuscitaci člověka byste možná zvládli, ale záchrana mobilního telefonu se na školách neučí. Co tedy dělat?'
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
  'jaky-externi-disk-5-uzitecnych-rad-pro-vyber',
  'Jaký externí disk? 5 užitečných rad pro výběr',
  'Některé soubory je potřeba mít neustále při sobě. Ať už se jedná o pracovní dokumenty, filmy ke sledování, fotografie či přenosné programy, je na místě pořízení externího disku. Máme pro vás 5 užitečných rad, které vám pomohou při rozhodování.',
  '## #1 - Jaký typ externího disku?
Hned z oleje je zapotřebí rozdělit externí disky do dvou kategorií. Nenechte se zaleknout názvy, skrývá se za nimi velice jednoduché opodstatnění. Jako první přichází na řadu odvěký souboj HDD vs. SSD (psali jsme - SSHD vs. SSD).
Takzvané HDD se svými daty pracují mechanicky – uvnitř se nacházejí záznamové plotny, ze kterých čte hlavice potřebná data – podobně jako gramofon, dalo by se říci. Oproti tomu SSD svým principem připomínají flashdisky, které mnoho lidí nosí neustále s sebou.
Rozdíly obou typů jsou jak z hlediska rychlosti, kapacity, bezpečnosti a přenosnosti, tak zejména v ceně. Zatímco HDD pořídíte za poměrně symbolickou cenu, SSD ke své výrazně dražší cenovce má naopak dobré důvody.
## #2 - Který externí disk je rychlejší?
Během používání externího disku je jedním z nejpatrnějších faktorů jeho rychlost. V souboji mezi HDD a SSD je jasným vítězem SSD, které je schopné se soubory pracovat až desetkrát rychleji. Při výběru každého z typů je potřeba dbát na dvě různé hodnoty.
Jelikož HDD ke svým souborům přistupuje skrze záznamové plotny, je jeho rychlost definována počtem otáček za minutu, které se mohou pohybovat mezi hodnotami 5 až 10 tisíc, popřípadě i více. Vyšší počet otáček přirozeně souvisí s větší rychlostí.
Oproti tomu SSD mají k těmto souborům takřka okamžitý přístup, přičemž se rychlosti čtení i zápisu určují daleko přesněji v rámci MB/s, kdy opět platí přímá úměra. I natolik velké soubory (jako například filmy) je možné ukládat a přetahovat v rámci pár vteřin – nikoliv minut jako tomu je v případě HDD.
### K čemu slouží funkce TRIM?
Většina výrobců doplňuje firmware pro externí pevné disky o funkci TRIM, která funguje jako takový prostředník komunikace mezi řadičem zařízení a operačním systémem. Tento příkaz podává informaci o skutečně volných buňkách na disku ještě před zápisem dat, což výrazně napomáhá ke zrychlení výkonu.
Funkce TRIM má bohužel i jednu stinnou stránku. Pokud uživatel z externího disku smaže jakékoliv soubory při aktivované funkci TRIM, už je nebude moci nikdy obnovit. Při tomto procesu totiž dochází k trvalému smazání dat, kdy je řadič disku informován, že datové bloky už neobsahují platná data.
• U SSD disků si též dejte pozor na funkci TRIM
## #3 – Který typ nabízí větší kapacitu?
## *
##
Odpověď je kupodivu jednoduchá – HDD. Přestože jsou jinak SSD dominantní téměř ve všech ohledech, svojí kapacitou svého nepřítele stále nedohnaly.
I ta nejlevnější SSD jsou dražší, než pětkrát objemnější HDD. Pokud si tedy potrpíte především na množství souborů, které můžete na svůj disk uložit, aniž byste si lámali hlavu s rychlostí, pak je zpravidla lepší sáhnout po HDD.
Hledáte-li kompromis, tedy vysokorychlostní SSD s velkou kapacitou, připravte si peněženku. V opačném případě je nutné se rozhodnout mezi ukládáním většího množství dat nebo mnohonásobně rychlejšího přístupu k nim.
## #4 – Který typ externího disku je bezpečnější?
K zodpovězení otázky si stačí představit obě zmíněné technologie. Jelikož HDD se svými daty pracuje mechanicky, za pomoci zmíněných záznamových ploten, je pochopitelné, že tato technologie daleko více inklinuje k poškození.
Zatímco SSD přežije i tvrdší pád, s HDD je nutné manipulovat velmi opatrně. Přenášení v tašce či kabelce je nejrychlejší cesta, jak jej poslat do hrobu. Pokud tedy plánujete svůj externí disk často přenášet, mějte na paměti tato rizika, která levnější HDD přinášejí.
• *5 důvodů, proč nevyužívat bezplatné programy na obnovu dat? To vás zajímá!*
Pokud naopak budete využívat externí disk převážně v domácnosti mezi několika počítači, postačí s přehledem obyčejný HDD, který své výhody nabízí v jiných směrech (viz předchozí body).
Z hlediska bezpečnosti je vhodné mít na paměti i faktory jako hmotnost či rozměry. Některé modely dokonce nabízejí zvýšenou odolnost, nárazuvzdornost či vodotěsnost. Opět je potřeba se zamyslet nad tím, jakými podmínkami externí disk ve vašich rukou projde.
## #5 – Software a vybavenost externích disků
Jako poslední je potřeba dbát už jen na drobnosti. Některé externí disky oplývají dodatečným softwarem. Může se jednat o úsporná řešení, kdy šetří spotřebu energie; popřípadě nástroje pro zálohování dat; nebo například podpůrné technologie, které uživatele upozorňují, když je s diskem něco v nepořádku.
Užitečné může být také rozhraní USB 3.0 (popřípadě Thunderbolt), které výrazně napomůže v přenosové rychlosti – tedy pokud externí disk připojíte k novějšímu počítači, který si s tímto rozhraním poradí. Není potřeba se ale bát, že by si modernější disk nerozuměl se staršími stroji.
• *Jak neztratit data z USB disků?*
Výrobci externích disků se v těchto dodatcích neustále předhánějí. Je vhodné se tedy ohlédnout i na tyto parametry, které mohou být pro někoho důležitým faktorem.
### Jak chránit data na disku?
Data na externích paměťových zařízeních jsou při běžném používání teoreticky v naprostém bezpečí. Uživatelé by si nicméně měli dávat velký pozor na několik zásadních situací, kvůli kterým mohou o svá data nevědomky přijít. Jedním z nejčastějších problémů je předčasné odpojování zařízení. Než přenosný disk odpojíte od počítače nebo notebooku, vždy se raději přesvědčte, že byl již ukončen přenos dat.
Jinými slovy počkejte, než se na disk uloží všechna data, s nimiž jste pracovali. Nejjednodušší způsob odpojení zařízení ve správnou chvíli provedete přes funkci operačního systému pro bezpečné odpojení zařízení (v OS Windows je ukryta pod ikonou „Bezpečně odebrat hardware“ na hlavním panelu).
• *Tipy na zálohu ve Windows 7 a Windows 10.*
Další riziko ztráty dat hrozí, když externí disk po připojení k zařízení zobrazuje zprávu, že pro další používání disku je vyžadováno formátování. Disk se tak začne chovat, když byl při předchozím používání přerušen proces přenosu dat, například z důvodu předčasného odpojení disku od počítače nebo výpadku elektrického proudu. Jestliže víte, že máte na externím HDD uloženy soubory, v žádném případě formátování neprovádějte, jinak o ně přijdete. Tuto práci přenechejte počítačovým odborníkům.
Odborníci si poradí se záchranou dat z jakéhokoliv modelu externího HDD. Mezi nejfrekventovanější výrobce externích disků patří Western Digital a Seagate, v menší míře uživatelé volí značky Toshiba, Samsung a Hitachi.
### Cena záchrany dat
Pohybuje se v závislosti na druhu závady – může se jednat o poškozenou vnější elektroniku, vadné čtecí hlavy či chybu operačního systému. Technici na disku provedou důkladnou diagnostiku, aby poznali příčinu obtíží, a data zachrání.
Kromě klasického fyzického poškození, kdy dojde ke znehodnocení konektoru mechanickým zaviněním (ohnutí nebo ulomení portu), mohou na externí disk negativně působit také vnější vlivy. Přenosná zařízení nemají ráda extrémně vysoké nebo nízké teploty. Nepropadejte panice, i disk, který nedopatřením spadne do rozpáleného ohniště či zamrzne v rybníku, je možné zachránit.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Některé soubory je potřeba mít neustále při sobě. Ať už se jedná o pracovní dokumenty, filmy ke sledování, fotografie či přenosné programy, je na místě pořízení externího disku. Máme pro vás 5 užitečných rad, které vám pomohou při rozhodování.'
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
  '5-duvodu-proc-vyuzivat-cloud-pro-efektivni-zalohu-dat',
  '5 důvodů, proč využívat cloud pro efektivní zálohu dat',
  'Z anglicismů mají někteří lidé strach. Nicneříkající snůšky písmen nabírají na významu až se zkušenostmi. S nástupem internetu se takových termínů vyrojilo až příliš. Ani cloudu se nemusíte bát, povíme si proč.',
  '## #1 – Vaše soubory budou v bezpečí
Na první pohled by se mohlo zdát využívání Cloudu nepraktické a nebezpečné. Přeci jen se soubory nachází u někoho cizího. Podobným způsobem ale lidé využívají banky, kterým svěřují své peníze. Je jen otázkou času, než si lidé vybudují svoji důvěru i v cloudová úložiště.
• *Jaký vybrat externí disk?**Rady a tipy.*
Počítače a další zařízení jsou přitom daleko náchylnější na problémy. Nebezpečné viry jsou všude a s poruchami má jistě každý své zkušenosti. Pro cloudová úložiště je ochrana dat maximální prioritou. Nikdo neoprávněný tak na ně nesáhne; ani o ně nepřijdete, když počítač vyhlásí stávku.
## #2 – Jeden odkaz káže všem
Znáte to. Potřebujete si přesunout dokument, film či fotky do jiného počítače nebo na mobil. Sáhnete po flashce nebo e-mailu a sáhodlouze kopírujete a posíláte. Díky cloudu je ale takový soubor okamžitě dostupný na všech zařízeních, stačí se přihlásit do svého účtu.
Všechny soubory tak máte uklizené na jedné hromádce, celistvě. Už se nestane, že by jeden a ten samý dokument byl v jedné verzi na domácím PC, předělaný na mobilu a hotový bůhvíkde. S cloudem spravujete jeden a ten samý soubor. Žádné duplikace.
## #3 – Ušetříte
Podstrkování cloudu by se mohlo zdát jako vybízení k úplatě duše. Nikoliv, na internetu naleznete celou řadu cloudových úložišť, které fungují zcela bezplatně. Liší se pouze podmínkami a jinými prémiovými verzemi.
• *Průvodce světěm bezplatného i placeného cloudu: jak zálohovat a pracovat s Dropboxem?*
*
Téměř všechny ale nabízejí bezplatnou verzi, která by měla běžnému uživateli bohatě stačit. Placené verze jsou určeny spíš pro náročnější uživatele, větší podnikatele nebo dokonce firmy. Ušetřit tak můžete na pevných discích, flashkách a paměťových kartách.
• *Víte, čeho všeho se vyvarovat při práce s USB Flash disky?*
## #4 – O svoji práci nepřijdete
Snad každý zažil nervydrásající chvíle, kdy přišel o rozpracovaný dokument. Takové chvíle dovedou nejen pokazit den, ale v horších případech i kariéru – zejména pokud se jedná o prezentaci, zakázku nebo důležitou zprávu.
Cloudové kancelářské programy, které nabízí například Google, ukládají práci průběžně. Ať už vás tedy potká jakákoliv smůla, se svoji prací se loučit nemusíte. Jen se znovu přihlásíte a pokračujete.
## #5 – Spolupracujte
Není efektivnější spolupráce, než ta, která probíhá okamžitě. Zpřístupněte některou svou složku dalším lidem, kteří tak budou moci sbírat důležité materiály a schraňovat je na jednom místě.
Totéž platí o dokumentech, na kterých může spolupracovat několik lidí zároveň. Všechno probíhá v reálném čase. Vyhnete se zbytečnému schůzování a můžete si práci rozdělit kdykoliv jakkoliv.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Z anglicismů mají někteří lidé strach. Nicneříkající snůšky písmen nabírají na významu až se zkušenostmi. S nástupem internetu se takových termínů vyrojilo až příliš. Ani cloudu se nemusíte bát, povíme si proč.'
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
  'formatovani-co-to-je-a-k-cemu-se-to-hodi',
  'Formátování: co to je a k čemu se to hodí',
  'Slovíčko formátování zřejmě každý běžný uživatel PC buďto zaslechl či zahlédl, ať už od svých známých, z notifikací, varování či v titulcích internetových článků. Pojďme si představit, co se za tímto slovem skrývá.',
  '## Proč by se mělo formátovat?
Formátování není pouhý strašák, který smaže uživateli všechna jeho data, ale i **užitečný pomocník, který provede důkladný očistec**. Je jen potřeba jej **využít ve správný čas na správném místě**.
Děsivé významy se tomuto slovu přikládají ovšem také z dobrých důvodů. Smazání všech dat za účelem očisty provede opravdu důkladný úklid – veškerá data jsou navždy smetena z povrchu křemíkového, a tak mylná spuštění mohou skončit velmi bolestivě. Takové rány pak mohou vyléčit jen specialisté na záchranu dat.
• *Víte, proč si myslíme, že se nevyplatí využívat bezplatné programy na obnovu dat?*
V opačném slova smyslu, tedy v tom hojněji využívaném, se ale jedná o **skvělý nástroj, jak počítači vdechnout druhý život**. Ať už se jedná o chvíle, kdy již dosluhuje a jeho rychlost už hraničí s příčetností, nebo o časy, kdy už uživatel přemýšlí o přechodu na nový, modernější systém.
• Jak bezpěčně zálohovat data v systému Windows 10?
Stejně tak je formátování užitečné v případech, kdy byl počítač napaden virem**, a je potřeba jej zachránit**. Žádný antivirus totiž nedokáže to, co důkladné zformátování. Nač likvidovat veš antivirem, když formátováním spálíte i její hnidy.
## Jak na manuální formátování?
V dnešní době jsou disky, především externí, většinou prodávány již naformátované; k formátování interních disků dochází při instalaci operačním systémem. Nicméně, existují samozřejmě i situace, kdy je nutno provést formátování manuálně, resp. uživatelsky.
A kdy takovéto manuální formátování provést? Pořídili jste si nový pevný disk a ani po zapojení datového a napájecího konektoru není viditelný mezi ostatními disky na kartě „Počítač“? Právě to je ten případ, kdy budete muset iniciativně zakročit sami. Jednalo se o situaci, kdy jste si pořídili disk nový.
Nutno zmínit, že v případě formátování již existujícího svazku/oddílu (tedy části disku, s níž lze pracovat nezávisle), budou všechna data na něm uložena smazána, což jsme již zmínili výše. Pro svou vlastní bezpečnost berte v potaz zálohování dat; velmi užitečné a hojné je využívání zálohovacího pravidla 3-2-1. Provozujete-li firmu, bude vás možná zajímat zálohování dat specificky právě pro firmy.
## Formátování SSD disků
Příchod SSD disků poněkud změnil proces obnovy a mazání dat, neboť v jejich případě řídí zápis bitů a bajtů řadič samotného disku, nikoliv systém Windows.  Řadič sám rozhoduje o tom, jaké paměťové buňky ukládanými daty zaplní. Nemusí tak tedy dojít ke spolehlivému přepisu smazaných dat a nelze omezit proces obnovy dat, což představuje podstatný problém, chcete-li počítač či notebook s SSD prodat.
Situaci lze vyřešit smazáním obsahu disku SSD prostřednictvím příkazu Secure Erase, jenž v některých případech naleznete přímo v nastavení systému BIOS. Nedisponujete-li tímto příkazem, prohledejte stránky výrobce svého SSD, který mívá k dispozici příslušnou aplikaci. Posledním řešením je použití speciálního programu, jako příklad lze uvést software Parted Magic.
## Formátuje se všechno, co data může mít
*
Formátování se ovšem **netýká pouze pevných disků, ale také ostatních datových médií**, kterými mohou být paměťové karty, USB flashky, optické disky, ale i třeba starší diskety. Každý operační systém, ať už ten ve vašem počítači, v mobilu, navigaci či herní konzoli může přitom využívat trochu jiný způsob ukládání dat.
• *Čtěte také, jak **zabezpečit snadno a rychle váš OS Android**v mobilu.*
V takovém případě se povětšinou tamější chytrý systém sám šikovně připomene s upozorněním, že je potřeba nové datové médium naformátovat (formátování omylem – to je jedna z hl. uživatelských chyb v kartách, které mají lidé ve fotoaparátech). Předejdete tak možným komplikacím, kdy by se zařízení sna��ilo marně dorozumět s něčím, co tam zůstalo z předešlého užívání.
• *Radíme, **jak zachránit fotky z dovolené.*
## Formátování externích disků a USB flash disků – souborové systémy
K formátování těchto typů zařízení nejsou ve většině případů potřebné externí programy; poskytne vám je přímo OS Windows. Musíte si však uvědomit, s jakou platformou bude disk spolupracovat a jaká data na něj budou ukládána. Na základě těchto faktorů si následně zvolíte souborový systém:
### FAT32
Tento systém **zvládne pracovat pouze se soubory o velikosti 4 GB** a menšími, což způsobuje určité limitace, kupříkladu při ukládání diskových obrazů a filmů. Limity vycházejí především z toho, že se jedná o starší souborový systém; nicméně, jeho stáří je zároveň i výhodou, neboť se stal jistým standardem.
### NTFS
Na rozdíl od FAT32 **nepředepisuje maximální velikost souboru**; jedná se o časté přednastavení pro pevné (zvláště interní) disky. Důvodem je fakt, že z tohoto souborového systému umí číst pouze OS Windows. Připojujete-li externí disk k počítači s odlišným operačním systémem, není to zrovna nejvhodnější řešení. Existuje i pár výjimek, na něž však není radno se spoléhat. Na rozdíl od FAT32 a exFAT umí podporu oprávnění k souborům a rovněž disponuje vlastním zápisem změn do souborů.
### exFAT
Stejně jako v předchozím případě není nutno řešit maximální velikost souboru. Navíc **je ideálním řešením v případě přenosu souborů na externím disku mezi OS Windows a MacOS**. ExFAT se objevil v roce 2006 a byl Microsoftem navržen speciálně pro externí média (např. právě flash disk).
### Jak správně naformátovat disk nebo flashku přímo ve Windows?
Tento „návod“ ocení zejména jedinci, kteří se v dané problematice příliš nevyznají. Formátování přímo v OS Windows je relativně jednoduché. Využívá se k němu standardní okno Průzkumníka Windows, kde na požadovaný disk kliknete pravým tlačítkem myši.
• Poté z místní nabídky vyberte příkaz „Formátovat…“. Zadáte požadované parametry a poté můžete proces spustit. Co se systému souborů týče, můžete zvolit FAT32 či NTFS. Pro pevné disky v novějších Windows se doporučuje zvolit NTFS, neboť umožňuje rychlejší přístup k datům a vyšší úroveň bezpečnosti.
**Nebojte se tedy formátování, jelikož vám při správném zacházení může přinést jedině užitek**. Dbejte ovšem na zálohování důležitých souborů. Přestože existují specialisté, kteří vědí, jak zachránit data z naformátovaného disku, tak opatrnost je matka moudrosti.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Slovíčko formátování zřejmě každý běžný uživatel PC buďto zaslechl či zahlédl, ať už od svých známých, z notifikací, varování či v titulcích internetových článků. Pojďme si představit, co se za tímto slovem skrývá.'
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
  'jak-neztratit-data-z-usb-flash-disku',
  'Jak neztratit data z usb flash disků?',
  'Ohořelá, rozšlapaná. USB flash paměti můžete dát pěkně na frak, ale ani tehdy není vše ztraceno. Poradíme vám, co s ní nedělat a co jí naopak nevadí.',
  '## Největší "strašáci" pro USB disky a jejich data
Podívejme se rovnou na šestici z nich!
### #1 Předčasné vypojování zařízení
Nejde ani tak o to, aby se vám objevila kouzelná formulka o tom, že zařízení může být odebráno. Důležité je, aby přenos souborů mezi zařízeními byl již ukončen. Raději se tedy systému zeptejte, zda lze zařízení odpojit a učiňte to až po kladné odezvě (nebo v době, kdy jste si 100% jistí, že přenos už celý proběhl).
### #2 Formátování
Může se stát, že po vás zařízení po připojení chce, abyste ho naformátovali. Řeší tak obvykle nějaký problém. Jak se s ním vypořádat?
Často jde o následek zmíněného předčasného vypojení flash disku. Přenos také mohl přerušit výpadek proudu nebo nějaká chyba v komunikaci mezi paměťovým zařízením a operačním systémem počítače. V takových případech se obracejte na odborníky na záchranu dat.
• *K čemu je formátování dobré? O tématu jsme psali **zde**.*
Stává se také, že problém je přímo v paměťovém čipu nebo řadiči disku. To už bývá složitější, ale sofistikované nástroje profesionálů mají i tady velkou šanci na úspěch.
*
### #3 Poškození extrémní teplotou
Samotnou paměť za normálních okolností nezničíte, leda byste ji přiložili do krbu. I když i informace ze zařízení vhozených do ohně se za jistých okolností dají zachránit. V DataHelpu s tím máme zkušenosti. Nepropadejte tedy zoufalství, vylovte zbytky zařízení z plamenů a vydejte se za námi. Problémy může mít také obalový materiál paměti – většinou plast.
• *Víte, že **nástroje na bezplatnou záchranu dat mohou spíše uškodit**?*
Na internetu najdete i testy na opačném pólu teplotního spektra. Vychází z nich, že i když vysekáte čip flash paměti z kostky ledu, není s uchováním dat problém. Takže vzít si „flešku“ na procházku do sněhové vánice klidně můžete.
### #4 Poškození magnetem
Ačkoliv sem nepatří, zařadili jsme tento jev sem, jelikož jde o jeden z největších mýtů, co se týká USB flash disků. Pravou „flešku“ magnet poškodit nemůže, něco takového hrozí spíše u externích disků. Flash paměť je obecně odolnější. Nenajdeme v ní žádné pohyblivé části, a tak lépe snáší i přenášení. Externí harddisk je oproti tomu vlastně pevný disk v jiné formě. Je tedy také stejně citlivý jako pevný disk.
• *Jak vybrat pevný disk do externího HDD?*
### #5 Ztráta zařízení
Zní to banálně, ale je to jedna z nejčastějších příčin ztráty dat na USB flash disků. Malé rozměry zařízení představují jeho největší výhodu a zároveň nevýhodu – snadněji ho někde vytrousíte. A tady už vám se záchranou dat nepomůžeme ani my.
### #6 Mechanické poškození
Celkem hodně rozšířené. Tady jde o to, že lidé často připojí flash disk do předního či postranního USB portu, a když o něj poté nedopatřením zakopnou, tak mohou ulomit konektor, nebo poškodit základní desku. Dalším rizikem může být i na první pohled nenápadné nošení USB disku na svazku klíčů. K ulomení konektoru zde může dojít taktéž velmi snadno, například zanecháním klíčů v zadní kapse u kalhot.
## Záchrana dat z USB flash disku
Někdy se i přes veškerou snahu a péči bohužel stane, že se data ztratí, případně si je uživatel nedopatřením sám vymaže. V takové situaci přichází na řadu pomoc ze strany profesionálů.
### Kdy se obrátit na odborníky?
• USB flash disk se v počítači vůbec nenačte.
• Flash disk jste sice k PC připojili, ale uložená data nevidíte.
• Počítač chce USB flash disk formátovat.
• Smazali jste si z flash disku důležitá data.
• Došlo k mechanickému poškození USB flash disku.
Jakmile zjistíte, že došlo ke ztrátě dat, nepřipojujte zařízení znovu k počítači, ale rovnou vyhledejte odbornou pomoc.
### Nejčastější závady USB flash disků
Mezi nejčastější závady USB flash disků patří následující:
• poškození paměťových buněk datové paměti,
• poškození řídícího čipu,
• poničení datové paměti,
• smazaná, nečitelná či přeformátovaná data,
• ohnutý či zlomený USB konektor.
### Postup záchrany a obnovy dat z USB flash disku
• **Diagnostika USB flash disku**
V prvním kroku se zjišťuje, k jakému druhu poškození došlo, jaký je rozsah poškození a jaké jsou následně možnosti jeho nápravy, a tedy i záchrany dat.
• **Záchrana dat z USB flash disku**
V dalším kroku dochází k samotné záchraně dat z flash disku. Ta se provádí hlavně z důvodu poškození disku, kde došlo ke zničení některých součástek, především pak řídícího čipu. S pomocí speciálního zařízení jsou však odborníci schopni přístup k daným datům získat.
• **Obnova dat z flash disku**
Po záchraně dát následuje jejich obnova. Vesměs jde o rekonstrukci souborového systému, adresářové struktury a získání souborů v takové podobě, aby je bylo možno používat pro běžnou práci.
• **Oprava USB flash disku**
V posledním kroku přichází na řadu oprava flash disku, která umožní jeho další běžné používání. Tu však lze provést pouze v případě poškození USB konektoru či zničení běžných elektronických součástek.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Ohořelá, rozšlapaná. USB flash paměti můžete dát pěkně na frak, ale ani tehdy není vše ztraceno. Poradíme vám, co s ní nedělat a co jí naopak nevadí.'
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
  '7-snadnych-tipu-jak-nejlepe-zabezpecit-os-android',
  '7 snadných tipů, jak nejlépe zabezpečit os android',
  'Dokud uměly mobilní telefony jenom volat a psát SMSky, bylo starostí daleko méně. S nástupem chytrých telefonů je taková situace už dávnou minulostí, ale mnoho lidí si svůj přístup zanechalo. Opatrnější by si ale měli dávat pozor, jak s nimi zachází. Patříte mezi ně?...',
  '## #1 Nepřipojujte se na veřejně přístupné sítě!
Dnes je možné téměř na každém kroku narazit na nějakou bezdrátovou síť, z nichž je většina zabezpečena heslem. Stejně tak je ale běžné nacházet zcela nezabezpečené a volně přístupné sítě, které vyzývají k tomu se napojit. **Představa, že uživatel nemusí využívat vlastní data ze svého limitu, je až příliš lákavá**.
Některé tyto sítě jsou však pastičky, čekající na nic netušící příchozí. Mobilní telefon naštěstí umí lest prokouknout a před nezabezpečenými sítěmi sám varuje. Není tedy radno takovou upomínku ignorovat, vznikla z dobrých důvodů. Na druhé straně se může nacházet nekalá duše, která čeká na to, aby se zmocnila něčích citlivých dat. I ve svém oblíbeném fastfoodu si dávejte pozor (nejen na jídlo).
Nově také začal mnohem důrazněji upozorňovat na nezabezpečené webové stránky webový prohlížeč **Chrome** od Google. Uživatel si snadněji uvědomí, kdy vstupuje na stránku bez https a pouští se na tenký led. To je nyní ještě důležitější, než dříve. Obzvláště po **skandálu s bezpečnostní dírou WPA2 protokolu**, který zabezpečuje drtivou většinu Wi-Fi sítí. Zranitelnost vůči **útokům typu KRACK** umožňuje útočníkovi nejen odposlouchávat, ale také měnit komunikaci koncového uživatele. Výrobci sice vydávají bezpečnostní záplaty, ale kdo vám v kavárně zaručí, že je router aktualizovaný?
## #2 Aktualizujte své aplikace
Už to zase něco chce… Takto si povzdychává kdejaký uživatel Androidu. Mějte ovšem na paměti, že to vývojáři se svými zákazníky myslí ve skrytu duše dobře. Každá taková aktualizace je výsledkem zaplácnutí některé systémové či technické chyby.
*
V případě, že se objeví díra v systému, na které by si hackeři mohli smlsnout, snaží se vývojáři problém rychle napravit. Tyto **aktualizace tedy přináší jak bezpečnostní opatření, tak lepší optimalizaci**, díky které vydrží baterie o něco déle, a další opravy různých neduhů. Více much jednou ranou.
Pokud se nechcete obtěžovat s **ruční aktualizací** aplikací, využijte možnosti **automatické aktualizace.** Tu naleznete v Obchodu Play v nabídce Nastavení. Vyberte volbu „*aktualizovat aplikace automaticky jen prostřednictvím Wi-Fi*“. Předejdete rychlému vyčerpání tarifu mobilních dat. Rovněž nezanedbávejte **kontrolu aktualizací pro aplikace**, které jste neinstalovali přímo z Obchodu Play. U těch vám nic jiného než ruční kontrola a instalace nezbývá, avšak o to je důležitější.
• *Baterie telefonu může také vydržet déle i díky správnému postupu nabíjení.  *
## #3 Zkontrolujte si oprávnění aplikací
Při každé instalace nové aplikace vyjíždí tabulka plná informací, které leckdo odklikne, aniž by věděl, zda se náhodou neupsal k odevzdání pravé ledviny. Některé aplikace jsou přitom natolik vlezlé, že si dovolí číst zprávy, prohlédnout si historii vyhledávání, omrknout soubory uložené na paměťové kartě a další troufalosti.
**Před instalací každé aplikace si raději přečtěte, jaké práva** ji vlastně umožňujete provádět na svém mobilním telefonu. Nespoléhejte se pouze na to, že byla aplikace k dispozici v oficiálním obchodě Google Play.
V novějších verzích systému Android počínaje **6.0 Marshmallow** je navíc funkce „Ochrana soukromí“, kterou naleznete v nastavení. Zde můžete nastavit, aby automaticky všechny nově instalované aplikace měly zakázány přístup k osobním údajům, podobně jako je tomu u iOS. Můžete zde navíc velice **podrobně sledovat**, jak aplikace využívá různá oprávnění a také jednotlivá oprávnění povolovat a zakazovat.
## #4 Nestahujte aplikace třetích stran
Vzhledem k předcházejícímu bodu se taková připomínka zdá téměř zbytečná. Najdou se ovšem případy, kdy některé aplikace nejsou na ten či onen mobilní telefon k dispozici oficiální cestou. Mnoho uživatelů tak volí alternativní řešení, kdy si danou aplikaci najdou na internetu a poté ji přetáhnou do svého mobilního telefonu a nainstalují manuálně.
Přestože taková aplikace může fungovat, nikdy nemá uživatel jistotu, zda si do svého zařízení nepřitáhl i nějakého černého pasažéra. Ohroženi jsou zejména majitelé starších modelů, pro které nové aplikace už nemají oficiální podporu. Ve výsledku záleží na každém, zda se rozhodne pro neoficiální cestu na úkor zabezpečení svých citlivých dat.
Před **instalací aplikace třetí stany** musíte ručně povolit možnost v nastavení telefonu nazvanou „*neznámé zdroje*“. V případě, že se rozhodnete pro instalaci z „*neznámého zdroje*“ jak Google tyto aplikace nazývá, rozhodně dodržte alespoň **dvě zásady**. Stahujte z ověřeného zdroje (mezi nejznámější patří Amazon a F-Droid) a před instalací vybrané aplikace mějte aktivní **antivirový program**, který vám pomůže odhalit případnou hrozbu.
## #5 Nainstalujte si antivirus
Ať už instalujete aplikace oficiální cestou nebo z třetí strany na vlastní riziko, je vhodné mít vždy k dispozici balíček poslední záchrany. **Za tyto produkty není většinou potřeba ani platit**. Stačí si projít Obchod Play, zvolit příslušnou kategorii a vybrat si jeden z bezplatných antivirů.
V každém případě doporučujeme se orientovat podle počtu stažení, hodnocení a názorů uživatelů. Placené verze antivirů pochopitelně přinesou telefonu ještě větší bezpečnost, díky pravidelným aktualizacím a maximální podpoře.
Podle aktuálního vyhodnocení společnosti AV-test patří mezi nejlepší a antivirové aplikace pro rok **Avast Mobile Security, Bitdefender Antivirus, AVL, nebo Ahn V3 Mobile Security**. Výběr je naštěstí pestrý a každý najde to své.
## #6 Zašifrujte svůj mobilní telefon
Ať už zabezpečíte svůj mobilní telefon vůči nepříznivým vlivům jakkoliv, stále je tu lidský faktor. Stačí menší nepozornost na přeplněné ulici a kapesní parťák změní vlastníka. Ztráta mobilního telefonu se dá oželet, ale nikdy si nemůžete být jisti, jak s vašimi citlivými daty zloděj naloží. Nejlepší prevencí je zkontrolování si funkce šifrování.
**Standardně tuto funkci naleznete v Nastavení > Zabezpečení > Šifrování**. Proces zašifrování sice zabere nemalou chvíli, ale každý zodpovědný majitel telefonu by takovou možnost neměl opomíjet. Pro každé spuštění je poté nutné zadat zvolené heslo, kterým data opět dešifrujete. Zloděj se tak k těm citlivým jen tak nedostane.
Zádrhelem v šifrování mobilního telefonu může být menší zpomalení celého systému. Pokud tedy vlastníte starší model, může být výsledek zklamáním. Vrátit jej do předešlého stavu je pak nutné obnovou do továrního nastavení. Z tohoto důvodu si rozhodně **zálohujte co nejvíce z citlivých** a **důležitých dat** ještě před zašifrováním telefonu.
• *Srovnání výhod a nevýhod šifrování v Androidu.*
## #7 Pravidelně zálohujte
Ať už dostanete smůlu na nebezpečné stránky, škodlivé aplikace nebo zmetky všeho druhu, nejlepším způsobem, jak o svá data nepřijít, je pravidelné zálohování. Může se jednat o **kopírování souborů na druhé zařízení, médium či cloud**, ale vždy budete mít jistotu, že o svá data nepřijdete. V kombinaci s ostatními našimi radami se tak nemusíte bát jak o svá citlivá data, tak o ztrátu souborů.
Pokud neholdujete ukládání svých dat na vzdálené servery, jinými slovy do cizích počítačů, nebo jste prostě tak trochu staromilec, nezbývá nic jiného, než **ruční zálohování v telefonu** a kopírování do PC nebo na flash disk. Zde jste odkázání na schopnosti nainstalovaných aplikací, zda podporují zálohování svých dat a následně na jejich ruční vyhledávání skrze PC.
Někteří výrobci mobilních telefonů pro kompletní zálohování nabízejí své vlastní nástroje, jako například **Samsung Smart Switch**. Jsou to programy pro PC, které po připojení telefonu pomocí USB kabelu provedenou požadovanou zálohu dat do počítače. Pro ty, kteří se rozhodli svůj telefon „*rootovat*“ je zde ještě možnost kompletní zálohy telefonu pomocí nástroje Recovery.
Pakliže dáváte přednost **modernějšímu a pohodlnějšímu přístupu** nabízí se mnoho cloudových řešení, mezi **nejznámější patří například Google disk** (znáte jeho výhody?), nově nazvaný Zálohování a synchronizace od Google. Ty jednoduše posílají vybraný okruh souborů a dat do úložiště v cloudu. Data jsou provázána s uživatelským účtem a tedy přístupná po zadání přihlašovacích údajů z jakéhokoliv zařízení.
• *Proč se vyplatí zálohovat na cloud? A znáte zálohovací strategii 3 - 2 - 1?*
Pokud byste přeci jen o některé cennosti přišli, v důsledku toho, že jste buďto zálohování opomíjeli nebo ztratili soubory, které jste pořídili až po poslední záloze, stále jsou různé cesty, jak se k takovým dokumentům dostat. Stačí se obrátit na některou ze společností specializující se na obnovu dat.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  7,
  'Dokud uměly mobilní telefony jenom volat a psát SMSky, bylo starostí daleko méně. S nástupem chytrých telefonů je taková situace už dávnou minulostí, ale mnoho lidí si svůj přístup zanechalo. Opatrnější by si ale měli dávat pozor, jak s nimi zachází. Patříte mezi ně?...'
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
  'jak-jsme-zachranovali-cenna-data-check-czech-fashion',
  'Jak jsme zachraňovali cenná data check czech fashion',
  'Představte si, že 6 let píšete články, točíte videa, děláte fotky a vše si poctivě zálohujete na externí disk. Při jedné z rutinních operací s diskem se však něco pokazí a najednou máte o to celé přijít?',
  '## Jaké datové médium se zachraňovalo?
1TB externí mechanický plotnový disk značky ADATA, který používá jako médium 2,5“ dvoj-plotnový disk od výrobce Toshiba.
## Co se přesně stalo?
Externí disk přestal náhle fungovat. Po připojení k počítači nebyla dostupná na něm uložená důležitá data.
## Diagnostika poškození
## *
Těžší hardwarová závada, při které poškozená čtecí hlava fyzicky narušila povrch plotny obsahující servisní data. Protože jsou důležitá pro standardní fungování disku a práci s daty na něm uloženými, disk přestal fungovat.
## Příčina poruchy disku
Pravděpodobně náhlý jednorázový (nebo i opakovaný) otřes/klepnutí/náraz, kterému byl disk vystaven během aktivního zapojení při práci s daty způsobil, že se jedna ze čtecích hlav fyzicky otřela o záznamovou plotnu s daty. Disk tak nemusel přestat fungovat okamžitě, ale poškození plotny se mohlo ještě nějakou dobu dál zhoršovat za chodu. Až došlo k situaci, kdy už poškozené místo na plotně čtecí hlava nedokázala dále přečíst.
„*Plotnové pevné disky jsou mechanicky složitá zařízení, která pracují s velmi rychle se otáčejícími záznamovými plotnami. Ve velmi malé vzdálenosti nad plotnami kmitají čtecí hlavy, které data čtou a zaznamenávají. Disk je proto velmi křehké zařízení, které vyžaduje při práci s daty absolutní klid z pohledu možných otřesů, vibrací, nárazů*“, upřesňuje Aleš Wagner, majitel společnosti Data Help.
U externích disků to platí také, byť může uživatel mylně nabýt dojmu, že např. díky bytelnějšímu gumovému nebo plastovému vnějšímu obalu je disk dobře chráněn.
## Postup záchrany dat
Poškozený disk bylo třeba rozebrat a fyzicky se dostat k plotnám obsahujícím data. Data z ploten se musela samostatně přečíst a opravit poškozenou servisní/kalibrační část dat. A následně dle kalibračních pokynů poskládat uživatelská data ze zbylé části záznamových ploten dohromady a překopírovat na jiné datové médium.
Podařilo se to díky tomu, že naštěstí nedošlo k fatálnímu poškození celé servisní/kalibrační části dat (vyskytují se na disku ve více záložních kopiích). Pro finální složení dat jsme jednu ze záložních kopií servisních dat použili.
„*Po hotovém kopírovacím maratonu jsme okamžitě sdělily bloggerkám z Check Czech Fashion tu radostnou novinu, a zároveň jsme si i my velmi ulevili. Dle diagnózy to vypadalo na hororový scénář, který nemusí dopadnout dvakrát dobře. Takže nic pro nezkušená ucha*“, říká závěrem k celé zakázce Aleš Wagner, majitel společnosti DataHelp.
## Ponaučení, prevence
• Při aktivní práci s daty na externím pevném disku (poznáte dle toho, že disk jemně vibruje, hučí a slyšíte pravidelné i občasné cvakání dané pohybem čtecích hlav nad záznamovou plotnou) se **vyvarovat jakýchkoliv náhlých (ale i pravidelných) otřesů, nárazů**. Jakýkoliv takový náraz/ťuknutí muže způsobit fyzické porušení čtecí hlavy nebo záznamové plotny. „*Nezapomeňte, že externí disk je v provozu i tehdy, když na něj zrovna nic nekopírujete. Stačí, že je kabelem připojený k počítači. Jeho plotny se stále aktivně točí a může náhodným nárazem dojít k jejich poškození*“, vysvětluje Aleš Wagner.
• **Pokud můžete, pravidelně data zálohujte**. Zvlášť cenná a jedinečná data, o které nechcete přijít. Žádné datové médium nemá neomezenou životnost.
• **Dobré je externí disky pro zálohu používat 2 – jeden pracovní, který používáte dennodenně**. A druhý záložní, který je uložený na nějakém bezpečném místě. Na něj v pravidelných intervalech zálohujte data z prvního externího disku.
• **Vše pojistěte ještě zálohováním dat na virtuální cloudové uložiště** (např. Google Drive, Dropbox atp.).
##
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Představte si, že 6 let píšete články, točíte videa, děláte fotky a vše si poctivě zálohujete na externí disk. Při jedné z rutinních operací s diskem se však něco pokazí a najednou máte o to celé přijít?'
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
  'jste-si-jisti-ze-vase-soubory-nepujdou-znovu-na-disku-obnovit',
  'Jste si jistí, že vaše soubory nepůjdou znovu na disku obnovit?',
  'Prodávat použité pevné disky přes internet nebo v tištěné inzerci je běžnou záležitostí. Mnozí uživatelé se domnívají, že obyčejné smazání dat stačí k tomu, aby se na ně nemohl podívat nový majitel, bohužel opak je pravdou.',
  '## Myslíme si, že formátování disku je pro smazání dostatečné! Není!
Bohužel formátování disku nemá s odstraněním dat nic společného, soubory na disku zůstávají. „*Pouze jsou skryty očím uživatele. Abyste měli 100% jistotu, že vaše data budou bezpečně smazána, tak je třeba použít některý ze speciálních programů jako je např. Eraser, které fungují zcela odlišně*“, uzavírá celou záležitost Aleš Wagner.
Místo obyčejného odebrání souborů ze zařízení bude celý obsah disku zaplněn náhodnými daty. Kompletní přepsání úložného zařízení sice není otázkou několika minut, ale za to máte jistotu, že se k vašim soukromým informacím v budoucnosti nedostane někdo jiný, komu se pevný disk či SSD dostane do ruky.
**Blogujeme také na téma: **
• *Zajímá vás, jaké bylo nedávné školení v Polsku u společnosti RuSolut, které bylo předně o reverzním inženýrství? Přečtěte si **o tom zde*.
• *Dají se zachránit data z Apple přístrojů a na co si dát pozor u smartphonů?**Poznatky z denní praxe.*
• *NAS datová úložiště**a čeho se se při práci s nimi vyvarovat?*
• *Proč je pro obnovu dat z pevného disku důležité čisté pracovní prostředí?*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Prodávat použité pevné disky přes internet nebo v tištěné inzerci je běžnou záležitostí. Mnozí uživatelé se domnívají, že obyčejné smazání dat stačí k tomu, aby se na ně nemohl podívat nový majitel, bohužel opak je pravdou.'
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
  'guru-herniho-prumyslu-v-cr-o-nas-rekl-ze-jsme-skoro-jak-detektivni-kancelar',
  'Guru herního průmyslu v čr o nás řekl, že jsme skoro jak „detektivní kancelář“!',
  'Hezky jsme si popovídali s Michalem Rybkou, který vede populární YouTube kanál AlzaTech. Čtěte dále.',
  '## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Hezky jsme si popovídali s Michalem Rybkou, který vede populární YouTube kanál AlzaTech. Čtěte dále.'
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
  'reverzni-inzenyrstvi-v-praxi-rusove-na-to-jdou-skalpelem-my-sklenenym-vlaknem',
  'Reverzní inženýrství v praxi: rusové na to jdou skalpelem, my skleněným vláknem',
  'Správně dešifrovat data a pochopit samotný princip jejich ukládání. Tak jednoduše vypadá definice reverzního inženýrství. Ale to, že se u toho pěkně zapotíme se z ní nedozvíte. Jak to tedy probíhá v praxi?',
  '## 1. fáze: Manuální očištění
Protože dnešní MicroSD karty mají monolitickou strukturu (to znamená, že paměťový řadič i čipy jsou zakotveny pohromadě na jedné ploše v černém laku), nemají standardizované datové vstupy, a tak vůbec prvním krokem k záchraně dat je manuální očištění karty neboli odstranění povlaku karty.
V současné době nejsou na trhu dostupné ani žádné proto speciálně vytvořené chemické roztoky, které by něco takového šetrně uměly. Takže se na očištění musí opatrně. „*Dříve jsme používali třeba pilník nebo smirkový papír, což nebylo zrovna ideální. Proto jsme se před časem radši rozhodli, že zakoupíme speciální brusku se skleněnými vlákny. S tou základní očištění čipu a všech jeho spojů trvá tak 5 až 10 minut a máte hotovo. Mimochodem, naši kolegové z ruské firmy RuSolut pracují s chirurgickými skalpely,“ *říká Aleš Wagner, jeden z majitelů společnosti Datahelp.
**Zdroj obrázku:*rusolut.com
## 2. fáze: Hledání metodických schémat na internetu
Po očištění karty začne technik bedlivě zkoumat čip a jeho pájecí body, následně za pomocí internetu zjistí, zda už jiný expert na obnovu dat ve světě neřešil obdobný případ. Každá SD karta má totiž unikátní konfiguraci flash paměti. Jestliže už někdo takovou konfiguraci řešil a umístil na internet své poznatky, může technikům Datahelpu pomoci ušetřit čas.
Ale nemyslete si, náročnost celé záchrany dat z karty to ovšem stejně až tolik nesnižuje. *„Ani kdyby byl člověk sebevětší technologický nadšenec, tak ani náhodou nemá šanci přijít na to, jak i již někým řešeným paměťovým schématům správně porozumět. To musí nejdřív projít profesionálním školením, věnovat se problematice delší čas a mít po ruce vybavenou laboratoř,“ *prozrazuje Aleš Wagner*.*
**
### **Blogujeme také na téma: **
• *Zajímá vás, jaké bylo nedávné školení v Polsku u společnosti RuSolut, které bylo předně o reverzním inženýrství? Přečtěte si **o tom zde*.
• *Dají se zachránit data z Apple přístrojů a na co si dát pozor u smartphonů?**Poznatky z denní praxe.*
• *NAS datová úložiště**a čeho se se při práci s nimi vyvarovat?*
Když se technikovi povede najít odpovídající schéma na internetu na typ karty, jakou má i zrovna před sebou na tzv. *operačním stole*, může se plynule přesunout do závěrečné a nejtěžší 4. fáze – začít reverzně analyzovat.
## 3. fáze: Je libo rentgenové záření a trochu kresby?
Pakliže technik žádné schéma nenajde, musí začít jednat na vlastní pěst – identifikovat správně vnitřní strukturu řadiče a paměťového čipu. V této fázi začíná pro technika trochu bojovka, protože jde do areálu ČVUT v Dejvicích na Praze 6, kde si pořídí rentgen karty. Ten mu pomůže objevit celou mapy karty se všemi jejími cestičkami. Toto schéma si musí ručně překreslit.
*Zdroj obrázku:*rusolut.com
## 4. fáze: Začíná se „teprve“ reverzně analyzovat
Když si technik z rentgenu „*cestičky*“ ručně překreslí na papír, pak teprve přichází ke slovu specializovanou sadu nástrojů na záchranu dat – Visual Nand Reconstructor (VNR) vyvinutý lidmi ze přední světové společnosti RuSolut. Technik vezme speciální adaptér ze setu s názvem Monolith, jenž je primárně určen pro pájení SD a MicroSD karet, napojí ho na kartu a spustí si softwarové rozhrání, v němž se začnou načítat data z karty. Rychlost načítání se odvozuje od velikosti paměti. Tak např. 128GB karta se může číst celý den a 2GB bude hotová do 10 minut*.*
Teď už čeká technika práce se softwarem VNR, kde se data zobrazují v bitmapě. Představte si, že máte třeba okolo 800 miliónů chaoticky rozmístěných teček a hvězdiček a jediná vaše indicie je např. jen to, že to co je černé, má hodnotu 1 a co je bílé, má hodnotu 0. V tomto momentu technik začíná pomalu ale jistě (jakmile přidá/ubere sebedrobnější element v softwaru, tak se celá bitmapa okamžitě změní) metodou pokus/omyl reverzně přicházet na systém ukládání dat na zařízení.
### ***Co je bitmapa***
*Bitmapová grafika se používá pro znázornění dvojrozměrného obrazu a tvoří ji tzv. rastry neboli pravidelné mřížky. Číslice 0 a 1, které jsou elementární jednotkou digitálních systému, označujeme jako bity.*
Jakmile je systém ukládání dat rozšifrován, má technik vyhráno, protože může zrekonstruovat logický obraz paměti a uživatelská data správně obnovit. Po úspěšné záchraně dat si technik výslednou konfiguraci u dané karty přidá i do své tzv. *truhlice *paměťových schémat.
A jak dlouho vlastně ten finální proces reverzního inženýrství za pomocí softwaru může časově trvat? *„To poznáte podle toho, kolik tisíc či miliónů černobílých hvězdiček a teček se vám na obrazovce objeví. To následně vykrátíte tím, kolikrát u toho technik bude lomit rukama,“ *směje se Aleš Wagner a dále pokračuje už ve vážnějším tónu*: „Technik, který už má zkušenost s rozhraním softwaru VNR, je plně seznámen s jeho funkcemi a řádně proškolen od samotného RuSolutu, umí datové bloky na paměťovém médiu správně zrekonstruovat za pár hodin“, *uzavírá vše majitel společnosti Datahelp.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Správně dešifrovat data a pochopit samotný princip jejich ukládání. Tak jednoduše vypadá definice reverzního inženýrství. Ale to, že se u toho pěkně zapotíme se z ní nedozvíte. Jak to tedy probíhá v praxi?'
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
  'hvezdy-z-ace-lab-nas-naucily-dalsi-kouzla-pro-zachranu-z-ssd-a-zarizeni-cannon-a-seagate',
  'Hvězdy z ace lab nás naučily další kouzla pro záchranu z ssd a zařízení cannon a seagate',
  'Ruská společnost ACE Lab je posledních 10 let považována za lídra v oblasti záchrany dat a působí úspěšně i na americkém trhu. Když uspořádala konferenci v Praze, nemohli jsme chybět.',
  '## Víme, jak lépe vyzrát na Seagate řady F3
Jak rychle a spolehlivě dešifrovat data z poškozených pevných disků F3 od americké společnosti Seagate, to byl jeden z hlavních taháků celé konference. A proč se řešila problematika zrovna řady F3? Protože disky s tímto označením mají zcela odlišnou architekturu ukládání dat a způsob kalibrace a do této chvíle byla obnova dat z nich často i o velkém štěstí.
Přednáška napověděla, co dělat, v momentě, když se disk zamkne*.* Společnost Seagate a „*spontánní*“ zamykání jejich disků, kdy data samozřejmě na disku jsou, ale nedají se systémem nijak detekovat. To je problém, který trápí snad každého odborníka v naší profesi.
Kolegové z ACE Lab na základě dlouholeté praxe vymysleli a nám představili zajímavý způsob nápravy a nové nástroje, které pomůžou data z disku zachránit v chvíli, když s námi disk odmítá spolupracovat.
Jak vlastně k takovému zablokování dochází? Technologické uzamknutí disku se stává např. v případě, že se fyzicky poškodí čtecí hlava nebo povrch disku, což poté vede k vadnému zápisu, kdy na disku neproběhnou správně kalibrační procesy.
## Záchrana videí z fotoaparátů Canon a nový horizont v oblasti SSD disků
Dále jsme se díky velmi názorné přednášce dozvěděli o pokrocích při obnově dat z monolitických zařízení (mezi nejvíce rozšířené monolity patří dnes hojně využívané MicroSD karty) a vlivu napájecího napětí na počet chyb v neopraveném čtení dat.
• *Více o problematice a úskalích MicroSD karet se můžete dočíst **zde*.
Poté nás čekala velmi detailně a podnětně zpracovaná přednáška o záchraně videí z fotoaparátu Canon. Jde o to, že fotoaparáty Canonu ukládají videa trochu odlišným způsobem než klasické fotky, řekněme tak trochu*„na přeskáčku“* do jednotlivých datových bloků. Pak se může snadno stát, že na paměťové kartě fotky fungují, ale videa již ne.
Hovořilo se také o nastupujících trendech u SSD disků a o výrazném posunu v záchraně dat z nich.
**Zdroj*: ACE Lab
• *Přečtěte si také, jak jsme u **SSD disků**rozebírali hlavní příčiny při komplikací a záchraně na nich nahraných dat a využití moderních technologií. *
V současné chvíli se ve světě (i u nás) u SSD disků řeší problém disků, které používaly čipy SandForce (drobná zajímavost: čipy SandForce koupila společnost Seagate, která s nimi plánovala další vývoj, ale nakonec z toho sešlo).
Tyto čipy mají vysokou poruchovost. Aby toho nebylo málo, jejich šifrovací algoritmus je velice těžké prolomit, a to nejen pro nás, ale i další špičkové odborníky ze světa. Naopak u dnešních velkých výrobců SSD disků (např. Intel nebo Samsung) jsme my osobně velmi dobře seznámení s algoritmem pro rychlé dešifrování dat na discích.
## V čem vězí potíže s hybridními disky a jak zpětně zjistit konfiguraci RAID pole
Spolu s kolegy jsme se během konference dotkli i kontroverznosti v problematice hybridních SSD/HD disků. Tyto disky si totiž snaží vzít to nejlepší z obou zmiňovaných médií – z SSD rychlost a z HD kapacitu. Jenže sloučení obou médií do jednoho zatím přináší více problémů než užitku.
Načerpali jsme také nové informace o nových metodách záchrany dat z poškozených paměťových zařízení u virtuálních strojích a úložných prostorů Microsoft Windows. A také o tom jak, co nejefektivněji zjistit uživatelskou konfiguraci RAID pole v případě toho, že jsou *metadata* a *file system* poškozeny.
• *Zajímá vás, **čeho se vyvarovat při práci s RAID polem**?*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Ruská společnost ACE Lab je posledních 10 let považována za lídra v oblasti záchrany dat a působí úspěšně i na americkém trhu. Když uspořádala konferenci v Praze, nemohli jsme chybět.'
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
  'ondro-jsi-prvni-cech-ktereho-jsem-ucil-rekl-mi-spickovy-odbornik-z-rusolutu',
  '„Ondro, jsi první čech, kterého jsem učil,“ řekl mi špičkový odborník z rusolutu',
  'Páni, řekl jsem si a vzedmula se ve mně vlna hrdosti. Za těch 5 dnů ve Varšavě jsem se naučil mnoho nového. Na moment, kdy jsem se loučil se Sashou Sheremetovem, lídrem světově uznávané společnosti v oblasti záchrany dat, ale dlouho nezapomenu.',
  '## Co si na nás RuSolut přichystal? Mluvilo se, zachraňovalo se a pájelo se
Celé první 3 dny týdenního školení se moje propiska vůbec nezastavila, probíraly se teoretické základy a klíčové elementy Visual Nand Reconstructoru.
*
Čtvrtý den začala praktická a samozřejmě i trochu zábavnější a hravější část školení, kdy jsme měli sami vyřešit asi okolo 20 modelově předpřipravených situací a zachránit data neboli využít znalosti reverzního inženýrství a rozšifrovat v softwarovém rozhraní hlavní algoritmus ukládání dat.
Po vyřešení úkolů jsme si měli sami předpřipravit vlastní konfigurace v softwaru a tím potvrdit, že jsme první tři dny dávali opravdu pozor. Došlo i na celodenní cvičení techniky pájení pod vedením CEO společnosti RuSolut, Alexeje Derkunského.
• *Přečtete si také **naše dojmy a postřehy z mezinárodní pražské konference v oblasti záchrany dat**, kterou pořádala společnost ACE Lab. *
## Individuální přístup expertů z RuSolutu naučí nejvíce
Upřímně, když se nad dubnovým školením zpětně zamyslím, tak to byla to slušná nalévárna (hlavně teoretická část), ale taková, která mě vskutku po všech stránkách bavila. Což bylo jistě dáno i tím, že ve „*školních lavicích*“ jsme také seděli jen 3 žáčci – já, jeden kolega ze Španělska a druhý z Itálie. Oba dva velmi sympatičtí chlapíci, se kterými jsme si vyměnili spoustu zajímavých informací z naší profese.
Započítám-li Sashu Sheremetova a jeho kolegu Alexeje Derkunského, bylo v moderní učebně maximálně 5 lidí, což parádně umožnilo hodně individuální vyučovací přístup.
Přiznám se, že před odjezdem na školení se mne trochu zmocnily obavy – představoval jsem si špičkově vybavenou učebnu (to, že i v tomto bodě realita předčila mé očekávání se ani zmiňovat nebudu), ale s naprosto vydýchaným vzduchem a mnoho párů lidských očí hledících do zářících obrazovek.
Ale jak již píši výše, byly to zbytečně obavy. V učebně panovala naprosto parádní atmosféra, kde kdykoliv jste něco zrovna nevěděli, mohli jste se na všechno okamžitě a dopodrobna vyptat. A to bylo to nejdůležitější. Z mého pohledu jsou tedy Sasha i Alex nejen naprostí profesionálové, ale také lidé, kteří dokázali probíranou látku citlivě a srozumitelně podat. Poznáte to přes data, které díky akci nově umíme obnovit. Tak tedy Varšavo, zas někdy na viděnou a děkuji!
*Ondřej Jelínek, technik, Datahelp*
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  3,
  'Páni, řekl jsem si a vzedmula se ve mně vlna hrdosti. Za těch 5 dnů ve Varšavě jsem se naučil mnoho nového. Na moment, kdy jsem se loučil se Sashou Sheremetovem, lídrem světově uznávané společnosti v oblasti záchrany dat, ale dlouho nezapomenu.'
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
  'smartphony-microsd-karty-ssd-disky-kde-jdou-data-zachranit-kde-ne-a-jaky-je-problem-s-apple',
  'Smartphony, microsd karty, ssd disky: kde jdou data zachránit, kde ne a jaký je problém s apple?',
  'Kdo chce držet krok s nejnovějším vývojem na poli záchrany dat, ten rozhodně nesmí usnout na vavřínech a neustále se musí vzdělávat. Chcete vědět, s jakými výzvami v záchraně dat se momentálně v Datahelpu zabýváme? Co zatím nelze pokořit, co už naopak dobře zachraňovat umíme a jak si ...',
  '## Věk monolitů: MicroSD karty činí až 25 % ze všech zařízení, která zachraňujeme
Ale co to vlastně je? Monolitem nazýváme datový nosič, který má tzv. monolitické jádro. To zjednodušeně znamená, že všechny operace a data na nosiči se vzájemně sdílejí a běží v jediném paměťovém prostoru. A jaký typ monolitu se dnes nejčastěji používá? Především oblíbená MicroSD karta (prostorově nejmenší masově využívaná karta), a to díky vysoké kompatibilitě s různými typy přístrojů.
*
*„V minulých letech byla záchrana dat z těchto monolitů dost o štěstí, protože dlouho nikde ve světě neexistovala žádná pořádná hardwarová ani softwarová podpora*”, říká Aleš Wagner ze společnosti Datahelp. Nyní se situace hodně zlepšila.
A jaké jsou vlastně nejčastější závady u MicroSD karet? Z 80 % se v DataHelpu setkáváme s tím, že odchází paměťový řadič. Jde o klasickou hardwarovou poruchu, přičítat ji můžeme průběžnému stárnutí karty. Zbylých 20 % můžeme označit za softwarové přehmaty zbrklých uživatelů. Ti např. omylem smažou fotky, nenechají správně dokončit zápis či si nechtěně nastaví přístroj do továrního nastavení.
*„Každý typ SD karty má unikátní flash paměť, a proto je při záchraně dat z těchto zařízení nejlepším krokem se nejprve přesvědčit, jestli už někdo ve světě neřešil problém s obdobným typem karty. To může při řešení potíží hodně pomoci. Abyste ovšem takto mohli postupovat, musíte nějakou dobu spolupracovat s předními světovými vývojářskými společnostmi”*, pokračuje Aleš Wagner, odborník na obnovu a záchranu dat. Ale i tak lze problém s rozluštěním konfigurace unikátní paměti u karty označit za ten méně závažný.  Daleko složitější je mít s nimi dostatek trpělivosti. Zní to úsměvně, ale v praxi musíte MicroSD kartu nejdříve fyzicky zbrousit, což v případě předmětu o velikosti lidského nehtu nejde opravdu nijak snadno.
„*Je to hodinářská práce, při níž se musíte trefit na kontakt. Jde o to, že monolity nemají standardní datové výstupy, proto je třeba kartu nejdříve fyzicky zbrousit. Tím se očistí vlastní čip a spoje. Musíte se u toho obrnit opravdu velkou dávkou trpělivost**i,”* usmívá se Aleš Wagner. „*Kvůli těmto náročným operacím jsme si museli pořídit velice drahé speciální mikroskopy a pájecí stanice.*” I díky těmto průběžným inovacím naší technické laboratoře jsme v Datahelpu rázně pokročili v záchraně dat z MicroSD karet a dalších nosičů s monolitickým jádrem. Přes veškerý pokrok nicméně existuje případ, kdy vám data nezachrání nikdo na světě - obnova dat ze zlomené karty je zatím utopií. A jak vlastně vypadá situace u chytrých telefonů?
## Na smartphony a tablety se musí chytře
Smartphone dnes vlastní skoro 4 miliony obyvatel České republiky. Díky chytrým funkcím a aplikacím dokáže telefon velmi snadno suplovat činnost fotoaparátu, kamery, hudebního přehrávače či – bez nadsázky – i PC.  To vysvětluje, proč jsou chytré telefony tak „trendy“, a proč si je lidé tak často berou na dovolenou jako jediné záznamové zařízení. Výhoda více funkcí v jedné krabičce má i odvrácenou stránku - smartphony a tablety obecně nemají příliš silnou konstrukční rezistenci proti fyzickým pádům z velké výšky. „*Stává se, že smartphone při dovolené utrpí nějaký nepříjemný fyzický otřes, po kterém už systém nenaběhne. Nebo telefon spadne do vody. Takové zakázky máme velmi často.”*
**
*„U těchto moderních přístrojů je spolehlivé odstranění závad nedostatečně probádaná oblast, do které se některé společnosti ani nechtějí moc pouštět. Při práci se smartphony si totiž dost často lámou hlavu i přední světové firmy specializující se na záchranu dat. Rozluštit správně a rychle unikátní metodu šifrování daného přístroje, to je hlavní zádrhel, který brání úspěšnému konci. Je sice pravda, že čínská společnost SalvationData před časem na svém webu proklamovala, že vyvinula speciální hardware pro záchranu, ale otázka je, jak jsou doopravdy daleko,“ *pokračuje Aleš Wagner. Ovšem i tak se na poli datových nosičů u nás můžeme pochlubit velkým zlepšením. „*Největší úspěšnost máme zatím u smartphonů s vestavěným operačním systémem Android, a to díky metodě tzv. reverzního inženýrství. Není to nic snadného, a proto také musí všichni naši odborní technici na toto téma projít několika vícedenními certifikovanými školeními v zahraničí”*, říká jeden z našich předních specialistů na záchranné práce s daty.
Reverzní inženýrství (RE neboli *reverse engineering*) je speciální metoda, při níž jde o to přijít na samotný princip fungování zkoumaných předmětů. Potom lze lépe analyzovat a identifikovat jeho strukturovanost, vzájemnou provázanost jednotlivých komponentů a samotnou činnost. Stupeň požadované odbornosti je zde opravdu velmi vysoký, bez průběžných školení to vážně nejde a nějaké pokroky můžete sotva kdy čekat. A to je přesně to, co rozděluje nadšence do moderních technologií od opravdových odborníků.
Co z toho vyvodit ohledně nejlepší možné prevence proti ztrátě dat z tabletů a smartphonů? My radíme zálohovat pravidelně (*znáte metodu 3 - 2 - 1?*) a na vícero druhů datových médií (CD, USB disky, PC, NAS, externí disky apod.) a samozřejmě se neostýchat využít některé cloudové služby (Např. Dropbox). Do jistého limitu (15GB) jednu nabízí i společnost Google zadarmo k vytvoření e-mailového uživatelského účtu. Také společnost Apple má vlastní cloud pro své uživatele. Jmenuje se iCloud a funguje na úplně stejném principu jako Google disk. Jako prevence pro zálohování dat z přístrojů značky Apple je to velká a hlavně rychlá pomoc. Ale v momentě nějakého vážně poškozeného či zablokovaného iPhonu (vzpomeňme si na chybu 53) či iPadu už společnost Apple tak moc a tak rychle nepomáhá.
## Apple je těžké jablko k rozlousknutí. I když…
*„Přístroje od společnosti Apple jsou pro každého záchranáře dat tak trochu noční můrou. Dosud se nikomu na světě nepodařilo prolomit a rozklíčovat jejich zabezpečení,*” přiznává Aleš Wagner. Otevírá tak ožehavou otázku, jak že to vypadá s bezpečím dat na mobilech od Apple. Výše zmíněná kauza chybové hlášky 53, která nejednomu překvapenému uživateli IPhonu6 de facto nenávratně zničila všechna uložená data v přístroji, v nedávné době toto téma připomněla.
**
Chyba 53 nastala při oficiální softwarové aktualizaci na novější verzi operačního systému. Nejčastěji nastala u přístrojů, u nichž byla v minulosti vyměněna součástka v neznačkovém servisu. Zjednodušeně řečeno telefon to při aktualizaci bral jako rušivý zásah do své bezpečnostní složky. To by ještě šlo pochopit, jenže chyba postihovala i přístroje, které v servisu ani nikdy nebyly, a to už moc pochopit nejde. Naštěstí Apple pohotově zareagoval a vydal patřičný update, který by měl od hlášky s chybou 53 přístroj úspěšně ochránit.
Ovšem ani tento vstřícný krok k uživatelům přístrojů Apple nemění nic na tom, že samotnou společnost obestírá kolem otázky supportu jejich produktů neprostupná mlha. Na poli vývoje záchrany dat se zatím neblíží urychlení procesů nutných k obnovení osobních dat. „*Ani applovské MacBooky nejsou osazeny standardními SSD disky. Místo toho mají vlastní nestandardní patice a zalité paměťové čipy a řadič,”* objasňuje odborník. Softwarově se to tedy zatím moc řešit nedá. Ale pokud bychom nyní opustili Apple a zaměřili se celkově na problematiku záchrany dat z SSD disků, narazíme na jednu funkci, u níž vám žádná specializovaná společnost nepomůže s obnovou – TRIM.
## U SSD disků pozor na funkci TRIM
Funkce se jmenuje TRIM a jedná se o podporu pro delší životnost paměťových buněk v SSD disku. Dnes je zabudovaná téměř u každého SSD disku na trhu. Zařizuje v praxi to, aby paměťový disk snáze rozlišil skutečně volné buňky, které jsou připravené k novému zápisu dat. Jenže zapnutá funkce TRIM má i svou nevýhodu. Všechna data smazaná v jejím aktivovaném režimu v SSD disku jsou zničená už navždy. Záchrana dat je tedy v tomto případě zhola nemožná.
*„Proto by uživatelé měli dát pozor na to, co na disku mažou, a v první řadě by si také měli zjistit více o funkci TRIM. Tady jde o to, že výkon a spolehlivost SSD disků po nějakém čase klesá, konkrétně když je třeba dále zapisovat data tzv. podruhé do informačních buněk, protože slábne komunikace mezi paměťovým řadičem a operačním systémem. Funkce TRIM má právě tuto komunikaci podpořit a najít skutečně volné paměťové buňky k zápisu*”, vysvětluje Aleš Wagner. Proces mazání souborů na SSD disku s aktivovanou funkcí TRIM vydává vždy příkaz k trvalému smazání a jasně řadič disku informuje, že datové bloky už neobsahují platná data.
„*Ale jinak u záchrany dat ze SSD disků si už dlouhou dobu držíme dost vysoký standard. Byli jsme první  v České republice, komu se podařilo zachránit data z disků Intel 320 series. I v tomto případě se nám vyplatilo vzdělávání v oblasti reverzního inženýrství”*, uzavírá téma SSD disků Aleš Wagner ze společnosti Datahelp. Tím se konečně dostáváme k tématu, jak se snažíme držet krok s vývojem ve světě.
## Kooperace s předními světovými společnostmi a certifikovaná školení jsou nutností
U světoznámé polské společnosti RuSolut necháváme vždy průběžně v roce naše techniky absolvovat školení, které je plně vybaví pro praxi. Mimo jiné je to také dobrá možnost, jak mohou získat kontakty a vyměnit si zkušenosti s ostatními specialisty z celého světa. To je dle nás i znakem skutečně důvěryhodné společnosti na obnovu dat - neustálý rozvoj zaměstnanců a úzký kontakt se světovými specialisty na poli hardwarového i softwarového vývoje pro záchranu dat.
• *Proč neradíme záchranu dat provádět doma za pomoci bezplatných softwarových nástrojů?*
„*Když řešíme opravdu složitý proces záchrany dat, se kterým jsme ještě neměli předtím žádnou velkou zkušenost, cenný poznatek od jiných se rozhodně hodí. Proto je tak nesmírně důležité, aby se mohli naši specialisté potkat i se zahraničními kolegy, kteří mají v našem oboru co říct*,” říká závěrem Aleš Wagner.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  8,
  'Kdo chce držet krok s nejnovějším vývojem na poli záchrany dat, ten rozhodně nesmí usnout na vavřínech a neustále se musí vzdělávat. Chcete vědět, s jakými výzvami v záchraně dat se momentálně v Datahelpu zabýváme? Co zatím nelze pokořit, co už naopak dobře zachraňovat umíme a jak si ...'
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
  'ucastnime-se-odborne-konference-v-praze-od-acelabu',
  'Účastníme se odborné konference v praze od acelabu!',
  'Přední ruská firma ACE Group (25 let na trhu) v oblasti záchrany dat pořádá zítra 22. dubna od 10 do 16 v pražském hotelu Clarion Congress unikátní odbornou konferenci s názvem BREAKTHROUGH in Recovering Data from Self-Encrypting Drives and Other Advances in PC-3000, na kterou vysílám...',
  '## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Přední ruská firma ACE Group (25 let na trhu) v oblasti záchrany dat pořádá zítra 22. dubna od 10 do 16 v pražském hotelu Clarion Congress unikátní odbornou konferenci s názvem BREAKTHROUGH in Recovering Data from Self-Encrypting Drives and Other Advances in PC-3000, na kterou vysílám...'
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
  'ucastnime-se-tydenniho-skoleni-od-rusolutu-v-polsku',
  'Účastníme se týdenního školeni od rusolutu v polsku',
  'Po páteční pražské konferenci se naši technici vydávají na týden do Polska, kde se zúčastní unikátního vzdělávacího semináře od společnosti Rusolut.',
  '## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'Po páteční pražské konferenci se naši technici vydávají na týden do Polska, kde se zúčastní unikátního vzdělávacího semináře od společnosti Rusolut.'
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
  'proc-bude-zachrana-dat-z-ssd-i-hdd-disku-stale-slozitejsi',
  'Proč bude záchrana dat z ssd i hdd disků stále složitější?',
  'Pokrok v technologiích záznamových médií SSD i běžných plotnových disků v posledních deseti letech je bezprecedentní. Spolu s ním ale vzrůstá složitost technologií a s ní i náchylnost ke ztrátě dat. Rozebrali jsme hlavní příčiny komplikací při záchraně dat z SSD disků využívající nejnovější technolo...',
  '## Blíží se příchod revolučních technologií HAMR, SMR
V posledních letech jsou v oblasti klasických pevných disků s rotujícími plotnami skloňovány dva nové pojmy: SMR reprezentující „šindelovou“ strukturu uložení dat na magnetických plotnách a HAMR představující technologii záznamu na magnetické plotny podobnou dávný magneto-optickým médiím, kde se magnetický záznam podporuje tepelným ohřevem nad určitou mezní hodnotu. Zatímco na HAMR si ještě pár let počkáme, pevné disky vybavené SMR technologií již vstoupily na trh.
Nabízí je momentálně jak společnost Seagate, tak společnost Western Digital (a její divize HGST), prvně jmenovaná v klasickém provedení, druhá pak v kombinaci s unikátní technologií plnění vnitřku pevných disků heliem. V nadcházejících letech tato první generace pevných disků se SMR technologií ukáže, nakolik je spolehlivá při dlouhodobém provozu dat. Její hlavní výhoda, tedy schopnost dát pevným diskům vyšší kapacitu při stejných rozměrech, totiž vyžaduje komplikovanější a sofistikovanější metody zejména zápisu dat.
Jak dodává Štěpán Mikeš ze společnosti DataHelp, která patří v ČR mezi špičku v záchraně dat z SSD disků, „kapacita pevných disků roste skokově a s ní i objem potenciálně ztracených dat a také doba nutná pro jejich obnovu“. V případě heliových SMR disků Hitachi UltraStar dosahuje dnes výrobce kapacity až 10 TB, zato rychlost pevného disku se nezvyšuje, spíše klesá. „10TB kapacitu bez ohledu na to, zda se podaří data správě dekódovat, kopírujeme při záchraně na naše úložiště až několik dní“, dodává Štěpán Mikeš. Na tomto webu najde další podrobnosti o tom, jak SSD disky a flash technologie fungují a jaký to má dopad na záchranu dat.
## Zachraňujeme externí modely WD MyPassport
*
Ale to je prozatím hudba budoucnosti, aktuální výzvou jsou pevné disky využívající technologii GMR, za níž její vynálezci obdrželi v roce 2007 Nobelovu cenu za fyziku, konkrétně například v podobě externích disků WD MyPassport. Jejich výrobce přichystal zachráncům dat několik komplikací do cesty. Tou první je, že už nejde o klasické SATA disky s USB převodníkem v krabičce, ale USB je vyvedeno přímo na elektronice pevného disku. Ale s tím si technici rychle poradí, napojí se přímo na ty správné vodivé cesty.
Větší komplikací je přímo v disku obsažené hardwarové šifrování. I když si jej zákazník neaktivuje a nezmění výchozí heslo na své osobní tajné, tak pevný disk MyPassport vše šifruje s výchozím klíčem. Pokud pak uživatel heslo změní, dojde jen k aktualizaci šifrovací části, ale samotná data se měnit nemusí. Pokud ale takový disk selže, je na problém zaděláno. „Disky MyPassport používají vždy unikátní kombinaci firmwaru a servisních dat, takže mrtvou elektroniku disku nelze vyměnit za jinou“. V tu chvíli nastupují zkušenosti a know-how v oblasti dešifrování dat z disku, který přišel o část potřebných informací. Leckdy je ale potřeba nebýt v ochraně svých dat příliš paranoidní, neboť jak dodává Štěpán Mikeš z DataHelpu: „my už to umíme dešifrovat, pokud uživatel nenastavil vlastní klíč“.
## Jak komplikuje záchranu dat SSD MLC generace čipů
První generace SSD používala tzv SLC čipy. Ty ukládaly do jedné paměťové buňky SSD jen jednu hodnotu (jedničku, nebo nulu). Další generace, tedy SSD z posledních pár let, již pro zlevnění výroby využívaly tzv MLC čipy, které ukládají do paměťové buňky již dvě hodnoty. Spolu s tím, jak i díky MLC technologii výroby paměťových čipů pro SSD klesají i rozměry čipů - ty jsou vyráběny takzvaně "na menších nanometrech" - se stále ztenčuje hranice mezi stavy jednotlivých paměťových buněk a jejich čitelností pro elektroniku SSD. „Prakticky každý čip je z výroby do určité míry vadný a je na řadiči SSD, aby si s tím poradil“, dodává Štěpán Mikeš.
Navíc se zmenšující se výrobou čipů klesá jejich životnost, tedy počet cyklů zápisu, které paměťové buňky zvládnou, než přestanou fungovat. Proto čipy a řadiče používají mnoho matematických metod, jak zápisy dat na SSD co nejlépe rozložit, aby zatížení flash čipů SSD bylo co nejrovnoměrnější. To jsou všechno známé metody a s tím, jak je jejich význam s každou další generací SSD důležitější, rostou výpočetní nároky na řadiče SSD. Jsou to pak právě ony, které častou na SSD odejdou jako první. „Často se stává, že samotný řadič by fungoval, ale poškodila se nevratně jeho konfigurace“, doplňuje Štěpán Mikeš z DataHelpu. S ní se ztratí i unikátní nakonfigurování celého SSD a řadič tak přestane rozumět datům v NAND flash čipech, které na SSD obsluhuje. Největším oříškem současnosti, který se zatím nepodařilo rozlousknout, je záchrana dat z SSD s řadiči SandForce.
A to se do problémů začíná dostávat teprve tato MLC generace SSD. Dnes ale již na trhu nalezneme i SSD s tzv TLC čipy, které do jedné paměťové buňky ukládaj�� rovnou tři hodnoty. Jejich životnost zápisu je tak ještě kratší, pro první SSD vyšších kapacit postavené na nejnovějších 15nm či 16nm čipech se životnost počítá i jen pouze na stovky přepisů.
## Několik poučení na závěr
• na základě zkušenosti s disky MyPassport od Western Digital: pokud to vysloveně nepotřebujete, neměňte výchozí nastavení u disků s podporou šifrování, usnadníte tím či přímo umožníte úspěšnou obnovu dat.
• ke svému SSD v počítači přistupujte jako ke spotřebnímu zboží. SSD mají tendenci selhávat náhle, bez předchozího varování. Minimálně dvojnásob to platí pro SSD s MLC čipy, minimálně trojnásob pro SSD s TLC čipy.
• pro všechny případy a speciálně pro SSD s řadiči SandForce platí zlatá univerzální rada:
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  5,
  'Pokrok v technologiích záznamových médií SSD i běžných plotnových disků v posledních deseti letech je bezprecedentní. Spolu s ním ale vzrůstá složitost technologií a s ní i náchylnost ke ztrátě dat. Rozebrali jsme hlavní příčiny komplikací při záchraně dat z SSD disků využívající nejnovější technolo...'
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
  'vite-jak-spravne-zabezpecit-provoz-datoveho-uloziste-nas-ve-vasi-domacnosti',
  'Víte, jak správně zabezpečit provoz datového úložiště nas ve vaší domácnosti?',
  'NAS datová úložiště slouží k ukládání a k bezdrátovém přístupu k většímu množství multimediálních dat (např. oblíbená hudba, filmy či fotky z cest). Díky snadné obsluze, pohodlnému centrálnímu ukládání, synchronizaci a sdílení dat s ostatními zařízeni je NAS stále populárnější předevš...',
  '## Informační rozcestník:
• Správné nastavení NAS
• Praktické tipy
• Příčiny poruchy
• Co ovlivňuje cenu při záchraně dat?
Vyjmenujeme-li hlavní přednosti NAS (Network Attached Storage) zařízení, jde to přesně na ruku uživatelům, kteří jsou zvyklí celý den pobývat online a konzumovat internetový obsah a multimédia. Většinou jde o úhlednou designovou krabičku, v ní několik velkokapacitních disků nastavených do RAID pole. Umožňuje nonstop zálohování 365 dní v roce, možnost stahování či bezdrátového sdílení a přehrávání dat napříč mnoha zařízení včetně mobilu a tabletu (přiznejte se, kdo by si nerad pouštěl filmy na tabletu v posteli a měl online k dispozici celou svoji sbírku?). Potěší i nízká energetická spotřeba, minimální hlučnost, jednoduché ovládání a intuitivní správa, kterou bez problému zvládne i méně zkušený uživatel.
Ale přesně v tomto bodě mnoho méně zkušených uživatelů narazí kosou na tvrdý kámen. Jednoduchost práce s NAS je ukolébá a zapomenou na zajištění základních bezpečnostních elementů (nebo to díky své nezkušenosti netuší). Jde např. o nastavení poruchového pole, ohlídání si preventivních faktorů, které mají rapidní dopad na životnost přítomných disků v zařízení nebo obecně na stabilitu celého operačního systému.
## Správné nastavení NAS serveru má cenu zlata
NAS má většinou vlastní software a operační systém (často na linuxové bázi), který je vyvinutý firmou, co NASy dodává. Při nastavení zařízení pracujete s webovým prohlížečem v rozhraní, jaké klasicky znáte také při práci s internetem. Výše jsme se už zmínili o RAID poli (co to je a jaké je jeho vhodné užití), které se hojně u NASů využívá. Nejběžněji se setkáte v praxi s variantou nastavení RAID pole 1, kde se data zrcadlí na oba disky (existují i další varianty nastavení polí, jako např. RAID 0, kdy dostanete lepší výkon systému, ale na úkor bezpečnosti dat, které se nikam nezrcadlí nebo RAID 5, který se využívá u čtyřdiskového NASu atd.). To znamená, že z disků můžete využít jen poloviční kapacitu, ale data zase budou lépe zálohované.
Klíčovým bodem je nezapomenout si preventivně nastavit signál v případě poruchy. NAS datové úložiště může při neočekávaném rozpadu RAID pole např. silně pípat, poslat SMS zprávu či e-mail. „V praxi jsme se setkali např. s tím, *že si uživatel pro email hlášky svého NAS zařízení udělal novou e-mailovou schránku, a to u poskytovatele, který při půlroční nečinnosti uživatelský účet natvrdo smaže. Uživatel to nevěděl a žil v domnění, že kdyby byl nějaký problém s jeho NAS, tak přece dostane e-mail! Jenže porucha se stala až poté, co se schránka zrušila, varovné emaily neměly kam dorazit a uživatel o blížící se poruše vůbec netušil a data se mu v porouchaném RAID poli začala *špatně zálohovat“, vysvětluje běžnou chybu Štěpán Mikeš, specialista na záchranu dat ze společnosti DataHelp.
Dobrým tipem při správě domácího NAS je nastavení vypínání zařízení v době jeho nečinnosti, např. v noci, nebo když dopředu víte, že nepotřebujete přenášet či stahovat žádná data. Možnost tzv. usínání NAS doporučujeme nastavit vždy v rámci hodin, ne minut. Okamžité zapínání a vypínání, jako známe např. z displejů moderních telefonů, u NAS zařízení, funguje přesně naopak a rozhodně nepomáhá šetřit zařízení ani provoz vestavěného operačního systému. Odborník na záchranu dat radí: „*Pokud jdete spát v 22 večer, přičemž stahujete ještě nějaký film z internetu, ale víte, že potom už nebudete s NAS nic dělat, klidně ho můžete nastavit na automatické vypnutí; ideálně po 4 až 5 hodinách.“*
*
Co se týče zálohování dat, tak NAS obvykle umí z disků vytvořit RAID pole. Díky tomu se sice sníží jeho celková úložná kapacita (vyjma RAID 1), ale zároveň si zajistíte základní automatické zálohování. Podle zvoleného typu RAID pole se totiž bude obsah disku zálohovat na další. V případě, že se jeden z disků porouchá, budete mít tytéž data na druhém. I v případě takto zálohovaného NAS ale platí zlaté pravidlo pro všechny moderní technologie: ruční zálohování těch nejcennějších dat na další externí média (např. USB disk, externí disk, CD či DVD). I navzdory veškerému technologickému pokroku je to stále ta nejúčinnější metoda prevence ztráty důležitých informací. „*Dnes už dokonce některé NAS umožňují uživatelům zálohování v rámci sítě i na jiná NAS zařízení. Důležité je také nepodcenit systém nastavení individuálních automatických záloh,“* doporučuje Štěp��n Mikeš.
## **Praktické tipy při zacházení s NAS zařízením**
• Při prvním spuštění NAS věnujte pozornost předinstalovanému systému, který vás kompletně provede celým procesem nastavení. Nejde o nic složitého, ale je to dobré “osvěžení paměti” a kompletní seznámení pro práci s NAS zařízením.
• Myslete na to, aby nebyly nevhodně zastavěny výdechy chladiče (např. NAS server položený výdechem těsně u stěny bytu). Přehřátí řídícího procesoru nebo disků za to rozhodně nestojí. Jsou i časté případy, kdy umístí NAS do šatníku, kde se něvetrá a NAS do půl roku odchází.
• Umístění NASU také směřujte vždy tak, abyste dobře viděli svítit indikační diody. Např. umístit vedle routeru.
• U svého uživatelského účtu nepoužívejte heslo, které už někde jinde používáte.
• Notifikační e-mail si nastavte do českého jazyka. Posílaní notifkačných SMS zvládají např. vyšší řady Synology.
• Pro přístup do webového rozhraní vašeho NAS budete potřebovat zadat jistou adresu. Tu najdete v přiloženém návodu v krabici. Například u populárního výrobce Synology zadáte find.synology.com, poté už vás vše pohodlně naviguje samo.
• NAS dokáže z bezpečnostních důvodů zakázat zápis na disk a vypátrat chybný sektor disku. Rozhodně takové sdělení nepodceňujte a nepokoušejte se např. resetovat zařízení fyzickým vypojením ze sítě. Místo toho rovnou kontaktujte příslušnou firmu, která se zabývá záchranou dat. Informujte se, jak nejlépe dále postupovat.
• Pokud se stane NAS zcela nedostupným, tak rozhodně nepodléhejte panice a neprovádějte okamžitě reset do továrního nastavení bez provedení zálohy zdrojových disků. Mohli byste si data nenávratně smazat/poškodit.
• Pokud má váš NAS fyzickou sirénku, rozhodně si ji nechte zapnutou.
• Obecně je ještě dobré vést si někde stranou přesné informace ohledně nastavení NAS zařízení či dokonce o charakteristice na něm uložených dat. Čím více informací budete mít po ruce, tím je při případné poruše systému či disků větší pravděpodobnost, že data se dané společnosti povede úspěšně zachránit.
## Jaké příčiny nejčastěji vedou k poruchám NAS? Vibrace, teplota, ale i zastaralost OS!
Jednou z nejčastějších příčin poruchy u NAS zařízení je elektřina. Někdy stačí větší letní bouřka, přepětí v síti či náhlý výpadek elektřiny a datové uložiště vám doslouží. Těmto živelným zásahům moc nezabráníte, pokud chcete mít zařízení neustále k dispozici, každopádně prevence v případě odpojení zařízení ze sítě během blížící se bouřky určitě pomůže. Pokud se nešťastná situace stane, je dobré vědět, že data z poškozeného zařízení se dají získat (specialisté na záchranu dat pevné disky poškozené elektřinou běžně řeší) a mohou vám je přehrát např. na jiný disk.
Další rizika najdeme např. v umístění NAS v prostředí, které je vystaveno nadměrným fyzickým vibracím (např. NAS stojící na viklající se poličce), velké koncentraci prachu v ovzduší nebo častým teplotním výkyvům. To vše má velký dopad na správnou mechanickou činnost disků, funkcionalitu operačního systému a životnost HDD disků. Při dobrém zacházení se naopak disky mohou odvděčit svému uživateli 3 i 4 roky bezproblémové funkčnosti. „*Pokud máte možnost zakoupit si NAS model s tzv. „vlastním šuplíkem“, je to z hlediska komfortního umístění HDD disků v NAS rozhodně lepší,“ doporučuje *odborník na záchranu dat Štěpán Mikeš.
Elektromechanické poškození plotny disku je běžným jevem pramenícím z volného umístění disků v zařízení. Vážný dopad na data může mít elektromechanická vada disku v momentě, když se porouchá jeden z disků v NAS zařízení využívající RAID 1, tzv. zrcadlení (data z jednoho disku se zrcadlí/synchronizují na druhý disk). Pokud je poškozeným diskem zrovna disk primární, tak se mohou data začít chybně zapisovat na druhý zrcadlící disk. Při ignoraci chybových hlášení, nebo dokud se nepokazí i druhý disk, uživatel vůbec nemusí tušit, že se s jeho daty děje něco špatného. „*Při využití RAID polí s dvěma či více disky je zásadní věcí správně vyladěná konfigurace. U webového rozhraní rozhodně nezanedbávejte možnost podívat se do logu pro zjištění detailních výpisových zpráv o chodu vašeho NAS,“ *doporučuje Štěpán Mikeš. *A pokud se rozhodnete jeden z poškožených disků v zařízení ručně vyměnit, můžete si zadělat na velké problémy. V takový moment rozhodně nenechávejte provádět NAS automatický přepočet pole, hrozí přepsání dat. „*Ono, pokud je uživatel spíše laik. Výměnu bych moc nedoporučoval dělat," *uzavírá na toto téma Štěpán Mikeš*.*
Mezi další časté příčiny poruchy NAS řadíme také ty naprosto neviditelné. Kupříkladu když v operačním systému dojde ke spontánnímu poškození či přepsání důležitých kmenových souborů systému. Asi nejzákeřnější příčinu nefunkčnosti NAS představují tzv. kryptoviry, které se mohou často vyskytnout v případě dlouho neaktualizovaného softwarového prostředí NAS. Dobrou zprávou je to, že většina NAS si dnes už dokáže sama říct o aktualizaci. V praxi jde o to, NAS nastavit pro automatickou kontrolu nových aktualizací. „*Uživatelé NAS doma streamují přenosy do televize, stahují, sdílejí, ale málokdy se vůbec zajímají o to, zda výrobce jejich modelu vydal nějakou aktualizaci. Jejich zařízení přitom může mít nějaké zásadní vady, které výrobce objeví až později a pomocí aktualizací je napravuje,“* vysvětluje Štěpán Mikeš.
## Co ovlivňuje cenu při záchraně dat z NAS síťového úložiště?
Záchrana dat z NAS zařízení probíhá obdobně jako u známých klasických pevných disků či externích disků. Lišit se může pouze v posledním kroku, a to podle toho, zda je využíváno RAID pole a jakého je typu. S velkou pravděpodobností půjde v případě poruchy o běžné mechanické či elektrické poškození disku (utržení čtecí hlavy, poškození záznamové plotny, zadřená ložiska, poškozený řadič, spálení řídící elektroniky vysokým proudem atp.) nebo o softwarovou poruchu. „*Předtím, než se můžeme pustit do záchrany dat poškozeného NAS, musíme provést laboratorní diagnostiku poruchy zařízení (pro zákazníka je prováděna zdarma). Při ní dokážeme jasně určit problém, náročnost celé operace, vytvořit strategický proces záchrany a odhadnout procentuální míru úspěchu,“ vysvětluje proces záchrany dat z NAS zařízení odborník DataHelpu.*
Konečnou cenu za záchranu dat mohou ovlivnit faktory jako např. počet disků, objem dat, zašifrování, druh závady (mechanická, elektronická či virová) a případně i počet RAID polí využívaných v zařízení.
*
Zde je několik konkrétních příkladů: V případě elektronických příčin poruchy (např. dojde k poškození řídicího systému NASu, ale disky budou mechanicky v pořádku) se ceny za záchranu dat z NAS zařízení pohybují mezi 10 až 25 tisíci korun. Doba realizace záchrany dat může být expresní (v řádu několika dní, s příplatkem) až po běžné dva týdny. Pokud dojde k mechanickému poškození (např. se pádem či únavou materiálu poškodí některý z disků) je to technicky mnohem náročnější. Ceny se v tom případě pohybují spíš okolo 20 tisíc a záchranný proces může trvat i klidně celý měsíc. Úspěšnost práce je ale v obou případech vysoká, okolo 90 %.
## Podle čeho se řídit při výběru správné firmy pro záchranu dat?
• **Důvěryhodnost** - má vámi vybraná společnost webovou prezentaci? Publikuje odborné či informativně laděné články z oboru? Disponuje vlastní laboratoří? Odpovědi na tyto otázky jsou pro vás klíčové.
• **Reference** - existují někde snadno dostupné informace o metodě práce a úspěších dané společnosti? Pocházejí kladné reference na práci firmy z důvěryhodných a přesvědčivých zdrojů?
• **Zkušenosti** - hledat na vlastní pěst se někdy vyplatí nejvíce. Zjistěte si jak dlouho je firma na trhu, podívejte se na názory lidí na fórech, portálech či prostě přímo zavolejte do dané firmy a vnímejte dokonce i tón a ráz komunikace jejich pracovníků. Někdy rozhodují opravdu detaily.
• **Mlčenlivost **- zeptejte se, jak bude firma zacházet s vašimi osobními daty. To je velmi důležitá otázka, protože zachování 100% diskrétnosti by mělo být posvátnou mantrou každého profesionála v tomto oboru.
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  10,
  'NAS datová úložiště slouží k ukládání a k bezdrátovém přístupu k většímu množství multimediálních dat (např. oblíbená hudba, filmy či fotky z cest). Díky snadné obsluze, pohodlnému centrálnímu ukládání, synchronizaci a sdílení dat s ostatními zařízeni je NAS stále populárnější předevš...'
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
  'pozor-na-ssd-disky-sifruji-a-ohrozuji-vase-data',
  'Pozor na ssd disky. šifrují a ohrožují vaše data!',
  'Dnešní uživatel může kvůli principu fungování SSD disků prakticky kdykoliv přijít o svá data. Co na to odborníci na záchranu dat a jak velká je hrozba kryptovirů?',
  '## Nelze jen vyjmout paměťové čipy a přečíst je?
Při obnově dat z flash čipů (stejná technologie u SSD, flash disků i paměťových karet) je častým řešením odpájení paměťových čipů a jejich přečtení za pomoci speciálního zařízení. Stejně tak sahají profesionálové po nákupu modelů stejné řady a snaží se čipy napájet zpět. U jednodušších zařízení ve stylu paměťových karet a „flashek“ to problém není a data se dají získat snadno zpět.
Jak ale jistě tušíte, u SSD je situace horší. Algoritmus je zde nastaven pro každý vyrobený kus trochu jinak, což tento postup dělá nefunkčním.
## Jaké modely lze zachránit a které zatím ne?
Určitě nechceme s problematikou SSD malovat čerta na zeď. Například u oblíbených SSD řady Intel 320 Series je již obnova možná a velmi úspěšná. Za pomoci unikátního technologického vybavení ji odborníci v českém Datahelpu jako první u nás bez problémů zvládají.
Horší je v tuto chvíli situace u levnějších sérií disků, jenž sází např. na oblíbené řadiče Sand Force, na nějž sází výrobci jako OCZ, A-Data, SanDisk a další. V tuto chvíli prakticky není způsob, jak dostat uložená data z těchto disků v případě poškození buněk či řadiče zpět.
## Výrobci záchranu dat neusnadňují – nechtějí přijít o know-how
Aby byla záchrana dat z SSD disku možná, musí být zjištěno, jakým způsobem k šifrování dochází a jak funguje použitý řadič. Právě toto know-how je vlastně tím zásadním, co si výrobci střeží, neboť je to odlišuje od konkurence a umožňuje dosahovat rozdílných výsledků. I proto se můžeme setkat se situací, kdy přijde aktualizace použitého firmwaru a disk je o desítky procent rychlejší. Algoritmus a řadič je alfou a omegou výrobců. „***Problém zkrátka je, že informace, které potřebujeme k záchraně, jsou vlastně informace, které potřebujeme k výrobě***“, zmiňuje odborník ze společnosti DataHelp.
## Mám běžný disk a šifruji, riskuji tím?
Spíše ne. Pokud totiž uživatel úmyslně sahá po šifrování, pravděpodobně ví co dělá a činí tak za nějakým účelem. „*Pokud se v domácím prostředí rozhodnete sáhnout po šifrování, raději zvolte variantu pro jednotlivé soubory a ne rovnou celý HDD. V případě poruchy jednoho sektoru či paměťové buňky souboru tak nepřijdete o celý obsah, ale jen o daný soubor, což je ta méně bolestná varianta*“, radí Štěpán Mikeš, zakladatel společnosti DataHelp.
„*Častým neduhem domácích uživatelů je nákup řešení, kterým nerozumí a špatně je nakonfigurují. Pokud pak dojde k problémům, může být záchrana u SSD disku zbytečně složitá. Stejné je to i u domácích síťových disků.“*
Dobré také je, když lze klíč vygenerovat do nějaké čitelné podoby a vy jej můžete klidně uložit do trezoru.*„Setkali jsme se i s případem, že nám klient přinesl poškozené médium a měl to štěstí, že měl klíč na papíře. Museli jsme sice zapisovat písmenko po písmenku o délce přibližně půl strany, ale nakonec se povedlo.“*, komentuje neobvyklé komplikace Štěpán Mikeš.
## Šifrovat mohou i viry - kryptoviry dovedou nadělat pořádnou paseku
Není virus jako virus. Vedle běžných hrozeb se hlavně v posledním roce objevují tzv. Kryptoviry. Princip fungování je jednoduchý – virus postupně zašifruje obsah úložiště a poté uživatele vydírá. Hlášky vybízející k úhradě určité částky v dolarech či virtuálních měnách typu Bitcoin nejsou výjimkou.
V tuto chvíli je jich nezměrné množství, a pokud již k napadení dojde, je kvůli použití silných šifer řešení složité. „*Kryptoviry se rozšířily hlavně v posledním roce, dříve hrozba nebyla tolik výrazná a nevznikala natolik sofistikovaná řešení. Na různých diskuzních fórech se dokonce prodávají generátory virů a tvůrci bezpečnostních produktů tak mají co dělat.*“, popisuje rozvoj Štěpán Mikeš.
Z pohledu záchrany dat a rozlousknutí šifer je situace složitá. I přes to se díky spolupráci odborníků po celém světě může záchrana podařit. V opačném případě je nutné zvážit, zda budete riskovat placení útočníkovi, nebo problém nemáte, protože máte štěstí/rozum a zálohujete.
## **Rady na závěr?**
• Zálohujte! A hlavně kontrolujte, zda je v záloze vše podstatné.
• Měli byste vědět, co děláte. Zbytečně neexperimentujte s nastavením.
• O obnovu se nesnažte sami, znesnadníte či znemožníte práci profesionálům
• Používejte aktuální antivirus
• V případě nouze se obraťte na odborníky. Úvodní diagnostika je zdarma!
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  4,
  'Dnešní uživatel může kvůli principu fungování SSD disků prakticky kdykoliv přijít o svá data. Co na to odborníci na záchranu dat a jak velká je hrozba kryptovirů?'
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
  'ani-s-raidem-nejste-vzdy-v-bezpeci-datahelp-v-praxi-radi-ceho-se-vyvarovat',
  'Ani s raidem nejste vždy v bezpečí: datahelp v praxi radí, čeho se vyvarovat',
  'Disková RAID pole mají svou mohutnější architekturou data uživatelů lépe chránit. Ne vždy se to ale daří, obvykle za problémy stojí lidský faktor. Co a jak dělat, abyste o data v RAID poli nepřišli? Přečtěte si několik příběhů z naší praxe v DataHelp, nad kterými zůstává rozum stát....',
  '## **Používáte v diskovém poli RAID disky ze stejné série a jeden odešel? Dejte pozor i na ostatní disková pole!**
## *
Disky ze stejné série mívají při obdobném scénáři používání často prakticky stejnou životnost. To není nutně špatná vlastnost, ale setkáváme se s případy, kdy jeden disk v poli vypadne a krátce poté v rámci jednoho celku odejde další. Doporučujeme tedy v případě výpadku prvního z disků na nic nečekat a začít situaci okamžitě řešit. Budete tak v bezpečí při případné poruše dalších disků a ušetříte nemalé prostředky za následný výpadek. Pokud dojde k poruše více disků v poli naráz, odborníci z DataHelpu si se záchranou dat z RAID pole přesto poradí.
## **Restartovaný řadič diskového pole RAID dělá problémy**
Nejednou jsme se setkali s případem, kdy nějaký disk pole vypadnul, a došlo k přepnutí do degradovaného režimu. Při zápisu na hotspare však došlo k jeho přerušení a při následném restartu byl porouchaný disk řadičem opět označen jako funkční a stal se znovu členem pole. Data už však v danou chvíli byla posunutá, což způsobilo nemalé problémy majiteli. Obnova v takových případech není snadná, ale při okamžitém vyhledání odborníků nemusí být nic ztraceno.
„*V nejednom případě jsme se setkali s tím, že po restartu se porouchaný disk znovu zahlásil jako funkční a způsobil větší problémy*,“ vysvětluje Štěpán Mikeš, majitel společnosti DataHelp.
## **Ztráta dat z pole RAID? Z 90 % za to může lidský faktor**
Výjimkou nejsou případy, kdy zanedbání situace ze strany spravujícího technika způsobí ztrátu dat v RAID poli. Velmi časté je, že při poruše a přepnutí pole do degradovaného režimu (stav, kdy je některý z disků vyřazen kvůli chybě) není situace řešena. Těch příběhů je spousta – třeba jak technik odpojil zvukovou signalizaci poruchy pole s tím, že se „na to později koukne“. Degradovaný chod by však měl být jen a pouze přechodná situace.
## **Záchrana dat z diskových polí RAID není snadná**
„*U větších RAIDových polí často narazíme na problém, že jsou najednou vadné 2 disky a my pak **zachraňujeme**oba a pole skládáme zpětně degradovaně, protože na původním disku jsou stará data. Lidé nám v těchto situacích často nejsou schopni říct, jaká byla konfigurace pole a my pak třeba zjistíme, že v degradované podobě pole běželo už třeba půl roku. Tento přístup k poli samozřejmě záchranu dat nejen ztíží, ale ve finále také prodraží*“, komentuje situaci Štěpán Mikeš.
**Obecně jsou nejčastějšími příčinami nedostupnosti dat na diskových polích RAID následující:**
• vadný řadič,
• vadný jeden či více pevných disků,
• výpadek pevného disku,
• ztráta konfigurace pole,
• částečný přepis,
• chybná inicializace pole,
• nesprávně spočítaná parita,
• ztráta realokačních informací.
### RAID pole je nedostupné: Co s tím?
Pokud diskové pole RAID selhalo, zobrazí se chybová hláška, která vám odhalí příčinu problému.
**Nejběžnější chybové hlášky RAID:**
• **Primary hard disk failure **- primární disk selhal a není k dispozici
• **RAID device not ready** - RAID zařízení není připraveno
• **Failure of more than 1 RAID set drives **- selhání více než jednoho pole RAID
• **Inaccessible boot device** - nepřístupný bootovací disk
• **Unable to access drive **- jednotka je nepřístupná
• **Device not ready reading drive **- jednotka není připravena
• **Operating system not found/Missing operating system** - operační systém nebyl nalezen
• **Server won''t boot** - server neprovede zaváděcí sekvenci (nebootuje)
• **Corrupted parity data drive** - porušená parita dat
• **RAID controller failure **- diskový řadič pole RAID selhal
• **NTLDR is missing **- NTLDR nenalezen (nebo jiná část zavaděče systému)
• Jednotka není rozpoznána systémem BIOS ani po restartu, jeden z disků vykazuje atypické akustické projevy
• BIOS jednotku rozpoznává, ale s nesmyslnými parametry
• Disk není rozpoznán pod BIOS
• S.M.A.R.T nebo diskový řadič upozorňuje na vadné sektory
• RAID pole je nekonzistentní - soubory jsou poškozené
• Náhodné nebo úmyslné odstranění partition (diskových oddílů)
• Nekorektní výměna jednotek nebo médií (např. bez Hot-Swap podpory)
• Zformátováno, aplikován FDisk, částečně přepsaná disková jednotka nebo diskové pole
• Nekorektní rozložení polí
• Poškození diskového pole po neúspěšném rebuildu
### **Jak probíhá samotná záchrana dat z RAID polí?**
Aby byla záchrana dat z diskového pole úspěšná, musí být splněn **předpoklad funkčnosti dostatečného počtu jeho komponent**, tedy pevných disků. Právě **záchrana dat z pevných disků** tvořících dané diskové pole je v tomto procesu prvním krokem.
Zachráněná data přitom lze nahrát buď **zpět na původní pole** (za předpokladu funkčních disků a řadiče), na **jeden pevný disk **(bez redundance), případně pak **jiným způsobem** dle přání uživatele.
## **4 pravidla pro práci s diskovými poli RAID:**
• Jakmile dojde k chybě, na nic nečekejte, disk vyjměte a ideálně proveďte náhradu, jak jen to bude možné.
• Je nutné pravidelně kontrolovat, zda vše běží jak má a dochází k zálohám. Kontrolujte hlavně, zda zálohy obsahují vše nezbytné a „jsou k něčemu“.
• Pokud pole potřebujete, dobře zvažte, jaké konkrétně odpovídá vašim podmínkám.
• Víte, jaké řešení a v jaké konfiguraci používáte? Jednoduchá informace, kterou je dobré mít na paměti. Nikdy nevíte, zda se vám nestane něco podobného, jako jednomu z našich klientů, jehož příběh nás donutil zahrát si na detektivní kancelář.
## **Netradiční záchrana dat aneb kuriozita na závěr: Diskové pole RAID 5 ze dvou disků?**
Občas si musíme v DataHelpu zahrát na detektivy. Opravdu zajímavý byl moment, kdy se nám do rukou dostalo porouchané diskové pole, které mělo být podle informací majitele postavené na RAIDu, jehož přesnou specifikaci ovšem nevěděl.
Vzhledem k použití pouze dvojice disků (uvnitř skříně se více pozic ani nenacházelo), variant moc na výběr nebylo. Přesto byl nečekaný problém přijít na to, o jaký typ pole se jednalo, protože struktura dat ani jedné předpokládané kombinaci neodpovídala. Obnova kvůli tomu byla dost problematická.
Nakonec jsme si jako detektivní kancelář postupně poskládali celou skládanku a "příběh" konečně začal dávat smysl. Původně se totiž jednalo o pole s trojicí disků. Při poruše jednoho z nich jej pracovník IT oddělení  dané společnosti vyjmul, ale již nedošlo k nahrazení novým. Kvůli personálním změnám navíc ten samý technik brzy poté odešel, a když se po čase dostalo celé řešení do rukou jeho kolegům, bylo to zrovna ve chvíli, kdy došlo k poruše základní desky.
Ta byla vyměněna a celé pole přesunuto do nové skříně včetně řadiče. Nová skříň už měla jen dva sloty na pevné disky, což bylo právě oním matoucím elementem. Z původního RAID 5 se tak stala „degradovaná“ časovaná bomba. Jakmile jsme se dopátrali, jak vše opravdu bylo, byla již záchrana možná a nakonec se úspěšně zdařila. I takové situace záchrany dat umíme v DataHelpu řešit!
## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  6,
  'Disková RAID pole mají svou mohutnější architekturou data uživatelů lépe chránit. Ne vždy se to ale daří, obvykle za problémy stojí lidský faktor. Co a jak dělat, abyste o data v RAID poli nepřišli? Přečtěte si několik příběhů z naší praxe v DataHelp, nad kterými zůstává rozum stát....'
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
  'jako-prvni-v-cr-umime-obnovit-data-z-disku-intel-320-series',
  'Jako první v ČR umíme obnovit data z disků Intel 320 series',
  'DataHelp umí jako první specialista v ČR obnovit data z populárních SSD disků Intel 320 series. Jde o SSD disk, který Intel pustil na trh s vážnou výrobní vadou firmware.',
  '## Potřebujete okamžitou pomoc?
Kontaktujte nás na níže uvedeném telefonu či e-mailu, proveďte rovnou objednávku záchrany dat, nebo nás navštivte osobně v centrále naší firmy.
Objednat diagnostiku
•
*
*[emailprotected]
•
*
*+420 775 220 440
•
Kontaktujte nás
Zanechte nám zprávu, brzy se Vám ozveme.
Případně volejte na +420 775 220 440.
Jméno a příjmení: *
Telefon: *
E-mail: *
Zpráva: *
Ochrana osobn&iacute;ch &uacute;dajů
Odeslat
Kontaktujte nás',
  'DataHelp Team',
  'https://www.datahelp.cz/res/crc-1392586153/web/images/1200x630crop/274-1w-d8-dscf9735-1.jpg',
  NOW(),
  true,
  2,
  'DataHelp umí jako první specialista v ČR obnovit data z populárních SSD disků Intel 320 series. Jde o SSD disk, který Intel pustil na trh s vážnou výrobní vadou firmware.'
) ON CONFLICT (slug) DO UPDATE SET
  title_cs = EXCLUDED.title_cs,
  excerpt_cs = EXCLUDED.excerpt_cs,
  content_cs = EXCLUDED.content_cs,
  seo_description_cs = EXCLUDED.seo_description_cs,
  reading_time_minutes = EXCLUDED.reading_time_minutes,
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
WHERE p.slug = 'jak-vycistit-mobil-od-prachu' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-zalohuji-data-profesionalove' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'skodi-pevnemu-disku-vlhkost-vzduchu' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'zalohovani-dat-pro-firmy-rady-a-tipy' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'jak-maximalizovat-zivotnost-ssd' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-zjistit-aktualni-stav-vaseho-hdd' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'skodi-hlasity-zvuk-pevnym-diskum' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '7-snadnych-tipu-jak-nejlepe-zabezpecit-svuj-iphone' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'znate-zalohovaci-pravidlo-3-2-1' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'vse-co-jste-chteli-vedet-o-pametove-karte-typu-sd' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'mobil-krehke-ale-celisti-zadni-kapsy-umi' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'umela-inteligence-jako-hudba-budoucnosti-zalohovani-dat-ve-21-stoleti' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'android-10-jake-prinasi-bezpecnostni-zmeny' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'statistiky-chybovosti-pevnych-disku-za-rok-2018' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-poznat-falesna-uloziste-a-softwarove-tipy-pro-jejich-detekci' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ctecky-otisku-prstu-u-mobilu-a-jejich-bezpecnost' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'studie-o-extrakci-dat-lide-nechavaji-v-pouzitych-pocitacich-a-mobilech-citliva-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'poskozeny-hdd-do-lednice' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'studie-od-blancco-android-a-ios-za-1-ctvrtleti-2018' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'proc-a-jak-rootovat-android' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-na-zalohu-a-obnovu-dat-ve-windows-7' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'nebezpeci-levnych-cinskych-smartphonu' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'zivotnost-usb-flash-disku-na-cem-zavisi-a-co-ji-ovlivnuje' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'android-vs-ios-souboj-velikanu-a-podrobne-srovnani' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jednoduse-chranit-data-v-chytrem-telefonu-i-dil-utoky-zvenku' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jednoduse-chranit-data-v-chytrem-telefonu-ii-dil-aplikace-a-utoky-zevnitr' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'amazon-cloud-drive-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'obelstete-datovou-smrtku-naucte-se-odezirat-z-plotny' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'kolecko-rotuje-a-hodiny-presypaji-to-me-ale-uz-vazne' AND c.slug = 'prvni-pomoc'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'cloudove-uloziste-mega-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'cloudove-uloziste-google-disk-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'apple-jak-probiha-zalohovani-dat-na-jednotlivych-zarizenich-a-prace-s-icloud' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'dropbox-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'microsoft-one-drive-jak-s-nim-pracovat-a-zalohovat-data' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'sifrovani-dat-na-androidu-ano-nebo-ne' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'jak-predejit-pripadnemu-prepeti-v-siti' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = '5-duvodu-proc-vyuzivat-cloud-pro-efektivni-zalohu-dat' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'formatovani-co-to-je-a-k-cemu-se-to-hodi' AND c.slug = 'technologie'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-neztratit-data-z-usb-flash-disku' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = '7-snadnych-tipu-jak-nejlepe-zabezpecit-os-android' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jak-jsme-zachranovali-cenna-data-check-czech-fashion' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jste-si-jisti-ze-vase-soubory-nepujdou-znovu-na-disku-obnovit' AND c.slug = 'zalohovani-dat'
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
WHERE p.slug = 'vite-jak-spravne-zabezpecit-provoz-datoveho-uloziste-nas-ve-vasi-domacnosti' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'pozor-na-ssd-disky-sifruji-a-ohrozuji-vase-data' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'ani-s-raidem-nejste-vzdy-v-bezpeci-datahelp-v-praxi-radi-ceho-se-vyvarovat' AND c.slug = 'zalohovani-dat'
ON CONFLICT DO NOTHING;

INSERT INTO blog_post_categories (post_id, category_id)
SELECT p.id, c.id
FROM blog_posts p, blog_categories c
WHERE p.slug = 'jako-prvni-v-cr-umime-obnovit-data-z-disku-intel-320-series' AND c.slug = 'nase-aktivity'
ON CONFLICT DO NOTHING;
