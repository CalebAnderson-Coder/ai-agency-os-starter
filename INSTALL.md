# Installation — lead-magnet

Requirements: [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed and logged in (Claude Pro/Max or API), Node.js 18+ for the dev skills, Git (optional).

Claude Code loads skills from `~/.claude/skills/` (global) or `<project>/.claude/skills/` (per project), and agents from `.claude/agents/`.

## macOS / Linux
```bash
unzip lead-magnet.zip && cd lead-magnet
./install.sh            # global install into ~/.claude
# or per project:
./install.sh /path/to/your/project
```
## Windows (PowerShell)
```powershell
Expand-Archive lead-magnet.zip -DestinationPath . ; cd lead-magnet
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
Download the latest zip from your Gumroad library and run the installer again (it overwrites only this pack's files).

## Uninstall
Delete the pack's folders from `~/.claude/skills/` and `~/.claude/agents/`.

## Client template
Copy `templates/clients/_template` to `<your-agency-folder>/clients/_template`.
