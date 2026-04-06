# ─── Dockerfile for fly.io deployment (nginx-based static site) ───────────────
# Use this ONLY if you choose to deploy on fly.io.
# For Cloudflare Pages, Vercel, or Netlify — this file is not needed.

FROM nginx:alpine

# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy site files
COPY index.html /usr/share/nginx/html/index.html

# Optional: copy any future assets (images, fonts, etc.)
# COPY assets/ /usr/share/nginx/html/assets/

# Custom nginx config for SPA-style routing + security headers
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
