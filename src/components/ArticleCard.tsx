import React from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight } from 'lucide-react';

interface ArticleCardProps {
  title: string;
  excerpt: string;
  imageUrl: string;
  slug: string;
}

export const ArticleCard: React.FC<ArticleCardProps> = ({
  title,
  excerpt,
  imageUrl,
  slug
}) => {
  return (
    <div className="bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300">
      <div className="aspect-[4/3] bg-gray-300 rounded-t-lg overflow-hidden">
        <img
          src={imageUrl}
          alt={title}
          className="w-full h-full object-cover"
          loading="lazy"
        />
      </div>

      <div className="p-6">
        <h3 className="text-lg font-semibold text-[#1f2937] mb-3">
          {title}
        </h3>

        <p className="text-gray-600 text-sm mb-4 line-clamp-3">
          {excerpt}
        </p>

        <Link
          to={`/blog/${slug}`}
          className="inline-flex items-center gap-2 text-[#1e3a5f] hover:text-[#2c5282] font-medium transition-colors"
        >
          Zjistit více
          <ArrowRight size={16} />
        </Link>
      </div>
    </div>
  );
};
