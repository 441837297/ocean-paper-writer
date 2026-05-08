# 01b Evidence Inventory

## Figure Inventory

| Figure ID | File / Source | What it shows | Supported claim | Evidence strength | Missing support |
|-----------|---------------|---------------|-----------------|-------------------|----------------|
| Fig1 | [path or description] | [brief description] | [claim ID or text] | [direct / suggestive / contextual] | [what the figure cannot support alone] |
| Fig2 | ... | ... | ... | ... | ... |

Evidence strength categories:
- **direct:** The figure provides quantitative evidence directly supporting the claim (budget closure, trend with uncertainty, statistically robust pattern).
- **suggestive:** The figure shows a pattern consistent with the claim but does not independently establish it (spatial correlation, single case study, short record).
- **contextual:** The figure provides background context (study area map, climatology, methodological validation).

## Code Output Inventory

| Output | Code / Notebook Source | Data used | Method applied | Result produced | Notes |
|--------|-----------------------|-----------|---------------|-----------------|-------|
| [output file] | [script name] | [input dataset] | [method/algorithm] | [key numbers or result] | [quality flags, caveats] |

## Data Inventory

| Dataset | Variable(s) | Time range | Spatial coverage | Resolution | Role in manuscript | Missing details |
|---------|-------------|------------|-----------------|------------|-------------------|----------------|
| [name] | [list] | [start-end] | [region] | [spatial/temporal] | [central claim / validation / context] | [MISSING] |

## Claim Inventory

| Claim ID | Claim draft | Supporting evidence | Current confidence | Claim boundary | Needs more evidence? |
|----------|-------------|-------------------|-------------------|----------------|---------------------|
| C1 | [one-sentence claim] | [figure IDs, dataset names] | [high / medium / low] | [what the claim cannot assert] | [yes / no / uncertain] |
| C2 | ... | ... | ... | ... | ... |

Create one row per distinct claim. A "finding" that is better stated as two separate claims should be split into two rows.

### Claim rules (do not violate these):

- **A visual pattern is not a physical mechanism.** If the claim states a mechanism, verify that process-based diagnostics support it. Otherwise mark the claim strength as "suggestive" and note what diagnostics are missing.
- **A correlation is not causation.** If the claim implies causality (X drives Y, X controls Y), note that the evidence is correlative and alternative explanations have not been ruled out.
- **A regional pattern is not a global implication.** If the claim generalizes beyond the study region, note what additional evidence would be needed.
- **A short-record trend is not a climate trend.** If the claim involves a trend, note the record length and whether natural variability (ENSO, PDO, SAM, decadal modes) has been separated.

## Figure-to-Claim Matrix

| Claim | Figure(s) | What the figure supports | What the figure does not support | Additional evidence needed |
|-------|-----------|--------------------------|----------------------------------|---------------------------|
| C1 | Fig1, Fig3 | [specific support] | [limitations] | [what would strengthen the claim] |
| C2 | Fig2 | [specific support] | [limitations] | [what would strengthen the claim] |

This matrix is the most critical diagnostic tool in prepare. If a claim has no figure, mark the claim as unsupported. If a figure does not support any claim, the figure may be contextual or unnecessary.

## Missing Evidence Checklist

- [ ] Claim C1 needs: [e.g., uncertainty quantification, significance test, in situ validation]
- [ ] Claim C2 needs: [e.g., comparison with prior estimate, sensitivity test]
- [ ] [Additional missing evidence items]

## Unsafe or Unsupported Claims

List claims that currently lack sufficient evidence or use language that overstates what the evidence shows:

- [Claim text] — Problem: [e.g., "correlation stated as causation" / "mechanism claimed without diagnostics" / "trend from short record" / "regional result generalized globally"]
- [Suggested revision or what evidence would be needed to make the claim safe]

## Candidate Additional Analyses

Analyses that could strengthen the manuscript, suggested by gaps in the evidence inventory:

- [Analysis 1: e.g., "Compute EKE trend significance accounting for autocorrelation"]
- [Analysis 2: e.g., "Validate satellite-derived front detection against in situ SST"]
- [Analysis 3: e.g., "Separate seasonal cycle before computing long-term trend"]

Tag each with priority: high / medium / low based on gap severity.

## Notes for Methods Stage

What the methods workflow needs to know:

- Datasets and their access information
- Key processing steps that affect interpretation
- Code or notebooks that implement the analysis
- Statistical methods used (or planned)
- Validation steps needed

## Notes for Structure Stage

What the structure workflow needs to know:

- Core research question (from project brief)
- Target journal (or "not specified yet")
- Available claims and their evidence strength
- Figure-to-claim matrix
- Possible story routes
- Unsupported claims that should not appear in the main narrative
