#!/bin/bash
set -euo pipefail

REPO="agastyataqi/trial4claudeforworkidkwhatimdoingatallsoimavibecodernow"
BRANCH="main"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

curl -fsSL "https://github.com/${REPO}/archive/refs/heads/${BRANCH}.tar.gz" \
  | tar -xz -C "$TMP" --strip-components=1

mkdir -p ~/.claude/agents ~/.claude/commands
cp -rf "$TMP/.claude/agents/." ~/.claude/agents/
cp -rf "$TMP/.claude/commands/." ~/.claude/commands/
[ -f "$TMP/CLAUDE.md" ] && cp -f "$TMP/CLAUDE.md" ~/.claude/CLAUDE.md

echo "[bootstrap] Synced agents, commands, and CLAUDE.md from ${REPO}@${BRANCH} to ~/.claude/"
