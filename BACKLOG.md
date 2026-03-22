# Backlog

Ideas to try. No commitment to any of these.

## Configuration
- ~~**Configurable intervals**~~ — done
- ~~**Round target**~~ — done
- ~~**Workout presets**~~ — done (20/10 ×8, 30/15 ×10, 45/15 ×8)

## Audio
- **Periodic work-phase beep** — soft beep every N seconds during work to confirm time is progressing (long intervals feel endless without it); currently every 5s, may need tuning
- **Volume control** — simple mute toggle, maybe long-press to adjust level
- **Sound profiles** — alternative sound sets (e.g. lower-key/less aggressive for late-night use)

## Screen & display
- ~~**Both phases count down**~~ — done
- **Phase progress bar** — thin bar at the top or bottom showing how far through the current phase you are, as an alternative to (or complement of) the counter

## Workout structure
- **Warm-up / cool-down phases** — optional phases at start/end with their own durations and sounds
- **Rest between rounds** — a longer rest every N rounds (e.g. 60s every 4 rounds)

## Other
- **Haptic feedback** — vibrate on phase transitions using the Vibration API (Android + some iOS)
- **Workout log** — store completed workouts (date, rounds, total time) in localStorage
- **Share a workout** — encode config in the URL hash so you can send a link that opens with your settings pre-loaded
