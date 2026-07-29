# JPO

*Journal of Physical Oceanography*

---

## Loading Contract

- **When writing Introduction**: load `## Shared` + `## Introduction`
- **When writing Results**: load `## Shared` + `## Results`
- **When writing Discussion**: load `## Shared` + `## Discussion`
- **When writing Methods**: load `## Shared` + `## Methods`
- **When writing Abstract**: load `## Shared` + `## Abstract`
- **When writing Title**: load `## Shared` + `## Title and Keywords`
- **When preparing figures/tables**: load `## Shared` + `## Figures, Tables, and Captions`
- **When polishing**: load `## Shared` + `## Late-stage Polish`
- **House Rules** embedded in `writing.md` apply globally and are not restated here.

---

## Journal Identity

### Core narrative identity
- Dynamics-first, mechanism-first. The central contribution is a physical mechanism, a dynamical process, or a theory-guided explanation of an oceanographic phenomenon.
- The paper must answer not just "what happens" but "why it happens" — through budget closure, instability analysis, scaling arguments, or process diagnostics.
- A successful JPO paper takes the reader from a physical question, through diagnostic evidence, to a dynamical interpretation.
- The contribution is measured by how much physical understanding advances, not by how many datasets are assembled.

### Best-fit stories
- **Dynamical mechanism story**: identifies and diagnoses a physical mechanism controlling an ocean process — which instability feeds the eddy field, how topographic steering modifies circulation, what balance sets the stratification.
- **Process diagnosis story**: organized around quantitative diagnosis — momentum/vorticity/energy budget closure, frontogenesis diagnostics, water-mass transformation analysis.
- **Scaling or balance story**: uses scaling analysis, non-dimensional numbers, regime diagrams, or dominant-balance arguments to explain system behavior.
- **Instability, eddy, wave, or boundary-process story**: focused on a specific physical process — baroclinic/barotropic instability, eddy-mean flow interaction, frontogenesis, mixed-layer instabilities, topographic Rossby waves.
- **Theory-guided observational story**: designed to test, constrain, or validate a physical theory. States the theoretical prediction first, then presents observations evaluating it.
- **Model-observation mechanism story**: observations identify a phenomenon; model/idealized experiments diagnose the mechanism.

### Not a good fit when
- Central finding is descriptive and physical mechanism is not diagnosed — the result can be stated without answering "why it happens."
- Contribution is primarily about data, methods, or regional characterization without a process-level question.
- Multi-evidence completeness without dynamical insight.
- Significance is primarily cross-disciplinary or climate-impact without mechanism depth.

### Evidence logic
- **One well-closed budget is stronger than ten suggestive patterns.** A single quantitative budget demonstrating dominant terms carries more weight than multiple figures showing consistent spatial patterns.
- **Diagnostics must be appropriate to the question.** A claim about eddy energy pathways requires energy conversion diagnostics (KmKe, PeKe), not just EKE maps. Frontal dynamics claims require frontogenesis diagnostics, not just SST gradient maps.
- **Sensitivity tests strengthen mechanism claims.** When methodological choices could affect conclusions, robustness must be demonstrated.
- **Alternative explanations should be considered.** A mechanism claim is stronger when plausible alternatives are explicitly addressed.
- **Budget residuals should be reported and discussed.** Non-zero residuals do not invalidate a budget, but ignoring them weakens the claim.
- Statistical significance: uncertainty quantification expected but p-values and formal hypothesis tests are not mandatory — physically meaningful effect sizes and budget closure often carry the argument.

---

## Shared

### Global writing discipline
- Active voice throughout. "We analyzed..." not "An analysis was conducted." [OBSERVED 5/5]
- "We" is the default authorial voice. First-person plural is standard and expected. [OBSERVED 5/5]
- Lead with physical reasoning, not data description. The diagnostic logic drives the narrative.
- Use one term for one concept throughout the manuscript.
- Define specialized terms on first use. JPO readers are physical oceanographers and GFD specialists — technical terminology is expected, but clarity remains essential.
- Minimize acronyms. Do not create an acronym for a term used ≤3 times.
- Equations can appear in the main text where they define the diagnostic framework. Always accompany equations with plain-language physical explanation. [OBSERVED 5/5]
- Paragraphs: 4–8 sentences. JPO paragraphs are information-dense, developing one diagnostic step or interpretive point. [OBSERVED]

