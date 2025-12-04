export const cookies = {
  title: 'Informace o cookies',
  subtitle: 'Jak používáme cookies na našich webových stránkách',

  intro: {
    paragraph1: 'Cookies jsou malé textové soubory, které mohou být používány webovými stránkami k rozšíření jejich funkčnosti.',
    paragraph2: 'Ze zákona můžeme využívat pouze cookies, které jsou nezbytné k provozu webu. K použití ostatních cookies, např. za účelem sledování návštěvnosti webu nebo pro reklamní účely nám musíte dát svůj výslovný souhlas. Svůj souhlas můžete kdykoliv změnit nebo zrušit prostřednictvím cookies lišty na našich webových stránkách.'
  },

  sections: {
    functional: {
      title: 'Funkční cookies',
      description: 'Jsou nutné k zajištění funkčnosti webových stránek.',
      cookies: [
        {
          name: '_nss',
          source: 'datahelp.cz',
          description: '1st party cookie používaná k detekci CSRF útoku'
        },
        {
          name: 'owcc',
          source: 'datahelp.cz',
          description: '1st party cookie používaná k uchování informace o stavu souhlasů s cookies'
        },
        {
          name: 'criticalCss',
          source: 'datahelp.cz',
          description: '1st party cookie používaná k optimalizaci rychlosti načítání webové stránky'
        },
        {
          name: 'wfont',
          source: 'datahelp.cz',
          description: '1st party cookie používaná k optimalizaci rychlosti načítání webové stránky'
        },
        {
          name: 'YSC',
          source: 'youtube.com',
          description: 'Registers a unique ID to keep statistics of what videos from YouTube the user has seen'
        }
      ]
    },

    analytical: {
      title: 'Analytické cookies',
      description: 'Pomáhají majitelům webových stránek, aby porozuměli chování návštěvníků na jejich webových stránkách. Anonymně sbírají a sdělují informace.',
      cookies: [
        {
          name: 'owlid',
          source: 'datahelp.cz',
          description: '1st party cookie používaná k analýze odeslaných kontaktních formulářů'
        }
      ]
    },

    marketing: {
      title: 'Marketingové cookies',
      description: 'Jsou používány pro možnost zobrazení relevantních reklamních sdělení uživatelům na základě jejich chování na webových stránkách.',
      cookies: [
        {
          name: 'VISITOR_INFO1_LIVE',
          source: 'youtube.com',
          service: 'Youtube',
          description: 'Tries to estimate the users\' bandwidth on pages with integrated YouTube videos'
        }
      ]
    },

    personalization: {
      title: 'Personalizační cookies',
      description: 'Umožňují webové stránce sběr anonymních informací o chování uživatele za účelem přizpůsobení obsahu stránky uživateli na míru.',
      cookies: []
    }
  }
};
