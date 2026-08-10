# Style Naturalization

## Purpose

Improve authorial academic style by replacing generic, over-smoothed, inflated, or repetitive
phrasing while preserving scientific meaning. Evidence boundaries come from `SKILL.md`; prose rules
come from the writing House Rules.

## Modes

- **Inline:** refine one confirmed writing unit during polish.
- **Audit:** detect risks in a larger confirmed section, let the user select items, then rewrite the
  selected items only.

## Risk Tiers

| Tier | Meaning |
|------|---------|
| High | Wording obscures meaning or materially inflates the claim |
| Medium | Wording is generic, over-smoothed, or repetitive |
| Optional | Acceptable wording that may be improved when overused |

## Detection Focus

- vague scientific subjects or actions;
- promotional novelty language;
- formulaic openings and transitions;
- repeated sentence rhythm;
- caveats placed where they obscure the main claim;
- generic significance statements;
- terminology drift.

Classify an apparent caveat by function. Preserve a negative scientific result or necessary
limitation; state scope positively when possible; remove a redundant disclaimer.

Load at most one focused leaf for the selected problem:

- `sentence-naturalization.md`
- `transition-naturalization.md`
- `vocabulary-naturalization.md`

The rewrite preserves numbers, citations, uncertainty, terminology, claim strength, and the user's
intended scientific meaning.
