export const siteConfig = {
  version: 'cz' as const,
  language: 'cs' as const,
  domain: 'datahelp.cz',
  features: {
    showMap: true,
    showCzechOpeningHours: true,
    showContactFormOnHomepageMobile: false,
  },
  contact: {
    address: 'Jirsíkova 541/1, 186 00 Praha 8',
    phone: '+420 775 220 440',
    email: 'info@datahelp.cz',
  },
  meta: {
    companyName: 'DataHelp.cz s.r.o.',
    ico: '27387712',
    dic: 'CZ227387712',
  }
};

export type SiteConfig = typeof siteConfig;
