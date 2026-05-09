# Style Naturalization

## Purpose

Reduce generic, over-smoothed, template-like academic phrasing and improve authorial academic style
while preserving scientific meaning and evidence boundaries.

## What This Is Not

- not AI-detection evasion
- not generic paraphrasing
- not a way to hide weak evidence
- not a way to strengthen unsupported claims
- not a substitute for review

## Two Modes

### 1. Inline polish mode

Used during normal paragraph-level polish.
The polish workflow loads leaf files as needed while refining individual units.

### 2. Audit mode

Used when the user asks for style naturalization, AI-like phrasing check,
authorial academic style review, or uploads a larger section for pre-submission quality review.

Audit mode follows:

Detect → User selection → Rewrite

- Detect produces a risk-tagged report; no rewriting happens yet.
- User selects what to fix (High / High+Medium / specific IDs / review-only).
- Rewrite applies changes only to selected items, preserving all evidence boundaries.

Full specification in `references/workflow/polish.md`, section "Style Naturalization Audit."

## Risk Tiers

| Tier | Meaning | Suggested use |
|------|---------|---------------|
| High | Likely to weaken credibility or overstate evidence | Rewrite by default unless domain language requires it |
| Medium | Sounds generic, over-smoothed, or repetitive | Rewrite when tone feels too polished or repetitive |
| Optional | Acceptable but can be improved if overused | Rewrite selectively based on context |

## Load one leaf file at a time

- `references/review/sentence-naturalization.md` — sentence rhythm, template openings, generic sentence structure
- `references/review/transition-naturalization.md` — formulaic transitions, content-driven logical connections
- `references/review/vocabulary-naturalization.md` — inflated novelty words, generic academic filler, ocean-science watchlist

## What to Preserve

- scientific meaning
- claim strength
- uncertainty
- citation gaps
- user's intended authorial voice
- ocean-science terminology (SST, EKE, MLD, SSH, Chl-a, mesoscale, etc.)

## Ocean-Specific Caution

Flag phrases that inflate:

- climate relevance into climate-change evidence
- regional results into global conclusions
- correlation into mechanism
- short observational records into climate trends
- model output into observed fact
- statistical significance into physical significance

## Lightweight Retrieval

| Category | Problem expression | Replacement |
|----------|--------------------|-------------|
| Vocabulary inflation | `groundbreaking` | `useful in practice` |
| Sentence overclaim | `This proves that ...` | `This suggests that ...` |
| Transition over-smoothing | `Moreover, it is worth noting that ...` | `Additionally, ...` or direct statement |

## Maintenance Rules

- Keep each entry short enough for direct reuse.
- Prefer replacements that preserve formal academic tone.
- Add rationale only when it helps explain the rewrite choice.
- Keep category filenames stable.
