#!/usr/bin/env bash
# AI Agency OS installer (macOS/Linux). Usage: ./install.sh [project_dir]
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
if [ $# -ge 1 ]; then ROOT="$(cd "$1" && pwd)"; T="$ROOT/.claude"; MD="$ROOT/CLAUDE.md"; else ROOT=""; T="$HOME/.claude"; MD="$T/CLAUDE.md"; fi
mkdir -p "$T/skills" "$T/agents"
n=0
for mod in "$DIR"/skills/*/; do
  for sk in "$mod"*/; do cp -R "$sk" "$T/skills/"; n=$((n+1)); done
done
a=0
if [ -d "$DIR/agents" ]; then for f in "$DIR"/agents/*.md; do cp "$f" "$T/agents/"; a=$((a+1)); done; fi
SRC=""; [ -f "$DIR/CLAUDE.md" ] && SRC="$DIR/CLAUDE.md"; [ -z "$SRC" ] && [ -f "$DIR/CLAUDE-lite.md" ] && SRC="$DIR/CLAUDE-lite.md"
if [ -n "$SRC" ]; then
  if [ -f "$MD" ]; then cp "$SRC" "$(dirname "$MD")/CLAUDE.agency-os.md"; echo "Existing CLAUDE.md kept. Merge $(dirname "$MD")/CLAUDE.agency-os.md into it."
  else cp "$SRC" "$MD"; echo "CLAUDE.md -> $MD"; fi
fi
if [ -d "$DIR/templates/clients/_template" ] && [ -n "$ROOT" ]; then mkdir -p "$ROOT/clients"; cp -R "$DIR/templates/clients/_template" "$ROOT/clients/"; echo "Client template -> $ROOT/clients/_template"; fi
echo "Installed $n skills and $a agents into $T. Open Claude Code and run /skills"
