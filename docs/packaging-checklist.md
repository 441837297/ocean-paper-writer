# Packaging Readiness Checklist

Maintainer-oriented checklist. Run before tagging a release or sharing the skill as a portable
directory. Every item should pass before considering the package "ready."

## 1. Skill Entry

- [ ] `SKILL.md` has valid YAML frontmatter (4 fields: `name`, `description`, `allowed-tools`, `model`)
- [ ] `SKILL.md` frontmatter `name` matches the skill directory name
- [ ] `SKILL.md` body describes all 6 stages in correct order
- [ ] `SKILL.md` guardrails section is present and complete
- [ ] `README.md` (Chinese user guide) is consistent with `SKILL.md` stage descriptions

## 2. Path and Naming Consistency

- [ ] All template file paths use v1.2 naming: `01a_project-brief.md`, `01b_evidence-inventory.md`,
  `02a_data.md`, `02b_methods.md`, `03_manuscript-structure.md`, `04_manuscript-draft.md`,
  `05_review-report.md`, `06_polish-log.md`
- [ ] No old v1 paths remain: no `02a_data-and-methods.md`, `03a_*`, `04a_*`, `05a_*`, `06a_*`
- [ ] `references/templates/` files match the names referenced in workflow `.md` files
- [ ] `references/workflow/` has exactly 6 stage files: prepare, methods, structure, writing,
  review, polish

## 3. Reference Completeness

- [ ] `references/writing/` has 6 modules (no TODO placeholders):
  methods-and-data, results-and-discussion, introduction-and-gap, conclusions-and-claims,
  ocean-science-domain, bilingual-output
- [ ] `references/review/` has 4 modules (no TODO placeholders):
  style-naturalization, vocabulary-naturalization, sentence-naturalization,
  transition-naturalization
- [ ] `references/journals/` has at least one journal profile
- [ ] `references/zotero/README.md` is present and describes the optional Zotero workflow
- [ ] `references/templates/` has one template per stage output file

## 4. Formatting

- [ ] All `.md` files use LF line endings (verified with byte-level check: CR count = 0)
- [ ] `.gitattributes` exists with `*.md text eol=lf`
- [ ] No raw Markdown is broken by unintended soft-wraps (check GitHub rendering of top-level
  and workflow `.md` files)

## 5. Safety and Evidence Guardrails

- [ ] No file contains fabricated example DOIs or references
- [ ] All example claims use `[CITATION NEEDED]` or realistic placeholder citations
- [ ] Claim strength ladder is referenced in Conclusions and Discussion writing modules
- [ ] "Pattern ≠ mechanism" boundary is documented in Results/Discussion module
- [ ] No oceanic overclaim (regional→global, correlation→causation, model→observed,
  short-record→climate-trend) appears in examples

## 6. Examples

- [ ] `examples/prepare-example.md` is complete (not a TODO placeholder)
- [ ] `examples/writing-unit-example.md` is present and shows paragraph-level drafting
  with evidence trace
- [ ] All example files use v1.2 naming for referenced paths
- [ ] No example file contains only "TODO: add a realistic ocean science example"

## 7. Quick Validation Commands

```bash
# Check for old v1 naming
grep -rn "02a_data-and-methods\|03a_\|04a_\|05a_\|06a_" --include="*.md" .

# Check for remaining TODO placeholders in reference modules
grep -rn "^TODO" references/

# Check byte-level CR presence
python -c "
import os
for root, dirs, files in os.walk('.'):
    for f in files:
        if f.endswith('.md'):
            path = os.path.join(root, f)
            with open(path, 'rb') as fh:
                data = fh.read()
            cr = data.count(b'\r')
            if cr:
                print(f'{path}: {cr} CR bytes')
"
```
