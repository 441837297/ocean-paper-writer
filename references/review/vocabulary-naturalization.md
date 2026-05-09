# Vocabulary Naturalization

Reduce inflated novelty words and generic academic filler without replacing necessary ocean-science terminology.
Preserve domain-specific expressions (SST, EKE, MLD, stratification, mesoscale, etc.).

## High Risk

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| groundbreaking | useful in practice | Promotional, exaggerated, and often unsupported |
| revolutionary | substantial | Reads like marketing instead of academic evaluation |
| transformative | meaningful | Often signals inflated contribution language |
| unprecedented | not previously reported in this dataset / context | Vague unless explicitly evidenced |
| crucially | importantly / directly | Often over-emphasizes ordinary transitions |

## Medium Risk

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| robust | stable / consistent / reliable under [condition] | Too generic without context |
| comprehensive | broad / multi-part / dataset-wide | Can hide what is actually covered |
| insightful | informative | Tends to sound subjective |
| seamless | coherent / smooth | Overly polished for academic prose |
| leverage | use / draw on | Common AI-era business-academic hybrid wording |

## Optional

| Problem expression | Replacement | Why risky |
|--------------------|-------------|-----------|
| notably | omit or specify the point directly | Fine occasionally, weak when repeated |
| significantly | materially / by X% / statistically significantly | Needs evidence or precision |
| effective | effective at [task] | Acceptable if tied to evidence |
| advanced | specific technical descriptor | Too vague if used alone |

---

## Vocabulary Watchlist

These are patterns to flag during detection — not banned words.
Each group explains why the pattern can be risky and when the word may still be legitimate.

### Generic academic filler

Phrases that pad text without adding scientific content.

| Expression | Why risky | When legitimate |
|-----------|-----------|-----------------|
| plays a key role in | Vague placeholder for a specific mechanism | When the mechanism is explicitly stated in the same sentence |
| has important implications for | Overused, rarely specifies what the implications are | When concrete implications follow immediately |
| provides new insights into | Inflated novelty claim | When genuinely reporting a novel finding with evidence |
| sheds light on | Metaphorical filler | Rarely; prefer specific description |
| it is worth noting that | Empty signposting | Remove in nearly all cases |
| it is important to mention that | Same as above | Remove |

### Inflated novelty / strength words

Words that overstate contribution when evidence does not support them.

| Expression | Why risky | When legitimate |
|-----------|-----------|-----------------|
| groundbreaking | Promotional, rarely justified | Almost never in academic prose |
| novel | Often claimed without establishing what is new | When a genuine methodological or observational advance is demonstrated |
| unprecedented | Vague unless explicitly scoped | When tied to a specific dataset, region, or period with evidence |
| robust | Too generic without specifying conditions | When tied to sensitivity tests or uncertainty quantification |
| comprehensive | Can hide what is actually covered | When the scope is explicitly bounded |
| crucial | Often over-emphasizes ordinary findings | When the finding is genuinely decision-relevant or resolves a debate |
| remarkable | Subjective judgment | Avoid; let the reader judge |
| demonstrates | Implies proof in most contexts | Only when a formal proof or decisive experiment is presented |
| proves | Even stronger than demonstrates | Almost never in empirical ocean science |

### Ocean-science overclaim triggers

Terms that should trigger an evidence check, not automatic replacement.

| Expression | Risk | Check |
|-----------|------|-------|
| climate-change signal | May conflate variability with forced trend | Is a formal detection/attribution analysis performed? |
| global implication | Regional study claiming global reach | Is the finding replicated across multiple basins? |
| mechanism | Implies causal chain | Is process-based diagnostics or modeling evidence provided? |
| driver | Implies causality | Is the causal direction established? |
| attribution | Formal statistical or process-based assignment | Is an attribution method applied? |
| regime shift | Implies a persistent state change | Is the shift statistically identified and tested? |
| long-term trend | Implies climate-scale change | Is the record long enough to separate from decadal variability? |
| observed evidence | May conflate satellite/remote sensing with in situ | Is the observation type clearly specified? |
| robust response | Generalizes stability | Are sensitivity tests reported? |
| Earth-system consequence | Global-scale claim | Is a global analysis or model presented? |

### Important rules

- Do not replace statistical "significant" when tied to a stated statistical test.
- Do not replace ocean-science technical terms (SST, SSH, EKE, MLD, Chl-a, stratification, mesoscale, submesoscale, baroclinic, etc.).
- Do not weaken legitimate findings unnecessarily.
- Replace inflated wording with specific evidence-based wording.

*Module: vocabulary*
