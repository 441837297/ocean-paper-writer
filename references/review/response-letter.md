# Response Letter Strategy

## Purpose

Convert confirmed scientific decisions and completed revisions into concise, evidence-based replies
to editors and reviewers. Use this reference only when analyzing response strategy, drafting a
response letter, or revising an existing response. Do not load it for ordinary manuscript review.

## Response Unit

Build each reply in this order:

1. **Direct answer** — state the decision or finding in the first one or two sentences.
2. **Evidence or rationale** — give only what the reviewer needs to evaluate that answer.
3. **Manuscript action** — state what was corrected, added, clarified, removed, or retained.
4. **Location** — identify the exact section, equation, figure, table, page, or line.

Use a shorter unit when the comment is simple. Do not turn every reply into four paragraphs.

## Response Pathways

Choose the pathway that matches the confirmed decision:

| Pathway | Use when | Required content |
|---------|----------|------------------|
| Accept and correct | The reviewer identified an error | Name the error, correction, recomputed scope, and whether conclusions changed |
| Clarify presentation | The treatment is valid but unclear | Give the definition or distinction and state where it is now explained |
| Add evidence | The concern requires a test, analysis, figure, table, or citation | Report the direct result and identify manuscript or response-only evidence |
| Partially agree | Part of the suggestion is supported | State what was adopted and define the boundary of what is not supported |
| Retain the treatment | The original choice remains justified | Give the evidence-based rationale and any clarification added for readers |
| State an evidence boundary | Available evidence cannot isolate the requested mechanism or attribution | State what the evidence supports, what remains unresolved, and what evidence would be required |
| Cross-reference | Another reply already provides the full analysis | Give the direct answer, then point to the earlier response without repeating it |

Do not use `beyond the scope` as a substitute for a feasible minimum check. If a requested analysis
cannot be performed, identify the missing data, diagnostic, experiment, or model output.

## Evidence and Claim Boundaries

Match response language to evidence:

| Evidence state | Preferred posture |
|----------------|-------------------|
| Directly verified | `The analysis shows...` / `We found...` |
| Supported by converging evidence | `These results support...` |
| Plausible but not isolated | `This provides a plausible interpretation...` |
| Unresolved with available evidence | `The available outputs do not isolate...` |

Preserve distinctions between correlation and causation, regional and general conclusions, model
output and observation, statistical and physical significance, and a residual term and its possible
components. Do not strengthen a claim merely to sound decisive.

## Granularity

- **Major conceptual comment:** usually one to four short paragraphs; define the issue, give the
  minimum decisive evidence, and state the revision.
- **Numerical or code error:** state the source, corrected definition or formula, recomputed scope,
  closure or validation result, and effect on the conclusions.
- **Minor comment:** usually one or two sentences.
- **Formatting or typographical comment:** usually one sentence.
- **Long diagnostic:** summarize the answer in prose and place detailed results in a response-only
  figure or table when they are useful to the reviewer but not part of the manuscript's central story.

Keep internal implementation details, code filenames, variable inventories, intermediate outputs,
acceptance criteria, and abandoned alternatives out of the formal response.

## Tone

- Use at most one brief acknowledgment per comment; omit it when a direct answer reads naturally.
- Do not repeat praise or agreement that is already demonstrated by the revision.
- Do not say that the reviewer misunderstood. Identify the ambiguity in the manuscript instead.
- Acknowledge genuine errors directly and without self-defense.
- When retaining a choice, rely on definitions, evidence, and scope rather than authority or rhetoric.
- Do not mirror hostile or skeptical language. Maintain a calm, factual authorial posture.
- Do not repeat background that the reviewer already supplied.

## Response-Only Evidence

Use response-only figures or tables when they directly test robustness, bias, sensitivity, coverage,
or an alternative explanation but would distract from the manuscript's main argument. Make each
item self-contained, number it as `Fig. R1`, `Table R1`, and state whether any result was also added
to the manuscript.

Do not introduce a new central claim only in the response letter. If a result changes manuscript
interpretation, revise the manuscript as well.

## DOCX Format

For a Word response letter, run `scripts/build_response_docx_template.py` or copy
`assets/response_letter_template.docx`, then replace the placeholders without changing the styles.

- Use Times New Roman throughout, including tables, headers, footers and page numbers.
- Put each editor or reviewer comment in a two-row, one-column table: the first row is the comment
  label (`Editor Comments`, `Comment 1`, `Major Comment 1`, or `Minor Comment 1`); the second row
  preserves the comment verbatim in regular black text.
- Apply Word's built-in `Grid Table 4 Accent 1` style to comment tables. Do not approximate it with
  manually assigned borders or cell margins. Set each table and its single column to the document's
  available text width, calculated from the page width minus the left and right margins.
- Keep `Response to Reviewer 1` or the corresponding reviewer number outside the table as a section
  heading. Keep response prose black.
- Use blue text only for text copied from the revised manuscript and added references. Show the
  complete revised context in blue and bold only the words actually changed.
- Put the exact manuscript location on the following line in red italics.
- Keep response-only figures and tables black. Replace absent media with a labeled placeholder;
  never carry project images into a reusable template.
- Use dashed blue separators between major response units. Do not add a table of contents.

## Revision Workflow

When revising an existing response:

1. Preserve each reviewer comment verbatim.
2. Compare the reply with the confirmed scientific decision and final manuscript change.
3. Put the direct answer first.
4. Remove internal reasoning, repeated background, formulaic thanks, and duplicated explanations.
5. Retain the minimum evidence needed to justify the answer.
6. Update revised text and location from the final manuscript version.

## Final Check

- Does the first sentence answer the reviewer?
- Is the evidence sufficient but not exhaustive?
- Does the reply distinguish verified results from interpretation?
- Does it state whether the manuscript or conclusions changed?
- Are response-only evidence and manuscript changes clearly distinguished?
- Is the exact revised text and location provided?
- Are repeated concerns answered with one consistent scientific position?
- Does the response avoid claims absent from the revised manuscript?
