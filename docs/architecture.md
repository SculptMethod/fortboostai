# Architecture
- Public website: dependency-free JS and CSS in `src`, pre-rendered FR/EN routes via `npm run build`.
- Hosting: Netlify, publish `dist`.
- Server APIs: `netlify/functions/*.mjs`, exposed as `/api/<name>`.
- Identity: Supabase Auth, verified by server using `/auth/v1/user`.
- Database: Supabase PostgreSQL, accessed using service role **only in Netlify Functions**.
- Payments: Stripe Checkout TEST mode, webhook verified by HMAC. The success page never grants a license.
- Windows integration: future; not yet implemented.