### Claim language calibration
| Evidence level | Use |
|---|---|
| Direct process diagnostics (budget closure, energy conversion, PV analysis) | "demonstrates", "shows that", "reveals that", "is generated by", "is dominated by", "controls" |
| Strong pattern with physical consistency but no direct budget | "is consistent with", "suggests", "indicates", "is sustained by" |
| Scaling or regime-based reasoning | "is consistent with", "supports the interpretation that" |
| Plausible mechanism not directly diagnosed | "may reflect", "could be related to", "might be explained by" |
| Observed co-occurrence, mechanism unknown | "coincides with", "is collocated with", "is associated with" |
| Cannot support | Do not use causal language ("drives", "controls") without budget dominance, sensitivity experiments, or closed energy pathways |

**Mechanism verb gate**: match the verb to the evidence tier. "Associated with" belongs only in the co-occurrence tier — if a physical pathway has been diagnosed, use that tier's verbs instead. When the mechanism is known, "is generated by", "is sustained by", or "draws energy from" is always preferred over "is associated with".

### Figure references
- AMS style: "Fig." abbreviated in parenthetical references. [OBSERVED 5/5]
- "Figure" spelled out only at sentence start. [OBSERVED 5/5]
- "Figs." for multiple figures parenthetically. [OBSERVED]
- Parenthetical "(Fig. 2a)" is the default. [OBSERVED: dominant in 4/5 papers]
- Sentence-subject "Figure X shows..." is acceptable, especially at subsection transitions. [OBSERVED: Yan 2023, Yang 2021, Huang 2023]
- Panel letters: lowercase. Supplementary: "Fig. S1".

### Forbidden patterns (all sections)
| Do not write | Write instead |
|---|---|
| "Interestingly," "Surprisingly," "Remarkably," | Let the evidence carry the emphasis |
| "It is worth noting that..." | State the point directly |
| "In order to..." | "To..." |
| Inflated claims without diagnostic support | Match claim strength to budget/diagnostic evidence |
| "[claim], which has profound implications for climate." | Specify the dynamical implication with quantification or a concrete pathway |
| "Novel," "groundbreaking," "first-ever," "unprecedented" | Let the contribution speak through the diagnostics |
| "plays a pivotal/critical/key role in" | Name the physical process: transports, converts, advects, dissipates |
| "is associated with" (when a mechanism is known) | Name the mechanism: "is generated by", "is sustained by", "is driven by" |
| "ideal laboratory", "analogous to storms/atmosphere", or similar metaphors | State the dynamical reason directly: "the region concentrates strong shear/instability/energy conversion." JPO papers do not use metaphorical framing. [OBSERVED 5/5] |

### JPO-specific requirements
- Methods BEFORE Results (standard IMRaD). [OBSERVED 5/5]
- AMS style throughout: "Fig." abbreviation, sentence-case headings. [OBSERVED 5/5]
- "The rest of the paper is organized as follows..." is acceptable and common in Introduction. [OBSERVED: Wang 2023, Yang 2021, Ni 2021; also Yan 2023 with variant]
- Standalone limitation paragraphs are standard in Discussion. [OBSERVED: Yan 2023, Huang 2023, Yang 2021]
- Bullet points acceptable in merged Discussion/Conclusions for summarizing findings. [OBSERVED: Huang 2023, Yang 2021]
- Data availability statement required (AMS policy). [OBSERVED 5/5]

### Paragraph craft
- No single dominant opening pattern. JPO allows more variety than other journals. [OBSERVED across 5 papers]
- Claim-first: ~30% (range 7–53%). Opens with the diagnostic finding.
- Context-first: ~31% (range 23–48%). Opens with physical reasoning or background that motivates the next diagnostic step.
- Method-first: ~26% (range 5–50%). "To quantify/explore/examine..." — common at subsection starts or when introducing a new diagnostic.
- Figure-first: ~10% (range 0–29%). "Figure X shows..." — acceptable, especially in data-rich subsections.
- Never open with rhetorical filler or generic statements.

