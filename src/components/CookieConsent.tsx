import React from 'react';
import { useTranslation } from 'react-i18next';
import { useCookieConsent } from '../contexts/CookieConsentContext';
import { Link } from 'react-router-dom';

export function CookieConsent() {
  const { t } = useTranslation();
  const { showBanner, acceptAll, openSettings } = useCookieConsent();

  if (!showBanner) return null;

  return (
    <div className="fixed bottom-28 md:bottom-0 left-0 right-0 z-50 bg-white shadow-2xl border-t-4 border-accent">
      <div className="container mx-auto px-4 py-4 md:py-6">
        <div className="flex flex-col md:flex-row items-start md:items-center gap-3 md:gap-6">
          {/* Text Content */}
          <div className="flex-1">
            <h3 className="text-base md:text-lg font-bold text-primary mb-1 md:mb-2">
              {t('cookieConsent.title')}
            </h3>
            <p className="text-gray-700 text-xs md:text-sm leading-relaxed">
              {t('cookieConsent.description')}{' '}
              <Link
                to="/cookies"
                className="text-accent hover:text-accent-dark underline font-semibold"
              >
                {t('cookieConsent.learnMore')}
              </Link>
            </p>
          </div>

          {/* Buttons */}
          <div className="flex flex-col sm:flex-row gap-2 md:gap-3 w-full md:w-auto">
            <button
              onClick={acceptAll}
              className="order-1 md:order-2 px-4 md:px-6 py-2 md:py-2.5 bg-primary text-white text-sm md:text-base font-semibold rounded-lg hover:bg-primary-light transition-colors whitespace-nowrap"
            >
              {t('cookieConsent.acceptAll')}
            </button>
            <button
              onClick={openSettings}
              className="order-2 md:order-1 px-4 md:px-6 py-2 md:py-2.5 bg-white border-2 border-primary text-primary text-sm md:text-base font-semibold rounded-lg hover:bg-primary hover:text-white transition-colors whitespace-nowrap"
            >
              {t('cookieConsent.settings')}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
