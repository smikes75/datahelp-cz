import React from 'react';
import { getResponsiveImageUrl } from '../utils/imageUtils';

interface ImageProps extends React.ImgHTMLAttributes<HTMLImageElement> {
  src: string;
  alt: string;
  lazy?: boolean;
  sizes?: string;
  className?: string;
}

export function Image({ 
  src, 
  alt, 
  lazy = true, 
  sizes = "(max-width: 640px) 100vw, (max-width: 1024px) 50vw, 33vw",
  className,
  ...props 
}: ImageProps) {
  return (
    <img
      src={src}
      alt={alt}
      loading={lazy ? "lazy" : "eager"}
      decoding="async"
      sizes={sizes}
      srcSet={getResponsiveImageUrl(src)}
      className={className}
      {...props}
    />
  );
}