import React from 'react';
import { HardDrive, CheckCircle, Clock, Banknote } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { PageHeader } from '../../components/PageHeader';
import { Breadcrumbs } from '../../components/Breadcrumbs';
import { Link } from 'react-router-dom';
import { getCaseStudies } from '../../utils/caseStudies';
import { CaseStudySkeleton } from '../../components/LoadingSkeleton';

function HDDCaseStudies() {
  const { t } = useTranslation();  const hddCases = getCaseStudies('hdd', 'cs');
  const [isLoading, setIsLoading] = React.useState(true);

  React.useEffect(() => {
    const timer = setTimeout(() => setIsLoading(false), 700);
    return () => clearTimeout(timer);
  }, []);

  const labels = {
    title: t('caseStudies.title'),
    subtitle: t('caseStudies.description'),
    problem: t('caseStudies.problem'),
    solution: t('caseStudies.solution'),
    result: t('caseStudies.result'),
    duration: t('caseStudies.duration'),
    recoveryRate: t('caseStudies.recoveryRate'),
    documentation: t('caseStudies.documentation'),
    contactUs: t('caseStudies.contactUs')
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <PageHeader
        title={labels.title}
        subtitle={labels.subtitle}
        backgroundImage="hdd-recovery.webp"
      />
      <Breadcrumbs />

      <div className="container mx-auto px-4 py-16">
        {isLoading ? (
          <div className="grid gap-8">
            {[...Array(3)].map((_, i) => (
              <CaseStudySkeleton key={i} />
            ))}
          </div>
        ) : (
          <div className="grid gap-8">
            {hddCases.map((study, index) => (
            <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden">
              <div className="md:flex">
                <div className="md:w-1/3">
                  <img
                    src={study.image}
                    alt={study.title}
                    className="h-full w-full object-cover"
                  />
                </div>
                <div className="md:w-2/3 p-6">
                  <h2 className="text-2xl font-bold text-primary mb-4">{study.title}</h2>
                  
                  <div className="grid md:grid-cols-3 gap-4 mb-6">
                    <div className="flex items-center space-x-2">
                      <Clock className="h-5 w-5 text-accent" />
                      <span>{labels.duration} {study.duration}</span>
                    </div>
                    <div className="flex items-center space-x-2">
                      <CheckCircle className="h-5 w-5 text-accent" />
                      <span>{labels.recoveryRate} {study.recoveryRate}</span>
                    </div>
                    <div className="flex items-center space-x-2">
                      <Banknote className="h-5 w-5 text-accent" />
                      <span>Cena: {index === 0 ? '13 000 Kč' : index === 1 ? '17 000 Kč' : '19 750 Kč'}</span>
                    </div>
                  </div>

                  <div className="space-y-4">
                    <div>
                      <h3 className="font-semibold text-lg text-primary">{labels.problem}</h3>
                      <p className="text-gray-600">{study.problem}</p>
                    </div>
                    <div>
                      <h3 className="font-semibold text-lg text-primary">{labels.solution}</h3>
                      <p className="text-gray-600">{study.solution}</p>
                    </div>
                    <div>
                      <h3 className="font-semibold text-lg text-primary">{labels.result}</h3>
                      <p className="text-gray-600">{study.result}</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            ))}
          </div>
        )}

        <div className="mt-12 text-center">
          <Link
            to={`/contact`}
            className="inline-flex items-center space-x-2 bg-primary text-white px-8 py-4 rounded-lg font-semibold hover:bg-primary-light transition"
          >
            <HardDrive className="h-5 w-5" />
            <span>{labels.contactUs}</span>
          </Link>
        </div>
      </div>
    </div>
  );
}

export default HDDCaseStudies;