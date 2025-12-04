import React from 'react';
import { Zap, Cpu, Database, ArrowRight } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { Breadcrumbs } from '../../components/Breadcrumbs';
import { SEO } from '../../components/SEO';

function SSDRecoveryPage() {
  const { t } = useTranslation();
  const features = [
    {
      icon: <Cpu className="h-8 w-8 text-accent" />,
      title: t('services.ssd.features.controller'),
      description: t('services.ssd.features.controllerDesc')
    },
    {
      icon: <Database className="h-8 w-8 text-accent" />,
      title: t('services.ssd.features.firmware'),
      description: t('services.ssd.features.firmwareDesc')
    },
    {
      icon: <Zap className="h-8 w-8 text-accent" />,
      title: t('services.ssd.features.flash'),
      description: t('services.ssd.features.flashDesc')
    }
  ];

  const caseStudiesText = {
    title: "Případové studie",
    description: "Prohlédněte si reálné příklady úspěšné záchrany dat z poškozených SSD disků a flash pamětí"
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO 
        title={`${t('services.ssd.title')} | DataHelp.cz`}
        description={t('services.ssd.desc')}
        keywords={t('services.ssd.keywords.recovery')}
        canonical="https://datahelp.cz/services/ssd-recovery"
        ogImage="/images/backgrounds/ssd-recovery.webp"
      />
      <div className="bg-primary text-white py-16">
        <div className="container mx-auto px-4">
          <h1 className="text-4xl font-bold mb-6">{t('services.ssd.title')}</h1>
          <p className="text-xl">{t('services.ssd.desc')}</p>
        </div>
      </div>
      <Breadcrumbs />

      <div className="container mx-auto px-4 py-16">
        <div className="grid md:grid-cols-3 gap-8 mb-16">
          {features.map((feature, index) => (
            <div key={index} className="bg-white p-8 rounded-lg shadow-lg">
              <div className="mb-4">{feature.icon}</div>
              <h3 className="text-xl font-semibold mb-2 text-primary">{feature.title}</h3>
              <p className="text-gray-600">{feature.description}</p>
            </div>
          ))}
        </div>

        <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
          <h2 className="text-2xl font-bold mb-6 text-primary">{t('services.ssd.supported.title')}</h2>
          <div className="grid md:grid-cols-2 gap-8">
            <div>
              <h3 className="text-xl font-semibold mb-4 text-primary">{t('services.ssd.supported.devices')}</h3>
              <ul className="space-y-2">
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.ssd.supported.sata')}</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.ssd.supported.nvme')}</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.ssd.supported.usb')}</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.ssd.supported.cards')}</span>
                </li>
              </ul>
            </div>
            <div>
              <h3 className="text-xl font-semibold mb-4 text-primary">{t('services.ssd.supported.manufacturers')}</h3>
              <ul className="space-y-2">
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>Samsung, Western Digital, SanDisk</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>Crucial, Micron, SK Hynix, Intel</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>Seagate, Kingston, Corsair</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>ADATA, Transcend, Patriot</span>
                </li>
              </ul>
            </div>
          </div>
        </div>

        {/* Case Studies Link */}
        <Link 
          to={`/services/ssd-recovery/case-studies`}
          className="block bg-white rounded-lg shadow-lg p-8 hover:shadow-xl transition-shadow"
        >
          <div className="flex items-center justify-between">
            <div>
              <h2 className="text-2xl font-bold text-primary mb-2">{caseStudiesText.title}</h2>
              <p className="text-gray-600">{caseStudiesText.description}</p>
            </div>
            <ArrowRight className="h-8 w-8 text-accent" />
          </div>
        </Link>
      </div>
    </div>
  );
}

export default SSDRecoveryPage;