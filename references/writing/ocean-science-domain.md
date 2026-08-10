# Ocean Science Domain Expression

## Purpose

This module provides ocean-science-specific expression patterns for quantitative description and
physical interpretation. Project terminology remains authoritative in `03_terminology.md`.

## Common Objects

| Object | Common abbreviation | Typical units |
|--------|---------------------|---------------|
| Sea surface temperature | SST | degC, K |
| Sea surface salinity | SSS | PSU, g kg-1 |
| Mixed layer depth | MLD | m |
| Ocean heat content | OHC | J, ZJ |
| Chlorophyll-a | Chl-a | mg m-3 |
| Eddy kinetic energy | EKE | cm2 s-2, m2 s-2 |
| Sea surface height | SSH | m, cm |
| Air-sea heat flux | Qnet | W m-2 |
| Stratification | N2 | s-2 |

## Expression Patterns

| Task | Pattern |
|------|---------|
| Spatial result | `[Variable] [changed/varied] in [region], with [quantitative contrast].` |
| Temporal result | `[Variable] changed by [magnitude] over [period], with [uncertainty].` |
| Vertical structure | `[Feature] occurred at [depth range] and differed between [domains].` |
| Process interpretation | `This pattern is consistent with [process], supported by [diagnostic].` |
| Model-observation comparison | `The model reproduced [observed feature], with differences in [domain].` |
| Uncertainty | `Uncertainty in [variable] was estimated from [method] as [range].` |

Apply the evidence situations in `SKILL.md` before using mechanism, attribution, trend, or broad
implication language. Apply writing House Rules for verb strength and sentence structure.

Prefer a specific variable, direction, domain, period, and magnitude over generic statements such
as `the ocean is changing` or `the results have important implications`.
