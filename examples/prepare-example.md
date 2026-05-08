# Prepare Example

## Purpose of This Example

This example shows how a new user starts the **prepare** stage from a proposal-like research idea. It demonstrates:

- How the skill routes the user's request to the prepare stage
- What clarifying questions it asks (3–5 maximum)
- What the two output files look like: `01a_project-brief.md` and `01b_evidence-inventory.md`
- How missing information is marked with `[MISSING]`, `[UNCERTAIN]`, and `[TODO]`
- How the skill avoids drafting manuscript prose during prepare

The example uses a fictional study on Southern Ocean fronts, chlorophyll, and air–sea CO₂ flux.

## User Starts with This Message

> I have a research proposal for a study on changing Southern Ocean fronts. I want to look at how frontal shifts might affect chlorophyll distribution and air–sea CO₂ flux. I have some preliminary figures from satellite data, and the analysis code is in Python, but I haven't organized it yet. I'm thinking Nature Climate Change as a target journal, but I'm not sure yet. Can you help me prepare the materials?

## Assistant Should Route to Prepare

The assistant recognizes this as a **prepare** stage request because:

- The user has a proposal/idea but no structured manuscript inputs yet
- The user mentions figures and code but asks to "prepare the materials," not to draft text
- The target journal is mentioned as a consideration, not a final decision
- No draft text exists — the user is not asking to write Introduction, Results, or other sections

The assistant does **not** route to writing, structure, or review. It does not generate manuscript prose.

## First Clarifying Questions

The assistant asks 3–5 critical questions to fill gaps:

1. What is the exact study area and time period? (e.g., "Southern Ocean south of 40°S, 1993–2020")
2. Which specific datasets are you using for front detection, chlorophyll, and CO₂ flux?
3. What figures do you already have? What does each figure show?
4. Which Python scripts produced those figures? Can you share the code path?
5. Is Nature Climate Change your intended target, or are you still considering other options?

The assistant does not ask more than 5 questions in one turn. Remaining gaps are marked `[MISSING]` in the output files.

## Example Output: 01a_project-brief.md

