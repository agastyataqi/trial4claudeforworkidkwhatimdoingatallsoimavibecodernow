# Install Guide — Claude Code Preset Library

This repo contains a personal Claude Code preset library: slash commands, critic agents, and a memory file. This guide covers three install paths, in order of preference.

> **Quick orientation:** if you opened this repo in Claude Code on the web, the SessionStart hook in `.claude/settings.json` should auto-install everything for you on the first session. The first session may show a permission prompt approving the hook command — approve it. Subsequent sessions are silent.

---

## Path 1 — Automatic via SessionStart hook (default, recommended)

**What it does:** every time a Claude Code session opens this repo, a hook copies the repo's `.claude/agents/`, `.claude/commands/`, and `CLAUDE.md` into the user-level `~/.claude/` directory. After the copy, all slash commands and persona-agent dispatches work in that session.

**Setup:** none. Just open the repo in Claude Code on the web (or `cd` into the cloned repo locally and start `claude code`).

**First-time approval:** Claude Code may prompt you to approve the SessionStart hook command on first run. It's the line in `.claude/settings.json` under `hooks.SessionStart`. Approve it once; future sessions skip the prompt.

**To verify it worked:** in the new session, ask Claude:

> List the slash commands and agents currently available, then list the contents of `~/.claude/agents/` and `~/.claude/commands/`.

You should see `/council`, `/done`, `/prompt`, `/prompt-only`, `/prompt-refine`, `/review-plan`, plus 11 critic agents (skeptic, pre-mortem, budget-hawk, etc.).

**To verify the hook is firing:** at the top of the session, you should see a line like:

```
[SessionStart] Presets synced from repo to ~/.claude/ (agents, commands, CLAUDE.md)
```

If you don't see it, the hook didn't fire. Fall through to Path 2.

---

## Path 2 — Manual one-liner (if the hook doesn't fire)

Open a fresh Claude Code session on this repo and ask Claude to run this single command in Bash:

```bash
mkdir -p ~/.claude/agents ~/.claude/commands/prompt-references && cp -rf .claude/agents/. ~/.claude/agents/ && cp -rf .claude/commands/. ~/.claude/commands/ && cp -f CLAUDE.md ~/.claude/CLAUDE.md && ls ~/.claude/agents/ ~/.claude/commands/
```

**What this does, line by line:**
- `mkdir -p ~/.claude/agents ~/.claude/commands/prompt-references` — create the destination folders if they don't exist (`-p` means "no error if already there").
- `cp -rf .claude/agents/. ~/.claude/agents/` — copy every `.md` file from the repo's agents folder into the user-level agents folder, overwriting if needed.
- `cp -rf .claude/commands/. ~/.claude/commands/` — same for commands, including the `prompt-references/` subfolder.
- `cp -f CLAUDE.md ~/.claude/CLAUDE.md` — copy the personal memory file to user-level so every Claude Code session loads it (not just sessions opened on this repo).
- `ls ~/.claude/agents/ ~/.claude/commands/` — list the destination contents so you can verify the copy worked.

You should see the 11 agent files and the 7 command files (plus `prompt-references/`).

---

## Path 3 — Fully manual, file by file (last resort)

Use this if Path 1 and Path 2 both fail. You can run these commands one at a time and inspect the result after each.

### Step 3.1 — Create destination folders

```bash
mkdir -p ~/.claude/agents
mkdir -p ~/.claude/commands/prompt-references
```

`mkdir` makes a directory. `-p` means "create parents if missing, don't error if it exists." `~` is shorthand for your home directory.

### Step 3.2 — Copy the agents

```bash
cp .claude/agents/skills-engineer-agent.md ~/.claude/agents/
cp .claude/agents/skeptic-agent.md ~/.claude/agents/
cp .claude/agents/pre-mortem-agent.md ~/.claude/agents/
cp .claude/agents/budget-hawk-agent.md ~/.claude/agents/
cp .claude/agents/academic-editor-agent.md ~/.claude/agents/
cp .claude/agents/harsh-referee-agent.md ~/.claude/agents/
cp .claude/agents/methodologist-agent.md ~/.claude/agents/
cp .claude/agents/grant-strategist-agent.md ~/.claude/agents/
cp .claude/agents/funder-officer-agent.md ~/.claude/agents/
cp .claude/agents/chief-of-staff-agent.md ~/.claude/agents/
cp .claude/agents/proposal-critic-agent.md ~/.claude/agents/
```

`cp` copies a file. The first argument is the source, the second is the destination. Trailing slash on a directory says "copy into this directory."

### Step 3.3 — Copy the commands

```bash
cp .claude/commands/council.md ~/.claude/commands/
cp .claude/commands/done.md ~/.claude/commands/
cp .claude/commands/prompt.md ~/.claude/commands/
cp .claude/commands/prompt-only.md ~/.claude/commands/
cp .claude/commands/prompt-refine.md ~/.claude/commands/
cp .claude/commands/review-plan.md ~/.claude/commands/
cp .claude/commands/prompt-references/formatting-core.md ~/.claude/commands/prompt-references/
```

### Step 3.4 — Copy the personal memory

```bash
cp CLAUDE.md ~/.claude/CLAUDE.md
```

### Step 3.5 — Verify everything is in place

```bash
ls -la ~/.claude/agents/ ~/.claude/commands/ ~/.claude/commands/prompt-references/ ~/.claude/CLAUDE.md
```

`ls -la` lists the contents of a directory in long format, including hidden files. If a file is missing, the corresponding `cp` step failed — re-run that step.

---

## What's in this repo

### Slash commands (`/council`, `/done`, etc.)

