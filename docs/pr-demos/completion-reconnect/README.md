# Completion reconnect demo

Rendered by synthetic AppKit tests on [GitHub Actions](https://github.com/bw-rsp/herdrm/actions/runs/40883572735), using only fake spaces and agents.

1. `completion-restored.png`: restoring 24 old results creates no new unread dot.
2. `completion-new-result.png`: a new completion sequence adds the dot to Agent 1 and its space.
3. `completion-acknowledged.png`: opening Agent 1 clears the dot; replaying the same sequence does not restore it.

The corresponding product commit is `abf91f8`; [the full test workflow](https://github.com/bw-rsp/herdrm/actions/runs/40883225018) passed HerdrKit, App behavior and secret scanning.
