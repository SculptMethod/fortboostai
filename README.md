# FortBoost AI

Official source: **SculptMethod/fortboostai**. Premium FR/EN gaming-performance product website built as pre-rendered static routes with a small dependency-free JavaScript app and Netlify serverless Functions. Real Windows application is **not yet available**.

## Build and tests
```sh
npm run build
npm test
```
No third-party packages are required to build the public site.

## Development
Edit `src/site.js`, `src/site.css` or `src/shell.html`. The build generates 40 localized pages under `dist/`. Do **not** edit `dist` files. Follow `AGENTS.md` for all updates.

## Services
Supabase Auth, Supabase PostgreSQL, Stripe test checkout and Netlify Functions require environment variables and database migration; see `docs/deployment.md`. Without these, account and commercial features must be treated as unavailable. Real checkout must remain disabled until software delivery and legal terms are ready.

## Security and scope
There is no fake executable, benchmark or purchase. License fulfillment relies on verified Stripe webhooks. The endpoint `license` verifies a user's key but Windows device activation and installer delivery remain to be implemented.
