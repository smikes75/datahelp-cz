import { caseStudies as csCaseStudies } from '../i18n/locales/cs/caseStudies';

const caseStudiesData = {
  cs: csCaseStudies
};

export const getCaseStudies = (type: 'hdd' | 'ssd' | 'raid', locale: string) => {
  const studies = caseStudiesData.cs;
  return studies ? studies[type] : [];
};