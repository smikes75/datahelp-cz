import React, { useState, useEffect } from 'react';
import { ArticleCard } from '../components/ArticleCard';
import { PageHeader } from '../components/PageHeader';
import { Breadcrumbs } from '../components/Breadcrumbs';
import { LoadingSpinner } from '../components/LoadingSpinner';
import { Pagination } from '../components/Pagination';
import { getPaginatedBlogPosts } from '../utils/blog';
import { BlogPost } from '../types/blog';

const BlogPage: React.FC = () => {
  const [activeCategory, setActiveCategory] = useState('all');
  const [currentPage, setCurrentPage] = useState(1);
  const [articles, setArticles] = useState<BlogPost[]>([]);
  const [loading, setLoading] = useState(true);
  const [totalPages, setTotalPages] = useState(0);
  const articlesPerPage = 6;

  const categories = [
    { id: 'all', name: 'Vše' },
    { id: 'zalohovani-dat', name: 'Zálohování dat' },
    { id: 'prvni-pomoc', name: 'První pomoc' },
    { id: 'technologie', name: 'Technologie' },
    { id: 'nase-aktivity', name: 'Naše aktivity' }
  ];

  useEffect(() => {
    const loadArticles = async () => {
      setLoading(true);
      const result = await getPaginatedBlogPosts({
        category: activeCategory === 'all' ? undefined : activeCategory,
        page: currentPage,
        limit: articlesPerPage,
        locale: 'cs'
      });
      setArticles(result.posts);
      setTotalPages(result.totalPages);
      setLoading(false);
    };

    loadArticles();
  }, [activeCategory, currentPage]);

  const handleCategoryChange = (categoryId: string) => {
    setActiveCategory(categoryId);
    setCurrentPage(1);
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <PageHeader
        title="Blog"
        subtitle="Odborné články, průvodce a novinky z oblasti záchrany dat"
        backgroundImage="services-bg.webp"
      />
      <Breadcrumbs />

      {/* Main Content */}
      <main className="py-8">
        <div className="container mx-auto px-4">
          {/* Category Filter */}
          <div className="flex gap-3 flex-wrap mb-8">
            {categories.map((category) => (
              <button
                key={category.id}
                onClick={() => handleCategoryChange(category.id)}
                className={`px-6 py-2 rounded-lg border-2 transition-all ${
                  activeCategory === category.id
                    ? 'bg-primary text-white border-primary'
                    : 'bg-white text-primary border-primary hover:bg-primary/5'
                }`}
              >
                {category.name}
              </button>
            ))}
          </div>

          {loading ? (
            <div className="flex justify-center py-20">
              <LoadingSpinner size="lg" />
            </div>
          ) : (
            <>
              {/* Articles Grid */}
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                {articles.map((article) => (
                  <ArticleCard
                    key={article.slug}
                    title={article.title}
                    excerpt={article.excerpt}
                    imageUrl={article.coverImage}
                    slug={article.slug}
                  />
                ))}
              </div>

              {/* Pagination */}
              {totalPages > 1 && (
                <Pagination
                  currentPage={currentPage}
                  totalPages={totalPages}
                  onPageChange={setCurrentPage}
                />
              )}
            </>
          )}
        </div>
      </main>
    </div>
  );
};

export default BlogPage;
