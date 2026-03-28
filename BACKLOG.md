# Backlog

Ideas to try. No commitment to any of these.

## Small

1. **Mute toggle** — a speaker icon (like the settings gear) to silence all audio cues. Useful when listening to music. State persists in localStorage.

2. **Vibration cues** — use `navigator.vibrate()` to mirror audio beeps: short buzz for countdown ticks, long buzz for phase transitions. Lets the phone stay silent without missing cues.

3. **Skip phase button** — during an active phase, a small ghost button to immediately end it and move on. Handy when you finish early or want to cut a rest short.

4. **Exercise progress dots** — for multi-exercise workouts, small dots below the timer (one per exercise, filled for completed). Pure CSS + minimal DOM, no new logic needed.

5. **Half-time pulse** — a soft mid-phase audio cue at the exact halfway point of a work interval. Helps pace effort without looking at the screen.

## Medium

6. **"Wait for me" rest** — an option where rest doesn't auto-advance; it pauses at 0:00 and waits for the user to tap Start. Useful when recovery time varies. Toggle in settings.

7. **Completion summary** — after Done, show total time + rounds + workout name before resetting. Tapping Start dismisses it.

8. **Landscape layout** — auto-switch to a side-by-side layout in landscape orientation (timer left, controls right). Pure CSS `@media (orientation: landscape)`, no JS.

## Larger

9. **Workout history** — record completion date per workout in localStorage. Show "last done: 3 days ago" on idle screen, optionally a streak count.

10. **Custom workout builder** — extend settings to let users add/remove/reorder exercises in a session, not just the single-exercise manual mode. Stored in localStorage.
