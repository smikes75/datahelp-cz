import React from 'react';
import { useTranslation } from 'react-i18next';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { FileText, ClipboardCheck, DollarSign, XCircle, Truck, Package, Shield, Users } from 'lucide-react';
import { SEO } from '../components/SEO';

function TermsPage() {
  const { t } = useTranslation();

  const sectionIcons: { [key: string]: any } = {
    introductory: <FileText className="h-8 w-8 text-accent" />,
    contractFormation: <ClipboardCheck className="h-8 w-8 text-accent" />,
    pricing: <DollarSign className="h-8 w-8 text-accent" />,
    withdrawal: <XCircle className="h-8 w-8 text-accent" />,
    transport: <Truck className="h-8 w-8 text-accent" />,
    workCompletion: <Package className="h-8 w-8 text-accent" />,
    additionalRights: <Shield className="h-8 w-8 text-accent" />,
    dataProtection: <Users className="h-8 w-8 text-accent" />
  };

  const sections = Object.entries(t('terms.sections', { returnObjects: true }) || {});

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO
        title={`${t('terms.title')} | DataHelp.cz`}
        description="Všeobecné obchodní podmínky společnosti DataHelp pro záchran dat."
        keywords="obchodní podmínky, záchrana dat, smlouva o dílo, reklamace"
        canonical="https://datahelp.cz/terms"
      />
      <PageHeader
        title={t('terms.title')}
        subtitle={t('terms.subtitle')}
      />
      <Breadcrumbs />

      <div className="container mx-auto px-4 py-12">
        <div className="max-w-4xl mx-auto">

          {/* Last Updated Info */}
          <div className="bg-white rounded-lg shadow-lg p-6 mb-8 text-center">
            <p className="text-gray-700">
              {t('terms.lastUpdated')}
            </p>
            <p className="text-gray-600 text-sm mt-2">
              {t('terms.company')}
            </p>
            <p className="text-gray-600 text-sm">
              {t('terms.representative')}
            </p>
          </div>

          {/* All Sections */}
          {sections.map(([key, section]: [string, any]) => (
            <div key={key} className="bg-white rounded-lg shadow-lg p-8 mb-8">
              <div className="flex items-start space-x-4 mb-4">
                <div className="flex-shrink-0 mt-1">
                  {sectionIcons[key]}
                </div>
                <div className="flex-1">
                  <h2 className="text-2xl font-bold text-primary mb-6">{section.title}</h2>

                  {/* Special handling for dataProtection section */}
                  {key === 'dataProtection' && section.intro && (
                    <p className="text-gray-700 leading-relaxed mb-6 italic">
                      {section.intro}
                    </p>
                  )}

                  {/* Section Items */}
                  {section.items && (
                    <div className="space-y-4">
                      {section.items.map((item: string, index: number) => (
                        <div key={index} className="border-l-4 border-accent/30 pl-4">
                          <p className="text-gray-700 leading-relaxed text-justify">
                            {item}
                          </p>
                        </div>
                      ))}
                    </div>
                  )}

                  {/* Contact info for dataProtection */}
                  {key === 'dataProtection' && section.contact && (
                    <div className="mt-6 bg-primary/5 rounded-lg p-6">
                      <h3 className="text-lg font-semibold text-primary mb-4">{section.contact.title}</h3>
                      <div className="space-y-2">
                        <p className="text-gray-700">
                          <strong>Adresa:</strong><br />
                          {section.contact.address}
                        </p>
                        <p className="text-gray-700">
                          <strong>E-mail:</strong> <a href={`mailto:${section.contact.email}`} className="text-accent hover:text-accent-dark">{section.contact.email}</a>
                        </p>
                        <p className="text-gray-700 text-sm italic mt-4">
                          {section.contact.responseTime}
                        </p>
                      </div>
                    </div>
                  )}
                </div>
              </div>
            </div>
          ))}

          {/* Footer Note */}
          <div className="bg-primary/5 rounded-lg p-6 text-center">
            <p className="text-gray-700">
              Pro více informací o ochraně osobních údajů navštivte naši stránku{' '}
              <a href="/privacy" className="text-accent hover:text-accent-dark font-semibold">
                Ochrana osobních údajů
              </a>
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default TermsPage;