```markdown
# 01a Project Brief

## Project Metadata

- project name: Southern Ocean Fronts and Biogeochemical Impacts
- working title: [MISSING]
- target journal: Nature Climate Change [UNCERTAIN: user mentioned as possible target but not confirmed]
- current stage: prepare
- last updated: 2026-05-08

## Source Materials Provided

- Research proposal (verbal description): study on Southern Ocean frontal shifts and links to chlorophyll and air–sea CO₂ flux
- Preliminary figures from satellite data (described but not provided as files)
- Python analysis code (path not yet shared — [MISSING])

## Research Background

The Southern Ocean plays a major role in global carbon uptake. Frontal zones — boundaries between distinct water masses — are regions of enhanced nutrient supply and biological productivity. Changes in frontal position or intensity could alter chlorophyll distribution and CO₂ exchange. Whether such changes are occurring and whether they constitute a climate-change signal is an active research question.

## Core Research Question

How have Southern Ocean frontal positions and intensities changed over the satellite period, and are these changes linked to observed patterns in chlorophyll and air–sea CO₂ flux?

## Working Hypotheses or Expectations

- Hypothesis 1: Major fronts (SACCF, PF, SAF) have shifted poleward or changed in frontal intensity over the altimeter record.
- Hypothesis 2: Regions of frontal change correspond to observable shifts in chlorophyll concentration.
- Hypothesis 3: Frontal changes are associated with detectable differences in air–sea CO₂ flux patterns.
- [UNCERTAIN] Whether any observed changes are attributable to anthropogenic forcing or reflect natural decadal variability.

## Study Area and Scientific Context

- Region: Southern Ocean, south of 40°S (specific frontal definitions [MISSING])
- Why this region: The Southern Ocean is a key region for global carbon cycling; frontal zones are hotspots of productivity and gas exchange
- Key processes: frontal dynamics, mesoscale eddies, upwelling of nutrient-rich deep water, air–sea CO₂ exchange, phytoplankton bloom dynamics
- [MISSING] Exact latitudinal boundaries and frontal definitions

## Data Sources

| Dataset | Source | Variables | Time Range | Spatial Coverage | Resolution | Access |
|---------|--------|-----------|------------|-----------------|------------|--------|
| Satellite altimetry | [MISSING] | SSH, geostrophic currents, front positions | [MISSING] | Southern Ocean | [MISSING] | [MISSING] |
| Satellite ocean color | [MISSING] | Chlorophyll-a | [MISSING] | Southern Ocean | [MISSING] | [MISSING] |
| Air–sea CO₂ flux product | [MISSING] | pCO₂, CO₂ flux | [MISSING] | [MISSING] | [MISSING] | [MISSING] |

## Code and Computational Workflow

- Language / environment: Python
- Code location: [MISSING]
- Key scripts: [MISSING] — user mentioned code exists but path not yet provided
- Workflow steps: [TODO: describe after code is reviewed]
- Output files: [MISSING]

## Key Variables and Metrics

- Front position: [to be defined — e.g., latitude of maximum SSH gradient]
- Front intensity: [to be defined — e.g., SSH gradient magnitude]
- Chlorophyll-a: [units and source MISSING]
- Air–sea CO₂ flux: [units and source MISSING]

## Preliminary Findings

*Based on user description. Figures are described but not yet reviewed.*

- Finding 1: Some Southern Ocean fronts show a poleward shift in the altimeter era [UNCERTAIN: figure not reviewed, trend significance not assessed]
- Finding 2: Chlorophyll patterns appear spatially coherent with frontal zones [UNCERTAIN: correlation does not imply frontal forcing of chlorophyll]
- Finding 3: CO₂ flux maps show regional patterns near frontal regions [TODO: link to frontal change not yet analyzed]

## Possible Story Routes

- Route 1: Observational detection — document frontal shifts first, then show chlorophyll and CO₂ flux correspondence
- Route 2: Mechanism-focused — diagnose why frontal changes affect biology and carbon uptake in one region, then generalize
- Route 3: Climate attribution — frame around frontal change as a climate response and its biogeochemical implications (requires stronger evidence, [TODO])

## Target Journal Notes

- Target journal: Nature Climate Change [UNCERTAIN — user is considering this option]
- No journal profile loaded yet — formal profile loading happens in the structure stage
- If confirmed, the narrative should connect frontal dynamics to climate relevance while bounding the evidence for climate-change attribution

## Critical Missing Information

- [MISSING] Exact dataset names, versions, and access paths
- [MISSING] Code location and key scripts
- [MISSING] Study area time range and spatial boundaries
- [MISSING] Figure files for review

## Useful but Not Blocking Information

- [MISSING] Final target journal confirmation
- [MISSING] Coauthor or advisor input
- [MISSING] Literature references for context

## Optional Refinements

- [TODO] Add preliminary literature context for Southern Ocean frontal trends

## Readiness Assessment

- **Ready for methods:** No. Data sources, time ranges, and code paths are needed before methods can be documented.
- **Ready for structure:** No. Core research question is draft-quality but target journal, evidence inventory, and claim hierarchy require methods-stage outputs first.

## Next Recommended Stage

**methods** — after the user provides dataset details, code paths, and figure files.
```

## Example Output: 01b_evidence-inventory.md

