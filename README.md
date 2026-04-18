# IPE VOTE: Elite Selection Portal 🗳️

**IPE VOTE** is a high-performance, single-file portal designed for professional election management. Purpose-built for class representative (CR) elections, it offers a seamless, mobile-optimized experience for both voters and administrators.

The system is entirely contained within a single `index.html` file on the front end, backed by a robust [Supabase](https://supabase.com/) PostgreSQL database on the back end.

---

## 🌟 Key Features

*   **Sovereign Admin Panel**: Full administrative control within the same dashboard. Manage students, commission candidates, and release results with a single click.
*   **Dual-Category Ballots**: Seamlessly segment elections into **Group A (Standard)** and **Group B (Reserve)**.
*   **Live Analytics Dashboard**: Professional, real-time bar charts and statistical tracking for "Projected Winners."
*   **Case-Insensitive Validation**: Robust `ilike` querying prevents locked-out voters due to minor capitalization errors in student IDs or emails.
*   **Deep Purge Utility**: A powerful "Reset System" feature for administrators to wipe the election ledger completely while keeping the student registry intact for re-elections.
*   **Universal Responsiveness**: Adaptive UI that looks perfect on widescreen desktop monitors and small mobile handheld devices, protected by sovereign scroll wrappers.

---

## 🛠️ Database Setup Engine

The application requires a centralized database to handle persistent student identities and live vote ledgers. The portal is calibrated to work seamlessly with Supabase.

1. Create a free project on [Supabase](https://supabase.com/).
2. Open the **SQL Editor** in your Supabase dashboard.
3. Copy the entire contents of `setup_database.sql` and run the script.

**What the script does:**
*   Creates the necessary architectural tables: `students`, `candidates`, `votes`, and `election_settings`.
*   Installs "Sovereign Master Bypasses" to allow seamless API access.
*   Automatically injects the **Genesis Admin Account** into the students table.

---

## 🔐 Master Administrator Credentials

Once the `setup_database.sql` script is successfully executed, you can log into the portal directly using the default sovereign genesis credentials. 

*   **Student ID:** `ADMIN_MASTER`
*   **Email:** `admin@ipevote.com`

> **Note:** Once logged in as the admin, you can approve pending student registrations, assign candidates to groups, securely open/close voting, and download the full election history as a `.csv` ledger.

---

## 🚀 Deployment

Because the entire logic, styling, and markup are contained within `index.html`, deployment is completely frictionless.

1. Fork or clone this repository.
2. Ensure you have mapped your Supabase `SB` (URL) and `KEY` (Anon Key) constants inside the JavaScript block.
3. Deploy directly to [GitHub Pages](https://pages.github.com/), Vercel, Netlify, or open the file directly in any modern browser.

---

*Designed and engineered for maximum election integrity and uncompromised administrative control.*
