# Installation

Requirements: [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed and logged in (Claude Pro/Max or API), Node.js 18+ for the dev skills, Git (optional).

Claude Code loads skills from `~/.claude/skills/` (global) or `<project>/.claude/skills/` (per project), and agents from `.claude/agents/`.

## Claude Code plugin
In a Claude Code session:
```
/plugin marketplace add CalebAnderson-Coder/ai-agency-os-starter
/plugin install ai-agency-os-starter@ai-agency-os
```
Or from your shell: `claude plugin marketplace add CalebAnderson-Coder/ai-agency-os-starter` then `claude plugin install ai-agency-os-starter@ai-agency-os`. Update later with `/plugin marketplace update ai-agency-os`.

## skills CLI (any agent that reads SKILL.md)
```bash
npx skills add CalebAnderson-Coder/ai-agency-os-starter
```

## macOS / Linux
```bash
git clone https://github.com/CalebAnderson-Coder/ai-agency-os-starter && cd ai-agency-os-starter
./install.sh            # global install into ~/.claude
# or per project:
./install.sh /path/to/your/project
```
## Windows (PowerShell)
```powershell
git clone https://github.com/CalebAnderson-Coder/ai-agency-os-starter; cd ai-agency-os-starter
powershell -ExecutionPolicy Bypass -File .\install.ps1
# or per project:
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Target C:\path\to\project
```
Tip: keep projects in paths without spaces (e.g. `C:\work\client`).

## Manual install
Copy `skills/*/*` folders into `~/.claude/skills/` and `agents/*.md` into `~/.claude/agents/`. Copy `CLAUDE.md` into your project root (merge if you already have one).

## Verify
Open Claude Code and type: `/skills` (or ask "what skills do you have?"). You should see the skills listed in README.md.

## Update
`git pull` and run the installer again (it overwrites only this pack's files).

## Uninstall
Delete the pack's folders from `~/.claude/skills/` and `~/.claude/agents/`.

## Client template
Copy `templates/clients/_template` to `<your-agency-folder>/clients/_template`.
