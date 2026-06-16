# Journal Rule Distillation (On-demand)

## Purpose

When the user wants to target a journal not covered by the built-in journal profiles, the skill can distill writing and formatting rules from the journal's own materials.

This is triggered **only when the user explicitly requests it** by providing both:

1. A **submission guide URL** (the journal's "Guide for Authors" or equivalent page)
2. **3–4 recent papers** from the target journal (as .md, .pdf, or pasted text)

The skill reads all provided materials, extracts recurring patterns and rules, and produces a **sectionized journal profile** — a writing template organized by manuscript section, not an encyclopedia entry.

## When to Use

The user says something like:

> "I want to target [journal X]. Here is their submission guide: [URL]. Here are 3 recent papers."

The skill should NOT proactively offer to distill. Wait for the user to provide the materials.
If only one input is provided, ask for the missing one.

## Design Principle

The distilled profile is a **writing template organized by manuscript section**. When the writing agent drafts a Results paragraph, it loads `## Shared` + `## Results`. When it drafts Discussion, it loads `## Shared` + `## Discussion`. This sectionized structure enforces just-in-time loading: the agent never reads the whole file at once.

## Fixed H2 Schema

All journal profiles MUST use these exact H2 headings:

```
## Loading Contract
## Journal Identity
## Shared
## Introduction
## Results
## Discussion
## Methods
## Abstract
## Conclusion
## Journal-specific Front Matter
## Title and Keywords
## Figures, Tables, and Captions
## Data, Code, and Supplementary Materials
## Late-stage Polish
```

Do not rename, reorder, add custom headings, or omit any heading.

**Shared must not duplicate content from individual sections.** If a rule appears in `## Shared`, do not repeat it in `## Results` or `## Discussion`. Shared = cross-section rules only.

**No section duplicates House Rules.** House Rules are embedded in `writing.md` and apply globally. Journal profiles should not restate them.

## Distillation Workflow

### Step 1: Read the submission guide

Extract hard constraints. Tag as `[GUIDE]`:
- Article types, length limits, required sections
- Abstract format and length
- Figure/table/reference policies
- Data availability requirements

### Step 2: Read 3–4 provided papers — paragraph-level extraction (MANDATORY)

**This step must not be skipped.** The writing agent depends on paragraph-level rules.

For each paper, extract:

| What to extract | Why |
|----------------|-----|
| Results paragraph openings: first sentence of EVERY Results paragraph. Categorize as claim-first / context-first / method-first. Dominant pattern? | Determines `## Results` opening move rule |
| Results headings: sentence case or title case? Noun phrases or declarative sentences? | Determines `## Results` heading rule |
| Figure references: parenthetical "(Fig. X)" or sentence-subject "Figure X shows"? | Determines `## Results` figure behavior rule |
| Introduction P1 opening move: climate context? definition? gap? | Determines `## Introduction` opening rule |
| Introduction paragraph count and function per paragraph | Determines `## Introduction` architecture |
| Discussion structure: repeat Results or reinterpret? How are caveats handled? | Determines `## Discussion` rules |
| Forbidden patterns: what do these papers consistently NOT do? | Populates "Avoid" sections across all headings |

Tag as `[OBSERVED]` when ≥3 of 4 papers show the pattern.
Tag as `[INFERRED — verify with user]` when suggested but not definitive.

### Step 3: Write the profile following the fixed H2 schema

Each section below has a template. Fill in from extracted patterns. Do not invent content for empty sections — mark them `[INFERRED — verify with user]`.

---

#### Journal Identity

*用于 03 Structure 阶段。必须写成架构设计规则，不能写成期刊介绍。*

```markdown
### Core narrative identity
- [What kind of scientific story this journal rewards]
- [What counts as significance]
- [What claim depth is expected]

### Best-fit stories
- [Story type 1 — with example from provided papers]
- [Story type 2]

### Evidence logic
- [How evidence must support claims]
- [What is insufficient for this journal]

### Not a good fit when
- [Case 1]
- [Case 2]
```

---

#### Shared

*Must stay under 60 lines. Loaded for every writing task. If it grows, move content to section-specific headings.*

```markdown
### Global writing discipline
- Lead with the scientific claim, not setup or defense.
- State the positive finding before any boundary or caveat.
- Use one term for one concept throughout the manuscript.
- Avoid meta-commentary: "It is important to note/clarify that..."
- Caveats refine the claim, not replace it.
- Topic sentences advance the argument directly.

### Defensive phrasing rules
- Do not open a paragraph by stating what the study does NOT do.
- Replace "not X" with "quantifies Y."
- Delete "It is important to clarify that..."
- Write uncertainty as a condition, not a concession:
  "The net transport varies with polarity and pathway"
  not "Whether transport produces net effects depends on..."
- Attribution boundaries go after the claim, and only once.

### Claim and uncertainty
- [How to state claims at each evidence level]
- [How to place uncertainty — before or after the claim?]

### Terminology and voice
- [Preferred voice: active/passive, first-person/third-person]
- [Globally forbidden phrases]

### Paragraph craft
- [Default opening sentence rule across all sections]
- [Paragraph length tendency]
```

---

#### Introduction

```markdown
### Section role
- [What the Introduction must accomplish]

### Preferred architecture
1. [Opening move — broad context or specific problem?]
2. [Known context — what prior work established]
3. [Gap — specific unknown with specific obstacle]
4. [This paper's move — brief, no mechanism preview]

### Must do
- [Open with the problem this journal cares about]
- [State the gap concretely]
- ["Here, using [approach], we [finding]" in final paragraph]

### Avoid
- [Preview of full mechanism chain]
- [Definition of variables that belong in Results/Methods]
- ["This paper is organized as follows..."]
- [Opening with a narrow regional/oceanographic description]
```

---

#### Results

```markdown
### Section role
- [What Results must accomplish]

### Preferred architecture
1. [Detection]
2. [Robustness / confounders]
3. [Attribution / causal evidence — if available]
4. [Consequence / implication]

### Must do
- Open each paragraph with the finding (claim-first), not method or motivation.
- Pair every claim with quantification (magnitude, uncertainty, region, period).
- Place figure references parenthetically after the claim: "(Fig. 2a)."
- Keep paragraphs to 3–5 sentences.

### Figure behavior
- Never use "Figure X shows..." or "As shown in Fig. X..." as the main clause.
- Panel letters: lowercase. Supplementary: "Extended Data Fig. X", "Supplementary Fig. X".

### Avoid
- Method-first openings (except first paragraph of a new sub-section)
- "To examine whether..." as routine opener
- Ending paragraphs with a figure reference instead of interpretation
- Variable labels as headings
- "Interestingly," "Surprisingly," "Notably," "Importantly"
- Rhetorical questions
```

---

#### Discussion

```markdown
### Section role
- [What Discussion must accomplish]

### Preferred architecture
1. [Core finding restated in broader context]
2. [Mechanism interpretation — bounded by evidence]
3. [Regional / comparative context]
4. [Caveats — embedded, not ghettoized]
5. [Climate / Earth-system implications]
6. [Forward look — specific, not generic]

### Must do
- Reinterpret, contextualize, extend — do NOT repeat Results.
- Embed caveats: claim → caveat → why finding still stands.
- End with one specific implication or next question.

### Avoid
- Summarizing every Results sub-section figure-by-figure
- Isolating caveats in a standalone "Limitations" paragraph
- Generic "more research is needed"

### Caveat sandwich pattern
Statement of finding → "However, [alternative explanation]..." →
evidence isolating core signal → "Nevertheless, [finding stands]."
```

---

#### Methods

```markdown
### Section role
- [How much detail expected; main text or supplement?]

### Required detail
- Data sources: access, coverage, resolution, version
- Processing choices that affect results
- Statistical methods: trend estimation, significance, autocorrelation
- Uncertainty quantification
- Sensitivity tests

### Avoid
- Overlong processing detail in main text (→ supplement)
- Missing uncertainty treatment
```

---

#### Abstract

```markdown
### Section role
- [What the abstract must do]

### Preferred architecture
1. [Problem — why this matters]
2. [Gap — what was unknown]
3. [Approach — brief]
4. [Main quantified finding]
5. [Climate / Earth-system implication]

### Must do
- Start with the problem, not the ocean process.
- Include key quantification.
- End with significance, not generic filler.

### Avoid
- Method-first opening
- Full mechanism chain
- Generic final sentence
```

---

#### Conclusion

```markdown
### Section role
- [Separate Conclusion or integrated into Discussion?]

### Must do
- [Restate central finding and significance]

### Avoid
- [New data, new mechanism, unsupported promise]
```

---

#### Figures and Captions

```markdown
### Figure logic
- [How figures support the story arc]
- [One scientific question per main figure]

### Caption style
- [Self-contained or concise?]
- [Title: sentence case? declarative or noun phrase?]

### Avoid
- [Panel inventory without scientific question]
```

---

#### Late-stage Polish

```markdown
### Compression priorities
- [What to compress first; what must NOT be compressed]

### Voice alignment
- [Title, abstract, opening: foreground the journal's core concern?]
- [Terms defined for the journal's expected audience?]

### Submission-facing notes
- [Length limits, article type, format requirements]
```

---

### Step 4: Save

Save to the user's project: `03_structure/03_journal-profile_[journal-name].md`

### Step 5: Present and confirm

Present a summary. Ask: "Does this match your understanding of this journal? I'll adjust before proceeding."

## What the Distilled Profile Replaces

Once confirmed, the distilled profile serves the same role as a built-in journal profile during structure, writing, review, and polish stages.

## Guardrails

- Only distill rules **actually observed** across the provided materials. Do not invent.
- Tag every rule with its source: `[GUIDE]`, `[OBSERVED]`, or `[INFERRED — verify with user]`.
- If papers show conflicting patterns, flag to user rather than picking one.
- The profile is project-specific. Do not save into the skill repository unless the user asks.
- **Paragraph-level extraction is mandatory.** Without it, the writing agent has no actionable rules.
- **Shared section ≤ 60 lines.** If longer, content belongs in section-specific headings.
- **Do not skip sections.** Every H2 heading must be filled or marked `[INFERRED]`.
