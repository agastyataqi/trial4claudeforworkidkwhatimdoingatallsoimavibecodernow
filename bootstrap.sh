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

# Install pandoc if missing (used to convert .docx drafts to .md before review)
if ! command -v pandoc >/dev/null 2>&1; then
  if command -v apt-get >/dev/null 2>&1; then
    SUDO=""
    [ "$(id -u)" -ne 0 ] && SUDO="sudo"
    if $SUDO apt-get update -qq >/dev/null 2>&1 \
       && $SUDO apt-get install -y pandoc >/dev/null 2>&1; then
      echo "[bootstrap] Installed pandoc ($(pandoc --version | head -1))"
    else
      echo "[bootstrap] WARNING: failed to install pandoc via apt-get — skipping"
    fi
  else
    echo "[bootstrap] WARNING: apt-get not found; skipping pandoc install"
  fi
else
  echo "[bootstrap] pandoc already installed ($(pandoc --version | head -1))"
fi
