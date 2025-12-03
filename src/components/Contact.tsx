import React, { useState, useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import { FormInput } from './ui/FormInput';
import { FormTextarea } from './ui/FormTextarea';
import { FormButton } from './ui/FormButton';
import { LoadingSkeleton } from './LoadingSkeleton';
import { validateEmail, validatePhone, sanitizeInput } from '../utils/security';
import { supabase } from '../utils/supabaseClient';

const RATE_LIMIT_SECONDS = 60;

interface FormErrors {
  name?: string;
  email?: string;
  phone?: string;
  message?: string;
}

export function Contact() {
  const { t } = useTranslation();
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [lastSubmitTime, setLastSubmitTime] = useState(0);
  const [errors, setErrors] = useState<FormErrors>({});

  // Simulate initial loading
  useEffect(() => {
    const timer = setTimeout(() => setIsLoading(false), 500);
    return () => clearTimeout(timer);
  }, []);

  const validateForm = (formData: FormData): FormErrors => {
    const errors: FormErrors = {};
    const email = formData.get('email') as string;
    const phone = formData.get('phone') as string;
    const name = formData.get('name') as string;
    const message = formData.get('message') as string;

    if (!name || name.length < 2) {
      errors.name = t('contact.form.errors.name');
    }

    // At least one of email or phone must be provided
    const hasEmail = email && email.trim().length > 0;
    const hasPhone = phone && phone.trim().length > 0;

    if (!hasEmail && !hasPhone) {
      errors.email = t('contact.form.errors.emailOrPhone');
      errors.phone = t('contact.form.errors.emailOrPhone');
    } else {
      // Validate email if provided
      if (hasEmail && !validateEmail(email)) {
        errors.email = t('contact.form.errors.emailFormat');
      }

      // Validate phone if provided
      if (hasPhone && !validatePhone(phone)) {
        errors.phone = t('contact.form.errors.phone');
      }
    }

    if (!message || message.length < 10) {
      errors.message = t('contact.form.errors.message');
    }

    return errors;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const now = Date.now();
    if (now - lastSubmitTime < RATE_LIMIT_SECONDS * 1000) {
      alert(t('contact.form.rateLimit', { seconds: RATE_LIMIT_SECONDS }));
      return;
    }

    const form = e.target as HTMLFormElement;
    const formData = new FormData(form);

    const formErrors = validateForm(formData);
    if (Object.keys(formErrors).length > 0) {
      setErrors(formErrors);
      return;
    }

    setIsSubmitting(true);
    
    try {
      const sanitizedData = {
        name: sanitizeInput(formData.get('name') as string),
        email: sanitizeInput(formData.get('email') as string),
        phone: sanitizeInput(formData.get('phone') as string),
        message: sanitizeInput(formData.get('message') as string),
        user_agent: navigator.userAgent
      };

      const { error } = await supabase
        .from('contact_forms')
        .insert([sanitizedData]);

      if (error) throw error;
      
      setLastSubmitTime(now);
      alert(t('contact.form.success'));
      form.reset();
      setErrors({});
    } catch (error) {
      console.error('Form submission error:', error);
      alert(t('contact.form.error'));
    } finally {
      setIsSubmitting(false);
    }
  };

  if (isLoading) {
    return <LoadingSkeleton type="form" lines={4} />;
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <FormInput
        type="text"
        name="name"
        label={t('contact.form.name')}
        required
        error={errors.name}
        aria-invalid={!!errors.name}
        aria-describedby={errors.name ? "name-error" : undefined}
      />
      <FormInput
        type="email"
        name="email"
        label={t('contact.form.email')}
        error={errors.email}
        aria-invalid={!!errors.email}
        aria-describedby={errors.email ? "email-error" : undefined}
      />
      <FormInput
        type="tel"
        name="phone"
        label={t('contact.form.phone')}
        error={errors.phone}
        aria-invalid={!!errors.phone}
        aria-describedby={errors.phone ? "phone-error" : undefined}
      />
      <FormTextarea
        name="message"
        rows={4}
        label={t('contact.form.message')}
        required
        error={errors.message}
        aria-invalid={!!errors.message}
        aria-describedby={errors.message ? "message-error" : undefined}
      />
      <FormButton type="submit" disabled={isSubmitting}>
        {isSubmitting ? t('contact.form.sending') : t('contact.form.send')}
      </FormButton>
    </form>
  );
}