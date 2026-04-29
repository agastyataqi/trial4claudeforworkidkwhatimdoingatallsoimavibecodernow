# Session Log — agastyataqi presets repo

Reverse-chronological capture of working sessions on this preset library.
Newest entries at the top. Each entry is appended via `/done` (option 2 — project-level append).

<!-- written by: claude-code-web-sandbox at 2026-04-29 -->

---

## [2026-04-29] — [Buku 2 Setup + Claude Code Preset Library]
SESSLOG:[2026-04-29]

**Project(s):** Buku 2 B40 Maritim (workflow setup); Claude Code preset library (infrastructure)
**Duration:** Extended

### Decisions
- Installed `/council` command + 11 critic personas (skills-engineer, skeptic, pre-mortem, budget-hawk, academic-editor, harsh-referee, methodologist, grant-strategist, funder-officer, chief-of-staff, proposal-critic) into `<repo>/.claude/` on branch `claude/install-council-setup-tsvGq`.
- Installed prompt family (`/prompt`, `/prompt-only`, `/prompt-refine`, `formatting-core` reference), `/done`, and `/review-plan` into `<repo>/.claude/commands/`.
- Wrote personal `CLAUDE.md` memory file (process engineer + project manager + consultant; deliverables in Bahasa Indonesia; address as "Master") and committed at `<repo>/CLAUDE.md` (project-level memory) and `~/.claude/CLAUDE.md` (user-level memory).
- Polished Buku 2 project custom instructions: separated durable rules from workflow rules; replaced `DO NOT HALLUCINATE` with positive-framed `[CITATION NEEDED]` + `[unverified]` rules; added scope-discipline statement (Buku 2 is business-model, not technical).
- Adopted three-file architecture for report writing: `doc-skeleton.md`, `points-log.md`, `claims-registry.md` — to be created and maintained per report.
- Recommended workflow split: drafting + citation verification stays in base claude.ai; council review and batch operations on file-state move to Claude Code.

### Approaches Rejected
- `--chef-skill` flag for non-skill topics — wrong panel for substantive infrastructure analysis.
- Adding more rules to Buku 2 custom instructions to fix hallucinations and redundancy — architectural problem, not a rules problem.
- Earlier overclaim that "Claude Code verifies URLs; base claude.ai cannot" — corrected; both can verify with web search. Claude Code wins on batch / persistence / parallelism, not on web access per se.

### Open Questions
- Column name in `Bagi2 Tugas Buku 2 & 3` that holds chapter numbering (placeholder in polished custom instructions).
- Exact filename of the IMO regulations compilation file uploaded to the Buku 2 project.
- Whether to commit the polished Buku 2 custom instructions to the preset repo for durability.

### Follow-ups
- [ ] Master provides the two placeholder values; finalize the polished custom instructions and paste into the Buku 2 project on claude.ai.
- [ ] Draft starter `doc-skeleton.md`, `points-log.md`, `claims-registry.md` seeded for B40 maritime report.
- [ ] On next chapter draft: apply the new workflow — outline-first, section-by-section, `[CITATION NEEDED]` placeholders, post-draft council review, citation-verification pass.
- [ ] Optional: open this preset repo in Claude Code (web or local) on next session to use `/council`, `/prompt`, etc. natively.

### Artifacts
- Committed `<repo>/.claude/agents/` — 11 critic persona files (commit `626ae7a`).
- Committed `<repo>/.claude/commands/council.md` (commit `626ae7a`).
- Committed `<repo>/CLAUDE.md` — personal memory (commit `c791413`).
- Committed `<repo>/.claude/commands/done.md, prompt.md, prompt-only.md, prompt-refine.md, review-plan.md` + `prompt-references/formatting-core.md` (commit `c791413`).
- Branch on remote: `claude/install-council-setup-tsvGq` at HEAD `c791413`.
- B40 maritime council run (4 critics + synthesis) — captured in conversation only; not saved to file. Consensus verdict: REVISE. Top blockers: eastern-fleet quality cascade, international bunker non-acceptance (ISO 8217 / FuelEU), BPDPKS subsidy fragility.

### Context
Setup session for the user's preset library on a fresh Claude Code Web sandbox. The repo `agastyataqi/trial4claudeforworkidkwhatimdoingatallsoimavibecodernow` is positioned as a presets-only repo (per Master's own framing) — Claude Code commands/agents/skills committed here so they survive sandbox recycling. Next session can pick up either (a) finalizing Buku 2 custom instructions, (b) seeding the three workflow files for the B40 maritime report, or (c) starting an actual chapter draft using the new outline-first / section-by-section / `[CITATION NEEDED]` workflow.
