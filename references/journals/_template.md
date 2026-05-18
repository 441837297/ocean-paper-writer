# Journal Profile Template

This template defines the six-section structure that every journal profile in this repository follows.

Journal profiles are **not** a submission-rule checklist.
They exist to help the AI understand what kind of story, reasoning, evidence, and writing voice the journal expects from an ocean science manuscript.
Hard constraints (word limits, figure counts, formatting) are deferred to the final section and treated as late-stage compression notes, not drafting constraints.

For the manuscript-building workflow, see the six core stages under `references/workflow/`; an optional cover-letter stage handles submission-facing publication materials (`references/workflow/cover-letter.md`).

---

## 1. Journal Narrative Identity

**Purpose:** Define what kind of scientific story this journal tells in the ocean sciences.

This section answers:

- What type of contribution feels natural in this journal? (a sharp mechanistic insight? a complete multi-evidence study? a cross-disciplinary synthesis?)
- What is the journal's core narrative personality? (fast and impactful? thorough and rigorous? mechanism-obsessed? big-picture?)
- What kinds of ocean science manuscripts fit poorly here, even if they are technically sound?
- What does a successful paper in this journal "feel like" when you read it?

**Do not include:**

- Word limits, figure limits, abstract length
- Submission system details or formatting specifications
- A generic list of "topics covered" copied from the journal website

---

## 2. Best-fit Ocean Science Stories

**Purpose:** Map the specific types of ocean science research that align with this journal.

Each journal profile should select only the contribution patterns that genuinely fit.
Example archetypes (choose relevant ones, not all):

| Contribution pattern | Description | Fits? |
|-----------|-------------|-------|
| Short, sharp discovery | A single clear finding with limited but sufficient evidence | Depends on journal |
| Complete observational-mechanistic study | Full chain from data through analysis to physical interpretation | Depends on journal |
| Dynamical process analysis | Mechanism-focused, often with diagnostics, scaling, or models | Depends on journal |
| Broad-significance cross-disciplinary story | Results that matter beyond the study region or sub-field | Depends on journal |
| Regional case with broader implication | A local study framed to speak to a general process or question | Depends on journal |
| Method/data-oriented contribution | New technique, dataset, or analytical framework | Depends on journal |
| Climate-change attribution | Connecting observed changes to anthropogenic forcing | Depends on journal |

**Guidance:**

- State clearly which contribution patterns are preferred, tolerated, and discouraged.
- For type "regional case": is the journal's bar for "broader significance" high or low?
- For type "method/data":
does the journal accept pure method papers, or must they demonstrate a scientific finding enabled by the method?

---

## 3. Preferred Reasoning and Evidence Logic

**Purpose:** Describe how the journal expects claims to be built, supported, and bounded.

This section answers:

- How should claims be supported? (one line of evidence sufficient, or multiple independent lines needed?)
- What counts as "enough evidence" for the central finding?
- Is mechanism expected, or is description sufficient? When is mechanism language allowed, and when is it overclaiming?
- How should uncertainty be handled? (error bars required? sensitivity tests? ensemble spread?)
- How does the journal view generalization beyond the study domain?
- What level of quantitative rigor is expected? (statistical significance, effect size, process-oriented diagnostics?)
- How should negative or null findings be reported?

**Key discipline-specific topics for ocean science:**

- When spatial/temporal coverage is limited (one cruise, one mooring, one season), how should the claim be bounded?
- How should satellite vs in situ vs model data be cross-referenced for consistency claims?
- How should seasonal cycle vs interannual variability vs long-term trend be distinguished when evidence is partial?
- Is "dynamical consistency" sufficient evidence, or is quantitative budget closure expected?

---

## 4. Section-level Story Strategy

**Purpose:** Define what narrative job each section performs in this journal's preferred story structure.

Cover these sections, focusing on **narrative function** rather than length:

### Introduction

