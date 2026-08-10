# Methods Workflow

## Purpose

Methods documents the data and analysis needed to understand and reproduce the manuscript's
scientific results.

## Inputs

- confirmed prepare files;
- dataset documentation and access information;
- code, notebooks, README files, and figure-producing scripts;
- user confirmation of final versus exploratory analyses.

Follow the global Stage/Step, Source Scope, interaction, and target-journal guidance in `SKILL.md`.

## Outputs

| File | Responsibility |
|------|----------------|
| `02a_data.md` | Dataset identity, variables, coverage, resolution, access, dataset-level preprocessing, and caveats |
| `02b_methods.md` | Diagnostics, equations, parameters, algorithms, statistics, sensitivity, and reproducibility logic |

## Steps

1. Confirm the code and data paths relevant to manuscript results.
2. Identify the final analysis and figure-producing scripts.
3. Cross-check the user's method description against code and documentation.
4. Populate dataset facts in `02a` and analysis definitions in `02b`.
5. Record the source of each important parameter or choice.
6. Present disagreements as `[CONFLICT]` and inferred details as `[CONFIRM WITH USER]`.
7. Confirm whether the documented material is ready for structure and later Methods drafting.

## Boundary Between 02a and 02b

Dataset acquisition, product-level preprocessing, coverage, and dataset caveats belong in `02a`.
Analysis transformations, derived variables, diagnostics, equations, statistics, and sensitivity
tests belong in `02b`. A short cross-reference is sufficient when one depends on the other.

Record only scripts that directly establish manuscript methods or outputs. Reproducibility details
should explain the scientific calculation rather than catalog the entire codebase or computing
environment.

## Completion

Methods is complete when dataset identity and scope are known, central calculations and parameters
are traceable, statistical and sensitivity choices are recorded, and material conflicts are
resolved or marked. Preserve confirmed details on resume and update only affected sections.

Templates: `references/templates/02a_data.md` and `references/templates/02b_methods.md`.
