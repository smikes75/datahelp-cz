import React from 'react';
import { Phone } from 'lucide-react';
import { useLocation } from 'react-router-dom';
import { useTranslation } from 'react-i18next';

export function StickyCTA() {
  const { t } = useTranslation();
  const location = useLocation();

  const isContactPage = location.pathname.includes('/contact');

  if (isContactPage) {
    return null;
  }

  return (
    <div className="md:hidden absolute bottom-6 left-4">
      <a
        href="tel:+420775220440"
        className="flex items-center justify-center gap-2 px-4 py-2.5 bg-white hover:bg-gray-50 text-primary font-semibold rounded-lg transition-all hover:scale-105 shadow-lg"
      >
        <Phone className="h-5 w-5" />
        <span className="text-sm">{t('stickyCta.call')}</span>
      </a>
    </div>
  );
}
