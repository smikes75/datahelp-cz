import React, { useRef } from 'react';
import { useTranslation } from 'react-i18next';
import { LoadingSkeleton } from './LoadingSkeleton';

export function Gallery() {
  const { t } = useTranslation();
  const [isLoading, setIsLoading] = React.useState(true);
  const scrollContainerRef = useRef<HTMLDivElement>(null);

  React.useEffect(() => {
    const timer = setTimeout(() => setIsLoading(false), 600);
    return () => clearTimeout(timer);
  }, []);

  const images = [
    {
      url: "/images/gallery/clean-room.webp",
      alt: t('gallery.cleanRoom')
    },
    {
      url: "/images/gallery/diagnostics.webp",
      alt: t('gallery.diagnostics')
    },
    {
      url: "/images/gallery/server-room.webp",
      alt: t('gallery.serverRoom')
    },
    {
      url: "/images/gallery/data-center.webp",
      alt: t('gallery.dataCenter')
    }
  ];

  if (isLoading) {
    return (
      <section className="py-16">
        <div className="container mx-auto px-4">
          <div className="animate-pulse bg-gray-200 h-8 w-48 mx-auto rounded mb-12" />
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-4">
            {[...Array(4)].map((_, i) => (
              <LoadingSkeleton key={i} type="image" className="aspect-square" />
            ))}
          </div>
        </div>
      </section>
    );
  }

  return (
    <section className="py-16">
      <div className="container mx-auto px-4">
        <h2 className="text-3xl font-bold text-center mb-12 text-primary">{t('gallery.title')}</h2>

        {/* Desktop Grid */}
        <div className="hidden md:grid md:grid-cols-2 lg:grid-cols-4 gap-4">
          {images.map((image, index) => (
            <div key={index} className="relative aspect-square overflow-hidden rounded-lg shadow-lg group">
              <img
                src={image.url}
                alt={image.alt}
                className="w-full h-full object-cover transform transition duration-300 group-hover:scale-110"
              />
            </div>
          ))}
        </div>

        {/* Mobile Horizontal Scroll */}
        <div
          ref={scrollContainerRef}
          className="md:hidden flex gap-4 overflow-x-auto snap-x snap-mandatory scrollbar-hide px-4 -mx-4"
          style={{
            scrollbarWidth: 'none',
            msOverflowStyle: 'none',
            WebkitOverflowScrolling: 'touch'
          }}
        >
          {images.map((image, index) => (
            <div
              key={index}
              className="relative flex-shrink-0 w-[85vw] aspect-square overflow-hidden rounded-lg shadow-lg snap-center"
            >
              <img
                src={image.url}
                alt={image.alt}
                className="w-full h-full object-cover"
              />
            </div>
          ))}
        </div>

        {/* Mobile Scroll Indicator Dots */}
        <div className="md:hidden flex justify-center gap-2 mt-6">
          {images.map((_, index) => (
            <div
              key={index}
              className="w-2 h-2 rounded-full bg-gray-300"
            />
          ))}
        </div>
      </div>

      <style>{`
        .scrollbar-hide::-webkit-scrollbar {
          display: none;
        }
      `}</style>
    </section>
  );
}
