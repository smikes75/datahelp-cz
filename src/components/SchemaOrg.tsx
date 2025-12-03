import React from 'react';
import { Helmet } from 'react-helmet-async';

export function SchemaOrg() {
  const schema = {
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    "name": "DataHelp.eu",
    "image": "https://datahelp.eu/DataHelp.eu.png",
    "description": "Profesionální obnova dat z poškozených médií - HDD, SSD, RAID systémy. Více než 20 let zkušeností.",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "Jirsíkova 541/1",
      "addressLocality": "Praha",
      "postalCode": "186 00",
      "addressCountry": "CZ"
    },
    "geo": {
      "@type": "GeoCoordinates",
      "latitude": 50.0922,
      "longitude": 14.4507
    },
    "url": "https://datahelp.eu",
    "telephone": "+420-608-966-985",
    "priceRange": "KčKč",
    "openingHoursSpecification": {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": [
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday"
      ],
      "opens": "09:00",
      "closes": "18:00"
    },
    "areaServed": ["CZ", "SK", "DE", "AT"],
    "inLanguage": "cs",
    "hasOfferCatalog": {
      "@type": "OfferCatalog",
      "name": "Služby záchrany dat",
      "itemListElement": [
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Obnova dat z HDD",
            "description": "Profesionální záchrana dat z poškozených pevných disků"
          },
          "price": "8750",
          "priceCurrency": "CZK"
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Obnova dat z SSD",
            "description": "Záchrana dat z SSD disků a flash pamětí"
          },
          "price": "6250",
          "priceCurrency": "CZK"
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Obnova RAID systémů",
            "description": "Záchrana dat z poškozených RAID polí a NAS serverů"
          }
        },
        {
          "@type": "Offer",
          "itemOffered": {
            "@type": "Service",
            "name": "Firemní řešení",
            "description": "Komplexní řešení pro firemní zákazníky"
          }
        }
      ]
    },
    "aggregateRating": {
      "@type": "AggregateRating",
      "ratingValue": "4.9",
      "reviewCount": "150",
      "bestRating": "5",
      "worstRating": "1"
    }
  };

  return (
    <Helmet>
      <script type="application/ld+json">
        {JSON.stringify(schema)}
      </script>
    </Helmet>
  );
}
