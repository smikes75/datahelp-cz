import React from 'react';
import { Instagram, Facebook } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { siteConfig } from '../../config/site.config';
import { useCookieConsent } from '../contexts/CookieConsentContext';

export function Footer() {
  const { t } = useTranslation();
  const { openSettings } = useCookieConsent();

  return (
    <footer className="bg-primary text-white py-6 md:py-12 relative">
      <div className="container mx-auto px-4">
        <div className="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-12">
          {/* Column 1 - Legal */}
          <div>
            <h3 className="text-base md:text-xl font-semibold mb-4 md:mb-6">{t('footer.legalInfo')}</h3>
            <div className="space-y-1.5 md:space-y-3 text-xs md:text-base">
              <Link to="/privacy" className="block hover:text-accent transition-colors">{t('footer.privacy')}</Link>
              <Link to="/terms" className="block hover:text-accent transition-colors">{t('footer.terms')}</Link>
              <Link to="/cookies" className="block hover:text-accent transition-colors">{t('footer.cookies')}</Link>
              <button
                onClick={openSettings}
                className="block hover:text-accent transition-colors text-left"
              >
                {t('footer.cookieSettings')}
              </button>
            </div>
          </div>

          {/* Column 2 - Services */}
          <div>
            <h3 className="text-base md:text-xl font-semibold mb-4 md:mb-6">{t('nav.services')}</h3>
            <div className="space-y-1.5 md:space-y-3 text-xs md:text-base">
              <Link to="/services/hdd-recovery" className="block hover:text-accent transition-colors">{t('services.hdd.title')}</Link>
              <Link to="/services/ssd-recovery" className="block hover:text-accent transition-colors">{t('services.ssd.title')}</Link>
              <Link to="/services/raid-systems" className="block hover:text-accent transition-colors">{t('services.raid.title')}</Link>
            </div>

            {/* Social Media - Desktop only */}
            <div className="mt-4 hidden md:block">
              <div className="flex gap-3">
                <a
                  href="https://instagram.com"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center justify-center bg-white/10 hover:bg-accent hover:scale-105 transition-all p-2.5 rounded-lg"
                  aria-label={t('accessibility.socialMedia.instagram')}
                >
                  <Instagram className="h-5 w-5" />
                </a>
                <a
                  href="https://facebook.com"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center justify-center bg-white/10 hover:bg-accent hover:scale-105 transition-all p-2.5 rounded-lg"
                  aria-label={t('accessibility.socialMedia.facebook')}
                >
                  <Facebook className="h-5 w-5" />
                </a>
              </div>
            </div>
          </div>

          {/* Column 3 - Contact (desktop only) */}
          <div className="hidden md:block">
            <h3 className="text-base md:text-xl font-semibold mb-3 md:mb-6">{t('nav.contact')}</h3>
            <div className="space-y-2 md:space-y-3 text-xs md:text-base">
              <p className="whitespace-pre-line">{siteConfig.contact.address}</p>
              <a
                href={`tel:${siteConfig.contact.phone}`}
                className="block hover:text-accent transition-colors"
              >
                Tel.: {siteConfig.contact.phone}
              </a>
              <a
                href={`mailto:${siteConfig.contact.email}`}
                className="block hover:text-accent transition-colors"
              >
                {siteConfig.contact.email}
              </a>
            </div>
          </div>
        </div>

        {/* Social Media & Call Button - Mobile only, positioned at bottom of footer */}
        <div className="md:hidden absolute bottom-6 right-4 flex gap-3">
          <a
            href="https://instagram.com"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center justify-center bg-white/10 hover:bg-accent hover:scale-105 transition-all p-2.5 rounded-lg"
            aria-label={t('accessibility.socialMedia.instagram')}
          >
            <Instagram className="h-5 w-5" />
          </a>
          <a
            href="https://facebook.com"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center justify-center bg-white/10 hover:bg-accent hover:scale-105 transition-all p-2.5 rounded-lg"
            aria-label={t('accessibility.socialMedia.facebook')}
          >
            <Facebook className="h-5 w-5" />
          </a>
        </div>

      </div>
    </footer>
  );
}