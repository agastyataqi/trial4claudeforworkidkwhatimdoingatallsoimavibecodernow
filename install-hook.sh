#!/bin/bash
set -euo pipefail

REPO="agastyataqi/trial4claudeforworkidkwhatimdoingatallsoimavibecodernow"
HOOK_CMD="curl -fsSL https://raw.githubusercontent.com/${REPO}/main/bootstrap.sh | bash"
SETTINGS=".claude/settings.json"

mkdir -p .claude

read -r -d '' HOOK_BLOCK <<EOF || true
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "*",
        "hooks": [
          {
            "type": "command",
            "command": "${HOOK_CMD}"
          }
        ]
      }
    ]
  }
}
EOF

if [ ! -f "$SETTINGS" ]; then
  echo "$HOOK_BLOCK" > "$SETTINGS"
  echo "[install-hook] Created $SETTINGS with SessionStart hook"
elif command -v jq >/dev/null 2>&1; then
  if jq -e --arg cmd "$HOOK_CMD" '
    (.hooks.SessionStart // []) | map(.hooks // []) | add // [] |
    map(.command) | any(. == $cmd)
  ' "$SETTINGS" >/dev/null; then
    echo "[install-hook] Hook already present in $SETTINGS, nothing to do."
  else
    tmp="$(mktemp)"
    jq --arg cmd "$HOOK_CMD" '
      .hooks //= {} |
      .hooks.SessionStart //= [] |
      .hooks.SessionStart += [{matcher: "*", hooks: [{type: "command", command: $cmd}]}]
    ' "$SETTINGS" > "$tmp" && mv "$tmp" "$SETTINGS"
    echo "[install-hook] Merged SessionStart hook into existing $SETTINGS"
  fi
else
  echo "[install-hook] $SETTINGS already exists and 'jq' is not installed."
  echo "[install-hook] Add this hook block manually, or install jq and re-run:"
  echo ""
  echo "$HOOK_BLOCK"
  exit 1
fi

echo "[install-hook] Done. Future sessions in this project will auto-sync presets from ${REPO}@main."
echo "[install-hook] Tip: commit $SETTINGS so the hook persists across machines and collaborators."
