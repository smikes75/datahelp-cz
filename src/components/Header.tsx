import React from 'react';
import { Menu, X } from 'lucide-react';
import { useState, useEffect } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { useTranslation } from 'react-i18next';
import { Logo } from './Logo';

export function Header() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [isScrolled, setIsScrolled] = useState(false);
  const [isVisible, setIsVisible] = useState(true);
  const [lastScrollY, setLastScrollY] = useState(0);
  const location = useLocation();
  const { t } = useTranslation();

  useEffect(() => {
    setIsMenuOpen(false);
  }, [location.pathname]);

  useEffect(() => {
    const handleScroll = () => {
      const currentScrollY = window.scrollY;
      
      setIsScrolled(currentScrollY > 0);
      
      // Hide header when scrolling down, show when scrolling up
      if (currentScrollY > lastScrollY && currentScrollY > 100) {
        setIsVisible(false);
      } else {
        setIsVisible(true);
      }
      
      setLastScrollY(currentScrollY);
    };

    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, [lastScrollY]);

  const isActive = (path: string) => {
    return location.pathname === path ? "text-accent font-bold" : "text-gray-700 hover:text-accent font-bold";
  };

  return (
    <header className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${
      isScrolled ? 'bg-white/95 backdrop-blur-sm shadow-lg' : 'bg-white shadow-md'
    } ${
      isVisible ? 'translate-y-0' : '-translate-y-full'
    }`}>
      <nav className="container mx-auto px-4 py-2">
        <div className="flex items-center justify-between">
          <Logo />

          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center space-x-8">
            <Link to="/" className={`${isActive("/")} header-nav-link`}>{t('nav.home')}</Link>
            <Link to="/about" className={`${isActive("/about")} header-nav-link`}>{t('nav.about')}</Link>
            <Link to="/pricing" className={`${isActive("/pricing")} header-nav-link`}>{t('nav.pricing')}</Link>
            <Link to="/blog" className={`${isActive("/blog")} header-nav-link`}>Blog</Link>
            <Link to="/faq" className={`${isActive("/faq")} header-nav-link`}>FAQ</Link>
            <Link to="/contact" className={`${isActive("/contact")} header-nav-link`}>{t('nav.contact')}</Link>
          </div>

          {/* Mobile Menu Button */}
          <div className="md:hidden flex items-center">
            <button
              onClick={() => setIsMenuOpen(!isMenuOpen)}
              aria-label={t('accessibility.toggleMenu')}
              className="text-primary hover:text-accent transition-colors"
            >
              {isMenuOpen ? <X /> : <Menu />}
            </button>
          </div>
        </div>

        {/* Mobile Navigation */}
        {isMenuOpen && (
          <div className="md:hidden mt-4 space-y-4 pb-4">
            <Link to="/" className={`block font-bold ${isActive("/")} header-nav-link`}>{t('nav.home')}</Link>
            <Link to="/about" className={`block font-bold ${isActive("/about")} header-nav-link`}>{t('nav.about')}</Link>
            <Link to="/pricing" className={`block font-bold ${isActive("/pricing")} header-nav-link`}>{t('nav.pricing')}</Link>
            <Link to="/blog" className={`block font-bold ${isActive("/blog")} header-nav-link`}>Blog</Link>
            <Link to="/faq" className={`block font-bold ${isActive("/faq")} header-nav-link`}>FAQ</Link>
            <Link to="/contact" className={`block font-bold ${isActive("/contact")} header-nav-link`}>{t('nav.contact')}</Link>
          </div>
        )}
      </nav>
    </header>
  );
}