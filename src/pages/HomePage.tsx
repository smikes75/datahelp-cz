import React from 'react';
import { Hero } from '../components/Hero';
import { Gallery } from '../components/Gallery';
import { ProcessInfographic } from '../components/ProcessInfographic';
import { ElfsightReviews } from '../components/ElfsightReviews';
import { HomeContact } from '../components/HomeContact';
import { ScrollingBanner } from '../components/ScrollingBanner';
import { SEO } from '../components/SEO';
import { useSEO } from '../utils/seo';

function HomePage() {
  const seo = useSEO('home');

  // Enhanced schema for homepage
  const enhancedSchema = {
    ...seo.schema,
    "mainEntity": {
      "@type": "WebSite",
      "name": "DataHelp.cz",
      "url": "https://datahelp.cz",
      "potentialAction": {
        "@type": "SearchAction",
        "target": "https://datahelp.cz/search?q={search_term_string}",
        "query-input": "required name=search_term_string"
      }
    },
    "hasOfferCatalog": {
      "@type": "OfferCatalog",
      "name": "Data Recovery Services",
      "itemListElement": [
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "HDD Data Recovery",
            "description": "Professional hard drive data recovery service"
          },
          "priceSpecification": {
            "@type": "PriceSpecification",
            "priceCurrency": "CZK",
            "price": "8750"
          }
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service", 
            "name": "SSD Data Recovery",
            "description": "SSD and flash memory data recovery"
          },
          "priceSpecification": {
            "@type": "PriceSpecification",
            "priceCurrency": "CZK",
            "price": "6250"
          }
        }
      ]
    }
  };

  return (
    <>
      <SEO {...seo} schema={enhancedSchema} />
      <Hero />
      <ScrollingBanner />
      <Gallery />
      <ProcessInfographic />
      <ElfsightReviews />
      <HomeContact />
    </>
  );
}

export default HomePage;