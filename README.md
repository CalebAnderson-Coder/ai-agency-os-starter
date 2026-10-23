# AI Agency OS — Free Client Ops Starter for Claude Code

Run multiple clients from [Claude Code](https://docs.anthropic.com/en/docs/claude-code) without mixing their voice, rules or scope.

| Skill | What it does |
|---|---|
| `client-workspace` | One folder + CLAUDE.md per client: voice, approved claims, rules, logs |
| `scope-guard` | Checks requests against the SOW, drafts change orders, logs CHANGES.md |
| `offer-builder` | Productized offer + pricing ladder |
| `cold-email-agency` | 4-step cold email sequences for US SMB owners |

Includes `templates/clients/_template/`.

## Install
```bash
git clone https://github.com/CalebAnderson-Coder/ai-agency-os-starter && cd ai-agency-os-starter
./install.sh        # Windows: powershell -ExecutionPolicy Bypass -File .\install.ps1
```
Try: *"Use client-workspace to set up acme-plumbing"*, then *"Client asks for 3 extra ads — run scope-guard."*

## The full system
**AI Agency OS Pro** — 14 procedures (onboarding, SOW, monthly reports from GA4/GSC/Ads, inbox triage, meeting → tasks, drafts-only scheduled jobs, per-client QA with a separate reviewer agent). → https://brianspark283.gumroad.com/l/ai-agency-os-pro?utm_source=github&utm_medium=readme

Free download (zip) also on Gumroad: https://brianspark283.gumroad.com/l/ai-agency-os-free

MIT · Not affiliated with Anthropic.
