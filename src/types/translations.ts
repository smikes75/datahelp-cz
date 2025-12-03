// Define all possible translation keys and their types
export interface Translations {
  accessibility: {
    skipToMain: string;
    backToTop: string;
    selectLanguage: string;
    toggleMenu: string;
    socialMedia: {
      instagram: string;
      facebook: string;
    };
  };
  nav: {
    home: string;
    services: string;
    priceCalculator: string;
    about: string;
    pricing: string;
    contact: string;
  };
  banner: {
    noPayment: string;
    freeConsultation: string;
    secureRecovery: string;
    certified: string;
  };
  hero: {
    title: string;
    subtitle: string;
    consultation: string;
    getPrice: string;
    ourServices: string;
    security: string;
    securityDesc: string;
    technology: string;
    technologyDesc: string;
    experience: string;
    experienceDesc: string;
  };
  about: {
    title: string;
    subtitle: string;
    description: string;
    experience: {
      title: string;
      description: string;
    };
    team: {
      title: string;
      description: string;
    };
    availability: {
      title: string;
      description: string;
    };
    security: {
      title: string;
      description: string;
    };
    mission: {
      title: string;
      description: string;
    };
  };
  services: {
    title: string;
    subtitle: string;
    hdd: {
      title: string;
      desc: string;
      keywords?: {
        recovery: string;
      };
      features: {
        mechanical: string;
        mechanicalDesc?: string;
        electronic: string;
        electronicDesc?: string;
        logical: string;
        logicalDesc?: string;
      };
      supported: {
        title: string;
        devices: string;
        manufacturers: string;
        sata: string;
        ide: string;
        scsi: string;
        external: string;
      };
    };
    ssd: {
      title: string;
      desc: string;
      keywords?: {
        recovery: string;
      };
      features: {
        controller: string;
        controllerDesc?: string;
        firmware: string;
        firmwareDesc?: string;
        flash: string;
        flashDesc?: string;
      };
      supported: {
        title: string;
        devices: string;
        manufacturers: string;
        sata: string;
        nvme: string;
        usb: string;
        cards: string;
      };
    };
    raid: {
      title: string;
      desc: string;
      keywords?: {
        recovery: string;
      };
      features: {
        hardware: string;
        hardwareDesc?: string;
        software: string;
        softwareDesc?: string;
        virtual: string;
        virtualDesc?: string;
      };
      supported: {
        title: string;
        configurations: string;
        nas: string;
        san: string;
        controllers: string;
      };
      security: {
        title: string;
        description: string;
      };
    };
    business: {
      title: string;
      desc: string;
      keywords?: {
        recovery: string;
      };
      contact: {
        salesTeam: string;
        leaveMessage: string;
      };
      features: {
        support: string;
        supportDesc: string;
        security: string;
        securityDesc: string;
        priority: string;
        priorityDesc: string;
      };
      sla: {
        title: string;
        response: {
          title: string;
          description: string;
        };
        onsite: {
          title: string;
          description: string;
        };
        reporting: {
          title: string;
          description: string;
        };
      };
      industries: {
        title: string;
        finance: string;
        financeDesc: string;
        healthcare: string;
        healthcareDesc: string;
        manufacturing: string;
        manufacturingDesc: string;
        it: string;
        itDesc: string;
      };
    };
    whyChooseUs: string;
    benefits: {
      security: string;
      securityDesc: string;
      expertise: string;
      expertiseDesc: string;
      speed: string;
      speedDesc: string;
    };
    serviceList?: {
      title: string;
      subtitle: string;
      description: string;
      sections: {
        diagnostics: {
          title: string;
          items: {
            basic: string;
            detailed: string;
            planning: string;
          }
        };
        software: {
          title: string;
          items: {
            deleted: string;
            filesystem: string;
            compressed: string;
            raid: string;
            database: string;
          }
        };
        hardware: {
          title: string;
          items: {
            electronics: string;
            heads: string;
            mechanics: string;
            bga: string;
            rom: string;
            service: string;
          }
        };
        specialized: {
          title: string;
          items: {
            pc3000: string;
            nand: string;
            security: string;
            mcmt: string;
            firmware: string;
            reverse: string;
            damaged: string;
          }
        };
        express: {
          title: string;
          items: {
            h24: string;
            overtime: string;
            weekend: string;
          }
        };
        additional: {
          title: string;
          items: {
            consulting: string;
            backup: string;
            encryption: string;
            transport: string;
          }
        };
      };
      pricing: {
        hourly: string;
        percentage: string;
        distance: string;
        note: string;
      }
    }
  };
  priceCalculator: {
    title: string;
    subtitle: string;
    description: string;
    keywords: string;
    steps: {
      deviceType: string;
      damageType: string;
      urgency: string;
    };
    deviceTypes: {
      hdd: string;
      ssd: string;
      raid: string;
    };
    damageTypes: {
      logical: string;
      logicalDesc: string;
      physical: string;
      physicalDesc: string;
      electronic: string;
      electronicDesc: string;
    };
    urgencyOptions: {
      standard: string;
      express: string;
      h24: string;
    };
    from: string;
    calculateButton: string;
    result: {
      title: string;
      warning: {
        title: string;
        estimate: string;
        finalPrice: string;
        diagnosis: string;
        noDataNoPayment: string;
      };
      freeConsultation: string;
      moreServices: string;
    };
    whyChoose: {
      title: string;
      noDataNoPayment: {
        title: string;
        description: string;
      };
      freeDiagnosis: {
        title: string;
        description: string;
      };
      experience: {
        title: string;
        description: string;
      };
    };
  };
  pricing: {
    title: string;
    subtitle: string;
    description: string;
    getQuote: string;
    hdd: {
      title: string;
      description: string;
      price: string;
      noSuccess: string;
      features: {
        diagnosis: string;
        recovery: string;
        warranty: string;
        support: string;
      };
    };
    ssd: {
      title: string;
      description: string;
      price: string;
      noSuccess: string;
      features: {
        diagnosis: string;
        recovery: string;
        warranty: string;
        support: string;
      };
    };
    raid: {
      title: string;
      description: string;
      price: string;
      noSuccess: string;
      features: {
        diagnosis: string;
        recovery: string;
        warranty: string;
        support: string;
      };
    };
    business: {
      title: string;
      description: string;
      price: string;
      noSuccess: string;
      features: {
        priority: string;
        sla: string;
        support: string;
        onsite: string;
      };
    };
    serviceList?: {
      title: string;
      subtitle: string;
      description: string;
      sections: {
        diagnostics: {
          title: string;
          items: {
            basic: string;
            detailed: string;
            planning: string;
          }
        };
        software: {
          title: string;
          items: {
            deleted: string;
            filesystem: string;
            compressed: string;
            raid: string;
            database: string;
          }
        };
        hardware: {
          title: string;
          items: {
            electronics: string;
            heads: string;
            mechanics: string;
            bga: string;
            rom: string;
            service: string;
          }
        };
        specialized: {
          title: string;
          items: {
            pc3000: string;
            nand: string;
            security: string;
            mcmt: string;
            firmware: string;
            reverse: string;
            damaged: string;
          }
        };
        express: {
          title: string;
          items: {
            h24: string;
            overtime: string;
            weekend: string;
          }
        };
        additional: {
          title: string;
          items: {
            consulting: string;
            backup: string;
            encryption: string;
            transport: string;
          }
        };
      };
      pricing: {
        hourly: string;
        percentage: string;
        distance: string;
        note: string;
      }
    }
  };
  faq: {
    title: string;
    subtitle: string;
    questions: {
      q1: string;
      a1: string;
      q2: string;
      a2: string;
      q3: string;
      a3: string;
      q4: string;
      a4: string;
      q5: string;
      a5: string;
      q6: string;
      a6: string;
      q7: string;
      a7: string;
      q8: string;
      a8: string;
      q9: string;
      a9: string;
      q10: string;
      a10: string;
    };
  };
  contact: {
    title: string;
    subtitle: string;
    form: {
      title: string;
      leaveMessage: string;
      name: string;
      email: string;
      phone: string;
      message: string;
      send: string;
      sending?: string;
      success?: string;
      error?: string;
      rateLimit?: string;
      tooManyRequests?: string;
      errors?: {
        name: string;
        email: string;
        emailFormat?: string;
        phone?: string;
        message: string;
      }
    };
    info: {
      title: string;
      address: string;
      hours: string;
      phone: string;
      email: string;
      emergency: string;
    };
    partners: {
      title: string;
      description: string;
    };
  };
  techPage: {
    ourTechnology?: {
      title: string;
      description: string;
    };
    title: string;
    subtitle: string;
    cleanRoom: {
      title: string;
      description: string;
    };
    tools: {
      title: string;
      description: string;
    };
    diagnostics: {
      title: string;
      description: string;
    };
    equipment: {
      title: string;
      pc3000udma: {
        description: string;
        features: {
          manufacturers: string;
          firmware: string;
          recovery: string;
        };
      };
      pc3000flash: {
        description: string;
        features: {
          monolithic: string;
          usb: string;
          ssd: string;
        };
      };
      pc3000ssd: {
        description: string;
        features: {
          nvme: string;
          sata: string;
          controller: string;
        };
      };
    };
    security: {
      title: string;
      protocols: {
        title: string;
        description: string;
      };
      specialists: {
        title: string;
        description: string;
      };
    };
  };
  gallery: {
    title: string;
    cleanRoom: string;
    diagnostics: string;
    serverRoom: string;
    dataCenter: string;
  };
  process: {
    title: string;
    guarantee: string;
    reception: {
      title: string;
      desc: string;
    };
    diagnosis: {
      title: string;
      desc: string;
    };
    approval: {
      title: string;
      desc: string;
    };
    recovery: {
      title: string;
      desc: string;
    };
    verification: {
      title: string;
      desc: string;
    };
    delivery: {
      title: string;
      desc: string;
    };
  };
  footer: {
    privacy: string;
    terms: string;
    cookies: string;
    legal?: string;
  };
  privacy: {
    title: string;
    subtitle: string;
    dataProtection: {
      title: string;
      content: string;
    };
    security: {
      title: string;
      content: string;
    };
    transparency: {
      title: string;
      content: string;
    };
    rights: {
      title: string;
      content: string;
    };
    contact: {
      title: string;
      content: string;
      address: string;
    };
  };
  terms: {
    title: string;
    subtitle: string;
    lastUpdated: string;
    sections: {
      general: {
        title: string;
        content: string;
      };
      services: {
        title: string;
        content: string;
      };
      pricing: {
        title: string;
        content: string;
      };
      warranty: {
        title: string;
        content: string;
      };
      confidentiality: {
        title: string;
        content: string;
      };
      complaints: {
        title: string;
        content: string;
      };
    };
  };
  cookies: {
    title: string;
    subtitle: string;
    lastUpdated: string;
    sections: {
      what: {
        title: string;
        content: string;
      };
      types: {
        title: string;
        necessary: {
          title: string;
          content: string;
        };
        analytical: {
          title: string;
          content: string;
        };
        functional: {
          title: string;
          content: string;
        };
      };
      usage: {
        title: string;
        content: string;
        purposes: string[];
      };
      control: {
        title: string;
        content: string;
      };
      consent: {
        title: string;
        content: string;
      };
    };
  };
  seo?: {
    about?: {
      title: string;
      description: string;
      keywords: string;
    };
    services?: {
      title: string;
      description: string;
      keywords: string;
    };
  };
  caseStudies: {
    title: string;
    description: string;
    problem: string;
    solution: string;
    result: string;
    duration: string;
    recoveryRate: string;
    documentation: string;
    contactUs: string;
  };
}