---

## Introduction

### Section role
Establish a **dynamical question**, not just a knowledge gap. The gap should be framed in physical terms — e.g., "the dynamical balance controlling the separation latitude remains unclear" or "the mechanism by which topographic roughness dissipates internal tide energy is debated." This is stronger than "few studies have examined." [OBSERVED 5/5]

### Architecture (4–5 paragraphs) [OBSERVED: 4–5]
1. **P1 — Broad physical context**: Open with the phenomenon's dynamical importance, not generic climate significance. Establish what is known about the physics. [OBSERVED 5/5]
2. **P2–P(n-1) — Narrow to the dynamical gap**: What specific mechanism, balance, or regime is unresolved? What competing hypotheses exist? Why has it remained unresolved?
3. **Final P — This paper's contribution**: State the diagnostic approach and the key mechanism finding. Include the roadmap sentence ("The rest of the paper is organized as follows...") — this is acceptable and common in JPO. [OBSERVED: Wang 2023, Yang 2021, Ni 2021]

### Opening move [OBSERVED 5/5]
- OK: "The Kuroshio Current (KC), as the western boundary current (WBC) of the subtropical North Pacific, flows along the east coast of the Luzon–Taiwan Islands..." (Yan 2023)
- OK: "Submesoscale currents with a horizontal scale of O(0.1–50) km and a time scale of O(1) days are ubiquitous in the ocean." (Yang 2021)
- OK: "Mesoscale eddies are ubiquitous features of the global ocean circulation and play a key role in transporting ocean properties and modulating air–sea exchanges." (Ni 2021)
- Avoid: generic climate opening without dynamical anchoring.

### Must do
- Frame the gap as a physical question, not a data gap.
- State what diagnostic approach is used and why it can resolve the question.
- "The rest of the paper is organized as follows..." in the final paragraph is acceptable. [OBSERVED]

### Avoid
- "Few studies have examined..." without explaining why the dynamics are unresolved.
- Exhaustive literature review — cite the most directly relevant dynamical precedents.
- Full mechanism preview (save for Results).

---

## Results

### Section role
Present the evidence chain from pattern to process to mechanism. Each subsection advances one step in the diagnostic argument. JPO Results can include more physical interpretation than GRL or NC — mechanism language is appropriate when tied to specific diagnostics. [OBSERVED 5/5]

### Evidence ladder [OBSERVED]
1. **Pattern/description**: the observed or simulated phenomenon that establishes what needs to be explained.
2. **Diagnostic decomposition**: which terms dominate the budget, which energy pathway sustains the field, which instability is active.
3. **Mechanism synthesis**: how the diagnostics explain the pattern — the physical "why."
4. **Robustness**: sensitivity tests, cross-dataset validation, budget residual analysis.

### Paragraph opening rule [OBSERVED]
- JPO allows significant variety. No single pattern dominates across papers.
- Claim-first: preferred for interpretive paragraphs. State the diagnostic finding, then support with evidence. [OBSERVED: Wang 2023 ~53%, Yang 2021 ~46%]
- Context-first: common when introducing a new diagnostic framework or transitioning between physical regimes. [OBSERVED: Yan 2023 ~48%, Huang 2023 ~36%]
- Method-first: acceptable at subsection starts or when introducing a new diagnostic. "To quantify the contributions...", "To explore the vertical structure..." [OBSERVED: Huang 2023 ~43%, Ni 2021 ~50%]
- Figure-first: acceptable in data-rich subsections. "Figure X shows the seasonal evolution..." [OBSERVED: Yan 2023 ~29%]
- Revert to claim-first after the diagnostic frame is established.
- Never open with rhetorical filler.

### Paragraph structure
Claim or context → quantified diagnostic evidence → spatial/temporal/uncertainty detail → physical interpretation.
4–8 sentences. Never end a paragraph with only a figure reference.

