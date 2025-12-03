export const getBackgroundStyle = (imagePath: string) => ({
  backgroundImage: `url("${imagePath}")`,
  backgroundPosition: 'center',
  backgroundSize: 'cover',
  backgroundRepeat: 'no-repeat',
  backgroundColor: '#1B387A' // Fallback barva
});

// Background images for different sections
export const backgroundImages = {
  about: '/images/backgrounds/about-bg.webp',
  business: '/images/backgrounds/business-solutions.webp',
  contact: '/images/backgrounds/contact-bg.webp',
  hdd: '/images/backgrounds/hdd-recovery.webp',
  pricing: '/images/backgrounds/pricing-bg.webp',
  raid: '/images/backgrounds/raid-recovery.webp',
  services: '/images/backgrounds/services-bg.webp',
  ssd: '/images/backgrounds/ssd-recovery.webp',
  home: '/images/backgrounds/home-bg.webp'
};

// Gallery images
export const galleryImages = {
  cleanRoom: '/images/gallery/clean-room.webp',
  dataCenter: '/images/gallery/data-center.webp',
  diagnostics: '/images/gallery/diagnostics.webp',
  serverRoom: '/images/gallery/server-room.webp'
};

export const getResponsiveImageUrl = (url: string) => {
  if (!url.startsWith('http')) return url;

  const sizes = [320, 640, 768, 1024, 1280, 1536];
  return sizes.map(size => {
    const params = new URLSearchParams({
      auto: 'format,compress',
      fit: 'crop',
      w: size.toString(),
      q: '80'
    });
    return `${url}?${params.toString()} ${size}w`;
  }).join(', ');
};

// Preload critical images
export const preloadCriticalImages = () => {
  const criticalImages = [
    backgroundImages.home,
    '/DataHelp.eu.svg'
  ];

  criticalImages.forEach(imagePath => {
    const link = document.createElement('link');
    link.rel = 'preload';
    link.as = 'image';
    link.href = imagePath;
    document.head.appendChild(link);
  });
};