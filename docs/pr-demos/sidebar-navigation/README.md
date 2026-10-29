# Sidebar navigation demo

Rendered on [GitHub Actions](https://github.com/bw-rsp/herdrm/actions/runs/40884827298) with synthetic AppKit fixtures. Only fake spaces, agents and the reserved test.invalid host are used. Six space-navigation and five history-control tests passed.

- `sidebar-grouped-before.png`, `sidebar-grouped-click-1.png`, and `sidebar-grouped-click-2.png` show the same grouped rows before selection, after selecting Agent 1 and after selecting Terminal test1. Selection changes without moving these rows.
- `sidebar-flat-before.png` and `sidebar-flat-click-1.png` show the flat-list Agent click at the same row position. The machine-stat footer becomes visible when a device is selected; it does not move the Agent row.
- `sidebar-flat-explicit-reveal.png` shows a separate explicit right-terminal activation revealing Space 2. This action deliberately scrolls the list.

The corresponding product commit is `061f853`; [the full product CI](https://github.com/bw-rsp/herdrm/actions/runs/40884655829) passed Kit tests, all 245 App tests and secret scanning. The earlier history-button regression is covered by the existing real mouse test plus row-position assertions.