### Results headings [OBSERVED 5/5]
- Sentence case throughout (AMS style). [OBSERVED 5/5]
- Noun phrases exclusively: "Seasonal variability of EKE," "Buoyancy conversion," "Global distribution." [OBSERVED 5/5]
- Declarative sentence headings: not observed. Avoid.
- Numbered subsections standard: "3.1.", "3a.", "4a." — both decimal and letter-number formats observed.

### Avoid
- Figure-by-figure walkthrough as the only organizing principle.
- Descriptive-only Results without mechanistic interpretation.
- Ending paragraphs with only a figure reference.
- Variable labels as headings.
- "Interestingly," "Surprisingly," "Remarkably" as paragraph openers.

---

## Discussion

### Section role
Complete the mechanism argument: reinterpret findings in physical terms, address alternative explanations, compare with theoretical predictions and prior diagnostic studies, bound the mechanism's applicability. JPO Discussion can be technically detailed. [OBSERVED 5/5]

### Section naming [OBSERVED]
- Both merged and separate formats observed:
  - "Discussion and conclusions" [Yan 2023]
  - "Discussion" + "Summary" [Wang 2023]
  - "Conclusions and discussion" [Huang 2023]
  - "Conclusions" standalone [Ni 2021]
  - "Summary and discussion" [Yang 2021]
- All are acceptable. Choose based on the paper's structure.

### Architecture [OBSERVED]
1. Summary of main dynamical findings (1 paragraph).
2. Mechanism interpretation — what the diagnostics mean in physical terms.
3. Quantitative comparison with prior work — explain agreement or disagreement in terms of dynamics.
4. Alternative explanations — why the evidence favors the proposed mechanism over alternatives.
5. Implications for broader understanding of circulation, transport, mixing, or variability.
6. Limitations — standalone paragraphs are standard and expected. [OBSERVED: Yan 2023, Huang 2023, Yang 2021]
7. Forward look — one specific diagnostic question or next step.

### Caveat handling [OBSERVED]
- **Standalone limitation paragraphs are the norm in JPO.** Three patterns observed:
  1. Single limitation paragraph near end of Discussion. [Yan 2023: "It should be noted that..."]
  2. Multiple limitation paragraphs, each addressing a specific assumption. [Yang 2021: "A limitation of this study is...", "Another limitation of the present study is..."]
  3. Caveats embedded in individual argument paragraphs. [Wang 2023: counter-example testing within Discussion]
- All are acceptable. Limitations should be specific and physically motivated, not boilerplate.
- JPO reviewers expect honest, technically precise limitation statements.

### Must do
- Restate the central dynamical finding in physical terms.
- Address alternative dynamical explanations explicitly.
- Bound the mechanism — under what forcing, stratification, topographic, or parameter conditions does it apply.
- Limitations must be specific: what the diagnostic framework cannot resolve, which assumptions matter most.

### Avoid
- Restating Results figure-by-figure without physical reinterpretation.
- Generic limitation statements ("more research is needed").
- Expanding into climate implications without a dynamical link to the diagnosed mechanism.
- New data, new mechanism, or claims absent from Results.

---

## Methods

### Section role
Sufficient detail for a specialist to reproduce the diagnostics and evaluate the approach. Methods BEFORE Results (IMRaD). [OBSERVED 5/5]

### Organization [OBSERVED]
- Subsections organized by data type, analytical step, or diagnostic framework.
- A standalone "Analysis framework" section for key equations is common and acceptable in JPO. [OBSERVED: Yan 2023 section 2, Yang 2021 section 2b–d]
- Study area description can be integrated into data description or introduced in context of why the region is dynamically instructive. [OBSERVED]

### Required detail
- Data sources: access information, spatial/temporal coverage, resolution, product version. [OBSERVED]
- Model configuration: resolution, forcing, parameterizations, experiment design. [OBSERVED]
- Processing steps that affect the central claim, with justification for choices made.
- Diagnostic framework: budget equations, energy conversion terms, scaling relationships — with plain-language explanation of physical meaning. [OBSERVED 5/5]
- Statistical methods with justification (why this filter, why this cutoff period, why this significance test).
- Sensitivity tests for key methodological choices.

