import Plausible from 'plausible-tracker';
import { onCLS, onFID, onLCP, onFCP, onTTFB } from 'web-vitals';

// Initialize Plausible
export const plausible = Plausible({
  domain: 'datahelp.cz',
  trackLocalhost: false,
  apiHost: 'https://plausible.io',
});

// Track page views
export const trackPageview = (url: string) => {
  if (import.meta.env.PROD) {
    plausible.trackPageview({
      url: `https://datahelp.cz${url}`,
    });
  }
};

// Track custom events
export const trackEvent = (eventName: string, props?: Record<string, string | number | boolean>) => {
  if (import.meta.env.PROD) {
    plausible.trackEvent(eventName, { props });
  }
};

// Performance monitoring
export const initPerformanceMonitoring = () => {
  // Core Web Vitals
  onCLS(metric => {
    console.log('CLS:', metric.value);
  });

  onFID(metric => {
    console.log('FID:', metric.value);
  });

  onLCP(metric => {
    console.log('LCP:', metric.value);
  });

  // Additional metrics
  onFCP(metric => {
    console.log('FCP:', metric.value);
  });

  onTTFB(metric => {
    console.log('TTFB:', metric.value);
  });
};

// User behavior tracking
export const trackUserBehavior = () => {
  // Track clicks
  document.addEventListener('click', (e) => {
    const target = e.target as HTMLElement;
    const clickableElements = ['button', 'a', 'input[type="submit"]'];
    
    if (clickableElements.some(selector => target.matches(selector))) {
      trackEvent('click', {
        element: target.tagName.toLowerCase(),
        text: target.textContent || '',
        path: window.location.pathname,
      });
    }
  });

  // Track form submissions
  document.addEventListener('submit', (e) => {
    const form = e.target as HTMLFormElement;
    trackEvent('form_submit', {
      formId: form.id || 'unknown',
      path: window.location.pathname,
    });
  });

  // Track scroll depth
  let maxScroll = 0;
  document.addEventListener('scroll', () => {
    const scrollPercentage = Math.round(
      (window.scrollY / (document.documentElement.scrollHeight - window.innerHeight)) * 100
    );
    
    if (scrollPercentage > maxScroll && scrollPercentage % 25 === 0) {
      maxScroll = scrollPercentage;
      trackEvent('scroll_depth', {
        percentage: scrollPercentage,
        path: window.location.pathname,
      });
    }
  });
};

// Error tracking
export const trackError = (error: Error, errorInfo?: Record<string, unknown>) => {
  if (import.meta.env.PROD) {
    console.error('Error:', error);
    console.error('Error Info:', errorInfo);
  } else {
    console.error('Error:', error);
    console.error('Error Info:', errorInfo);
  }
};