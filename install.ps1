# AI Agency OS installer (Windows PowerShell 5.1+ / PowerShell 7)
# Usage: powershell -ExecutionPolicy Bypass -File .\install.ps1 [-Target C:\path\to\project]
param([string]$Target = "")
$ErrorActionPreference = "Stop"
$Dir = Split-Path -Parent $MyInvocation.MyCommand.Path
if ($Target) { $Root = (Resolve-Path $Target).Path; $T = Join-Path $Root ".claude"; $MD = Join-Path $Root "CLAUDE.md" }
else { $Root = ""; $T = Join-Path $HOME ".claude"; $MD = Join-Path $T "CLAUDE.md" }
New-Item -ItemType Directory -Force -Path (Join-Path $T "skills"), (Join-Path $T "agents") | Out-Null
$n = 0
foreach ($mod in Get-ChildItem (Join-Path $Dir "skills") -Directory) {
  foreach ($sk in Get-ChildItem $mod.FullName -Directory) { Copy-Item $sk.FullName (Join-Path $T "skills") -Recurse -Force; $n++ }
}
$a = 0
$ag = Join-Path $Dir "agents"
if (Test-Path $ag) { foreach ($f in Get-ChildItem $ag -Filter *.md) { Copy-Item $f.FullName (Join-Path $T "agents") -Force; $a++ } }
$Src = $null
if (Test-Path (Join-Path $Dir "CLAUDE.md")) { $Src = Join-Path $Dir "CLAUDE.md" } elseif (Test-Path (Join-Path $Dir "CLAUDE-lite.md")) { $Src = Join-Path $Dir "CLAUDE-lite.md" }
if ($Src) {
  if (Test-Path $MD) { Copy-Item $Src (Join-Path (Split-Path $MD) "CLAUDE.agency-os.md") -Force; Write-Host "Existing CLAUDE.md kept. Merge CLAUDE.agency-os.md into it." }
  else { Copy-Item $Src $MD; Write-Host "CLAUDE.md -> $MD" }
}
$tpl = Join-Path $Dir "templates\clients\_template"
if ($Root -and (Test-Path $tpl)) { $cl = Join-Path $Root "clients"; New-Item -ItemType Directory -Force -Path $cl | Out-Null; Copy-Item $tpl $cl -Recurse -Force; Write-Host "Client template -> $cl\_template" }
Write-Host "Installed $n skills and $a agents into $T. Open Claude Code and run /skills"
