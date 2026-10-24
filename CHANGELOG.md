# Changelog

## 1.3.0 (2026-10-23)
- Installable as a Claude Code plugin: `.claude-plugin/marketplace.json` and `plugin.json` (marketplace `ai-agency-os`, plugin `ai-agency-os-starter`).
- Works with `npx skills add CalebAnderson-Coder/ai-agency-os-starter`.
- Fixed the `client-workspace` frontmatter: an unquoted colon in `description` made the YAML invalid, so some loaders skipped the skill.

## 1.2.0 — 2026-10-23
- New free skill `quick-quote`: value-based price from 6 numbers, math shown, underquote check.
- README: pricing section and link to the AI Agency Pricing Kit.

## 1.1.0 — 2026-10-23
- New README with demo GIF, 30-second install and free vs paid comparison.
- `scope-guard` rewritten as a complete procedure (inputs, classification, quoting, output format, rules).
- Added `examples/acme-plumbing/` worked example.

## 1.0.0 — 2026-10
- Initial free release: 4 skills + client workspace template.
