-- Run in a trusted Supabase SQL console. Service role only for commercial tables.
create extension if not exists pgcrypto;
create table if not exists public.orders(id uuid primary key default gen_random_uuid(),user_id uuid not null references auth.users(id),stripe_session_id text not null unique,stripe_payment_intent text,status text not null check(status in ('paid','refunded','disputed')),amount_total integer not null,currency text not null,created_at timestamptz not null default now());
create table if not exists public.licenses(id uuid primary key default gen_random_uuid(),user_id uuid not null references auth.users(id),order_id uuid not null unique references public.orders(id),key_hash text not null unique,status text not null check(status in ('active','revoked')),created_at timestamptz not null default now());
create table if not exists public.support_tickets(id uuid primary key default gen_random_uuid(),email text not null,message text not null,status text not null default 'new',created_at timestamptz not null default now());
alter table public.orders enable row level security;
alter table public.licenses enable row level security;
alter table public.support_tickets enable row level security;
revoke all on public.orders,public.licenses,public.support_tickets from anon,authenticated;
-- Backend uses the service role and applies explicit authenticated ownership checks.
