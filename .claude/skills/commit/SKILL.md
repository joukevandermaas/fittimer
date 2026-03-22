---
name: commit
description: Checks backlog and code style, then commits. Use when the user wants to commit changes.
---

Before committing, do the following steps in order:

1. **Backlog check**: Read BACKLOG.md and compare it against the staged/unstaged changes. If any items in the backlog are now done, mark them with strikethrough (~~like this~~) before committing. Ask the user if you're unsure whether something qualifies as done.

2. **Style check**: Read index.html and verify:
   - All comments are fully lowercase — no uppercase letters at all
   - All names are fully descriptive — no abbreviations
   - Every `if`, `for`, `while`, etc. uses blocks `{ }`, no blockless one-liners
   - One statement per line — no multiple statements separated by semicolons on the same line
   - No long if-bodies that could instead be a short inverted early exit (return, break, continue)
   - Every function has a short comment on its first line (after the opening brace), followed by a blank line

   Fix any violations you find before committing.

3. **Commit**: Stage and commit everything with a single-sentence message: active verb, present tense, no period. Example: "add total-workout progress bar with per-phase color segments"
