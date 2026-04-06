# conferra.ai — Website

Marketing homepage for [conferra.ai](https://conferra.ai) — the agentic field marketing platform for fast-growing SaaS companies.

---

## 🚀 Recommended Deployment: Cloudflare Pages

Cloudflare Pages is the recommended host for this site — it's free, has a global CDN with 300+ edge locations, and deploys automatically when you push to GitHub.

### Setup (takes ~5 minutes)

1. Push this repo to GitHub
2. Go to [Cloudflare Pages](https://pages.cloudflare.com) → Create a project
3. Connect your GitHub repo
4. Build settings:
   - **Framework preset:** None
   - **Build command:** _(leave empty)_
   - **Build output directory:** `/` _(root)_
5. Click **Save and Deploy**

That's it. Cloudflare will assign you a `*.pages.dev` subdomain instantly.

### Custom Domain

In Cloudflare Pages → your project → Custom Domains → add `conferra.ai`.

If your domain is already on Cloudflare (recommended), it connects in seconds. If not, update your DNS nameservers to point to Cloudflare.

---

## Alternative: Vercel

1. Push this repo to GitHub
2. Go to [vercel.com](https://vercel.com) → New Project → Import your repo
3. Framework: **Other**
4. Build command: _(leave empty)_
5. Output directory: `.` (root)
6. Deploy

---

## Alternative: fly.io

> ⚠️ Not recommended for a pure static site — adds complexity and cost (~$5+/mo). Use Cloudflare Pages instead. fly.io config is included here for reference if you ever need to deploy a backend service alongside the site.

Prerequisites: [Install flyctl](https://fly.io/docs/hands-on/install-flyctl/)

```bash
flyctl auth login
flyctl launch        # Uses fly.toml in this repo
flyctl deploy
```

---

## Project Structure

```
conferra-website/
├── index.html       # Main homepage (all CSS + JS inline — no build step needed)
├── _headers         # Cloudflare Pages security + cache headers
├── _redirects       # Cloudflare Pages redirect rules
├── Dockerfile       # nginx container (fly.io only)
├── nginx.conf       # nginx config (fly.io only)
├── fly.toml         # fly.io app config (fly.io only)
├── .gitignore
└── README.md
```

---

## Making Changes

All content, styles, and scripts live in `index.html`. Open it in any text editor or IDE.

- **Copy changes:** Edit text directly in `index.html`
- **Brand colors:** Search for `--purple: #6B3FA0` in the `<style>` block
- **Add pages:** Create new `.html` files (e.g., `pricing.html`, `about.html`) and update nav links
- **Add images:** Create an `assets/` folder and reference with `<img src="/assets/logo.png">`

---

## Tech Stack

- Pure HTML + CSS + vanilla JS (no framework, no build step)
- Font: [Inter](https://fonts.google.com/specimen/Inter) via Google Fonts
- Zero npm dependencies

---

Built with [Claude](https://claude.ai) · conferra.ai · April 2026
