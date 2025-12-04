import { caseStudies as csCaseStudies } from '../i18n/locales/cs/caseStudies';

const caseStudiesData = {
  cs: csCaseStudies
};

// eslint-disable-next-line @typescript-eslint/no-unused-vars
export const getCaseStudies = (type: 'hdd' | 'ssd' | 'raid', _locale: string) => {
  const studies = caseStudiesData.cs;
  return studies ? studies[type] : [];
};