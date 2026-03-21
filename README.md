# Fit

A minimal interval timer PWA for iPhone. Single HTML file, no build tools, no dependencies.

## Run locally

```
python3 -m http.server 8080
```

Then open `http://YOUR_LOCAL_IP:8080` on your phone (same WiFi). The service worker only registers in production (not on localhost or when `DEV = true`).

## Structure

- `index.html` — the entire app (HTML, CSS, JS)
- `sw.js` — minimal service worker for offline support and PWA installability
- `serve.sh` — starts a local dev server and prints your IP

## Constraints

Deliberately minimal: no frameworks, no libraries, no bundler. The whole app should fit in a single context window and be readable by anyone with basic web knowledge.
