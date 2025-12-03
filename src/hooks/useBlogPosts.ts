import { useState, useEffect } from 'react';
import { BlogPost } from '../types/blog';
import { getBlogPosts } from '../utils/blog';

export function useBlogPosts(locale: string) {
  const [posts, setPosts] = useState<BlogPost[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<Error | null>(null);

  useEffect(() => {
    const fetchPosts = async () => {
      try {
        setIsLoading(true);
        const fetchedPosts = await getBlogPosts(locale);
        setPosts(fetchedPosts);
      } catch (err) {
        setError(err instanceof Error ? err : new Error('Failed to fetch blog posts'));
      } finally {
        setIsLoading(false);
      }
    };

    fetchPosts();
  }, [locale]);

  return { posts, isLoading, error };
}