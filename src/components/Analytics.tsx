import { useEffect } from 'react';
import { useLocation } from 'react-router-dom';
import { trackPageview } from '../utils/monitoring';

export function Analytics() {
  const location = useLocation();

  useEffect(() => {
    // Track page view on route change
    trackPageview(location.pathname + location.search);
  }, [location]);

  return null;
}