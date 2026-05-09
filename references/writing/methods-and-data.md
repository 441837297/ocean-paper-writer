# Methods and Data Writing

## Purpose

This module is used during the 04 writing stage to convert `02_methods/02a_data.md`
and `02_methods/02b_methods.md` into manuscript Methods prose.
It is not the 02_methods output template.
Methods prose must trace to data, code, processing workflow, and user confirmation.
Do not fabricate method details.

## Inputs to read before drafting

- `02_methods/02a_data.md`
- `02_methods/02b_methods.md`
- figure-to-claim matrix from `01_prepare/01b_evidence-inventory.md`
- target journal profile if available
- Zotero citation support only when needed for data product or method references

## Data prose pattern

Follow this sequence for each dataset:

data source → version/product → variable → spatial/temporal coverage → resolution →
QC/masking → role in analysis → limitation

## Methods prose pattern

Follow this sequence for each processing step:

analysis goal → input data → processing step → parameter/threshold →
statistical or diagnostic method → output → uncertainty/sensitivity

## Dataset-specific guidance

### Remote sensing

- product name and version
- sensor or provider
- variable and units
- spatial and temporal resolution
- time period
- cloud/ice/mask/QC handling
- retrieval or sampling caveat

### Argo / in situ

- platform or profile type
- QC flags applied
- depth range and vertical interpolation/binning
- time/space selection criteria
- pressure/temperature/salinity conventions
- missing profile treatment

### Reanalysis

- product/version
- variables used
- grid and resolution
- assimilation caveat (do not present reanalysis as direct observation)
- period covered

### Model output

- model or experiment name
- forcing/configuration
- resolution
- ensemble member or single run
- spin-up and analysis period
- validation basis
- do not present model output as observed fact

### Statistical analysis

- trend method (e.g., linear regression, Theil-Sen)
- hypothesis test (e.g., Mann-Kendall, t-test)
- autocorrelation treatment (effective sample size, prewhitening, or none)
- confidence intervals or uncertainty quantification
- multiple testing or field significance if applicable
- distinction between statistical significance and physical significance

## What not to do

- Do not write methods as results.
- Do not frame method choices as scientific conclusions.
- Do not fabricate unconfirmed parameters.
- Do not hide data gaps.
- Do not use polished language to mask missing method details.

## Missing information tags

Use these tags in draft Methods prose:

- `[MISSING]` — information not provided
- `[CONFIRM WITH USER]` — inferred from code; needs user verification
- `[CITATION NEEDED]` — data product or method reference needed
- `[UNCERTAIN]` — may change or needs verification

## Example mini-paragraphs

**Remote sensing data sentence:**

> We use sea surface temperature (SST) from the NOAA OI SST V2 High Resolution Dataset
> (Reynolds et al., 2007), provided on a 0.25° daily grid from 1982 to 2023.
> The product merges AVHRR satellite retrievals with in situ observations
> and applies an optimum interpolation scheme. We exclude grid cells with
> sea ice concentration exceeding 15% based on the product's internal ice mask.

**Argo / reanalysis method sentence:**

> Mixed layer depth (MLD) is computed from Argo profile data (2004–2022) using a
> density-threshold criterion of Δσ_θ = 0.03 kg m⁻³ relative to the 10 dbar reference.
> Profiles flagged with QC values other than 1 are excluded.
> Anomalies are referenced to the 2004–2022 monthly climatology.

**Statistical method sentence:**

> Linear trends in eddy kinetic energy are estimated using ordinary least squares.
> Statistical significance is assessed with a two-sided Mann-Kendall test at the
> 95% confidence level. Effective sample size accounts for lag-1 autocorrelation
> following (Santer et al., 2000).
