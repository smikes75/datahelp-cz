import React, { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { AlertTriangle } from 'lucide-react';

export function ElfsightReviews() {
  const { t } = useTranslation();
  const [error, setError] = useState<boolean>(false);

  useEffect(() => {
    // Load Elfsight platform script
    const script = document.createElement('script');
    script.src = "https://static.elfsight.com/platform/platform.js";
    script.async = true;
    script.defer = true;
    script.onerror = () => setError(true);

    // Add retry mechanism
    let retryCount = 0;
    const maxRetries = 3;
    const retryDelay = 2000; // 2 seconds

    const loadScript = () => {
      script.onload = () => {
        // Reset error state on successful load
        setError(false);
      };

      script.onerror = () => {
        if (retryCount < maxRetries) {
          retryCount++;
          setTimeout(loadScript, retryDelay);
        } else {
          setError(true);
        }
      };

      document.body.appendChild(script);
    };

    loadScript();

    return () => {
      // Cleanup script when component unmounts
      if (document.body.contains(script)) {
        document.body.removeChild(script);
      }
    };
  }, []);

  if (error) {
    return (
      <div className="py-16 bg-gray-50">
        <div className="container mx-auto px-4">
          <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-6 text-center">
            <AlertTriangle className="h-12 w-12 text-yellow-500 mx-auto mb-4" />
            <h2 className="text-xl font-semibold text-yellow-700 mb-2">
              {t('reviews.title')}
            </h2>
            <p className="text-yellow-600">
              {t('reviews.review1')}
            </p>
            <p className="text-yellow-600 mt-4">
              {t('reviews.review2')}
            </p>
            <p className="text-yellow-600 mt-4">
              {t('reviews.review3')}
            </p>
          </div>
        </div>
      </div>
    );
  }

  return (
    <section className="pt-8 pb-4 md:py-16 bg-gray-50">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-primary text-center mb-6 md:mb-12">{t('reviews.title')}</h2>
        <div
          className="elfsight-app-d4a576be-88da-4007-8183-5e430e73c73c"
          data-elfsight-app-lazy
          data-elfsight-app-version="3.0"
        ></div>
      </div>
    </section>
  );
}