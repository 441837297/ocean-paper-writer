# Review, Feedback, and Verification

## Purpose

Use this workflow for advisor, coauthor, editor, reviewer, or internal feedback, and for independent acceptance of a candidate manuscript revision. It routes feedback into the normal Iterate path rather than treating feedback as a separate manuscript-development system.

## Feedback

Work on one issue or tightly coupled technical unit at a time.

1. Preserve the original feedback without changing its meaning.
2. Read only the affected old text, adjacent context, relevant evidence, figures, methods, and prior response material.
3. State what the feedback actually asks, what is already known, and whether analysis is required.
4. Discuss the scientific direction with the user and create a confirmed, frozen Revision Brief using [revision-brief.md](../review/revision-brief.md) and `references/templates/revision-brief.md`.
5. When facts are unresolved, create an Analysis Task. Do not draft manuscript prose until its result returns to Strategy.
6. Send the confirmed brief to Prose, then Verify the candidate revision.

Reviewer work also prepares a direct response from confirmed facts and completed changes. Each response must remain independently understandable and agree with the associated manuscript revision.

Use `05_review/05_review-round{N}A_source.md` for raw feedback and `05_review/05_review-round{N}B_report.md` for confirmed issue decisions when persistent review records are useful. A bounded internal or advisor issue may remain task-local until it passes verification.

## Verify

Compare the confirmed Revision Brief, old text, candidate text, and the evidence needed for the unit. Check:

- the required change is complete;
- no required result or connection was lost;
- scientific meaning, numbers, terminology, and claim strength remain justified;
- no unsupported mechanism, causal claim, or broader scope was added;
- defensive or repetitive qualification was not introduced;
- the unit connects naturally to its context;
- for reviewer work, the reviewer comment, response, and manuscript revision agree.

Return exactly one of:

```text
PASS
```

or

```text
REVISE
```

For `REVISE`, do not write another full paragraph. Name the Issue, provide a Correction Brief and Minimal Diff, and identify the violated Revision Brief item. Return this material to the existing Prose window. Return to Strategy only when the frozen scientific decision itself is wrong. Do not treat an issue as resolved before the user accepts a PASS result.

## Necessary Update After PASS

After user acceptance and PASS, update the current manuscript. Then classify the accepted change:

| Change | Update |
|---|---|
| wording, flow, grammar, or citation placement | manuscript only |
| local result, figure interpretation, or supporting finding | manuscript and affected `03` content |
| result order, section role, or local architecture | manuscript and affected `03` content; `01` only if its high-level framing changed |
| question, central claim, method/sample definition, evidence chain, or scope | affected `01`, `02`, `03`, and manuscript content |

Check only local dependencies by default. Expand the check only for a repeated number, core term, central claim, figure definition, method definition, or section responsibility.

## Focused Resources

- `references/review/response-letter.md` for formal reviewer and editor responses;
- `references/review/style-naturalization.md` plus one leaf module for a focused language diagnosis;
- `references/subagents/reference-reading.md` for a bounded journal or exposition question.

The evidence constitution in `SKILL.md` and the prose rules in `references/workflow/writing.md` remain authoritative.
