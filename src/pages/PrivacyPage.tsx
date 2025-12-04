import React from 'react';
import { useTranslation } from 'react-i18next';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { Shield, Lock, Database, Users, FileText, Mail } from 'lucide-react';
import { SEO } from '../components/SEO';

function PrivacyPage() {
  const { t } = useTranslation();

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO
        title={`${t('privacy.title')} | DataHelp.cz`}
        description="Informace o zpracování a ochraně vašich osobních údajů v souladu s GDPR. Transparentní přístup k ochraně soukromí."
        keywords="ochrana osobních údajů, gdpr, soukromí, bezpečnost dat, zpracování údajů"
        canonical="https://datahelp.cz/privacy"
      />
      <PageHeader
        title={t('privacy.title')}
        subtitle={t('privacy.subtitle')}
      />
      <Breadcrumbs />

      <div className="container mx-auto px-4 py-12">
        <div className="max-w-4xl mx-auto">

          {/* Intro Section */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="flex items-start space-x-4 mb-4">
              <Shield className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.intro.title')}</h2>
                <p className="text-gray-700 leading-relaxed">{t('privacy.intro.content')}</p>
              </div>
            </div>
          </div>

          {/* Legal Framework */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="flex items-start space-x-4 mb-4">
              <FileText className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.legalFramework.title')}</h2>
                <p className="text-gray-700 leading-relaxed">{t('privacy.legalFramework.content')}</p>
              </div>
            </div>
          </div>

          {/* Data Collection */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="flex items-start space-x-4 mb-4">
              <Database className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.dataCollection.title')}</h2>
                <p className="text-gray-700 leading-relaxed mb-4">{t('privacy.dataCollection.content')}</p>
                <ul className="list-disc list-inside space-y-2 text-gray-700">
                  {(t('privacy.dataCollection.types', { returnObjects: true }) as string[] || []).map((type: string, index: number) => (
                    <li key={index}>{type}</li>
                  ))}
                </ul>
              </div>
            </div>
          </div>

          {/* Processing Purposes */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.processingPurposes.title')}</h2>
            <p className="text-gray-700 leading-relaxed mb-6">{t('privacy.processingPurposes.content')}</p>
            <div className="space-y-6">
              {(t('privacy.processingPurposes.purposes', { returnObjects: true }) as Array<{ title: string; content: string }> || []).map((purpose, index: number) => (
                <div key={index} className="border-l-4 border-accent pl-4">
                  <h3 className="text-lg font-semibold text-primary mb-2">{purpose.title}</h3>
                  <p className="text-gray-700 leading-relaxed">{purpose.content}</p>
                </div>
              ))}
            </div>
          </div>

          {/* Third Parties */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="flex items-start space-x-4 mb-4">
              <Users className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.thirdParties.title')}</h2>
                <p className="text-gray-700 leading-relaxed">{t('privacy.thirdParties.content')}</p>
              </div>
            </div>
          </div>

          {/* Retention */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <div className="flex items-start space-x-4 mb-4">
              <Lock className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.retention.title')}</h2>
                <p className="text-gray-700 leading-relaxed">{t('privacy.retention.content')}</p>
              </div>
            </div>
          </div>

          {/* Rights */}
          <div className="bg-white rounded-lg shadow-lg p-8 mb-8">
            <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.rights.title')}</h2>
            <p className="text-gray-700 leading-relaxed mb-6">{t('privacy.rights.intro')}</p>
            <div className="space-y-6">
              {(t('privacy.rights.items', { returnObjects: true }) as Array<{ title: string; content: string }> || []).map((right, index: number) => (
                <div key={index} className="border-l-4 border-primary pl-4">
                  <h3 className="text-lg font-semibold text-primary mb-2">{right.title}</h3>
                  <p className="text-gray-700 leading-relaxed">{right.content}</p>
                </div>
              ))}
            </div>
          </div>

          {/* Contact */}
          <div className="bg-primary/5 rounded-lg p-8">
            <div className="flex items-start space-x-4 mb-4">
              <Mail className="h-8 w-8 text-accent flex-shrink-0 mt-1" />
              <div>
                <h2 className="text-2xl font-bold text-primary mb-4">{t('privacy.contact.title')}</h2>
                <p className="text-gray-700 leading-relaxed mb-4">{t('privacy.contact.content')}</p>
                <div className="space-y-2">
                  <p className="text-gray-700">
                    <strong>Adresa:</strong><br />
                    {t('privacy.contact.address')}
                  </p>
                  <p className="text-gray-700">
                    <strong>E-mail:</strong> <a href={`mailto:${t('privacy.contact.email')}`} className="text-accent hover:text-accent-dark">{t('privacy.contact.email')}</a>
                  </p>
                  <p className="text-gray-700 mt-4 text-sm italic">
                    {t('privacy.contact.responseTime')}
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

export default PrivacyPage;
