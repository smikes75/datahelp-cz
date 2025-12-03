import React from 'react';
import { Rocket, Handshake, Users, Medal } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { Contact } from '../../components/Contact';
import { Breadcrumbs } from '../../components/Breadcrumbs';
import { SEO } from '../../components/SEO';

function BusinessSolutionsPage() {
  const { t } = useTranslation();

  const features = [
    {
      icon: <Users className="h-8 w-8 text-accent" />,
      title: t('services.business.features.support'),
      description: t('services.business.features.supportDesc')
    },
    {
      icon: <Medal className="h-8 w-8 text-accent" />,
      title: t('services.business.features.security'),
      description: t('services.business.features.securityDesc')
    },
    {
      icon: <Rocket className="h-8 w-8 text-accent" />,
      title: t('services.business.features.priority'),
      description: t('services.business.features.priorityDesc')
    }
  ];

  const salesTeam = [
    {
      name: "Ales Wagner",
      position: "Senior Account Manager",
      email: "wagner@datahelp.cz"
    },
    {
      name: "Lucie Cerna",
      position: "Business Development Manager",
      email: "cerna@datahelp.cz"
    }
  ];

  return (
    <div className="min-h-screen bg-gray-50">
      <SEO 
        title={`${t('services.business.title')} | DataHelp.cz`}
        description={t('services.business.desc')}
        keywords={t('services.business.keywords.recovery')}
        canonical="https://datahelp.cz/services/business-solutions"
        ogImage="/images/backgrounds/business-solutions.webp"
      />
      <div className="relative">
        <div
          className="absolute inset-0 bg-cover bg-center z-0"
          style={{
            backgroundImage: 'url("/images/backgrounds/business-solutions.webp")',
          }}
        >
          <div 
            className="absolute inset-0"
            style={{
              background: 'linear-gradient(to right, rgba(27, 56, 122, 1) 50%, rgba(27, 56, 122, 0) 100%)'
            }}
          ></div>
        </div>

        <div className="relative z-10 text-white py-16">
          <div className="container mx-auto px-4">
            <div className="flex items-center space-x-4 mb-6">
              <Handshake className="h-12 w-12" />
              <h1 className="text-4xl font-bold">{t('services.business.title')}</h1>
            </div>
            <p className="text-xl">{t('services.business.desc')}</p>
          </div>
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

        <div className="bg-white rounded-lg shadow-lg p-8">
          <div className="grid md:grid-cols-2 gap-8">
            <div>
              <h2 className="text-xl font-bold text-primary mb-8">{t('services.business.contact.salesTeam')}</h2>
              <div className="space-y-6">
                {salesTeam.map((member, index) => (
                  <div key={index} className="orange-alert-border">
                    <h3 className="font-semibold text-lg text-primary">{member.name}</h3>
                    <p className="text-gray-600 mb-2">{member.position}</p>
                    <a 
                      href={`mailto:${member.email}`} 
                      className="accent-text hover:text-accent-dark transition-colors"
                    >
                      {member.email}
                    </a>
                  </div>
                ))}
              </div>
            </div>
            
            <div>
              <h3 className="text-xl font-bold text-primary mb-6">{t('services.business.contact.leaveMessage')}</h3>
              <Contact />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default BusinessSolutionsPage;