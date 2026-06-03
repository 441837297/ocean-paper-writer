# Journal Prose Benchmark

## Purpose

Extract sentence-level writing patterns from 2–3 published papers in the target journal,
producing a one-page **style card** that guides unit-level polish.
This is not journal distill (which handles format, structure, citation style) —
it targets how sentences advance scientific arguments: subject choice, gap phrasing,
verb strength, caveat placement, paragraph rhythm.

## When to Use

**Trigger:** User has confirmed target journal, and has 2–3 mineru-converted MD full-text
files (via zotero-mineru-plugin) from that journal.

**Timing:** Run **once**, before starting unit-level polish. Do not rerun for every unit.

**Do not run when:**
- No mineru MD files available (fall back to journal profile + style naturalization audit)
- Manuscript structure or evidence is not yet confirmed (run review/writing first)
- User only needs one-paragraph polish (overhead not justified)

## Required Inputs

- 2–3 mineru-converted MD files from the target journal (full text, not abstract-only)
- Target journal name (must match a configured journal profile or user-specified journal)
- The manuscript unit(s) about to be polished

## Reference Paper Selection

Use 2–3 papers with different weights:

- **1 closest-topic paper:** same object/system/method if available; highest prose weight.
- **1 same-journal, same-article-type paper:** calibrates journal rhythm.
- **1 adjacent-topic paper:** useful for broader framing, but lower sentence-level weight.

Flag and down-weight:
- Review-like prose
- Methods-heavy papers
- Papers whose subject domain differs substantially from the manuscript
  (e.g., biogeochemical/ecological papers when the manuscript is physical-oceanographic)
- Mineru/OCR-heavy files with corrupted sentence boundaries

## Extraction Dimensions

Read Abstract, Introduction, Results and Discussion in full.
Use Methods, captions and Extended Data only to calibrate caveat phrasing,
figure-call rhythm and methodological scope statements.
Do not produce a long report — the card is a polish reference, not a standalone document.

### 1. Opening choreography (Abstract + Introduction P1)

- What is the first sentence's subject — a phenomenon/object ("Mesoscale eddies are…")
  or a problem statement ("Climate change is…")?
- How many sentences before the first gap statement?
- What gap words appear: "Yet", "However", "remains unclear", "still lacking"?

### 2. "Here we…" block (Introduction final paragraph)

- Verb choice: "Here we show / combine / investigate / quantify / assess / identify"?
- Is it one sentence or two?
- Does it list specific questions ("whether…") or describe actions ("we quantify…")?
- Does it name data sources, time period, or region?

### 3. Results section openings

- Does each Results subsection start with a number, a qualitative finding,
  or a region/classification definition?
- How soon does the first figure call appear (sentence 1, 2, or 3)?
- Is the first sentence short (<20 words) or complex?

### 4. Gap precision

- What type of gap does the paper claim: knowledge gap, scale gap, mechanism gap,
  data gap, attribution gap, or object-based gap?
- Is the gap stated once (Introduction only) or reiterated in Results/Discussion?

### 5. Caveat placement and phrasing

- Where do caveats appear: Results (which section?), Discussion (which paragraph?),
  Methods, or figure captions?
- Are caveats before or after the positive finding?
- How are they phrased: "does not close…", "without…", "remains to be determined",
  "is best interpreted as…", "should not be interpreted as…"?
- Count caveats per section to calibrate acceptable density.

### 6. Discussion opening function

- Does the Discussion first sentence: restate findings, give an interpretive claim,
  connect to broader context, or state a limitation?
- How much overlap with Abstract/Conclusion?

### 7. Verb strength calibration

Count and categorize the main verbs in Results and Discussion:
- **Strong:** show, reveal, identify, quantify, indicate, demonstrate, organize,
  extend, link, account for, dominate
- **Moderate:** find, observe, detect, estimate, compare, associate, coincide with
- **Weak/defensive:** may, could, suggest, appear to, be consistent with,
  be compatible with, does not exclude

Note the ratio. Counts are diagnostic, not prescriptive — use ratios to locate
unusual defensiveness or overclaiming, not to maximize strong verbs.
NCC and similar high-impact journals tend to use strong verbs
for findings and moderate verbs for interpretations; weak verbs cluster in
limitation sentences.

### 8. Abstract sentence count and structure

- Total sentences?
- Rough functional sequence (e.g., object→gap→data→finding1→finding2→finding3→implication)?

### 9. Concrete vs. abstract noun ratio

Sample 3–4 paragraphs from Results and Discussion. Count:
- **Concrete nouns:** eddy, temperature, salinity, transport, anomaly, velocity,
  gradient, boundary, front, current, flux
- **Abstract nouns:** role, dimension, pathway, reorganization, response, expression,
  context, framework, signature, mechanism, implication

Target: concrete > abstract in Results; balanced in Discussion.

### 10. Paragraph functional purity

For 2–3 representative paragraphs in each section, label the paragraph's single
rhetorical job: [Definition] [Evidence] [Finding] [Mechanism] [Comparison]
[Limitation] [Implication]. Note whether any paragraph tries to do more than one job.

## Interpretation Rules

The benchmark extracts tendencies, not rules. Do not copy sentence templates
or force the manuscript to match every observed pattern.

### Reference weighting

