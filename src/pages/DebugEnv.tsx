export default function DebugEnv() {
  return (
    <div style={{ padding: '20px', fontFamily: 'monospace' }}>
      <h1>Environment Variables Debug</h1>
      <pre>
        VITE_SUPABASE_URL: {import.meta.env.VITE_SUPABASE_URL || 'undefined'}
      </pre>
      <pre>
        VITE_SUPABASE_ANON_KEY: {import.meta.env.VITE_SUPABASE_ANON_KEY ? 'SET (hidden)' : 'undefined'}
      </pre>
      <pre>
        MODE: {import.meta.env.MODE}
      </pre>
      <pre>
        DEV: {String(import.meta.env.DEV)}
      </pre>
      <pre>
        All env keys: {JSON.stringify(Object.keys(import.meta.env), null, 2)}
      </pre>
    </div>
  );
}
