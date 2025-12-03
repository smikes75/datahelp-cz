import React, { useState } from 'react';
import { Cpu, Calendar } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { Link } from 'react-router-dom';
import { AboutGallery } from '../components/AboutGallery';

interface TimelineItem {
  year: string;
  title: string;
  description: string;
}

function TimelineSection({ timelineItems }: { timelineItems: TimelineItem[] }) {
  const { t } = useTranslation();
  const [activeStep, setActiveStep] = useState<number | null>(null);

  return (
    <section className="py-6 md:py-12 bg-white">
      <div className="container mx-auto px-4">
        <div className="text-center mb-0 md:mb-8">
          <h2 className="text-3xl font-bold text-primary mb-2">
            {t('about.timeline.title')}
          </h2>
          <p className="text-gray-600">{t('about.timeline.subtitle')}</p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 pt-4 max-w-6xl mx-auto">
          {timelineItems.map((item, index) => (
            <div
              key={index}
              className="relative bg-gray-50 rounded-lg shadow-lg p-4 transition-all duration-300 hover:shadow-xl"
              onMouseEnter={() => setActiveStep(index)}
              onMouseLeave={() => setActiveStep(null)}
            >
              <div className="flex items-center space-x-3 mb-2">
                <Calendar className="h-6 w-6 text-accent flex-shrink-0" />
                <span className="text-2xl font-bold text-accent">{item.year}</span>
              </div>
              <h3 className="text-lg font-semibold text-primary mb-2">{item.title}</h3>
              <div className={`transition-all duration-300 ${
                activeStep === index ? 'opacity-100 max-h-20' : 'opacity-0 max-h-0'
              } overflow-hidden`}>
                <p className="text-gray-600 text-sm">{item.description}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

function AboutUsPage() {
  const { t } = useTranslation();
  const timelineItems = t('about.timeline.items', { returnObjects: true }) as TimelineItem[];

  const teamMembers = t('about.teamSection.members', { returnObjects: true }) as Array<{
    name: string;
    role: string;
    specialization: string;
    description: string;
  }>;

  return (
    <div className="min-h-screen bg-gray-50">
      <PageHeader
        title={t('about.title')}
        subtitle={t('about.subtitle')}
        backgroundImage="about-bg.webp"
      />
      <Breadcrumbs />

      <TimelineSection timelineItems={timelineItems} />

      <div className="bg-white">
        <AboutGallery />
      </div>

      <div className="bg-gray-50 py-16">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-bold text-primary mb-4">
              {t('about.teamSection.title')}
            </h2>
            <p className="text-gray-600 max-w-2xl mx-auto">
              {t('about.teamSection.subtitle')}
            </p>
          </div>

          <div className="hidden md:grid md:grid-cols-2 lg:grid-cols-3 gap-8 max-w-6xl mx-auto">
            {teamMembers.map((member, index) => (
              <div key={index} className="bg-white rounded-lg shadow-lg overflow-hidden hover:shadow-xl transition group">
                <div className="aspect-square bg-gradient-to-br from-primary/10 to-accent/10 flex items-center justify-center">
                  <img
                    src={`/images/team/member-${index + 1}.webp`}
                    alt={member.name}
                    className="w-full h-full object-cover group-hover:scale-105 transition duration-300"
                    loading="lazy"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-semibold text-primary mb-3">{member.name}</h3>
                  <p className="text-sm font-semibold text-gray-700 mb-2">{member.specialization}</p>
                  <p className="text-sm text-gray-600">{member.description}</p>
                </div>
              </div>
            ))}
          </div>

          <div className="md:hidden overflow-hidden">
            <div
              className="flex gap-4 overflow-x-auto snap-x snap-mandatory scrollbar-hide pb-4 px-4"
              style={{ scrollbarWidth: 'none', msOverflowStyle: 'none' }}
            >
              {teamMembers.map((member, index) => (
                <div key={index} className="flex-shrink-0 w-[80vw] snap-center">
                  <div className="bg-white rounded-lg shadow-lg overflow-hidden h-full">
                    <div className="aspect-square bg-gradient-to-br from-primary/10 to-accent/10 flex items-center justify-center">
                      <img
                        src={`/images/team/member-${index + 1}.webp`}
                        alt={member.name}
                        className="w-full h-full object-cover"
                        loading="lazy"
                      />
                    </div>
                    <div className="p-6">
                      <h3 className="text-xl font-semibold text-primary mb-3">{member.name}</h3>
                      <p className="text-sm font-semibold text-gray-700 mb-2">{member.specialization}</p>
                      <p className="text-sm text-gray-600">{member.description}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>

            <div className="flex justify-center gap-1.5 mt-4">
              {teamMembers.map((_, index) => (
                <div
                  key={index}
                  className="h-1.5 w-1.5 rounded-full bg-gray-300"
                />
              ))}
            </div>
          </div>
        </div>
      </div>

      <div className="container mx-auto px-4 py-16">
        <div className="bg-primary/5 rounded-lg p-8">
          <h2 className="text-2xl font-bold mb-6 text-primary text-center">
            {t('techPage.title')}
          </h2>
          <p className="text-gray-600 text-center max-w-3xl mx-auto mb-6">
            {t('techPage.subtitle')}
          </p>
          <div className="flex justify-center">
            <Link
              to={`/technology`}
              className="inline-flex items-center space-x-2 bg-primary text-white px-8 py-4 rounded-lg font-semibold hover:bg-primary-light transition"
            >
              <Cpu className="h-5 w-5" />
              <span>{t('techPage.learnMore')}</span>
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}

export default AboutUsPage;