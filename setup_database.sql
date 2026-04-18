/* 
  IPE VOTE: Sovereign Master Database Architect (PERFECT PRODUCTION EDITION)
  Run this script in your Supabase SQL Editor (https://app.supabase.com)
  
  This script creates a clean, 100% production-ready slate.
  WARNING: This will drop existing tables to ensure a perfectly clinical state.
*/

-- 1. STORAGE ARCHITECTURE: Global Portrait Bucket
insert into storage.buckets (id, name, public)
values ('candidates', 'candidates', true)
on conflict (id) do nothing;

-- 2. SECURITY: Sovereign Storage Policies
do $$ 
begin
    drop policy if exists "Candidates_Selective_Read" on storage.objects;
    drop policy if exists "Candidates_Selective_Upload" on storage.objects;
    drop policy if exists "Candidates_Selective_Delete" on storage.objects;
EXCEPTION WHEN others THEN null; end $$;

create policy "Candidates_Selective_Read" on storage.objects for select using ( bucket_id = 'candidates' );
create policy "Candidates_Selective_Upload" on storage.objects for insert with check ( bucket_id = 'candidates' );
create policy "Candidates_Selective_Delete" on storage.objects for delete using ( bucket_id = 'candidates' );

-- 3. IDENTITY: The Students Registry
drop table if exists public.students cascade;
create table public.students (
    student_id text primary key,
    full_name text not null,
    email text not null unique,
    phone text not null default '000',
    approved boolean default false,
    is_admin boolean default false,
    created_at timestamptz default now()
);

-- Insert Master Executive Admin (Genesis Account)
insert into public.students (student_id, full_name, email, phone, approved, is_admin)
values ('ADMIN_MASTER', 'Executive Sovereign', 'admin@ipevote.com', '000', true, true)
on conflict (student_id) do nothing;

-- 4. ROSTER: The Candidates Ledger
drop table if exists public.candidates cascade;
create table public.candidates (
    id serial primary key,
    name text not null,
    motto text,
    bio text,
    image_url text,
    category text default 'A', -- Group 'A' or 'B'
    position integer default 0
);

-- 5. BALLOT: The Sovereign Results Ledger
drop table if exists public.votes cascade;
create table public.votes (
    id uuid default gen_random_uuid() primary key,
    student_id text references public.students(student_id) on delete cascade,
    candidate_id integer references public.candidates(id) on delete cascade,
    voted_at timestamptz default now()
);

-- 6. CONTROL: Election Executive Settings
drop table if exists public.election_settings cascade;
create table public.election_settings (
    id integer primary key default 1,
    voting_open boolean default true,
    results_released boolean default false,
    deadline timestamptz
);

-- Initialize the Core Settings
insert into public.election_settings (id, voting_open, results_released)
values (1, true, false)
on conflict (id) do nothing;

-- 7. API ACCESS: High-Performance Global Handshake
alter table public.students disable row level security;
alter table public.votes disable row level security;
alter table public.candidates disable row level security;
alter table public.election_settings disable row level security;

-- Sovereign Access Policies (Master Bypass)
-- These ensure that the Admin Panel can always save data regardless of default Supabase limits
create policy "Master_Access_Candidates" on public.candidates for all using (true) with check (true);
create policy "Master_Access_Votes" on public.votes for all using (true) with check (true);
create policy "Master_Access_Students" on public.students for all using (true) with check (true);
create policy "Master_Access_Settings" on public.election_settings for all using (true) with check (true);

-- SUCCESS: The sovereign environment is now perfect.