| File | Command | Purpose |
|---|---|---|
| `.claude/commands/council.md` | `/council` | Parallel critics + separate synthesis. Default panels for plan / paper / decision / grant. |
| `.claude/commands/done.md` | `/done` | Session capture. Writes a structured entry to a session log. |
| `.claude/commands/prompt.md` | `/prompt` | Format an informal request into a structured prompt and execute it. |
| `.claude/commands/prompt-only.md` | `/prompt-only` | Same as above but format only — do not execute. |
| `.claude/commands/prompt-refine.md` | `/prompt-refine` | Audit an existing prompt against quality criteria, output an improved version. |
| `.claude/commands/review-plan.md` | `/review-plan` | Run a review pass on a draft plan. |
| `.claude/commands/prompt-references/formatting-core.md` | (reference) | Shared formatting rules used by the `/prompt` family. |

### Critic agents (used by `/council` panels)

| File | Persona | Used in |
|---|---|---|
| `.claude/agents/skills-engineer-agent.md` | Skills engineer | plan, chef-skill |
| `.claude/agents/skeptic-agent.md` | Adversarial skeptic | plan, decision |
| `.claude/agents/pre-mortem-agent.md` | Pre-mortem narrator | plan, decision |
| `.claude/agents/budget-hawk-agent.md` | Cost-discipline reviewer | plan |
| `.claude/agents/academic-editor-agent.md` | Academic editor | paper, grant |
| `.claude/agents/harsh-referee-agent.md` | Reviewer-2 referee | paper, grant |
| `.claude/agents/methodologist-agent.md` | Methodology reviewer | paper, grant |
| `.claude/agents/grant-strategist-agent.md` | Grant strategist | grant |
| `.claude/agents/funder-officer-agent.md` | Program officer | grant |
| `.claude/agents/chief-of-staff-agent.md` | Decision support | decision |
| `.claude/agents/proposal-critic-agent.md` | Tip / skill ranker | tip pipelines |

### Memory file

| File | Purpose |
|---|---|
| `CLAUDE.md` | Personal context loaded by Claude Code at session start (project-level, when this repo is the working directory). When copied to `~/.claude/CLAUDE.md`, also loads at session start in every Claude Code session, regardless of repo. |

### Session log

| File | Purpose |
|---|---|
| `SESSION_LOG.md` | Append-only log of `/done` captures from this repo. Reverse chronological. |

### Hook configuration

| File | Purpose |
|---|---|
| `.claude/settings.json` | Defines the SessionStart hook that auto-installs presets on session start. |

---

## How to use it

After install (any path), in a new Claude Code session you can:

```
/council --type plan <topic>          ← spin up a 4-critic plan review
/council --type paper file:draft.md   ← review a manuscript file
/council --type decision <question>   ← decision-support panel
/done                                  ← capture session decisions, follow-ups
/prompt <informal request>             ← format and execute
/prompt-only <informal request>        ← format only, do not execute
/prompt-refine <paste an existing prompt>  ← audit and improve a prompt
/review-plan <plan or file path>      ← review-plan workflow
```

Address the assistant by your preferred form (set in `CLAUDE.md` to "Master").

---

## Troubleshooting

**Slash commands not showing up.**
- Check current branch: `git branch --show-current`. Should be `main` or `claude/install-council-setup-tsvGq`. Both have everything.
- Check files exist: `ls .claude/commands/`. Should see seven `.md` files plus a `prompt-references/` directory.
- Check user-level install: `ls ~/.claude/commands/`. If empty or missing files, re-run Path 2.
- Restart the Claude Code session after install. Some harness versions only scan `.claude/` at session start.

**Council fails with "subagent_type not found".**
- Means the agents are not registered at user-level. Project-level agents in `.claude/agents/` may not auto-register as subagent_types depending on the harness version.
- Fix: copy them to user-level via Path 2 or Path 3. The SessionStart hook does this automatically.

**SessionStart hook didn't run.**
- Check `.claude/settings.json` exists in the repo root (not in `.claude/agents/` or another subfolder).
- First-time sessions may require approval. Look for a permission prompt in the chat.
- Some Claude Code versions disable hooks by default. Check `~/.claude/settings.json` user-level config for a `disableHooks: true` flag and remove it if present.
- As a fallback, just run Path 2's one-liner manually.

**`CLAUDE.md` content not appearing in Claude's behavior.**
- Project-level `CLAUDE.md` only loads when the working directory is inside this repo. If you open Claude Code in another folder, the project-level memory does not load.
- For global memory, copy to `~/.claude/CLAUDE.md` (the SessionStart hook does this).

**Want to remove everything.**
- User-level: `rm -rf ~/.claude/agents/ ~/.claude/commands/ ~/.claude/CLAUDE.md`. (Be careful — this also removes anything else you put there manually.)
- Project-level: just don't open the repo, or delete `.claude/` from your local clone.

---

## Updating presets from upstream

If the upstream repo (`chrisblattman/claudeblattman`) ships a new version of a command:

```bash
curl -o .claude/commands/<command>.md https://raw.githubusercontent.com/chrisblattman/claudeblattman/main/skills/<command>.md
git add .claude/commands/<command>.md
git commit -m "Update /<command> to latest upstream version"
git push
```

Then rerun the SessionStart hook (or Path 2's one-liner) to push the updated file to `~/.claude/`.

---

## Notes

- This repo is intentionally a presets-only repo. It is not a working code repository. Real project work happens elsewhere.
- The Indonesian-language preferences and project context in `CLAUDE.md` are personal to the repo owner. If you fork this for your own use, replace `CLAUDE.md` with your own context.
- Session logs in `SESSION_LOG.md` are append-only and may contain notes about ongoing work. They are not sensitive but they are personal.
