# Netlify API
All JSON except Stripe webhook raw body.
- GET `/api/config`: public Supabase URL and anon key + test checkout enabled state.
- POST `/api/checkout`: authenticated Bearer token, Stripe test only, returns checkout `url` when enabled.
- POST `/api/stripe-webhook`: signed Stripe event; server fulfillment.
- GET `/api/account`: Supabase bearer token, returns the requester's orders and license statuses.
- POST `/api/license`: bearer token + JSON `{"key":"FB-..."}`, returns `valid` status. Not complete device activation.
- GET `/api/admin`: bearer token with ID allowlist, returns bounded latest records.
- POST `/api/support`: JSON `{"email":"...","message":"..."}`, creates ticket if database configured.
Errors use HTTP 400/401/403/405/503 as appropriate. Avoid exposing private payment keys or sensitive diagnostics.
