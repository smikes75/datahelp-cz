import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import App from './App.tsx';
import './index.css';
import './i18n';
import { initPerformanceMonitoring, trackUserBehavior } from './utils/monitoring';
import { preloadCriticalImages } from './utils/imageUtils';
import { suppressResizeObserverErrors } from './utils/browserUtils';

// Initialize monitoring
initPerformanceMonitoring();
trackUserBehavior();

// Preload critical images
preloadCriticalImages();

// Suppress ResizeObserver warnings
suppressResizeObserverErrors();

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <App />
  </StrictMode>
);