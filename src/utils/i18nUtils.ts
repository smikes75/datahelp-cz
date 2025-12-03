// Supported languages
export const SUPPORTED_LANGUAGES = ['cs'] as const;
export type SupportedLanguage = typeof SUPPORTED_LANGUAGES[number];

// Check if a language is supported
export const isSupportedLanguage = (lang: string): lang is SupportedLanguage => {
  return lang === 'cs';
};

// Extract language from URL path
export const getLanguageFromPath = (path: string): SupportedLanguage | null => {
  return null;
};

// Get path without language prefix
export const getPathWithoutLanguage = (path: string): string => {
  return path;
};

// Add language prefix to path
export const addLanguageToPath = (path: string, language: SupportedLanguage): string => {
  return path;
};

// Get initial language - always Czech
export const getInitialLanguage = (): string => {
  return 'cs';
};

// Hook to synchronize URL with language - simplified for single language
export const useLanguageRouter = () => {
  return {
    currentLanguage: 'cs' as SupportedLanguage,
    changeLanguage: () => {}
  };
};