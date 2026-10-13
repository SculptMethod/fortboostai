# Security considerations
- No secrets in browser or repository. Supabase anonymous key is public by design; service role and Stripe keys are server-only.
- All payment grants occur through verified Stripe webhook payloads.
- Admin endpoint uses authenticated user ID allowlist. Database tables deny anon/authenticated roles; service role bypasses RLS under server control.
- Support endpoint currently lacks durable request rate limiting and anti-spam measures; do not enable publicly at scale before adding those.
- Account auth stores Supabase session token in tab session storage, which is less resilient than secure httpOnly cookie sessions. Upgrade before handling sensitive live accounts.
- Pending: independent security review, abuse prevention, refund/dispute fulfillment, service monitoring and backup policy.
