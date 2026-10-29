# Now Hiring: Future Wife

LinkedIn-parody "application" page for a Halloween costume QR code. Static HTML, submissions go to Supabase.

## Setup
1. Supabase > SQL Editor: run `schema.sql` (creates `applications`, insert-only for the public).
2. Paste the anon/publishable key into `SUPABASE_ANON_KEY` at the top of the script in `index.html`. Never the service_role key.
3. Deploy: `npx vercel --prod` from this folder, or import the GitHub repo on vercel.com.

## Reading applications
Supabase > Table Editor > `applications`. Nobody can read them through the public link.

## Known limitations
- Phone vibration works on Android only (iOS blocks it for websites).
- If the insert fails twice, the celebration still plays and the error goes to the console.