- How should the research context be built? (narrow and specific? broad and accessible?)
- How should the knowledge gap be framed? (a missing process? conflicting evidence? methodological limitation?)
- When should the contribution and roadmap be stated? (early in the intro? end of intro?)
- How much literature context is expected? (only the most relevant? a comprehensive review?)

### Methods (or Data and Methods)

- Where does Methods appear in this journal? (after Introduction? after Discussion? supplementary?)
- How much methodological detail is expected for reproducibility?
- What data sources and processing steps must be documented? (quality control, gridding, filtering, anomaly calculation, statistical tests?)
- Should the study area be described as a separate subsection?

### Results

- Should Results be purely descriptive (what was found) or integrated with interpretation?
- Should figures be referenced in a logical order that builds the narrative?
- How should secondary or supporting findings be handled? (in main text? supplementary?)
- Can negative or inconclusive results be reported, and if so, how?

### Discussion

- What should Discussion accomplish? (mechanism interpretation? comparison with prior work? broader implications? limitations?)
- Should Discussion start with a recap of main findings?
- How much speculative or forward-looking content is acceptable?
- In some journals, are Results and Discussion combined? If so, how should the combined section be structured?

### Conclusion

- Should Conclusion be a short summary or an extended synthesis with future outlook?
- Can new evidence or analysis be introduced in Conclusion?
- How does the conclusion connect back to the gap stated in the Introduction?

### Abstract

- What is the typical abstract structure for this journal? (background-gap-method-result-implication? or result-first?)
- How much context vs result vs significance should the abstract convey?
- Does the journal permit references in the abstract?
- What makes an abstract clearly "fit" this journal vs read as generic?

---

## 5. Writing Voice and Rhetorical Style

**Purpose:** Describe the tone, rhythm, claim strength, and level of technicality the journal prefers.

Cover these dimensions:

### Sentence and paragraph rhythm

- Short, punchy sentences (GRL style) or longer, nuanced sentences (JGR style)?
- Paragraph length: dense and compact, or developed with multiple layers?

### Claim strength and hedging

- How direct should claims be? ("We demonstrate that..." vs "Our results suggest that...")
- When is hedging appropriate, and when does it weaken the message?
- How should limitations be acknowledged without undermining the contribution?

### Level of technicality

- How much domain jargon is assumed? (accessible to all ocean scientists? only physical oceanographers? only specialists?)
- Are mathematical formulations expected in the main text, or moved to appendix?
- How should acronyms be handled? (define on first use? limit their number?)

### Mechanism language

- How explicitly should physical mechanisms be stated? (qualitative description? process-oriented diagnostics? budget equations?)
- When is "causality" language justified vs too strong?

### Broader significance framing

- How much effort should go into selling the broader significance?
- For Nature-series journals: broad, narrative-driven framing required
- For AGU journals: significance should be scientific rather than societal unless data support societal claims
- For JPO: significance is mostly within physical oceanography; broader climate relevance is secondary

---

## 6. Late-stage Compression and Submission Notes

**Purpose:** Provide minimal actionable notes for the final pre-submission pass.

This section must be **short**. It is not a complete author guide.

Include only:

- **What to preserve during compression:** the core findings, the evidence chain, the journal-fit narrative
- **What to cut first if over length:** secondary figures, extended discussion tangents, excessive methodological detail
- **Hard constraints to verify:** approximate word count range, approximate abstract length, approximate figure count (if the journal is strict about these)
- **Structural pitfalls:** common last-minute format mismatches (e.g., no separate Conclusion when the journal expects one, Results and Discussion separated when they should be combined)
- **Submission checklist items** that are easy to forget:
data availability statement, author contributions, competing interests, cover letter requirements

**Do not turn this section into a full submission guide.** Three to five bullet points are sufficient.

---

*Template: references/journals/_template.md*
*This file defines the canonical structure for all journal profiles in this repository.
It should not be used as a writing guide itself.*
