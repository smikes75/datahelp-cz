export const services = {
  title: 'Naše služby',
  subtitle: 'Komplexní řešení pro obnovu a záchranu dat',
  hdd: {
    title: 'Záchrana dat HDD',
    desc: 'Z poškozených nebo nefunkčních disků.',
    keywords: {
      recovery: "záchrana dat hdd, obnova dat pevný disk, oprava pevného disku"
    },
    features: {
      mechanical: 'Mechanické poškození',
      mechanicalDesc: 'Závady čtecích hlav, poškození ploten',
      electronic: 'Elektronické závady',
      electronicDesc: 'Zničené PCB, poškození přepětím',
      logical: 'Selhání souborového systému',
      logicalDesc: 'Obnova smazaných dat, oprava systémů'
    },
    supported: {
      title: 'Podporované technologie',
      devices: 'Typy zařízení',
      manufacturers: 'Výrobci',
      sata: 'SATA HDD',
      ide: 'IDE/PATA HDD',
      scsi: 'SCSI/SAS HDD',
      external: 'Externí disky'
    }
  },
  ssd: {
    title: 'Záchrana dat SSD',
    desc: 'Specializovaná obnova dat z flash pamětí a SSD disků.',
    keywords: {
      recovery: "záchrana dat ssd, obnova dat ssd disk, oprava ssd disku"
    },
    features: {
      controller: 'Poruchy řadiče',
      controllerDesc: 'Obnova dat v případě poškozeného řadiče',
      firmware: 'Rekonstrukce firmwaru',
      firmwareDesc: 'Záchrana dat v případě selhání firmwaru',
      flash: 'Poškození flash čipů',
      flashDesc: 'Obnova dat z poškozených paměťových čipů'
    },
    supported: {
      title: 'Podporovaná zařízení',
      devices: 'Typy zařízení',
      manufacturers: 'Výrobci',
      sata: 'SATA SSD',
      nvme: 'NVMe SSD',
      usb: 'USB Flash disky',
      cards: 'Paměťové karty'
    }
  },
  raid: {
    title: 'Záchrana dat RAID/NAS',
    desc: 'Obnova dat ze všech typů RAID polí a NAS serverů.',
    keywords: {
      recovery: "záchrana dat raid, obnova dat raid systémy, oprava raid pole, záchrana dat nas, obnova nas serveru"
    },
    features: {
      hardware: 'Hardwarové RAID/NAS',
      hardwareDesc: 'Obnova dat při selhání nadkritického množství disků',
      software: 'Softwarové RAID/NAS',
      softwareDesc: 'Rekonstrukce RAID/NAS při ztrátě konfigurace',
      virtual: 'Virtuální systémy',
      virtualDesc: 'Obnova dat při poškození virtuálních strojů'
    },
    supported: {
      title: 'Podporované systémy',
      configurations: 'Konfigurace',
      nas: 'NAS systémy',
      san: 'SAN systémy',
      controllers: 'Výrobci'
    },
    security: {
      title: 'Bezpečnost dat',
      description: 'Garantujeme maximální bezpečnost a důvěrnost vašich dat během celého procesu obnovy'
    }
  },
  business: {
    title: 'Partnerský program',
    desc: 'Nabízíme spolupráci IT firmám a servisům',
    keywords: {
      recovery: "firemní záchrana dat, služby pro firmy, partnerský program datahelp"
    },
    contact: {
      salesTeam: 'Pro více informací kontaktujte naše obchodníky:',
      leaveMessage: 'Nebo nám zanechte zprávu:'
    },
    features: {
      support: 'Technická podpora',
      supportDesc: 'Obchodní a technická podpora, možnost zaškolení',
      security: 'Individuální ceník',
      securityDesc: 'Získejte lepší ceny a splatnost faktur',
      priority: 'Prioritní zpracování',
      priorityDesc: 'Přednostní zpracování požadavků našich partnerů'
    },
    sla: {
      title: 'SLA podmínky',
      response: {
        title: 'Garantovaná doba odezvy',
        description: 'Rychlá reakce na vaše požadavky'
      },
      onsite: {
        title: 'Servis na místě',
        description: 'Možnost řešení přímo u zákazníka'
      },
      reporting: {
        title: 'Pravidelné reporty',
        description: 'Detailní přehledy a statistiky'
      }
    },
    industries: {
      title: 'Průmyslová odvětví',
      finance: 'Finance',
      financeDesc: 'Banky a finanční instituce',
      healthcare: 'Zdravotnictví',
      healthcareDesc: 'Nemocnice a zdravotnická zařízení',
      manufacturing: 'Výroba',
      manufacturingDesc: 'Výrobní společnosti',
      it: 'IT',
      itDesc: 'IT společnosti a poskytovatelé služeb'
    }
  },
  whyChooseUs: 'Proč si vybrat nás',
  benefits: {
    expertise: 'Zkušenosti',
    expertiseDesc: '20 let zkušeností, 55.000+ úspěšných případů',
    speed: 'Rychlost',
    speedDesc: 'Efektivní řešení problémů',
    security: 'Bezpečnost',
    securityDesc: 'Maximální ochrana vašich dat'
  },
  comparison: {
    title: 'Porovnání našich služeb',
    subtitle: 'Najděte správné řešení pro vaše potřeby',
    featureLabel: 'Funkce',
    features: {
      recoveryTime: 'Typická doba obnovy',
      successRate: 'Míra úspěšnosti',
      complexity: 'Úroveň složitosti',
      startingPrice: 'Cena od',
      commonIssues: 'Časté problémy',
      dataTypes: 'Typy dat'
    },
    values: {
      hdd: {
        recoveryTime: '2-5 dní',
        successRate: '95%',
        complexity: 'Střední',
        startingPrice: '8 750 Kč',
        commonIssues: 'Mechanické selhání, havárie hlav, vadné sektory',
        dataTypes: 'Dokumenty, fotky, videa, databáze'
      },
      ssd: {
        recoveryTime: '3-7 dní',
        successRate: '85%',
        complexity: 'Vysoká',
        startingPrice: '6 250 Kč',
        commonIssues: 'Selhání řadiče, korupce firmwaru, opotřebení flash',
        dataTypes: 'Systémové soubory, aplikace, osobní data'
      },
      raid: {
        recoveryTime: '5-10 dní',
        successRate: '90%',
        complexity: 'Velmi vysoká',
        startingPrice: '12 500 Kč',
        commonIssues: 'Selhání více disků, degradace RAID/NAS, ztráta konfigurace',
        dataTypes: 'Firemní data, databáze, virtuální stroje'
      }
    }
  },
  card: {
    successRate: 'Míra úspěšnosti:',
    avgTime: 'Průměrná doba:',
    from: 'Cena od:',
    learnMore: 'Zjistit více',
    individualApproach: 'Individuální přístup'
  },
  timeline: {
    title: 'Časová osa procesu záchraný',
    subtitle: 'Od poškozeného zařízení k obnoveným datům',
    steps: {
      before: {
        title: 'Přijetí média',
        description: 'Zařízení dorazí do naší laboratoře'
      },
      diagnosis: {
        title: 'Bezplatná diagnostika',
        description: '24-48 hodin',
        details: 'Naši specialisté identifikují problém a poskytnou detailní plán obnovy'
      },
      approval: {
        title: 'Vaše schválení',
        description: 'Rozhodujete vy',
        details: 'Pošleme vám cenovou nabídku a pravděpodobnost úspěchu obnovy'
      },
      recovery: {
        title: 'Obnova dat',
        description: '2-10 dní',
        details: 'Náš tým pracuje na obnově vašich dat pomocí specializovaných nástrojů'
      },
      verification: {
        title: 'Ověření',
        description: '24 hodin',
        details: 'Ověřujeme integritu dat a poskytneme vám seznam souborů'
      },
      after: {
        title: 'Předání dat',
        description: 'Vaše data jsou zpět'
      }
    }
  }
};