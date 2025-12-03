import React from 'react';

interface LoadingSkeletonProps {
  type?: 'text' | 'card' | 'image' | 'list' | 'form' | 'page';
  lines?: number;
  className?: string;
}

export function LoadingSkeleton({ 
  type = 'text', 
  lines = 3, 
  className = '' 
}: LoadingSkeletonProps) {
  const baseClasses = "animate-pulse bg-gray-200 rounded";

  switch (type) {
    case 'card':
      return (
        <div className={`bg-white rounded-lg shadow-lg overflow-hidden ${className}`}>
          <div className={`${baseClasses} h-48 w-full`} />
          <div className="p-6 space-y-3">
            <div className={`${baseClasses} h-6 w-3/4`} />
            <div className={`${baseClasses} h-4 w-full`} />
            <div className={`${baseClasses} h-4 w-5/6`} />
          </div>
        </div>
      );

    case 'image':
      return <div className={`${baseClasses} aspect-video w-full ${className}`} />;

    case 'list':
      return (
        <div className={`space-y-4 ${className}`}>
          {[...Array(lines)].map((_, i) => (
            <div key={i} className="flex items-center space-x-4">
              <div className={`${baseClasses} h-12 w-12 rounded-full`} />
              <div className="flex-1 space-y-2">
                <div className={`${baseClasses} h-4 w-3/4`} />
                <div className={`${baseClasses} h-3 w-1/2`} />
              </div>
            </div>
          ))}
        </div>
      );

    case 'form':
      return (
        <div className={`space-y-6 ${className}`}>
          {[...Array(lines)].map((_, i) => (
            <div key={i} className="space-y-2">
              <div className={`${baseClasses} h-4 w-24`} />
              <div className={`${baseClasses} h-12 w-full`} />
            </div>
          ))}
          <div className={`${baseClasses} h-12 w-32`} />
        </div>
      );

    case 'page':
      return (
        <div className={`space-y-8 ${className}`}>
          {/* Header skeleton */}
          <div className="space-y-4">
            <div className={`${baseClasses} h-8 w-2/3`} />
            <div className={`${baseClasses} h-4 w-1/2`} />
          </div>
          
          {/* Content skeleton */}
          <div className="grid md:grid-cols-3 gap-6">
            {[...Array(3)].map((_, i) => (
              <div key={i} className="space-y-4">
                <div className={`${baseClasses} h-6 w-full`} />
                <div className={`${baseClasses} h-32 w-full`} />
                <div className="space-y-2">
                  <div className={`${baseClasses} h-4 w-full`} />
                  <div className={`${baseClasses} h-4 w-3/4`} />
                </div>
              </div>
            ))}
          </div>
        </div>
      );

    case 'text':
    default:
      return (
        <div className={`space-y-3 ${className}`}>
          {[...Array(lines)].map((_, i) => (
            <div 
              key={i} 
              className={`${baseClasses} h-4 ${
                i === lines - 1 ? 'w-3/4' : 'w-full'
              }`} 
            />
          ))}
        </div>
      );
  }
}

// Specialized skeleton components for common use cases
export function ServiceCardSkeleton() {
  return <LoadingSkeleton type="card" className="h-96" />;
}

export function CaseStudySkeleton() {
  return (
    <div className="bg-white rounded-lg shadow-lg overflow-hidden">
      <div className="md:flex">
        <div className="md:w-1/3">
          <LoadingSkeleton type="image" className="h-48 md:h-full" />
        </div>
        <div className="md:w-2/3 p-6">
          <LoadingSkeleton lines={1} className="mb-4" />
          <div className="grid md:grid-cols-3 gap-4 mb-6">
            {[...Array(3)].map((_, i) => (
              <LoadingSkeleton key={i} lines={1} />
            ))}
          </div>
          <LoadingSkeleton lines={6} />
        </div>
      </div>
    </div>
  );
}

export function ContactFormSkeleton() {
  return <LoadingSkeleton type="form" lines={4} />;
}

export function PageHeaderSkeleton() {
  return (
    <div className="bg-gray-200 animate-pulse">
      <div className="container mx-auto px-4 py-16">
        <div className="space-y-4">
          <div className="bg-gray-300 h-8 w-2/3 rounded" />
          <div className="bg-gray-300 h-4 w-1/2 rounded" />
        </div>
      </div>
    </div>
  );
}