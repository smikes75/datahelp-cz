import { createClient } from '@supabase/supabase-js';

// TEMPORARILY HARDCODED - Testing environment variable issue
const supabaseUrl = 'https://oqcvqquecshienabwkxu.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xY3ZxcXVlY3NoaWVuYWJ3a3h1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ4Mzk1MTIsImV4cCI6MjA4MDQxNTUxMn0.VE_FzBrxmKIxmx3Nwmq6Jh-bgQTIXBlY2Z31k3GGxHw';

console.log('🔧 Supabase client initialized with hardcoded credentials');
console.log('URL:', supabaseUrl);

export const supabase = createClient(supabaseUrl, supabaseAnonKey, {
  auth: {
    persistSession: true,
    autoRefreshToken: true
  }
});