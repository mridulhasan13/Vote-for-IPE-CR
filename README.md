<div align="center">
  <h1>IPE VOTE</h1>
  <p><b>Executive Class Representative Selection Portal</b></p>
  <p>
    <img src="https://img.shields.io/badge/Architecture-Single_File-blue?style=flat-square" alt="Architecture" />
    <img src="https://img.shields.io/badge/Database-Supabase_PostgreSQL-success?style=flat-square" alt="Database" />
    <img src="https://img.shields.io/badge/UI-Mobile_First_Glassmorphism-violet?style=flat-square" alt="UI" />
  </p>
</div>

<br/>

**IPE VOTE** is a fully autonomous, high-performance election management suite engineered for absolute precision and data integrity. Delivered as a zero-dependency, single-file (`index.html`) frontend, it provides an unparalleled electoral experience for both voters and administrators.

---

## 🚀 Enterprise-Grade Features

- **Sovereign Administration Panel:** A protected management suite embedded directly within the application. Commission candidates, adjudicate student approvals, process CSV ledger exports, and oversee live analytics without switching interfaces.
- **Dual-Category Ballot Architecture:** Automatically segments candidates into **Group A (Standard)** and **Group B (Reserve)**, tracking independent turnout rates and projected winners.
- **Case-Insensitive Resolution (CIR):** Utilizes strict `ilike` querying to gracefully handle whitespace and capitalization inconsistencies in student credentials, preventing unwarranted lockouts.
- **Real-Time Analytics Matrix:** Live, data-dense results dashboard featuring automatic percentage weighting, volumetric tracking, and responsive bar-chart rendering.
- **Deep Purge Protocol:** Execute a secure "System Reset" to instantly clear the ballot box (`votes` ledger) and eradicate shadow configurations while retaining the core verified student registry for subsequent elections.
- **Universal Reflexive UI:** Precision-engineered layouts utilizing CSS clamping and flex-shrink protection to guarantee perfect rendering across high-resolution desktops and handheld mobile devices alike.

---

## 🛠️ Technology Stack

1. **Frontend**: Clean HTML5 / Vanilla JS mapped with modern CSS Glassmorphism logic & custom variables. No complex build steps required.
2. **Backend**: [Supabase](https://supabase.com/). Handles PostgreSQL storage, Row Level Security (RLS) delegation, and direct REST API asynchronous handshakes.

---

## 🏗️ Deployment & Database Initialization

Because the entire logic is contained within `index.html`, deployment is completely frictionless.

### 1. Configure the Backend (Supabase)
1. Initialize a new project on [Supabase.com](https://supabase.com).
2. Open the **SQL Editor** within your project dashboard.
3. Copy the contents of [`setup_database.sql`](setup_database.sql) and execute the script. 
   
> **Note:** This script automatically constructs the tables (`students`, `candidates`, `votes`, `election_settings`), generates the `candidates` storage bucket, and injects the Master Admin genesis account.

### 2. Configure the Frontend
1. Open `index.html`.
2. Locate the **Database Constants** section.
3. Replace the `SB` (Project URL) and `KEY` (Anon Key) constants with your actual Supabase credentials.

### 3. Launch
Host the repository statically on [GitHub Pages](https://pages.github.com/) for zero-cost deployment, or distribute the `index.html` file directly to your executive board.

---

## 🔐 Master Executive Authorization

Following a successful database initialization via `setup_database.sql`, the system enforces a strict zero-trust policy for new accounts. To begin the election, you must authenticate using the pre-generated genesis credentials:

- **Roll / Student ID:** `ADMIN_MASTER`
- **Email:** `admin@ipevote.com`

*Once authenticated, navigate to the **Admin Panel** tab to manage the roster and launch the election.*

---

<div align="center">
  <small><em>Engineered for uncompromised integrity and executive control.</em></small>
</div>
