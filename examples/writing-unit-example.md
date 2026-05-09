# Writing Unit Example

## Purpose of This Example

This example shows how the **writing** stage micro-drafts one paragraph at a time. It demonstrates:

- The default drafting unit (one paragraph) with evidence trace
- How `[CITATION NEEDED]` is used when references are missing
- The "pattern ≠ mechanism" boundary: a spatial pattern is not automatically a physical mechanism
- The Draft Unit Output Format from `references/workflow/writing.md`
- How to confirm, revise, or continue after each unit

The example uses a fictional study on Kuroshio Extension EKE trends from satellite altimetry.

## Context (From Structure Stage)

- **Section being drafted:** Results, Paragraph 2 — "EKE trend magnitude and spatial structure"
- **Claim from structure:** C2 — "EKE in the Kuroshio Extension increased by 12 ± 4 cm² s⁻² per decade (1993–2022), concentrated in winter and in the 145°E–160°E band."
- **Supporting figure:** Fig3a (EKE trend map), Fig3b (zonal-mean EKE trend time series)
- **Data:** CMEMS SEALEVEL_GLO_PHY_L4_MY_008_047, geostrophic velocity anomalies
- **Target journal:** JGR-Oceans
- **Language mode:** English only

## Draft Unit (Assistant Output)

```markdown
## Draft Unit — Results, Paragraph 2

Eddy kinetic energy (EKE) in the Kuroshio Extension increased by
12 ± 4 cm² s⁻² per decade over 1993–2022 (Fig. 3a). The increase
is strongest during winter (DJF) and concentrated in the 145°E–160°E
band, where the mean zonal flow also strengthened by 0.05 ± 0.02 m s⁻¹
per decade. The spatial coherence between EKE trends and mean-flow
acceleration is broadly consistent with enhanced baroclinic energy
conversion, though direct instability diagnostics are presented
separately (Section 3.4).

## Evidence Used
- Figures: Fig3a, Fig3b
- Data/methods: CMEMS altimetry, geostrophic velocity anomalies,
  EKE = (ug'² + vg'²) / 2
- References: [CITATION NEEDED] — prior EKE trend estimates for
  Kuroshio Extension region
- Claim supported: C2

## Boundaries / Cautions
- What this unit does not claim: This unit reports an EKE trend and
  its spatial structure. It does NOT assert that baroclinic instability
  is the confirmed mechanism — the phrase "broadly consistent with"
  signals that the instability diagnostics are handled elsewhere.
  The EKE trend is not attributed to any specific forcing (wind stress,
  buoyancy forcing, or intrinsic variability).
- Uncertainty or citation needed: Prior EKE trend studies for this
  region need to be cited for comparison. The altimeter-only record
  (1993 onward) does not constrain pre-satellite variability.

## User Confirmation
- [ ] keep as drafted
- [ ] revise
- [ ] expand
- [ ] continue to next unit
```

## Notes on This Example

**Why "broadly consistent with" and not "demonstrates":**
The claim strength ladder (`conclusions-and-claims.md`) maps
"demonstrates" to the strongest evidence tier — requiring robust
evidence, tests, and alternatives addressed. This paragraph only
reports a spatial pattern. The mechanism diagnostics are deferred
to Section 3.4. Using "demonstrates" here would overclaim.

**Why [CITATION NEEDED] instead of fabricating:**
The guardrails in `writing.md` prohibit fabricating citations.
If the user has not provided Zotero references or a DOI list,
the marker `[CITATION NEEDED]` is used and the draft continues.

**Image pattern ≠ mechanism:**
Fig3a shows a spatial map where EKE trends overlap with mean-flow
trends. That spatial correspondence is a *pattern*, not a *mechanism*.
The instability diagnostics (Section 3.4) provide the mechanism
evidence. The Results paragraph confines itself to reporting what
the figure shows, not what physically caused it.

## What Happens Next

After the user chooses one of the four confirmation options:
- **keep** → the unit is locked into `04_manuscript-draft.md` and
  the assistant moves to Results Paragraph 3
- **revise** → the assistant adjusts the paragraph based on user
  feedback and re-presents for confirmation
- **expand** → the paragraph is split or extended with additional
  quantitative detail
- **continue to next unit** → same as keep, moving to the next
  paragraph
