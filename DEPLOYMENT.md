# Deployment Guide - Multi-domain Setup

This project supports two separate builds for different domains:
- **CZ version** (`datahelp.cz`) - Czech language only
- **EU version** (`datahelp.cz`) - English, German, Italian

## Build Commands

### Development
```bash
# Run CZ version locally
npm run dev:cz

# Run EU version locally
npm run dev:eu
```

### Production Builds
```bash
# Build CZ version only
npm run build:cz

# Build EU version only
npm run build:eu

# Build both versions
npm run build:all
```

## Configuration Files

### Site Configuration
- `config/site.cz.ts` - CZ version configuration
- `config/site.eu.ts` - EU version configuration
- `config/site.config.ts` - Active configuration loader

### Environment Files
- `.env.cz` - CZ version environment variables
- `.env.eu` - EU version environment variables
- `.env` - Default environment (EU)

## Deployment Setup

### Netlify (Recommended)

#### For CZ Version (datahelp.cz)
1. Create a new site on Netlify
2. Connect to your repository
3. Configure build settings:
   - **Build command:** `npm run build:cz`
   - **Publish directory:** `dist-cz`
   - **Environment variables:** Copy from `.env.cz`
4. Set custom domain to `datahelp.cz`

#### For EU Version (datahelp.cz)
1. Create another new site on Netlify
2. Connect to the same repository
3. Configure build settings:
   - **Build command:** `npm run build:eu`
   - **Publish directory:** `dist-eu`
   - **Environment variables:** Copy from `.env.eu`
4. Set custom domain to `datahelp.cz`

### Vercel

Similar setup to Netlify:
- Create two separate projects
- Set different build commands and output directories
- Configure custom domains

## Features per Version

### CZ Version
- Languages: Czech only
- Homepage: Map with opening hours (mobile), contact form (desktop)
- Contact info: Czech addresses and phone numbers
- Domain: datahelp.cz

### EU Version
- Languages: English, German, Italian
- Homepage: Contact form (all devices)
- Contact info: International format
- Domain: datahelp.cz

## Testing Locally

### Test CZ version:
```bash
npm run dev:cz
# Visit http://localhost:5173
# Language selector will show only Czech flag
```

### Test EU version:
```bash
npm run dev:eu
# Visit http://localhost:5173
# Language selector will show English, German, Italian flags
```

## Preview Builds

```bash
# Preview CZ build
npm run preview:cz

# Preview EU build
npm run preview:eu
```

## Important Notes

1. Each build contains only the necessary translations for that version
2. The language selector dynamically shows only available languages
3. Contact information (email, address) is automatically set per version
4. Both versions use the same Supabase database
5. Build outputs are separated: `dist-cz/` and `dist-eu/`
