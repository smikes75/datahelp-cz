import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import { ChevronRight, Home } from 'lucide-react';
import { useTranslation } from 'react-i18next';
import { generateBreadcrumbSchema } from '../utils/seo';
import { Helmet } from 'react-helmet-async';

interface BreadcrumbItem {
  name: string;
  path: string;
}

interface BreadcrumbsProps {
  children?: React.ReactNode;
  customItems?: BreadcrumbItem[];
}

export function Breadcrumbs({ children, customItems }: BreadcrumbsProps) {
  const location = useLocation();
  const { t } = useTranslation();
  // Generate breadcrumb items based on current path
  const generateBreadcrumbs = (): BreadcrumbItem[] => {
    const pathSegments = location.pathname.split('/').filter(Boolean);

    const breadcrumbs: BreadcrumbItem[] = [
      { name: t('nav.home'), path: '/' }
    ];

    let currentPath = '';
    
    pathSegments.forEach((segment) => {
      currentPath += `/${segment}`;
      
      // Map segments to readable names
      let name = segment;
      switch (segment) {
        case 'services':
          name = t('nav.services');
          break;
        case 'about':
          name = t('nav.about');
          break;
        case 'contact':
          name = t('nav.contact');
          break;
        case 'pricing':
          name = t('nav.pricing');
          break;
        case 'faq':
          name = 'FAQ';
          break;
        case 'hdd-recovery':
          name = t('services.hdd.title');
          break;
        case 'ssd-recovery':
          name = t('services.ssd.title');
          break;
        case 'raid-systems':
          name = t('services.raid.title');
          break;
        case 'business-solutions':
          name = t('services.business.title');
          break;
        case 'case-studies':
          name = t('caseStudies.title');
          break;
        case 'price-calculator':
          name = t('priceCalculator.title');
          break;
        case 'order-diagnostics':
          name = t('orderDiagnostics.title');
          break;
        case 'blog':
        case 'clanky':
          name = 'Blog';
          break;
        default:
          name = segment.charAt(0).toUpperCase() + segment.slice(1).replace('-', ' ');
      }
      
      breadcrumbs.push({ name, path: currentPath });
    });

    return breadcrumbs;
  };

  const breadcrumbs = customItems || generateBreadcrumbs();

  // Don't show breadcrumbs on home page
  if (breadcrumbs.length <= 1) {
    return null;
  }

  // Generate schema for breadcrumbs
  const breadcrumbSchema = generateBreadcrumbSchema(
    breadcrumbs.map(item => ({
      name: item.name,
      url: `https://datahelp.eu${item.path}`
    }))
  );

  return (
    <>
      <Helmet>
        <script type="application/ld+json">
          {JSON.stringify(breadcrumbSchema)}
        </script>
      </Helmet>

      <nav aria-label="Breadcrumb" className="bg-gray-50 py-3">
        <div className="container mx-auto px-4">
          <div className={children ? "flex items-center justify-between" : ""}>
            <ol className="flex items-center space-x-2 text-sm">
              {breadcrumbs.map((item, idx) => (
                <li key={item.path} className="flex items-center">
                  {idx > 0 && <ChevronRight className="h-4 w-4 text-gray-400 mx-2" />}
                  {idx === 0 && <Home className="h-4 w-4 mr-2 text-gray-500 flex-shrink-0 mt-0.5" />}
                  {idx === breadcrumbs.length - 1 ? (
                    <span className="text-gray-900 font-medium flex items-center leading-none" aria-current="page">
                      {item.name}
                    </span>
                  ) : (
                    <Link
                      to={item.path}
                      className="text-primary hover:text-accent transition-colors flex items-center leading-none"
                    >
                      {item.name}
                    </Link>
                  )}
                </li>
              ))}
            </ol>
            {children}
          </div>
        </div>
      </nav>
    </>
  );
}