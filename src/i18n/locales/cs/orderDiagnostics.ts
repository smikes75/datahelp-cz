export const orderDiagnostics = {
  title: 'Bezplatné vyzvednutí a diagnostika',
  subtitle: 'Svoz a diagnostika po celé ČR zdarma',
  description: 'Objednejte si bezplatné vyzvednutí a diagnostiku vašeho úložného zařízení',
  sections: {
    delivery: 'Vyberte způsob dopravy média',
    contact: 'Kontaktní údaje a popis problému',
    submit: 'Dokončit objednávku',
    contactForm: {
      title: 'Napište nám',
      subtitle: 'Zanechte nám zprávu, ozveme se zpět'
    }
  },
  form: {
    customerType: 'Typ zákazníka',
    individual: 'Fyzická osoba',
    company: 'Objednávám na firmu',
    companyName: '* Název firmy',
    contactPerson: '* Kontaktní osoba',
    firstName: '* Jméno',
    lastName: '* Příjmení',
    phone: '* Telefon',
    email: '* E-mail',
    description: '* Stručný popis problému.',
    descriptionPlaceholder: 'Například: Disk se nehlásí, vydává nestandardní zvuky, potřebujeme primárně složku Dokumenty',
    isPartner: 'Jsem partnerem DataHelp',
    pickupAddress: 'Adresa pro vyzvednutí',
    street: '* Ulice a číslo popisné',
    streetPlaceholder: '',
    city: '* Město',
    cityPlaceholder: '',
    zip: '* PSČ',
    zipPlaceholder: '',
    privacyLink: 'Ochrana osobních údajů',
    terms: {
      text: 'Souhlasím s',
      link: 'obchodními podmínkami'
    },
    submit: 'ODESLAT',
    submitting: 'Odesílám...',
    success: 'Děkujeme! Vaše objednávka byla úspěšně odeslána. Brzy se vám ozveme.',
    error: 'Došlo k chybě při odesílání formuláře. Zkuste to prosím znovu.',
    errors: {
      terms: 'Musíte souhlasit s obchodními podmínkami.',
      deliveryMethod: 'Vyberte prosím způsob dopravy.'
    }
  },
  delivery: {
    personal: {
      title: 'Osobně',
      address: 'Jirsíkova 541/1, 186 00 Praha 8 ',
      hours: 'Po - Čt: 9:00 - 17:00 | Pá: 8:00 - 15:30'
    },
    shipping: {
      title: 'Objednat svoz zdarma',
      description: 'Médium vyzvedne přepravní služba DPD, po diagnostice vás budeme informovat'
    },
    courier: {
      title: 'Vlastní přepravou',
      description: 'Zašlete médium vlastní přepravou na naši adresu:<br/>DataHelp s.r.o. Jirsíkova 1 Praha 8, 186 00'
    }
  }
};