### Must do
- State why each methodological choice was made, not only what was done.
- Equations defining the diagnostic framework belong in Methods or a dedicated Analysis Framework section — with accompanying plain-language explanation. [OBSERVED]
- Connect each method to the physical question it addresses.
- JPO Methods are more detailed than GRL Methods — equations and derivations are welcome.

### Avoid
- "Data were processed using standard methods" without specifying parameters.
- Placing primary validation of the central method only in supplementary material.
- Missing uncertainty treatment for the central claim.

---

## Abstract

### Section role
Communicate the dynamical contribution: physical problem → diagnostic approach → mechanism finding → dynamical implication. A successful JPO Abstract reads like an answer to a dynamical question, not a data report. [OBSERVED 5/5]

### Architecture [OBSERVED]
1. Physical problem or phenomenon (1–2 sentences).
2. Diagnostic approach and data (1 sentence).
3. Key mechanism finding with quantification (1–2 sentences).
4. Dynamical implication or significance (1 sentence).

### Must do
- Start with the physical question or phenomenon.
- State the diagnostic method briefly.
- Present the key mechanism finding with quantification.
- End with what this means for ocean dynamics — specific, not generic.

### Avoid
- Method-first opening.
- Full mechanism chain (one causal step is enough).
- Generic final sentence.
- Excessive jargon — JPO abstracts should be accessible to the broader physical oceanography community.

### Significance Statement
- AMS encourages but does not require a Significance Statement for JPO articles. [GUIDE]
- If included: place immediately after the Abstract, unnumbered heading "Significance Statement".
- ≤120 words, plain language aimed at an educated layperson without formal training in the sciences.
- Answer: (1) what was done and why; (2) key findings and why they matter; (3) optional follow-up science.
- Avoid jargon, acronyms, equations, and technical terms. First person ("we") is permissible.
- Quantitative descriptions preferred over vague comparisons (e.g., "the new parameterization reduces bias by 15%" not "works better").
- Do NOT repeat the abstract in plainer words — write a genuinely different, accessible explanation of why the work matters.

---


## Conclusion

### Section role
JPO allows both merged Discussion/Conclusions and standalone Conclusion sections. [OBSERVED: 3/5 merged, 2/5 separate]

### Format options
- Merged "Discussion and conclusions" or "Summary and discussion" — most common. [OBSERVED: Yan 2023, Huang 2023, Yang 2021]
- Standalone "Conclusions" or "Summary" section — acceptable. [OBSERVED: Wang 2023, Ni 2021]
- Bullet points for key findings within the merged section are acceptable. [OBSERVED: Huang 2023, Yang 2021]

### Must do
- Restate the physical problem and diagnostic approach succinctly.
- Summarize the mechanism finding with supporting evidence.
- State the dynamical significance.
- Optionally include 1–2 sentences on where the mechanism may apply or what diagnostic question remains.

### Avoid
- New diagnostic results or analysis.
- Repeating methodological details.
- Expanding into speculative implications beyond what the mechanism supports.

---

## Title and Keywords

### Title format [OBSERVED 5/5]
- Sentence case or Title Case — both observed. Title Case slightly more common in recent papers.
- Noun phrase, never a declarative sentence.
- Pattern: "[Key variable/process] [preposition/participle] [context/region]"
- "Seasonal Variability of Eddy Kinetic Energy along the Kuroshio Current" (Yan 2023)
- "Spatial and Temporal Characteristics of the Submesoscale Energetics in the Gulf of Mexico" (Yang 2021)
- "Abundant Cold Anticyclonic Eddies and Warm Cyclonic Eddies in the Global Ocean" (Ni 2021)

### Must do
- Include the key variable, process, AND study region in the title.
- Descriptive and technically precise — JPO titles identify the specific dynamical topic.
- Keep under ~25 words.

### Avoid
- Declarative-sentence titles.
- Question titles.
- Foregrounding the method rather than the dynamical finding.

### Keywords
- JPO publishes a keyword block with the article (AMS style). [OBSERVED 5/5]
- Select 5–8 keywords: key process, diagnostic method, geographic region, data type.
- Standard AMS keyword format.

