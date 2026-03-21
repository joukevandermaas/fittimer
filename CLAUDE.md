# Fit App — Rules

## 1. Keep it simple
Always do the simplest thing that solves the problem. If there are trade-offs, ask the user before deciding.

## 2. Single HTML file
This is a single `index.html` file. All code (HTML, CSS, JS) lives in that one file. No build tools, no npm, no node, no frameworks, no bundlers. External files are only acceptable when embedding is truly impractical (e.g. audio/video assets).

## 3. Minimal JS, no libraries
Use as little JavaScript as possible. Prefer plain HTML/CSS solutions. When JS is needed, write it plainly — no libraries, ever. Someone with basic web knowledge should be able to read the file and understand what it does.

## 4. Style is secondary
The app working correctly matters far more than how it looks. Keep styles minimal and purposeful. Avoid decorative complexity.

## The spirit
This is a deliberate challenge: write as little code as possible while keeping it completely readable. Fewer lines is better. Cleverness is not — if a shortcut makes the code harder to scan, don't use it.

Before making any change, read the entire file and reason about the whole app. Ask: does this fit naturally? Does it reuse what's already there? Does it keep the abstractions clean? A bad abstraction that saves 3 lines is worse than a slightly repetitive one that's obvious. Evaluate first, then write.

The file must stay small enough to fit comfortably in a single context window. This is the substitute for tests: because we can't test under these constraints, every change must be reasoned about globally. No local fixes that create global confusion. If a change feels like it might interact badly with something else, flag it before proceeding.

---

## Code style
- Comments are all lowercase, no uppercase characters at all — e.g. `// start the audio context after user gesture`
- Use a small assert helper for invariants: `function assert(cond, msg) { if (!cond) console.error('assert:', msg); }` — use it liberally to catch bad state early

## Collaboration
Ask lots of questions. This project is collaborative. When something is ambiguous or has trade-offs, ask rather than guess.

## End of task checklist
Before handing back for manual testing, always:
1. Re-read the entire file and check for style violations (especially uppercase in comments)
2. Clean up anything that looks off — redundant code, inconsistent naming, etc.
3. Write out explicit test scenarios for the user to run through manually

---

## What we're building
A fitness interval timer PWA. Shows a countdown, plays audio cues, cycles between WORK and REST phases. Intervals will eventually be configurable but start hardcoded.

## Files
- `index.html` — the entire app
- `sw.js` — minimal service worker (offline support + PWA installability on iOS)

No other files. No manifest.json — iOS uses apple meta tags instead.

## Target device: iPhone (iOS Safari)
- Must include apple PWA meta tags:
  ```html
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <meta name="apple-mobile-web-app-title" content="Fit">
  ```
- AudioContext on iOS must be created AND resumed inside a user gesture handler (e.g. button tap). Audio will silently fail otherwise.
- Service worker requires HTTPS to work (except on localhost).
- Register SW with a relative path: `navigator.serviceWorker.register('./sw.js')`

## Audio
Use the Web Audio API to generate beeps — no audio files. Use a single global AudioContext, created and resumed on first user gesture (iOS requirement). Use distinct sounds for WORK vs REST phase transitions so the user doesn't need to look at the screen.

## Timer logic
- Two phases: WORK and REST (hardcoded for now, configurable later)
- Countdown with `setInterval` at 1s
- Audio cues: countdown beeps at last 3 seconds, distinct beep on phase switch
- Round counter increments each time WORK phase starts (after round 1)
- Start/Pause button; tapping Start must also unlock AudioContext (iOS requirement)
