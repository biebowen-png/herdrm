# Terminal interaction fixtures

These PNGs were rendered from the real AppKit/SwiftUI test views on GitHub Actions, using synthetic `Space 1`, `Agent 1`, `Agent 2`, and `test-server` fixtures. They contain no live user desktop, terminal output, hostnames, paths, or account data.

- `unread-before.png` / `unread-after.png`: opening Agent 1 clears only its blue unread dot. Agent 2 remains unread.
- `reconnect.png`: the device-wide SSH recovery action.
- `agent-picker.png`: both detected Agent cards are visible. AppKit's cached bitmap does not capture the native popup/button labels in this image; the actual card clicks are exercised by the behavior tests.

Source and full passing test run: https://github.com/bw-rsp/herdrm/actions/runs/39948879181

This demo branch is separate from the production PR. Its workflow only exports the fixture renderings; no workflow or binary changes are proposed upstream.
