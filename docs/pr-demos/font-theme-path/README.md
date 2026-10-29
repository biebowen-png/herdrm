# Synthetic font, theme and Files demos

This demo branch combines the independent font-family, terminal-theme repaint and Files path-draft fixes. Production PR branches do not contain its workflow or capture helper.

The GitHub Actions test host renders only synthetic `test1`, `test2`, `/test1` and `/test2/edited-path` data. Screenshots capture the individual test-owned window, never a desktop or a real agent/session. The window compositor capture is used because cached AppKit bitmaps do not reliably contain Metal terminal frames.

Expected artifacts:

- `system-mono-light.png`: System Mono resolved through AppKit, 14 pt, rendering synthetic input and message text.
- `theme-dark.png` and `theme-light-restored.png`: the same PTY after each appearance change; process and session identity remain asserted by the test.
- `path-edit-before-reply.png` and `path-edit-after-reply.png`: an edited, unsubmitted path remains visible after the delayed directory response.

Generation and inspection are pending CI. A capture failure is not a successful visual validation.
