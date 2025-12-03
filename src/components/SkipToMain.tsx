import React from 'react';
import { useTranslation } from 'react-i18next';

export function SkipToMain() {
  const { t } = useTranslation();
  
  return (
    <a
      href="#main-content"
      className="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 focus:z-50 focus:bg-white focus:p-4 focus:text-primary focus:outline-none focus:ring-2 focus:ring-primary"
    >
      {t('accessibility.skipToMain')}
    </a>
  );
}