# Deployment
1. Connect the official GitHub repo `SculptMethod/fortboostai` to Netlify.
2. Build command `npm run build`; publish `dist`; functions `netlify/functions`.
3. Provision Supabase project; execute `sql/schema.sql`.
4. In Netlify project settings, configure `SUPABASE_URL`, `SUPABASE_ANON_KEY`, `SUPABASE_SERVICE_ROLE_KEY`, `STRIPE_SECRET_KEY` (`sk_test_`), `STRIPE_PRICE_ID`, `STRIPE_WEBHOOK_SECRET`, `LICENSE_SECRET` and `ADMIN_USER_IDS`. Never place service-role keys in public settings.
5. Leave `CHECKOUT_ENABLED=false` until test checkout, legal review and genuine deliverable are complete.
6. Set Stripe webhook endpoint to `https://<site>/.netlify/functions/stripe-webhook` (checkout.session.completed).
7. Verify FR/EN deep links, mobile layout, permissions, webhook retries and test fulfillment before considering release.
8. Confirm a public URL **only after deploying and opening it**.
