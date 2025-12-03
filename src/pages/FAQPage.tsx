import React from 'react';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { FAQ } from '../components/FAQ';
import { useTranslation } from 'react-i18next';
import { SEO } from '../components/SEO';

function FAQPage() {
  const { t } = useTranslation();
  const schema = {
    "@context": "https://schema.org",
    "@type": "FAQPage",
    "mainEntity": [
      {
        "@type": "Question",
        "name": t('faq.questions.q1'),
        "acceptedAnswer": {
          "@type": "Answer",
          "text": t('faq.questions.a1')
        }
      },
      {
        "@type": "Question",
        "name": t('faq.questions.q2'),
        "acceptedAnswer": {
          "@type": "Answer",
          "text": t('faq.questions.a2')
        }
      },
      {
        "@type": "Question",
        "name": t('faq.questions.q3'),
        "acceptedAnswer": {
          "@type": "Answer",
          "text": t('faq.questions.a3')
        }
      },
      {
        "@type": "Question",
        "name": t('faq.questions.q4'),
        "acceptedAnswer": {
          "@type": "Answer",
          "text": t('faq.questions.a4')
        }
      },
      {
        "@type": "Question",
        "name": t('faq.questions.q5'),
        "acceptedAnswer": {
          "@type": "Answer",
          "text": t('faq.questions.a5')
        }
      }
    ]
  };
  
  return (
    <div className="min-h-screen bg-gray-50">
      <SEO 
        title={`${t('faq.title')} | DataHelp.eu`}
        description={t('faq.subtitle')}
        keywords="data recovery faq, data recovery questions, hdd recovery faq, ssd recovery faq"
        canonical={`https://datahelp.eu/faq`}
        schema={schema}
      />
      
      <PageHeader
        title={t('faq.title')}
        subtitle={t('faq.subtitle')}
        backgroundImage="faq-bg.webp"
      />
      <Breadcrumbs />
      
      <div className="container mx-auto px-4 py-16">
        <div className="max-w-4xl mx-auto">
          <FAQ />
        </div>
      </div>
    </div>
  );
}

export default FAQPage;