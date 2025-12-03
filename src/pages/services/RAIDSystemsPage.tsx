import React from 'react';
import { Database, Server, ServerCog, ArrowRight } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { Breadcrumbs } from '../../components/Breadcrumbs';
import { SEO } from '../../components/SEO';

function RAIDSystemsPage() {
  const { t } = useTranslation();
  const features = [
    {
      icon: <Server className="h-8 w-8 text-accent" />,
      title: t('services.raid.features.hardware'),
      description: t('services.raid.features.hardwareDesc')
    },
    {
      icon: <Database className="h-8 w-8 text-accent" />,
      title: t('services.raid.features.software'),
      description: t('services.raid.features.softwareDesc')
    },
    {
      icon: <ServerCog className="h-8 w-8 text-accent" />,
      title: t('services.raid.features.virtual'),
      description: t('services.raid.features.virtualDesc')
    }
  ];

  const caseStudiesText = {
    title: "Případové studie",
    description: "Prohlédněte si reálné příklady úspěšné záchrany dat z poškozených RAID/NAS polí a serverů"
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO 
        title={`${t('services.raid.title')} | DataHelp.eu`}
        description={t('services.raid.desc')}
        keywords={t('services.raid.keywords.recovery')}
        canonical="https://datahelp.eu/services/raid-systems"
        ogImage="/images/backgrounds/raid-recovery.webp"
      />
      <div className="bg-primary text-white py-16">
        <div className="container mx-auto px-4">
          <h1 className="text-4xl font-bold mb-6">{t('services.raid.title')}</h1>
          <p className="text-xl">{t('services.raid.desc')}</p>
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
          <h2 className="text-2xl font-bold mb-6 text-primary">{t('services.raid.supported.title')}</h2>
          <div className="grid md:grid-cols-2 gap-8">
            <div>
              <h3 className="text-xl font-semibold mb-4 text-primary">{t('services.raid.supported.configurations')}</h3>
              <ul className="space-y-2">
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>RAID 0, 1, 5, 6, 10</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.raid.supported.nas')}</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>{t('services.raid.supported.san')}</span>
                </li>
              </ul>
            </div>
            <div>
              <h3 className="text-xl font-semibold mb-4 text-primary">{t('services.raid.supported.controllers')}</h3>
              <ul className="space-y-2">
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>LSI, Broadcom, Dell PERC, HP Smart Array</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>Synology, Qnap, Netgear</span>
                </li>
                <li className="flex items-center space-x-2">
                  <div className="w-2 h-2 bg-accent rounded-full"></div>
                  <span>Asustor, Buffalo Technology, TerraMaster</span>
                </li>
              </ul>
            </div>
          </div>
        </div>

        {/* Case Studies Link */}
        <Link 
          to={`/services/raid-systems/case-studies`}
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

export default RAIDSystemsPage;