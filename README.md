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

## JS architecture

The JavaScript is organized in three layers. Functions may only call downward.

**Level 1 — core:** `render`, `frame`, `playTone`, `playSound`, `formatTimer`, `buildProgressSegments`, `updateProgressBar`
These handle a single responsibility and do not manipulate workout state.

**Level 2 — state mutators:** `start`, `pause`, `finish`, `resetWorkout`, `advance`
These transition workout state in a consistent way. They do not call `render` and do not call each other — except `advance` calls `finish` because workout completion is time-driven, not user-driven.

**Level 3 — event handlers:** `onToggle`, `onReset`, `onOpenSettings`, `onApplySettings`
These are wired to DOM events. They compose level-2 mutators and call `render` once at the end. They do not call each other.

## Constraints

Deliberately minimal: no frameworks, no libraries, no bundler. The whole app should fit in a single context window and be readable by anyone with basic web knowledge.
