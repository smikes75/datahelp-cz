import { BlogPost } from '../types/blog';

export function generateArticleSchema(post: BlogPost, canonical: string) {
  const schema = {
    '@context': 'https://schema.org',
    '@type': 'BlogPosting',
    headline: post.title,
    description: post.seoDescription || post.excerpt,
    image: {
      '@type': 'ImageObject',
      url: post.coverImage.startsWith('http')
        ? post.coverImage
        : `https://datahelp.cz${post.coverImage}`,
      width: 1200,
      height: 630,
    },
    datePublished: post.date,
    dateModified: post.date,
    author: {
      '@type': 'Person',
      name: post.author,
      url: 'https://datahelp.cz/o-nas',
    },
    publisher: {
      '@type': 'Organization',
      name: 'DataHelp.cz',
      url: 'https://datahelp.cz',
      logo: {
        '@type': 'ImageObject',
        url: 'https://datahelp.cz/DataHelp.cz.png',
        width: 600,
        height: 60,
      },
    },
    mainEntityOfPage: {
      '@type': 'WebPage',
      '@id': canonical,
    },
    articleSection: post.categories?.[0]?.name_cs || 'Blog',
    keywords: post.tags.join(', '),
    wordCount: estimateWordCount(post.content),
    inLanguage: post.locale,
  };

  if (post.readingTime) {
    Object.assign(schema, {
      timeRequired: `PT${post.readingTime}M`,
    });
  }

  return schema;
}

export function generateBreadcrumbSchema(items: Array<{ name: string; url: string }>) {
  return {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map((item, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name: item.name,
      item: item.url,
    })),
  };
}

function estimateWordCount(htmlContent: string): number {
  const text = htmlContent.replace(/<[^>]*>/g, ' ');
  const words = text.trim().split(/\s+/);
  return words.filter(word => word.length > 0).length;
}
