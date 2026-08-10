# Cover Letter Workflow

## Purpose

Cover-letter work prepares a concise editor-facing letter from confirmed manuscript claims and a
confirmed target journal. It introduces the submission, explains journal fit, states the main
contribution, and supplies required declarations.

## Inputs

- confirmed target journal;
- latest confirmed manuscript;
- confirmed central contribution and claim boundary;
- corresponding-author details;
- data and code availability information;
- canonical target-journal papers when journal-fit comparison is useful.

Follow the global Stage/Step, Source Scope, evidence, interaction, and target-journal guidance in
`SKILL.md`.

## Steps

1. Confirm the target journal and manuscript version.
2. Extract the title, central contribution, main finding, and supported significance from the
   manuscript and structure files.
3. Collect missing author and availability details.
4. For a bounded journal-fit or rhetorical question, invoke
   `references/subagents/reference-reading.md` and use its compact brief.
5. Draft the letter in this functional sequence:
   - submission statement;
   - one-sentence manuscript description;
   - journal fit;
   - specific knowledge gap;
   - key finding and significance;
   - declarations;
   - concise closing.
6. Check every scientific statement against the confirmed manuscript.
7. Save `06_cover-letter/06_cover-letter.md` and obtain user confirmation.

## Writing Guidance

Treat the letter as an editor-facing argument rather than a compressed abstract. Use concrete
scientific objects and actions, cite related journal papers only when they materially support the
fit argument, and keep method detail to what the editor needs to understand the contribution.

When reference papers are unavailable, mark `[REFERENCE PAPERS PENDING]` for claims that require
journal-specific support and draft only what the confirmed manuscript and journal scope establish.

## Output

Use `references/templates/06_cover-letter.md` to create
`06_cover-letter/06_cover-letter.md`. Complete all author and declaration placeholders before final
assembly.
