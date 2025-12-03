import React, { useState } from 'react';
import { ChevronDown, ChevronUp } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { SEO } from '../components/SEO';
import { TechnologyGallery } from '../components/TechnologyGallery';

function TechnologyPage() {
  const { t } = useTranslation();  const [expandedSections, setExpandedSections] = useState<number[]>([]);

  const toggleSection = (index: number) => {
    setExpandedSections(prev =>
      prev.includes(index)
        ? prev.filter(i => i !== index)
        : [...prev, index]
    );
  };

  const schema = {
    "@context": "https://schema.org",
    "@type": "TechArticle",
    "headline": t('techPage.title'),
    "description": t('techPage.subtitle'),
    "author": {
      "@type": "Organization",
      "name": "DataHelp.eu",
      "url": "https://datahelp.eu"
    },
    "articleBody": t('techPage.ourTechnology.description')
  };

  const equipment = [
    {
      title: 'PC-3000 UDMA',
      description: t('techPage.equipment.pc3000udma.description'),
      features: [
        t('techPage.equipment.pc3000udma.features.manufacturers'),
        t('techPage.equipment.pc3000udma.features.firmware'),
        t('techPage.equipment.pc3000udma.features.recovery')
      ]
    },
    {
      title: 'PC-3000 Flash',
      description: t('techPage.equipment.pc3000flash.description'),
      features: [
        t('techPage.equipment.pc3000flash.features.monolithic'),
        t('techPage.equipment.pc3000flash.features.usb'),
        t('techPage.equipment.pc3000flash.features.ssd')
      ]
    },
    {
      title: 'PC-3000 SSD',
      description: t('techPage.equipment.pc3000ssd.description'),
      features: [
        t('techPage.equipment.pc3000ssd.features.nvme'),
        t('techPage.equipment.pc3000ssd.features.sata'),
        t('techPage.equipment.pc3000ssd.features.controller')
      ]
    },
    {
      title: 'RuSolut',
      description: t('techPage.equipment.rusolut.description'),
      features: [
        t('techPage.equipment.rusolut.features.precision'),
        t('techPage.equipment.rusolut.features.calibration'),
        t('techPage.equipment.rusolut.features.compatibility')
      ]
    },
    {
      title: 'NAND Reconstructor',
      description: t('techPage.equipment.nandreconstructor.description'),
      features: [
        t('techPage.equipment.nandreconstructor.features.chips'),
        t('techPage.equipment.nandreconstructor.features.reconstruction'),
        t('techPage.equipment.nandreconstructor.features.formats')
      ]
    },
    {
      title: 'BGA Rework',
      description: t('techPage.equipment.bgarework.description'),
      features: [
        t('techPage.equipment.bgarework.features.precision'),
        t('techPage.equipment.bgarework.features.profiles'),
        t('techPage.equipment.bgarework.features.safety')
      ]
    },
    {
      title: t('techPage.gallery.partsWarehouse'),
      description: t('techPage.equipment.partswarehouse.description'),
      features: [
        t('techPage.equipment.partswarehouse.features.inventory'),
        t('techPage.equipment.partswarehouse.features.availability'),
        t('techPage.equipment.partswarehouse.features.compatibility')
      ]
    }
  ];

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO 
        title={`${t('techPage.title')} | DataHelp.eu`}
        description={t('techPage.subtitle')}
        keywords="data recovery technology, clean room, data recovery tools, professional equipment"
        canonical={`https://datahelp.eu/technology`}
        schema={schema}
      />

      <PageHeader
        title={t('techPage.title')}
        subtitle={t('techPage.subtitle')}
        backgroundImage="technology-bg.webp"
      />
      <Breadcrumbs />

      <section className="py-16 bg-gray-50">
        <TechnologyGallery />
      </section>

      <section className="py-16 bg-white">
        <div className="container mx-auto px-4 max-w-6xl">
          <h2 className="text-3xl font-bold mb-8 text-center text-primary">{t('techPage.equipment.title')}</h2>

          <div className="grid gap-4">
            {equipment.map((item, index) => {
              const isExpanded = expandedSections.includes(index);

              return (
                <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden">
                  <button
                    onClick={() => toggleSection(index)}
                    className="faq-button w-full p-6 flex items-center justify-between hover:bg-gray-50 transition-colors focus:outline-none"
                  >
                    <div className="flex items-center space-x-3 flex-1 min-w-0">
                      <h3 className="text-xl font-semibold text-primary">{item.title}</h3>
                    </div>
                    {isExpanded ? (
                      <ChevronUp className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                    ) : (
                      <ChevronDown className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                    )}
                  </button>

                  <div className={`transition-all duration-300 overflow-hidden ${
                    isExpanded ? 'max-h-[500px] opacity-100' : 'max-h-0 opacity-0'
                  }`}>
                    <div className="px-6 pb-6 pt-2">
                      <p className="text-gray-600 mb-4 leading-relaxed">{item.description}</p>
                      <ul className="space-y-3">
                        {item.features.map((feature, idx) => (
                          <li key={idx} className="flex items-start space-x-3">
                            <div className="w-1.5 h-1.5 bg-accent rounded-full mt-2 flex-shrink-0"></div>
                            <span className="text-gray-700">{feature}</span>
                          </li>
                        ))}
                      </ul>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </section>
    </div>
  );
}

export default TechnologyPage;