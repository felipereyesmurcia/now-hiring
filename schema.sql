-- Run in Supabase > SQL Editor
create table public.applications (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  interest text check (char_length(interest) <= 100),
  date_pref text check (char_length(date_pref) <= 100),
  why_hire text check (char_length(why_hire) <= 100),
  contact_method text not null check (contact_method in ('Instagram', 'Snapchat', 'Number')),
  contact text not null check (char_length(contact) between 2 and 60),
  first_name text check (char_length(first_name) <= 40)
);

alter table public.applications enable row level security;

-- Anyone with the link can submit an application...
create policy "anyone can apply"
  on public.applications for insert
  to anon
  with check (true);

-- ...but nobody can read them through the API. No select policy on purpose.
-- You read them in the Supabase Table Editor (it bypasses RLS).
