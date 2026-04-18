<div align="center">
  <h1>IPE VOTE</h1>
  <p><b>A Fast & Beautiful Election Portal for Class Representatives</b></p>
  <p>
    <img src="https://img.shields.io/badge/Architecture-Single_File-blue?style=flat-square" alt="Architecture" />
    <img src="https://img.shields.io/badge/Database-Supabase-success?style=flat-square" alt="Database" />
    <img src="https://img.shields.io/badge/UI-Glassmorphism-violet?style=flat-square" alt="UI" />
  </p>
</div>

<br/>

Welcome to **IPE VOTE**! 👋 

This is a lightweight, super-fast election portal I built specifically for managing Class Representative (CR) elections. I wanted to make something that looks beautiful on any device, is incredibly easy to set up, and takes the headache out of counting votes and managing candidates.

The coolest part? The entire frontend lives in just a single `index.html` file!

---

## ✨ Features You'll Love

- **Built-In Admin Panel:** You don't need a separate dashboard. Just log in with your admin credentials to approve students, add candidates, and watch the live results roll in.
- **Group A & Group B Voting:** The system automatically splits candidates into two categories, tracking their votes and projecting winners completely independently.
- **Smart, Typo-Proof Logins:** The login system is case-insensitive, so students won't get locked out just because they accidentally capitalized their email or typed a space by mistake.
- **Live Results Dashboard:** Watch the election happen in real-time with beautiful bar charts and percentage tracking.
- **The "Reset Button":** Once the election is over, you can use the deep-purge tool to clear out all the votes with one click—ready for the next election without making students register all over again.
- **Looks Great Everywhere:** Whether your voters are on a giant desktop monitor or scrolling on their phones, the portal scales perfectly to fit their screens.

---

## 🛠️ How It's Built

I kept the stack as simple and maintainable as possible:
1. **Frontend**: Pure HTML, CSS, and Vanilla JavaScript. No bulky frameworks, no build steps. Just open the file and it works.
2. **Backend**: [Supabase](https://supabase.com/). It handles our PostgreSQL database, file storage for candidate photos, and the API requests smoothly in the background.

---

## 🚀 Setting Up Your Own Election

Because there are no crazy dependencies, getting this running takes about 5 minutes.

### 1. Set up your Database 
1. Create a free account and a new project on [Supabase.com](https://supabase.com).
2. Go to your project's **SQL Editor**.
3. Copy the code from the [`setup_database.sql`](setup_database.sql) file in this repository and run it. 
   
> **Note:** This magical script sets up all your tables, prepares the storage bucket for photos, and sneaks in your master admin account so you aren't locked out!

### 2. Connect Your App
1. Open up `index.html` in your favorite code editor.
2. Scroll down a bit until you find the **Database Constants**.
3. Swap out my placeholders for your actual Supabase Project URL (`SB`) and Anon Key (`KEY`).

### 3. Go Live
That's it! You can host the `index.html` file on [GitHub Pages](https://pages.github.com/) for free, or even just send the file directly to your friends.

---

## 🔐 Getting Admin Access

Since your database is completely locked down to prevent cheating, you need an admin account to start adding candidates. 

Instead of leaving hardcoded admin keys exposed to the world, the safest way is to grant yourself access directly from your database:

1. Open your newly hosted portal and register a normal account with your own details.
2. Head over to your Supabase project dashboard and open the **Table Editor**.
3. Select the `students` table, find the row with your name, and manually change both `approved` and `is_admin` to `TRUE`.

*Just log in with your newly upgraded credentials, click the **Admin Panel** tab, and you're officially in control of the election.*

---

<div align="center">
  <small><em>Built with ❤️ for better, fairer student elections.</em></small>
</div>
