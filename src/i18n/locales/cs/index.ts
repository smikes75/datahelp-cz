import { seo } from './seo';
import { nav } from './nav';
import { accessibility } from './accessibility';
import { banner } from './banner';
import { hero } from './hero';
import { about } from './about';
import { services } from './services';
import { reviews } from './reviews';
import { pricing } from './pricing';
import { faq } from './faq';
import { contact } from './contact';
import { techPage } from './techPage';
import { gallery } from './gallery';
import { process } from './process';
import { footer } from './footer';
import { privacy } from './privacy';
import { terms } from './terms';
import { cookies } from './cookies';
import { priceCalculator } from './priceCalculator';
import { orderDiagnostics } from './orderDiagnostics';
import { blog } from './blog';

import type { Translations } from '../../../types/translations';

export const cs: Translations = {
  seo,
  nav,
  accessibility,
  banner,
  hero,
  about,
  services,
  reviews,
  pricing,
  faq,
  contact,
  techPage,
  gallery,
  process,
  footer,
  privacy,
  terms,
  cookies,
  priceCalculator,
  orderDiagnostics,
  blog,
  caseStudies: {
    title: 'Případové studie',
    description: 'Reálné příklady úspěšné záchrany dat z poškozených zařízení',
    problem: 'Problém:',
    solution: 'Řešení:',
    result: 'Výsledek:',
    duration: 'Doba řešení:',
    recoveryRate: 'Úspěšnost:',
    documentation: 'Kompletní dokumentace',
    contactUs: 'Máte podobný problém?'
  },
  stickyCta: {
    call: 'Volat',
    consultation: 'Bezplatná konzultace'
  }
};
