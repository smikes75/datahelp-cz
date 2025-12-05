import { Helmet } from 'react-helmet-async';

/**
 * Komponenta pro dynamické nastavení robots meta tagu
 * Blokuje indexaci na testovacích doménách (Netlify preview/branch deploye)
 */
export function RobotsMetaTag() {
  const isProduction = () => {
    const hostname = window.location.hostname;

    // Produkční doména
    if (hostname === 'www.datahelp.cz' || hostname === 'datahelp.cz') {
      return true;
    }

    // Localhost - povolit pro development
    if (hostname === 'localhost' || hostname === '127.0.0.1') {
      return true;
    }

    // Všechny ostatní domény (*.netlify.app, *.vercel.app, atd.) - blokovat
    return false;
  };

  const robotsContent = isProduction()
    ? 'index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1'
    : 'noindex, nofollow';

  return (
    <Helmet>
      <meta name="robots" content={robotsContent} />
      <meta name="googlebot" content={robotsContent} />
    </Helmet>
  );
}
