import React, { useState } from 'react';
import { HardDrive, Smartphone, Database, Clock, Microscope, Cpu, Zap, ChevronDown, ChevronUp, Wrench, AlertCircle, Banknote, ClipboardList, Calculator } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Link } from 'react-router-dom';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { SEO } from '../components/SEO';

interface PriceItem {
  title: string;
  price: string;
}

interface PriceSection {
  icon: React.ReactNode;
  title: string;
  items: PriceItem[];
}

interface ServicePriceListProps {
  sections: PriceSection[];
}

interface DeviceCardData {
  icon: React.ReactNode;
  title: string;
  description: string;
  deviceType: 'hdd' | 'ssd' | 'mobile' | 'raid';
  software: {
    description: string;
    priceFrom: string;
  };
  hardware: {
    description: string;
    priceFrom: string;
  };
  combined: {
    description: string;
    priceFrom: string;
  };
}

function ServicePriceList({ sections }: ServicePriceListProps) {
  const [expandedSections, setExpandedSections] = useState<number[]>([]);

  const toggleSection = (index: number) => {
    setExpandedSections(prev =>
      prev.includes(index)
        ? prev.filter(i => i !== index)
        : [...prev, index]
    );
  };

  return (
    <div className="mt-4">
      <div className="grid gap-4">
        {sections.map((section, index) => {
          const isExpanded = expandedSections.includes(index);

          return (
            <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden">
              <button
                onClick={() => toggleSection(index)}
                className="faq-button w-full p-6 flex items-center justify-between hover:bg-gray-50 transition-colors focus:outline-none"
              >
                <div className="flex items-center space-x-3 flex-1 min-w-0">
                  <div className="flex-shrink-0">{section.icon}</div>
                  <h3 className="text-xl font-semibold text-primary">{section.title}</h3>
                </div>
                {isExpanded ? (
                  <ChevronUp className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                ) : (
                  <ChevronDown className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                )}
              </button>

              <div className={`transition-all duration-300 overflow-hidden ${
                isExpanded ? 'max-h-[1000px] opacity-100' : 'max-h-0 opacity-0'
              }`}>
                <div className="px-6 pb-6 pt-2 space-y-3">
                  {section.items.map((item, itemIndex) => (
                    <div
                      key={itemIndex}
                      className="flex justify-between items-center py-3 border-b border-gray-100 last:border-0"
                    >
                      <span className="text-gray-700">{item.title}</span>
                      <div className="flex-shrink-0 ml-4">
                        <span className="font-bold text-primary bg-primary/5 px-3 py-1 rounded-full whitespace-nowrap">
                          {item.price}
                        </span>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

function PricingPage() {
  const { t } = useTranslation();
  const [expandedCards, setExpandedCards] = useState<number[]>([]);
  const [isServiceListExpanded, setIsServiceListExpanded] = useState(false);
  const [expandedFaqItems, setExpandedFaqItems] = useState<number[]>([]);
  const cardRefs = React.useRef<(HTMLButtonElement | null)[]>([]);

  const toggleCard = (index: number) => {
    const isCurrentlyExpanded = expandedCards.includes(index);

    setExpandedCards(prev =>
      prev.includes(index)
        ? []
        : [index]
    );

    if (!isCurrentlyExpanded) {
      setTimeout(() => {
        const element = cardRefs.current[index];
        if (element) {
          const yOffset = -100;
          const y = element.getBoundingClientRect().top + window.pageYOffset + yOffset;
          window.scrollTo({ top: y, behavior: 'smooth' });
        }
      }, 100);
    }
  };

  const toggleFaqItem = (index: number) => {
    setExpandedFaqItems(prev =>
      prev.includes(index)
        ? []
        : [index]
    );
  };

  const priceUnit = 'Kč';
  const hourlyUnit = 'Kč/hod';

  const getPrices = () => {
    return {
      basicDiagnostics: `0 ${priceUnit}`,
      detailedDiagnostics: `1 250 ${priceUnit}`,

      deletedRecovery: `1 000 ${hourlyUnit}`,
      filesystemRecovery: `1 250 ${hourlyUnit}`,
      compressedRecovery: `1 125 ${hourlyUnit}`,
      raidRecovery: `1 500 ${hourlyUnit}`,
      databaseRecovery: `1 375 ${hourlyUnit}`,

      electronicsRepair: `1 750 ${hourlyUnit}`,
      headsReplacement: `2 500 ${hourlyUnit}`,
      mechanicsRepair: `2 250 ${hourlyUnit}`,
      bgaRepair: `2 750 ${hourlyUnit}`,
      romEmulator: `2 375 ${hourlyUnit}`,
      serviceArea: `2 625 ${hourlyUnit}`,

      pc3000Work: `2 250 ${hourlyUnit}`,
      nandReconstruction: `2 500 ${hourlyUnit}`,
      securityChips: `3 000 ${hourlyUnit}`,
      mcmtTables: `2 750 ${hourlyUnit}`,
      firmwareAnalysis: `2 625 ${hourlyUnit}`,
      reverseEngineering: `2 375 ${hourlyUnit}`,
      damagedService: `2 750 ${hourlyUnit}`
    };
  };

  const prices = getPrices();

  const deviceCards: DeviceCardData[] = [
    {
      icon: <HardDrive className="h-8 w-8" />,
      title: 'HDD - Pevné disky',
      description: 'Obnova dat z mechanických pevných disků',
      deviceType: 'hdd',
      software: {
        description: 'Smazané soubory, poškozený souborový systém, formátování',
        priceFrom: '3 500 Kč'
      },
      hardware: {
        description: 'Mechanické poškození, vadné hlavy, elektronika, servisní oblast',
        priceFrom: '6 000 Kč'
      },
      combined: {
        description: 'Kombinace softwarového a hardwarového poškození',
        priceFrom: '7 000 Kč'
      }
    },
    {
      icon: <Cpu className="h-8 w-8" />,
      title: 'SSD - Solid State disky',
      description: 'Obnova dat z SSD disků a flash pamětí',
      deviceType: 'ssd',
      software: {
        description: 'Logické poškození, ztracené oddíly, TRIM problémy',
        priceFrom: '2 500 Kč'
      },
      hardware: {
        description: 'Nefunkční řadič, NAND čipy, BGA rekonstrukce',
        priceFrom: '6 000 Kč'
      },
      combined: {
        description: 'Kombinace softwarového a hardwarového poškození',
        priceFrom: '8 000 Kč'
      }
    },
    {
      icon: <Smartphone className="h-8 w-8" />,
      title: 'Mobilní zařízení',
      description: 'Obnova dat z telefonů a tabletů',
      deviceType: 'mobile',
      software: {
        description: 'Omylem smazaná data, resetované telefony, zálohy',
        priceFrom: '2 000 Kč'
      },
      hardware: {
        description: 'Poškozená paměť eMMC/UFS, chip-off recovery',
        priceFrom: '6 500 Kč'
      },
      combined: {
        description: 'Kombinace softwarového a hardwarového poškození',
        priceFrom: '7 500 Kč'
      }
    },
    {
      icon: <Database className="h-8 w-8" />,
      title: 'RAID/NAS systémy',
      description: 'Obnova dat z RAID polí a NAS serverů',
      deviceType: 'raid',
      software: {
        description: 'Rozpad RAID/NAS, chybná konfigurace, chybějící disky',
        priceFrom: '5 000 Kč'
      },
      hardware: {
        description: 'Více vadných disků, komplexní rekonstrukce, NAS servery',
        priceFrom: '14 000 Kč'
      },
      combined: {
        description: 'Kombinace softwarového a hardwarového poškození více disků',
        priceFrom: '19 000 Kč'
      }
    }
  ];

  const servicePriceSections: PriceSection[] = [
    {
      icon: <Microscope className="h-6 w-6 text-accent" />,
      title: t('pricing.serviceList.sections.diagnostics.title'),
      items: [
        {
          title: t('pricing.serviceList.sections.diagnostics.items.basic'),
          price: prices.basicDiagnostics
        },
        {
          title: t('pricing.serviceList.sections.diagnostics.items.detailed'),
          price: prices.detailedDiagnostics
        }
      ]
    },
    {
      icon: <Cpu className="h-6 w-6 text-accent" />,
      title: t('pricing.serviceList.sections.software.title'),
      items: [
        {
          title: t('pricing.serviceList.sections.software.items.deleted'),
          price: prices.deletedRecovery
        },
        {
          title: t('pricing.serviceList.sections.software.items.filesystem'),
          price: prices.filesystemRecovery
        },
        {
          title: t('pricing.serviceList.sections.software.items.compressed'),
          price: prices.compressedRecovery
        },
        {
          title: t('pricing.serviceList.sections.software.items.raid'),
          price: prices.raidRecovery
        },
        {
          title: t('pricing.serviceList.sections.software.items.database'),
          price: prices.databaseRecovery
        }
      ]
    },
    {
      icon: <Wrench className="h-6 w-6 text-accent" />,
      title: t('pricing.serviceList.sections.hardware.title'),
      items: [
        {
          title: t('pricing.serviceList.sections.hardware.items.electronics'),
          price: prices.electronicsRepair
        },
        {
          title: t('pricing.serviceList.sections.hardware.items.heads'),
          price: prices.headsReplacement
        },
        {
          title: t('pricing.serviceList.sections.hardware.items.mechanics'),
          price: prices.mechanicsRepair
        },
        {
          title: t('pricing.serviceList.sections.hardware.items.bga'),
          price: prices.bgaRepair
        },
        {
          title: t('pricing.serviceList.sections.hardware.items.rom'),
          price: prices.romEmulator
        },
        {
          title: t('pricing.serviceList.sections.hardware.items.service'),
          price: prices.serviceArea
        }
      ]
    },
    {
      icon: <Zap className="h-6 w-6 text-accent" />,
      title: t('pricing.serviceList.sections.specialized.title'),
      items: [
        {
          title: t('pricing.serviceList.sections.specialized.items.pc3000'),
          price: prices.pc3000Work
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.nand'),
          price: prices.nandReconstruction
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.security'),
          price: prices.securityChips
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.mcmt'),
          price: prices.mcmtTables
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.firmware'),
          price: prices.firmwareAnalysis
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.reverse'),
          price: prices.reverseEngineering
        },
        {
          title: t('pricing.serviceList.sections.specialized.items.damaged'),
          price: prices.damagedService
        }
      ]
    },
    {
      icon: <Clock className="h-6 w-6 text-accent" />,
      title: t('pricing.serviceList.sections.express.title'),
      items: [
        {
          title: t('pricing.serviceList.sections.express.items.h24'),
          price: '+100%'
        },
        {
          title: t('pricing.serviceList.sections.express.items.overtime'),
          price: '+50%'
        }
      ]
    }
  ];

  const faqItems = t('pricing.faq.items', { returnObjects: true }) as Array<{
    question: string;
    answer: string;
  }>;

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO
        title={`${t('pricing.title')} | DataHelp.cz`}
        description={t('pricing.description')}
        keywords="data recovery pricing, hdd recovery cost, ssd recovery price, raid recovery pricing"
        canonical={`https://datahelp.cz/pricing`}
      />

      <PageHeader
        title={t('pricing.title')}
        subtitle={t('pricing.subtitle')}
        backgroundImage="pricing-bg.webp"
      />

      <Breadcrumbs />

      <div className="container mx-auto px-4 pt-8 pb-4">

        {/* Device Pricing Cards */}
        <div className="mb-16">
          <h2 className="text-3xl font-bold text-primary text-center mb-3">
            Ceník dle typu zařízení
          </h2>
          <p className="text-gray-600 text-center mb-12 max-w-2xl mx-auto">
            Výsledná cena závisí na typu poškození a komplexnosti případu. Kliknutím na kartu zobrazíte detailní rozpis cen.
          </p>

          <div className="grid gap-4 max-w-4xl mx-auto">
            {deviceCards.map((card, index) => {
              const isExpanded = expandedCards.includes(index);

              return (
                <button
                  key={index}
                  ref={(el) => (cardRefs.current[index] = el)}
                  onClick={() => toggleCard(index)}
                  className={`p-6 rounded-lg border-2 transition-all text-left ${
                    isExpanded
                      ? 'border-primary bg-primary/5'
                      : 'border-gray-200 hover:border-primary bg-gray-50'
                  }`}
                >
                  <div className="flex items-center justify-between mb-4">
                    <div className="flex items-center space-x-3">
                      <div className={`${isExpanded ? 'text-primary' : 'text-accent'}`}>
                        {card.icon}
                      </div>
                      <div>
                        <h3 className="text-xl font-semibold text-primary">{card.title}</h3>
                        <p className="text-sm text-gray-600">{card.description}</p>
                      </div>
                    </div>
                    {isExpanded ? (
                      <ChevronUp className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                    ) : (
                      <ChevronDown className="h-6 w-6 text-primary flex-shrink-0 ml-4" />
                    )}
                  </div>

                  {isExpanded && (
                    <div className="mt-6 space-y-4 border-t border-gray-200 pt-4" onClick={(e) => e.stopPropagation()}>
                      {/* Software Damage */}
                      <div className="bg-white rounded-lg p-4 border border-gray-200">
                        <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between mb-2 gap-2">
                          <div className="flex items-center space-x-2">
                            <Cpu className="h-5 w-5 text-accent flex-shrink-0" />
                            <h4 className="font-semibold text-gray-800">Softwarové poškození</h4>
                          </div>
                          <div className="text-primary font-bold whitespace-nowrap ml-7 sm:ml-0">
                            <span className="text-sm">od </span>
                            <span className="text-lg">{card.software.priceFrom}</span>
                          </div>
                        </div>
                        <p className="text-sm text-gray-600 ml-7">{card.software.description}</p>
                      </div>

                      {/* Hardware Damage */}
                      <div className="bg-white rounded-lg p-4 border border-gray-200">
                        <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between mb-2 gap-2">
                          <div className="flex items-center space-x-2">
                            <Wrench className="h-5 w-5 text-accent flex-shrink-0" />
                            <h4 className="font-semibold text-gray-800">Hardwarové závady</h4>
                          </div>
                          <div className="text-primary font-bold whitespace-nowrap ml-7 sm:ml-0">
                            <span className="text-sm">od </span>
                            <span className="text-lg">{card.hardware.priceFrom}</span>
                          </div>
                        </div>
                        <p className="text-sm text-gray-600 ml-7">{card.hardware.description}</p>
                      </div>

                      {/* Combined Damage */}
                      <div className="bg-white rounded-lg p-4 border border-gray-200">
                        <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between mb-2 gap-2">
                          <div className="flex items-center space-x-2">
                            <AlertCircle className="h-5 w-5 text-accent flex-shrink-0" />
                            <h4 className="font-semibold text-gray-800">Kombinované poškození</h4>
                          </div>
                          <div className="text-primary font-bold whitespace-nowrap ml-7 sm:ml-0">
                            <span className="text-sm">od </span>
                            <span className="text-lg">{card.combined.priceFrom}</span>
                          </div>
                        </div>
                        <p className="text-sm text-gray-600 ml-7">{card.combined.description}</p>
                      </div>

                      {/* CTA Button */}
                      <div className="mt-6 pt-4 border-t border-gray-200">
                        <Link
                          to="/order-diagnostics"
                          className="block bg-white border-2 border-primary text-primary px-6 py-3 rounded-lg font-semibold hover:bg-primary hover:text-white transition-all duration-200 flex items-center justify-center space-x-2"
                        >
                          <ClipboardList className="h-5 w-5" />
                          <span>Objednat diagnostiku</span>
                        </Link>
                      </div>
                    </div>
                  )}
                </button>
              );
            })}
          </div>
        </div>

        {/* FAQ Section */}
        <div className="mb-16">
          <h2 className="text-3xl font-bold text-primary text-center mb-8">
            {t('pricing.faq.title')}
          </h2>

          <div className="grid gap-4 max-w-4xl mx-auto">
            {faqItems.map((item, index) => {
              const isExpanded = expandedFaqItems.includes(index);

              return (
                <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden">
                  <button
                    onClick={() => toggleFaqItem(index)}
                    className="faq-button w-full p-6 flex items-center justify-between hover:bg-gray-50 transition-colors focus:outline-none text-left"
                  >
                    <h3 className="text-lg font-semibold text-primary pr-4 flex-1">{item.question}</h3>
                    {isExpanded ? (
                      <ChevronUp className="h-6 w-6 text-primary flex-shrink-0" />
                    ) : (
                      <ChevronDown className="h-6 w-6 text-primary flex-shrink-0" />
                    )}
                  </button>

                  <div className={`transition-all duration-300 overflow-hidden ${
                    isExpanded ? 'max-h-[500px] opacity-100' : 'max-h-0 opacity-0'
                  }`}>
                    <div className="px-6 pb-6 pt-2">
                      <p className="text-gray-600">{item.answer}</p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* Service Price List - Wrapped in Accordion */}
        <div className="mb-16">
          <div className="bg-white rounded-lg shadow-lg overflow-hidden">
            <button
              onClick={() => setIsServiceListExpanded(!isServiceListExpanded)}
              className="faq-button w-full p-4 sm:p-5 flex items-center justify-between hover:bg-gray-50 transition-colors focus:outline-none"
            >
              <div className="flex-1 min-w-0">
                <h2 className="text-lg sm:text-xl font-bold text-primary mb-1">
                  {t('pricing.serviceList.accordionTitle')}
                </h2>
                <p className="text-gray-600 text-xs sm:text-sm">
                  {t('pricing.serviceList.accordionSubtitle')}
                </p>
              </div>
              {isServiceListExpanded ? (
                <ChevronUp className="h-5 w-5 text-primary flex-shrink-0 ml-3" />
              ) : (
                <ChevronDown className="h-5 w-5 text-primary flex-shrink-0 ml-3" />
              )}
            </button>

            <div className={`transition-all duration-300 overflow-hidden ${
              isServiceListExpanded ? 'max-h-[5000px] opacity-100' : 'max-h-0 opacity-0'
            }`}>
              <div className="px-6 pb-6">
                <ServicePriceList sections={servicePriceSections} />

                {/* Price Calculator CTA */}
                <div className="mt-8 pt-6 border-t border-gray-200">
                  <Link
                    to="/price-calculator"
                    className="block bg-white border-2 border-primary text-primary px-8 py-4 rounded-lg font-semibold hover:bg-primary hover:text-white transition-all duration-200 flex items-center justify-center space-x-3 max-w-md mx-auto"
                  >
                    <Calculator className="h-6 w-6" />
                    <span className="text-lg">Cenová kalkulačka</span>
                  </Link>
                  <p className="text-center text-gray-600 text-sm mt-3">
                    Spočítejte si orientační cenu pro váš případ
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default PricingPage;
