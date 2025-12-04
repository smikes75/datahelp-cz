import React from 'react';
import { useTranslation } from 'react-i18next';
import { useCookieConsent } from '../contexts/CookieConsentContext';
import { X, Lock } from 'lucide-react';
import { Link } from 'react-router-dom';

export function CookieSettings() {
  const { t } = useTranslation();
  const {
    showSettings,
    preferences,
    updatePreferences,
    acceptAll,
    rejectAll,
    savePreferences,
    closeSettings,
  } = useCookieConsent();

  if (!showSettings) return null;

  const cookieCategories = [
    {
      key: 'functional',
      locked: true,
      description: t('cookieSettings.categories.functional.description'),
    },
    {
      key: 'analytical',
      locked: false,
      description: t('cookieSettings.categories.analytical.description'),
    },
    {
      key: 'marketing',
      locked: false,
      description: t('cookieSettings.categories.marketing.description'),
    },
    {
      key: 'personalization',
      locked: false,
      description: t('cookieSettings.categories.personalization.description'),
    },
  ];

  return (
    <div className="fixed inset-0 z-[60] flex items-center justify-center bg-black/50 p-4">
      <div className="bg-white rounded-lg shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
        {/* Header */}
        <div className="sticky top-0 bg-white border-b border-gray-200 px-6 py-4 flex items-center justify-between">
          <h2 className="text-2xl font-bold text-primary">
            {t('cookieSettings.title')}
          </h2>
          <button
            onClick={closeSettings}
            className="p-2 hover:bg-gray-100 rounded-lg transition-colors"
            aria-label="Zavřít"
          >
            <X className="h-6 w-6 text-gray-600" />
          </button>
        </div>

        {/* Content */}
        <div className="p-6">
          <p className="text-gray-700 mb-6 leading-relaxed">
            {t('cookieSettings.description')}{' '}
            <Link
              to="/cookies"
              onClick={closeSettings}
              className="text-accent hover:text-accent-dark underline font-semibold"
            >
              {t('cookieSettings.moreInfo')}
            </Link>
          </p>

          {/* Cookie Categories */}
          <div className="space-y-4 mb-8">
            {cookieCategories.map((category) => (
              <div
                key={category.key}
                className="border border-gray-200 rounded-lg p-4 hover:border-accent/50 transition-colors"
              >
                <div className="flex items-center justify-between mb-2">
                  <div className="flex items-center gap-2">
                    <h3 className="text-lg font-semibold text-primary">
                      {t(`cookieSettings.categories.${category.key}.title`)}
                    </h3>
                    {category.locked && (
                      <Lock className="h-4 w-4 text-gray-400" />
                    )}
                  </div>

                  {/* Toggle Switch */}
                  <button
                    disabled={category.locked}
                    onClick={() =>
                      updatePreferences({
                        [category.key]: !preferences[category.key as keyof typeof preferences],
                      })
                    }
                    className={`relative inline-flex h-6 w-11 flex-shrink-0 items-center rounded-md transition-colors ${
                      category.locked
                        ? 'bg-gray-300 cursor-not-allowed'
                        : preferences[category.key as keyof typeof preferences]
                        ? 'bg-primary'
                        : 'bg-gray-300'
                    }`}
                  >
                    <span
                      className={`inline-block h-5 w-5 transform rounded-sm bg-white shadow transition-transform ${
                        preferences[category.key as keyof typeof preferences]
                          ? 'translate-x-5'
                          : 'translate-x-0.5'
                      }`}
                    />
                  </button>
                </div>
                <p className="text-sm text-gray-600 leading-relaxed">
                  {category.description}
                </p>
              </div>
            ))}
          </div>

          {/* Action Buttons */}
          <div className="flex flex-col sm:flex-row gap-3">
            <button
              onClick={rejectAll}
              className="flex-1 px-6 py-3 bg-white border-2 border-gray-300 text-gray-700 font-semibold rounded-lg hover:bg-gray-50 transition-colors"
            >
              {t('cookieSettings.rejectAll')}
            </button>
            <button
              onClick={savePreferences}
              className="flex-1 px-6 py-3 bg-primary text-white font-semibold rounded-lg hover:bg-primary-light transition-colors"
            >
              {t('cookieSettings.saveSettings')}
            </button>
            <button
              onClick={acceptAll}
              className="flex-1 px-6 py-3 bg-accent text-white font-semibold rounded-lg hover:bg-accent-dark transition-colors"
            >
              {t('cookieSettings.acceptAll')}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
