import React, { Suspense, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { HelmetProvider } from 'react-helmet-async';
import { Header } from './components/Header';
import { Footer } from './components/Footer';
import { ScrollToTop } from './components/ScrollToTop';
import { SchemaOrg } from './components/SchemaOrg';
import { ErrorBoundary } from './components/ErrorBoundary';
import { Analytics } from './components/Analytics';
import { SkipToMain } from './components/SkipToMain';
import { ToastProvider } from './contexts/ToastContext';
import { CookieConsentProvider } from './contexts/CookieConsentContext';
import { CookieConsent } from './components/CookieConsent';
import { CookieSettings } from './components/CookieSettings';

// Lazy load pages with preloading
const HomePage = React.lazy(() => import('./pages/HomePage'));
const ServicesPage = React.lazy(() => import('./pages/ServicesPage'));
const AboutUsPage = React.lazy(() => import('./pages/AboutUsPage'));
const ContactPage = React.lazy(() => import('./pages/ContactPage'));
const PricingPage = React.lazy(() => import('./pages/PricingPage'));
const TechnologyPage = React.lazy(() => import('./pages/TechnologyPage'));
const FAQPage = React.lazy(() => import('./pages/FAQPage'));
const PriceCalculatorPage = React.lazy(() => import('./pages/PriceCalculatorPage'));
const OrderDiagnosticsPage = React.lazy(() => import('./pages/OrderDiagnosticsPage'));
const PrivacyPage = React.lazy(() => import('./pages/PrivacyPage'));
const TermsPage = React.lazy(() => import('./pages/TermsPage'));
const CookiesPage = React.lazy(() => import('./pages/CookiesPage'));
const NotFoundPage = React.lazy(() => import('./pages/NotFoundPage'));

// Lazy load service pages
const HDDRecoveryPage = React.lazy(() => import('./pages/services/HDDRecoveryPage'));
const HDDCaseStudies = React.lazy(() => import('./pages/services/HDDCaseStudies'));
const SSDRecoveryPage = React.lazy(() => import('./pages/services/SSDRecoveryPage'));
const SSDCaseStudies = React.lazy(() => import('./pages/services/SSDCaseStudies'));
const RAIDSystemsPage = React.lazy(() => import('./pages/services/RAIDSystemsPage'));
const RAIDCaseStudies = React.lazy(() => import('./pages/services/RAIDCaseStudies'));
const BusinessSolutionsPage = React.lazy(() => import('./pages/services/BusinessSolutionsPage'));

// Lazy load admin pages
const AdminPage = React.lazy(() => import('./pages/admin/AdminPage'));
const LoginPage = React.lazy(() => import('./pages/admin/LoginPage'));

// Lazy load blog page
const BlogPage = React.lazy(() => import('./pages/BlogPage'));
const BlogPostPage = React.lazy(() => import('./pages/BlogPostPage'));

// Debug page
const DebugEnv = React.lazy(() => import('./pages/DebugEnv'));

// Preload critical pages
const preloadPages = () => {
  // Preload most commonly visited pages
  import('./pages/ServicesPage');
  import('./pages/ContactPage');
  import('./pages/AboutUsPage');
  import('./pages/services/HDDRecoveryPage');
  import('./pages/services/SSDRecoveryPage');
  import('./pages/services/RAIDSystemsPage');
};

// Improved loading component
const PageLoader = () => {
  return (
    <div className="min-h-screen bg-gray-50">
      <div className="container mx-auto px-4 py-16">
        <div className="space-y-8 animate-pulse">
          {/* Header skeleton */}
          <div className="space-y-4">
            <div className="bg-gray-200 h-8 w-2/3 rounded" />
            <div className="bg-gray-200 h-4 w-1/2 rounded" />
          </div>
          
          {/* Content skeleton */}
          <div className="grid md:grid-cols-3 gap-6">
            {[...Array(3)].map((_, i) => (
              <div key={i} className="bg-white rounded-lg shadow-lg p-6 space-y-4">
                <div className="bg-gray-200 h-6 w-full rounded" />
                <div className="bg-gray-200 h-32 w-full rounded" />
                <div className="space-y-2">
                  <div className="bg-gray-200 h-4 w-full rounded" />
                  <div className="bg-gray-200 h-4 w-3/4 rounded" />
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
};

function App() {
  // Preload critical pages after initial load
  useEffect(() => {
    setTimeout(preloadPages, 1000);
  }, []);

  return (
    <ErrorBoundary>
      <HelmetProvider>
        <ToastProvider>
          <CookieConsentProvider>
            <Router>
              <Analytics />
              <SchemaOrg />
              <ScrollToTop />
              <SkipToMain />
              <div className="min-h-screen bg-white flex flex-col">
                <Header />
                <main id="main-content" className="flex-grow pt-[72px] pb-16 md:pb-0">
                  <ErrorBoundary>
                    <Suspense fallback={<PageLoader />}>
                      <Routes>
                        {/* Admin routes */}
                        <Route path="/admin" element={<AdminPage />} />
                        <Route path="/admin/login" element={<LoginPage />} />

                        {/* Main routes */}
                        <Route path="/" element={<HomePage />} />
                        <Route path="/services" element={<ServicesPage />} />
                        <Route path="/services/hdd-recovery" element={<HDDRecoveryPage />} />
                        <Route path="/services/hdd-recovery/case-studies" element={<HDDCaseStudies />} />
                        <Route path="/services/ssd-recovery" element={<SSDRecoveryPage />} />
                        <Route path="/services/ssd-recovery/case-studies" element={<SSDCaseStudies />} />
                        <Route path="/services/raid-systems" element={<RAIDSystemsPage />} />
                        <Route path="/services/raid-systems/case-studies" element={<RAIDCaseStudies />} />
                        <Route path="/services/business-solutions" element={<BusinessSolutionsPage />} />
                        <Route path="/about" element={<AboutUsPage />} />
                        <Route path="/technology" element={<TechnologyPage />} />
                        <Route path="/contact" element={<ContactPage />} />
                        <Route path="/pricing" element={<PricingPage />} />
                        <Route path="/price-calculator" element={<PriceCalculatorPage />} />
                        <Route path="/order-diagnostics" element={<OrderDiagnosticsPage />} />
                        <Route path="/terms" element={<TermsPage />} />
                        <Route path="/faq" element={<FAQPage />} />
                        <Route path="/privacy" element={<PrivacyPage />} />
                        <Route path="/cookies" element={<CookiesPage />} />
                        <Route path="/blog" element={<BlogPage />} />
                        <Route path="/blog/:slug" element={<BlogPostPage />} />
                        <Route path="/debug-env" element={<DebugEnv />} />
                        <Route path="*" element={<NotFoundPage />} />
                      </Routes>
                    </Suspense>
                  </ErrorBoundary>
                </main>
                <Footer />
              </div>
              {/* Cookie Consent Components */}
              <CookieConsent />
              <CookieSettings />
            </Router>
          </CookieConsentProvider>
        </ToastProvider>
      </HelmetProvider>
    </ErrorBoundary>
  );
}

export default App;