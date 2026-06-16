# Cover Letter Workflow

## Purpose

Stage 06 is a publication-material stage, not a manuscript-building core stage.
It generates cover letter material from confirmed manuscript outputs only.
The workflow does not create new scientific claims.

Goals:
- Align the contribution statement explicitly with the target journal's stated scope
- Include all four required content blocks: contribution, data/code availability,
  conflict of interest, corresponding author
- Use journal-specific framing, not generic academic prose
- Refuse to generate if the journal profile is not available

## When to Use

Run cover letter when: the polish stage is complete; the manuscript draft is confirmed;
the user is ready to submit; and a target journal is confirmed.

Do **not** run cover letter when: the manuscript is still being drafted or reviewed;
no target journal is confirmed; or the user only wants to explore journal options.

## Confirmed Materials Used

This stage draws from confirmed outputs only:

- `03_structure/03_section-architecture.md` — central story, claim hierarchy
- `04_writing/04_manuscript-reviewN-polishM.md` or latest confirmed manuscript — manuscript text and key findings
- `05_review/05_review-round{N}B_report.md` — confirmed claims and journal fit
- `04_writing/04_writing-log.md` — revision and polish records
- Target journal profile — scope and aims for contribution alignment

## What This Stage Must Not Do

- Invent novelty, central contribution, or claims not confirmed in prior stages
- Invent journal-fit rationale or editorial promises
- Invent reviewer expectations or unsupported significance claims
- Substitute for a journal submission checklist or formatting checker

## Required Inputs

- Confirmed target journal (must match one of the built-in journal profiles, or one
  distilled on demand)
- Manuscript draft or abstract (for extracting title and key contribution)
- Corresponding author details (name, email, institution)
- Data/code availability information (repository URLs or "not publicly available")

If the central contribution or target journal is missing, mark `[MISSING]` or
`[CONFIRM WITH USER]`. If a cover-letter claim needs literature support and no source
is available, mark `[CITATION NEEDED]`.

## Required Output

```
06_cover-letter/06_cover-letter.md
```

## Journal Profile Requirement

This stage requires a journal profile. If the target journal profile is not in the
built-in list and has not been distilled, refuse with:

> Journal profile for [X] not found. Available: GRL, JGR-Oceans, JPO,
> Nature Communications, Nature Climate Change. You can also request on-demand
> distillation if you provide a submission guide URL and 3–4 recent papers.

Do not proceed with generic framing if the profile is missing.

## Ask Strategy

Ask at most 3 questions before proceeding. Skip any that are already provided:

1. **Target journal** — required; determines which profile to load.
2. **Corresponding author details** (name, email, institution) — ask as a single
   grouped question.
3. **Data/code availability** — are datasets or code publicly available? If yes,
   ask for repository URLs. Default to "Data are not publicly available" if user
   declines.

If author details are not provided and user declines: use bracketed placeholders.

## Letter Format

Use the following locked format:

```
[Date]

The Editor-in-Chief
[Editor Name]
[Journal Name]

Dear [Editor Name],

We submit our manuscript entitled "[Paper Title]" for consideration in
[Journal Name].

**Contribution Statement**
[1–2 sentences explicitly referencing the journal's stated scope from
the loaded profile]

**Data and Code Availability**
[Repository URLs, or "Data are not publicly available due to [reason]."]

**Conflict of Interest**
The authors declare no conflict of interest.

**Corresponding Author**
[Name]
[Email]
[Institution]

Sincerely,
[Authors]
```

### Contribution Statement Rule

Write 1–2 sentences that explicitly reference the journal's stated scope from the
loaded profile. Use journal-specific framing:

> This paper addresses [X], which aligns directly with [Journal]'s focus on
> [scope phrase from profile].

Do not use generic framing ("this paper advances the field of...").

### Data/Code Block

List repository URLs if provided. Otherwise state the reason or default to
"Data are not publicly available."

### Conflict of Interest

Always use the standard declaration.

### Contact Block

Use provided author details, or bracketed placeholders if not provided.

## Interaction Flow

1. Confirm target journal → load journal profile
2. Collect missing inputs (author details, data availability) — 3 questions max
3. Extract paper title and key contribution from manuscript draft
4. Draft the letter using the locked format
5. Output to `06_cover-letter/06_cover-letter.md`
6. Ask user to review and confirm

## Edge Cases

| Situation | Handling |
|-----------|----------|
| Journal profile not found | Refuse; do not generate with generic framing |
| Author details declined | Use `[Corresponding Author Name]`, `[Email]`, `[Institution]` placeholders |
| Data availability unknown | Use "Data availability will be confirmed at revision stage." |
| Multiple authors listed | Ask which one is the corresponding author |

## Guardrails

- Do not generate a cover letter without a confirmed target journal profile.
- Do not use generic journal framing. The contribution statement must reference
  the journal's actual scope from the loaded profile.
- Do not fabricate author details, data repositories, or editor names.
- Do not skip the contribution statement alignment step.
