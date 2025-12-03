export const priceCalculator = {
  title: 'Kalkulačka cen',
  subtitle: 'Zjistěte orientační cenu záchrany vašich dat',
  description: 'Zjistěte orientační cenu záchrany vašich dat. Rychlá kalkulačka pro HDD, SSD a RAID/NAS systémy.',
  keywords: 'kalkulačka cen záchrana dat, cena obnova dat, orientační cena recovery',
  
  steps: {
    deviceType: 'Vyberte typ zařízení',
    damageType: 'Typ poškození',
    urgency: 'Rychlost zpracování'
  },
  
  deviceTypes: {
    hdd: 'Mechanické disky, externí disky',
    ssd: 'SSD disky, USB flash, paměťové karty',
    raid: 'RAID pole, NAS servery'
  },
  
  damageTypes: {
    hdd: {
      logical: 'Softwarové poškození',
      logicalDesc: 'Smazané soubory, formátování, poškozený souborový systém',
      platter: 'Poškození ploten',
      platterDesc: 'Poškrábaná plotna, vadné sektory, fyzické vady povrchu',
      head: 'Závada čtecích hlav',
      headDesc: 'Poškozené nebo utržené čtecí hlavy, klikání disku',
      motor: 'Závada motoru',
      motorDesc: 'Nefunkční motor, zadřené ložisko, disk se neroztočí',
      electronic: 'Elektronické poškození',
      electronicDesc: 'Poškozená PCB deska, přepětí, spálený konektor'
    },
    ssd: {
      logical: 'Softwarové poškození',
      logicalDesc: 'Smazané soubory, formátování, poškozená alokační tabulka',
      controller: 'Závady řadiče',
      controllerDesc: 'Poškozený kontrolér, disk není rozpoznán systémem',
      flash: 'Poškození flash paměti',
      flashDesc: 'Opotřebené paměťové buňky, poškozené NAND čipy',
      encryption: 'Problém se šifrováním',
      encryptionDesc: 'Ztráta šifrovacího klíče, hardwarové šifrování',
      electronic: 'Elektronické poškození',
      electronicDesc: 'Poškozené čipy, přepětí, zkrat'
    },
    raid: {
      logical: 'Softwarové poškození',
      logicalDesc: 'Poškozený souborový systém, ztracená data v poli',
      config: 'Ztráta konfigurace',
      configDesc: 'Ztracená nebo poškozená konfigurace RAID/NAS pole',
      multipleDisks: 'Selhání více disků',
      multipleDisksDesc: 'Současné selhání dvou nebo více disků v poli',
      controller: 'Závada RAID/NAS kontéru',
      controllerDesc: 'Poškozený hardware kontrolér, nefunkční NAS'
    },
    mobile: {
      logical: 'Softwarové poškození',
      logicalDesc: 'Smazané soubory, reset na tovární nastavení',
      water: 'Poškození vodou',
      waterDesc: 'Namočení, koroze, vlhkost, zkrat',
      screen: 'Rozbitý displej',
      screenDesc: 'Nefunkční displej, nelze ovládat zařízení',
      encryption: 'Problém se šifrováním',
      encryptionDesc: 'Zapomenutý PIN/heslo, šifrovaná paměť',
      flash: 'Poškození paměti',
      flashDesc: 'Poškozené čipy paměti, fyzické poškození PCB'
    }
  },
  
  urgencyOptions: {
    standard: 'Standardní (5-10 dní)',
    express: 'Expresní (2-3 dny)',
    h24: 'Do 24-48 hodin'
  },
  
  from: 'Od',
  calculateButton: 'Vypočítat orientační cenu',
  
  result: {
    title: 'Orientační cena',
    yourSelection: 'Váš výběr:',
    deviceType: 'Typ zařízení:',
    damageType: 'Typ poškození:',
    processingSpeed: 'Rychlost zpracování:',
    warning: {
      title: 'Důležité upozornění:',
      estimate: 'Toto je pouze orientační cena',
      finalPrice: 'Konečná cena závisí na skutečném rozsahu poškození',
      diagnosis: 'Přesnou cenu určíme po bezplatné diagnostice',
      noDataNoPayment: 'Platíte pouze za úspěšně zachráněná data'
    },
    freeConsultation: 'Bezplatná konzultace',
    calculateAgain: 'Vypočítat znovu',
    moreServices: 'Více o službách'
  },
  
  whyChoose: {
    title: 'Proč si vybrat DataHelp.cz?',
    noDataNoPayment: {
      title: 'Žádná data = žádná platba',
      description: 'Platíte pouze za úspěšně zachráněná data'
    },
    freeDiagnosis: {
      title: 'Bezplatná diagnostika',
      description: 'Vstupní diagnostika je vždy zdarma'
    },
    experience: {
      title: '20+ let zkušeností',
      description: 'Více než 55,000 úspěšných záchrán'
    }
  }
};