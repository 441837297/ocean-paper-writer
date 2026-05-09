# Results and Discussion Writing

## Purpose

This module is used during the 04 writing stage to:
- convert figure evidence from the evidence inventory into Results prose;
- convert Results into bounded Discussion interpretation;
- prevent overinterpretation of results into unsupported mechanisms or causal claims.

## Results paragraph pattern

Each Results paragraph follows:

finding → figure evidence → quantitative detail → spatial/temporal pattern → bounded interpretation

- **finding:** state what was observed, not what it means.
- **figure evidence:** reference the specific figure/table that supports the finding.
- **quantitative detail:** include numbers, units, magnitudes, trends.
- **spatial/temporal pattern:** where and when the pattern occurs.
- **bounded interpretation:** lightweight interpretation confined to what the evidence allows;
  save mechanism discussion for the Discussion section.

## Discussion paragraph pattern

Each Discussion paragraph follows:

finding recap → mechanism candidate → literature comparison → uncertainty → implication

- **finding recap:** one sentence restating the key result.
- **mechanism candidate:** physical process that may explain the result,
  with diagnostics or literature support.
- **literature comparison:** how the result aligns with or differs from prior work.
- **uncertainty:** what the analysis cannot constrain.
- **implication:** what the result means for the broader system or question,
  bounded by evidence.

## Boundary between Results and Discussion

- **Results** answers *what was found.*
  Lightweight interpretation is allowed but unsupported mechanism is not.
- **Discussion** answers *what it may mean* and *how it relates to mechanisms and literature.*
  Do not repeat figure descriptions. Interpret the evidence.
- A paragraph that both presents a result and discusses its mechanism should be split.

## Figure-to-claim rule

- At most one main claim per paragraph.
- Every claim must trace to a figure, table, method, or citation.
- If a claim cannot be traced, mark `[CITATION NEEDED]` or `[CONFIRM WITH USER]`.
- A visual pattern is not automatically a confirmed mechanism.

## Ocean-science overclaim checks

Before finalizing any Results or Discussion paragraph, check:

| Risk | Check |
|------|-------|
| correlation → causation | Is the causal direction established? |
| regional result → global conclusion | Is the finding replicated beyond the study region? |
| short record → climate trend | Is the record long enough to separate from decadal variability? |
| climate relevance → climate-change evidence | Is a formal detection/attribution analysis performed? |
| model result → observed fact | Is the distinction between simulation and observation clear? |
| statistical significance → physical significance | Is the effect size physically meaningful? |
| mechanism language | Is there diagnostic or literature support for the proposed mechanism? |

## Literature support in Results and Discussion

- Results may need literature support for defining phenomena, comparing baselines,
  or referencing established methods.
- Discussion typically requires more Zotero support for literature comparison,
  mechanism interpretation, and broader context.
- Never fabricate references. Gaps are marked `[CITATION NEEDED]`.
- Each Zotero call requires user confirmation before querying.

## Paragraph examples

**Results paragraph (satellite + Argo):**

> Eddy kinetic energy (EKE) in the Kuroshio Extension increased by
> 12 ± 4 cm² s⁻² per decade over 1993–2022 (Fig. 3a).
> The increase is strongest during winter (DJF) and concentrated in the
> 145°E–160°E band, where the mean zonal flow also strengthened
> by 0.05 ± 0.02 m s⁻¹ per decade.
> The spatial correspondence between EKE trends and mean-flow acceleration
> is consistent with enhanced baroclinic energy conversion,
> although instability diagnostics are presented separately (Section 4.4).

**Discussion paragraph (mechanism comparison):**

> The wintertime intensification of EKE in the Kuroshio Extension
> coincides with an amplified meridional SST gradient during the same period.
> Previous studies have linked strengthened SST fronts to increased
> baroclinic instability in this region (Taguchi et al., 2007;
> Nonaka et al., 2020). However, the EKE increase in our analysis
> (12 cm² s⁻² per decade) exceeds the range reported in
> model-only studies (5–8 cm² s⁻² per decade; Sasaki et al., 2014),
> suggesting that resolved mesoscale processes in observations
> amplify the response beyond what coarser models capture.
> This comparison is limited to the satellite altimetry era and
> does not constrain pre-1993 variability.

**Risky overclaim → safer revision:**

Risk: model output presented as observed trend.

> ~~The ocean heat content has increased by 0.5 ZJ per year over the past 50 years.~~

Better:

> The ORAS5 reanalysis indicates an upper-ocean (0–700 m) heat content increase
> of 0.5 ± 0.1 ZJ yr⁻¹ over 1979–2022. This estimate combines
> Argo observations with model dynamics and may underestimate
> heat uptake in regions with sparse observational coverage.