```markdown
# 01b Evidence Inventory

## Figure Inventory

| Figure ID | File / Source | What it shows | Supported claim | Evidence strength | Missing support |
|-----------|---------------|---------------|-----------------|-------------------|----------------|
| Fig1 | [MISSING] | Map of frontal positions from satellite SSH, with multi-year mean | Illustrates frontal locations | contextual | Does not show change over time |
| Fig2 | [MISSING] | Time series of frontal latitude index | Suggestive of poleward shift | suggestive | [MISSING] trend significance, uncertainty bounds |
| Fig3 | [MISSING] | Map of mean chlorophyll-a with frontal positions overlaid | Spatial overlap between fronts and chlorophyll | suggestive | Correlation does not prove frontal control of chlorophyll |

## Data Inventory

| Dataset | Variable(s) | Time range | Spatial coverage | Resolution | Role | Missing details |
|---------|-------------|------------|-----------------|------------|------|----------------|
| Altimetry | SSH, front positions | [MISSING] | Southern Ocean | [MISSING] | Central claim | [MISSING] |
| Ocean color | Chlorophyll-a | [MISSING] | Southern Ocean | [MISSING] | Supporting claim | [MISSING] |
| CO₂ flux product | pCO₂, CO₂ flux | [MISSING] | [MISSING] | [MISSING] | Supporting claim | [MISSING] |

## Claim Inventory

| Claim ID | Claim draft | Supporting evidence | Confidence | Claim boundary | Needs more evidence? |
|----------|-------------|-------------------|------------|----------------|---------------------|
| C1 | Southern Ocean fronts have shifted poleward during the satellite era | Fig2 [MISSING: full details] | low | Does not establish causation or climate attribution | yes — trend significance, uncertainty, record length |
| C2 | Chlorophyll patterns are spatially coherent with frontal features | Fig3 | low | Spatial correlation, not frontal-driven mechanism | yes — process-based analysis needed |
| C3 | Frontal changes are linked to CO₂ flux variability | none yet [MISSING] | low | Mechanism not specified, data not yet analyzed | yes — analysis not yet performed |

## Figure-to-Claim Matrix

| Claim | Figure(s) | What the figure supports | What the figure does not support | Additional evidence needed |
|-------|-----------|--------------------------|----------------------------------|---------------------------|
| C1 | Fig2 | Visually suggestive of a spatial shift in frontal position | Trend significance, attribution to forcing, separation from natural variability | Error bars, significance test, longer record comparison |
| C2 | Fig3 | Spatial overlap between chlorophyll and fronts | Frontal dynamics driving chlorophyll variability | Temporal correlation, mixed-layer analysis, nutrient supply mechanism |

## Missing Evidence Checklist

- [ ] C1 needs: trend significance test, confidence intervals, separation of seasonal/interannual/decadal variability
- [ ] C2 needs: temporal correlation between frontal position and chlorophyll, not just spatial overlap
- [ ] C3 needs: analysis linking fronts to CO₂ flux — currently no quantitative evidence
- [ ] All claims need: complete dataset metadata, code review, figure inspection

## Unsafe or Unsupported Claims

- **Claim C1** — "Fronts have shifted poleward": a visually suggestive pattern from one figure is not sufficient for this claim. A front-intensification pattern does not by itself prove climate-change attribution. The record length must be considered relative to natural variability (SAM, ENSO, decadal modes).
- **Claim C2** — "Fronts control chlorophyll": spatial overlap is not a mechanism. Chlorophyll variability could be driven by multiple factors (light, mixed-layer depth, nutrient advection from other sources).
- **Claim C3** — Not yet supported by any evidence. Requires dedicated analysis.

## Notes for Methods Stage

- Need to confirm: exact altimetry product (CMEMS? AVISO? version?), ocean color sensor (MODIS? VIIRS?), CO₂ flux product (SeaFlux? JENA? observation-based?)
- Need to review: front detection algorithm (SSH gradient threshold? contour-based? probabilistic?), chlorophyll processing (8-day? monthly?), CO₂ flux calculation method
- Need to inspect: Python scripts for quality control, statistical methods, and figure generation
- Statistical considerations: trend significance must account for serial autocorrelation; separation of forced signal from natural variability

## Notes for Structure Stage

- Core research question is identified but needs refinement
- Target journal is candidate-level; confirm before structure stage
- Claims C1–C3 are currently low-confidence; methods-stage work should strengthen or revise them
- Story routes are provisional — they depend on what the data actually show
```

## What Happens Next

After the prepare stage produces these two files, the user can choose to:

- **Pause here** — the project brief and evidence inventory are saved for later use
- **Update prepare files** — if the user provides additional materials (figures, code paths, dataset names), the files can be revised
- **Continue to methods** — if the user is ready to share code paths, data descriptions, and figure files

If the user continues to methods, the next session would need:

- The code directory path and key scripts or notebooks
- A description of each figure: which script produced it, what dataset it uses, what processing was applied
- Dataset names, versions, access information, and time ranges
- Which figures are final versions versus exploratory plots
