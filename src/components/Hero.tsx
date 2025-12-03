import React from 'react';
import { ShieldCheck, Cpu, Trophy } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { backgroundImages } from '../utils/imageUtils';

export function Hero() {
  const { t } = useTranslation();  const [isLoading, setIsLoading] = React.useState(true);

  React.useEffect(() => {
    const timer = setTimeout(() => setIsLoading(false), 300);
    return () => clearTimeout(timer);
  }, []);

  if (isLoading) {
    return (
      <div className="relative bg-primary">
        <div className="relative z-10 text-white py-16">
          <div className="container mx-auto px-4">
            <div className="max-w-3xl space-y-6">
              <div className="animate-pulse bg-white/20 h-12 w-3/4 rounded" />
              <div className="animate-pulse bg-white/20 h-6 w-2/3 rounded" />
              <div className="flex gap-4">
                <div className="animate-pulse bg-white/20 h-12 w-48 rounded-lg" />
                <div className="animate-pulse bg-white/20 h-12 w-32 rounded-lg" />
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="relative">
      <div className="absolute inset-0 z-0 hidden md:block overflow-hidden">
        <img
          src={backgroundImages.home}
          alt=""
          className="w-full h-full object-cover"
          style={{
            objectPosition: '55% center'
          }}
        />
        <div
          className="absolute inset-0"
          style={{
            background: 'linear-gradient(to right, rgba(27, 56, 122, 1) 0%, rgba(27, 56, 122, 0.95) 40%, rgba(27, 56, 122, 0.3) 70%, rgba(27, 56, 122, 0) 100%)'
          }}
        ></div>
      </div>

      <div className="absolute inset-0 bg-primary md:hidden z-0"></div>

      <div className="relative z-10 text-white py-8 md:py-16">
        <div className="container mx-auto px-4">
          <div className="max-w-3xl">
            <h1 className="text-3xl md:text-5xl font-bold mb-4 md:mb-6 whitespace-pre-line">
              {t('hero.title')}
            </h1>
            <p className="text-lg md:text-xl mb-6 md:mb-8">
              {t('hero.subtitle')}
            </p>
            <div className="flex flex-wrap gap-4 mt-8 md:mt-8">
              <Link
                to="/pricing"
                className="accent-background text-white text-lg px-6 py-3 rounded-lg font-semibold inline-flex items-center justify-center"
              >
                Ceník
              </Link>
              <Link
                to="/order-diagnostics"
                className="bg-white text-primary text-lg px-6 py-3 rounded-lg font-semibold inline-flex items-center justify-center hover:bg-gray-100 transition-colors"
              >
                {t('hero.orderDiagnostics')}
              </Link>
            </div>
          </div>

          <div className="hidden md:grid md:grid-cols-3 gap-8 mt-16">
            <div className="flex items-center space-x-4">
              <Trophy className="h-12 w-12 text-accent" />
              <div>
                <h3 className="font-semibold text-lg">{t('hero.experience')}</h3>
                <p>{t('hero.experienceDesc')}</p>
              </div>
            </div>
            <div className="flex items-center space-x-4">
              <Cpu className="h-12 w-12 text-accent" />
              <div>
                <h3 className="font-semibold text-lg">{t('hero.technology')}</h3>
                <p>{t('hero.technologyDesc')}</p>
              </div>
            </div>
            <div className="flex items-center space-x-4">
              <ShieldCheck className="h-12 w-12 text-accent" />
              <div>
                <h3 className="font-semibold text-lg">{t('hero.security')}</h3>
                <p>{t('hero.securityDesc')}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}