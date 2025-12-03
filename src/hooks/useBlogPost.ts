import { useState, useEffect } from 'react';
import { BlogPost } from '../types/blog';
import { getBlogPost } from '../utils/blog';

export function useBlogPost(slug: string, locale: string) {
  const [post, setPost] = useState<BlogPost | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<Error | null>(null);

  useEffect(() => {
    const fetchPost = async () => {
      try {
        setIsLoading(true);
        const fetchedPost = await getBlogPost(slug, locale);
        setPost(fetchedPost);
      } catch (err) {
        setError(err instanceof Error ? err : new Error('Failed to fetch blog post'));
      } finally {
        setIsLoading(false);
      }
    };

    fetchPost();
  }, [slug, locale]);

  return { post, isLoading, error };
}