Give highest weight to papers closest in topic, article type and evidential mode.
Use adjacent-topic papers to calibrate journal rhythm, not technical phrasing.

### Claim-strength ladder

Assign every key manuscript claim to one level before rewriting:

| Level | Definition | Allowed verbs |
|-------|-----------|---------------|
| 1. Observation / diagnostic result | Directly measured or diagnosed | show, reveal, identify, quantify, increase, decrease, dominate |
| 2. Association / covariation | Co-occurring changes | accompany, coincide with, track, align with, be associated with |
| 3. Mechanistic interpretation | Inferred from evidence but not directly tested | indicate, support, suggest, are consistent with |
| 4. Attribution / causality | Directly tested causal claim | demonstrate, drive, cause — use only when directly tested |

Rule: Use strong verbs for observed findings, moderate verbs for interpretations,
and defensive verbs only for explicit scope or limitation sentences.

### Caveat function taxonomy

Classify every caveat before polishing:

| Type | Meaning | Example phrasing |
|------|---------|-----------------|
| Scope boundary | What the diagnostic estimates | "is best interpreted as…" |
| Method limitation | What the dataset cannot resolve | "cannot resolve…" |
| Attribution boundary | What cannot be causally assigned | "does not establish causality" |
| Alternative explanation | What else may contribute | "may also reflect…" |
| Future-work opening | What remains to be tested | "remains to be determined" |

Preferred order: **positive finding → scope boundary → implication**.

Avoid: scope boundary → positive finding → second caveat.
Convert self-weakening caveats into scope delimiters where possible:
- Weak: "This does not close the energy budget."
- Stronger: "This diagnostic constrains where eddy rotation is most likely to
  strengthen, while leaving full energy-budget attribution for future work."

### Paragraph closing function

For each representative paragraph, record whether the final sentence is:
[Meaning sentence] [Numerical summary] [Mechanistic interpretation]
[Scope caveat] [Transition to next paragraph] [Future-work statement].

Polish rules:
- Results paragraphs should rarely end on caveats.
- Discussion mechanism paragraphs may end on scope boundaries.
- The final Discussion paragraph should end on implication, not limitation.

### Mineru/OCR quality control

Ignore corrupted text, broken formulas, reference lists and OCR-fragmented
captions when extracting prose patterns. Treat figure captions separately
from main-text prose — caption style follows journal-specific conventions
that may differ from running text.

## Manuscript-Aware Overlay

Before starting polish, identify 3–5 manuscript-specific prose risks from
the review report or advisor feedback. Common risks:

- Defensive caveats before positive findings
- Proposal-like "whether" wording in "Here we…" block
- Abstract noun clustering (role / dimension / pathway / reorganization / response)
- Discussion opening that restates Abstract as a findings list
- Results sentences that mix finding + mechanism + limitation in one sentence

Use the style card to correct these risks first. The overlay keeps the
benchmark focused on the manuscript's actual pain points rather than
generic journal imitation.

## Output: Style Card

Produce a compact reference card (aim for one printed page). Use bullet points,
not prose. Organize by manuscript section:

```
## NCC Style Card — [date extracted]
## Source papers: [3 paper short names]

### Abstract
- N sentences, functional sequence
- Gap word choice
- Verb strength

### Introduction
- P1 subject type, gap position
- P4 "Here we…" verb + structure
- Gap precision type

### Results
- Section opening pattern
- Figure-call timing
- Caveat frequency per section

### Discussion
- Opening function
- Caveat phrasing inventory
- Abstract/Discussion overlap level

### Global patterns
- Verb strength ratio (strong:moderate:weak)
- Concrete:abstract noun ratio
- Paragraph functional purity
```

## How to Use During Polish

After the style card is produced, do not refer back to the original papers
during unit-level polish. Polish each unit against the style card plus the
manuscript's own evidence boundaries.

For each unit being polished, check:

1. **Sentence function** — Does it match the section's role? (Results = report;
   Discussion = interpret. No mixing finding + mechanism + limitation in one sentence.)
2. **Gap language** — Does it match the card's precision type? Avoid generic
   "role remains unclear"; use object-specific gaps.
3. **Caveat placement** — Is the caveat after the positive finding? Is it a
   scope delimiter rather than a self-weakening statement? Does the paragraph
   end on implication rather than limitation?
4. **Verb strength** — Does it match the claim level? (Observation → strong;
   Interpretation → moderate; Limitation → defensive.)
5. **Concrete nouns** — Are abstract nouns (role, dimension, pathway, reorganization,
   response, expression, context) replaced with measurable objects where possible?
6. **Paragraph closing** — Does the final sentence deliver meaning rather than retreat?
7. **"Here we…" block** — Does it use completed-action framing (we combine / quantify /
   assess) rather than proposal-like "whether" questions?

The style card is a guide, not a template. Do not force-fit every sentence.
Preserve the manuscript's scientific identity and evidence boundaries.

## Distinction from Other Modules

| Module | Scope | Output |
|--------|-------|--------|
| Journal distill (`journals/_distill.md`) | Format, structure, citation style | Journal profile |
| Journal prose benchmark (this module) | Sentence-level writing patterns | One-page style card |
| Style naturalization audit (`polish.md`) | AI-like phrasing detection + rewrite | Risk-tagged report |
| Journal voice (`polish.md`) | General journal-appropriate tone | Applied during polish |
