import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import type { Translations } from '../types/translations';
import { cs } from './locales/cs/index';

declare module 'i18next' {
  interface CustomTypeOptions {
    resources: {
      translation: Translations;
    };
  }
}

i18n
  .use(initReactI18next)
  .init({
    resources: {
      cs: { translation: cs }
    },
    lng: 'cs',
    fallbackLng: 'cs',
    interpolation: {
      escapeValue: false
    }
  });

export default i18n;