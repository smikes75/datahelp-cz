import React from 'react';
import { useTranslation } from 'react-i18next';
import { ChevronDown } from 'lucide-react';
import { LoadingSkeleton } from './LoadingSkeleton';

export function AboutGallery() {
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = React.useState(true);
  const [currentIndex, setCurrentIndex] = React.useState(0);
  const [isAutoPlaying, setIsAutoPlaying] = React.useState(true);
  const [visibleCount, setVisibleCount] = React.useState(3);

  const images = [
    {
      url: "/images/about-gallery/team.webp",
      alt: t('gallery.aboutTeam')
    },
    {
      url: "/images/about-gallery/workspace.webp",
      alt: t('gallery.aboutWorkspace')
    },
    {
      url: "/images/about-gallery/technology.webp",
      alt: t('gallery.aboutTechnology')
    },
    {
      url: "/images/about-gallery/lab.webp",
      alt: t('gallery.aboutLab')
    },
    {
      url: "/images/about-gallery/expertise.webp",
      alt: t('gallery.aboutExpertise')
    }
  ];

  React.useEffect(() => {
    const timer = setTimeout(() => setIsLoading(false), 600);
    return () => clearTimeout(timer);
  }, []);

  React.useEffect(() => {
    if (!isAutoPlaying) return;

    const interval = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % images.length);
    }, 4000);

    return () => clearInterval(interval);
  }, [isAutoPlaying, images.length]);

  const goToSlide = (index: number) => {
    setIsAutoPlaying(false);
    setCurrentIndex(index);
  };

  const loadMore = () => {
    setVisibleCount(prev => Math.min(prev + 3, images.length));
  };

  if (isLoading) {
    return (
      <section className="py-16">
        <div className="container mx-auto px-4">
          <div className="animate-pulse bg-gray-200 h-8 w-48 mx-auto rounded mb-12" />
          <LoadingSkeleton type="image" className="aspect-video max-w-5xl mx-auto" />
        </div>
      </section>
    );
  }

  return (
    <section className="py-16 bg-gray-50">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-bold text-primary mb-4">{t('gallery.aboutTitle')}</h2>
          <p className="text-gray-600 max-w-2xl mx-auto">{t('gallery.aboutDescription')}</p>
        </div>

        <div className="hidden md:block relative max-w-5xl mx-auto">
          <div className="relative aspect-video overflow-hidden rounded-xl shadow-2xl">
            {images.map((image, index) => (
              <div
                key={index}
                className={`absolute inset-0 transition-opacity duration-700 ${
                  index === currentIndex ? 'opacity-100' : 'opacity-0'
                }`}
              >
                <img
                  src={image.url}
                  alt={image.alt}
                  className="w-full h-full object-cover"
                />
              </div>
            ))}
          </div>

          <div className="flex justify-center gap-1.5 mt-4">
            {images.map((_, index) => (
              <button
                key={index}
                onClick={() => goToSlide(index)}
                className={`h-1.5 rounded-full transition-all ${
                  index === currentIndex
                    ? 'w-6 bg-primary'
                    : 'w-1.5 bg-gray-300 hover:bg-gray-400'
                }`}
                aria-label={`Go to image ${index + 1}`}
              />
            ))}
          </div>
        </div>

        <div className="md:hidden overflow-hidden">
          <div
            className="flex gap-4 overflow-x-auto snap-x snap-mandatory scrollbar-hide pb-4"
            style={{ scrollbarWidth: 'none', msOverflowStyle: 'none' }}
          >
            {images.map((image, index) => (
              <div key={index} className="flex-shrink-0 w-[85vw] snap-center">
                <div className="relative aspect-video overflow-hidden rounded-lg shadow-lg">
                  <img
                    src={image.url}
                    alt={image.alt}
                    className="w-full h-full object-cover"
                  />
                </div>
              </div>
            ))}
          </div>

          <div className="flex justify-center gap-1.5 mt-4">
            {images.map((_, index) => (
              <div
                key={index}
                className="h-1.5 w-1.5 rounded-full bg-gray-300"
              />
            ))}
          </div>
        </div>
      </div>
    </section>
  );
}