---

## Figures, Tables, and Captions

### Figure logic
- One diagnostic question per main figure.
- Each figure advances one step in the mechanism argument.
- JPO allows substantial figures (typically 8–15 main-text figures).
- Figures that do not advance mechanism understanding → Supplementary.

### Caption style [OBSERVED]
- AMS style: "FIG. 1." — all caps, with period. [OBSERVED: Yang 2021, Huang 2023]
- Self-contained: a reader should understand the figure without referring to the main text.
- First sentence states what is shown.
- Remaining sentences describe panels, data sources, methods, sample sizes, statistics.
- Panel labels: lowercase (a, b, c) in bold or parentheses.

### Must do
- Include time period, sample size, and statistical information in every caption.
- Define all abbreviations in each caption (self-contained).

### Avoid
- Panel inventory without a diagnostic question.
- Captions that assume the reader has already read the main text.

---

## Data, Code, and Supplementary Materials

### Data availability [OBSERVED 5/5]
- "Data availability statement" section after Conclusions / before Acknowledgments (AMS requirement).
- List every dataset with: full product name, version, persistent DOI/URL.
- AMS requires data used in figures to be publicly available.

### Code availability
- State software/version for each key analysis step.
- Provide repository DOI or URL for custom analysis code.

### Supplementary materials
- Detailed derivations of standard equations, extended validation, sensitivity tests → Supporting Information.
- JPO has no strict page limit for SI.
- Supplementary figures follow the same caption rules as main figures.
- AMS uses "supplemental material" terminology.

### Avoid
- Placing essential evidence for the central mechanism claim only in Supplementary.
- Missing data availability statement (AMS requirement at submission).

---

## Late-stage Polish

### Compression priorities
Preserve during shortening:
1. The diagnostic framework (key equations, budget terms, or scaling relationships).
2. The evidence directly supporting the mechanism claim (dominant budget terms, energy conversion values, sensitivity tests).
3. The mechanism interpretation in Discussion that completes the dynamical argument.
4. Figures showing core diagnostics — budget closure, leading-order terms, or process-oriented analysis.

Cut first:
1. Extended background on the study region or well-known phenomena.
2. Secondary pattern descriptions that do not advance the mechanism.
3. Lengthy validation of standard methods (→ Supplementary).
4. Discussion of implications not directly connected to the diagnosed mechanism.

### Voice alignment
- Verify claim language matches evidence strength (see Shared calibration table).
- Verify every diagnostic claim is tied to specific evidence (budget term, conversion value, sensitivity test).
- Check that limitations are specific and physically motivated — not boilerplate.
- JPO voice: technically precise, dynamics-grounded, diagnostically rigorous. Not fast or flashy.
- "We" should be used for authorial actions (analyze, examine, quantify), not for opinions.
- Physically specific verbs preferred: "advects", "mixes", "shoals", "deepens", "steepens", "intensifies", "dissipates" over vague "affects", "influences", "changes".

### Submission-facing checks
- Verify current JPO word limit, figure count, abstract length against the manuscript.
- Confirm Data Availability Statement and author contributions are present (AMS requirement).
- Check AMS formatting: "Fig." abbreviation, sentence-case headings, reference format.
- Apply length constraints only during this pass, not during drafting.

---

*Journal profile restructured 2026-06-10 to H2 schema (fixed headings per _distill.md).*
*Content migrated from original §1–§6 (Voice Principles + 6-section structure).*
*Paragraph-level extraction from 5 JPO papers: Yan2023 (MCHFV3EI), Wang2023 (96NRSYWP), Huang2023 (LQH67FJS), Ni2021 (WJVWP5BX), Yang2021 (D5KTEASH).*
*Key JPO differentiators: dynamics-first/mechanism-first narrative, "Fig." abbreviation (AMS style), "organized as follows" acceptable in Introduction, standalone limitation paragraphs standard, no single dominant paragraph opening pattern, bullet points allowed in Discussion/Conclusions, equations in main text with Analysis Framework sections, "we" dominant authorial voice, sentence-case headings, physically specific verbs expected.*
