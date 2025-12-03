import React from 'react';
import { useTranslation } from 'react-i18next';
import { supabase } from '../../utils/supabaseClient';
import { formatDate } from '../../utils/date';
import { Check, X, RefreshCw } from 'lucide-react';

interface ContactForm {
  id: string;
  name: string;
  email: string;
  phone: string;
  message: string;
  created_at: string;
  processed: boolean;
}

export function AdminContactForms() {
  const { t } = useTranslation();
  const [forms, setForms] = React.useState<ContactForm[]>([]);
  const [loading, setLoading] = React.useState(true);
  const [error, setError] = React.useState<string | null>(null);

  const fetchForms = async () => {
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from('contact_forms')
        .select('*')
        .order('created_at', { ascending: false });

      if (error) throw error;
      setForms(data);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to fetch forms');
    } finally {
      setLoading(false);
    }
  };

  React.useEffect(() => {
    fetchForms();
  }, []);

  const toggleProcessed = async (id: string, currentStatus: boolean) => {
    try {
      const { error } = await supabase
        .from('contact_forms')
        .update({ processed: !currentStatus })
        .eq('id', id);

      if (error) throw error;
      await fetchForms();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to update status');
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-64">
        <RefreshCw className="h-8 w-8 text-primary animate-spin" />
      </div>
    );
  }

  if (error) {
    return (
      <div className="bg-red-50 text-red-600 p-4 rounded-lg">
        {error}
      </div>
    );
  }

  return (
    <div className="bg-white rounded-lg shadow-lg overflow-hidden">
      <div className="p-6">
        <h2 className="text-xl font-semibold text-primary mb-4">{t('admin.contactForms')}</h2>
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="bg-gray-50">
                <th className="px-4 py-2 text-left">{t('contact.form.name')}</th>
                <th className="px-4 py-2 text-left">{t('contact.form.email')}</th>
                <th className="px-4 py-2 text-left">{t('contact.form.phone')}</th>
                <th className="px-4 py-2 text-left">{t('contact.form.message')}</th>
                <th className="px-4 py-2 text-left">{t('admin.created')}</th>
                <th className="px-4 py-2 text-left">{t('admin.status')}</th>
                <th className="px-4 py-2 text-left">{t('admin.actions')}</th>
              </tr>
            </thead>
            <tbody>
              {forms.map((form) => (
                <tr key={form.id} className="border-t">
                  <td className="px-4 py-2">{form.name}</td>
                  <td className="px-4 py-2">
                    <a href={`mailto:${form.email}`} className="text-primary hover:text-accent">
                      {form.email}
                    </a>
                  </td>
                  <td className="px-4 py-2">{form.phone || '-'}</td>
                  <td className="px-4 py-2">
                    <div className="max-w-xs truncate">{form.message}</div>
                  </td>
                  <td className="px-4 py-2">{formatDate(form.created_at)}</td>
                  <td className="px-4 py-2">
                    {form.processed ? (
                      <span className="inline-flex items-center px-2 py-1 rounded-full text-sm bg-green-100 text-green-800">
                        <Check className="h-4 w-4 mr-1" />
                        {t('admin.processed')}
                      </span>
                    ) : (
                      <span className="inline-flex items-center px-2 py-1 rounded-full text-sm bg-yellow-100 text-yellow-800">
                        <X className="h-4 w-4 mr-1" />
                        {t('admin.new')}
                      </span>
                    )}
                  </td>
                  <td className="px-4 py-2">
                    <button
                      onClick={() => toggleProcessed(form.id, form.processed)}
                      className={`px-3 py-1 rounded text-sm ${
                        form.processed
                          ? 'bg-yellow-100 text-yellow-800 hover:bg-yellow-200'
                          : 'bg-green-100 text-green-800 hover:bg-green-200'
                      }`}
                    >
                      {form.processed ? t('admin.markAsNew') : t('admin.markAsProcessed')}
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}