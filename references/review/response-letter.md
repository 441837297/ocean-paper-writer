# Response Letter Strategy

## Purpose

Convert confirmed scientific decisions and completed revisions into concise, evidence-based replies
to editors and reviewers. Use this reference only when analyzing response strategy, drafting a
response letter, or revising an existing response. Do not load it for ordinary manuscript review.

## Universal Rules

Apply these to every response, regardless of comment type or length.

- **Second person throughout.** Use `you` and `your`, never `the reviewer`, `the editor`, or
  `Reviewer #1`. This is a direct reply to a colleague, not a report about their comments.
- **At most one brief acknowledgment per comment.** Omit it when a direct answer reads naturally.
  The revision is the best acknowledgment — do not repeat praise or agreement in words.

## Per-Comment Workflow

Follow the A-E workflow in `references/workflow/review.md`. Handle one comment at a time and preserve
it verbatim. Codex prepares the strategy packet, investigates project facts, and executes only a
researcher-confirmed Response Contract. ChatGPT discusses the strategy before execution and verifies
the completed work afterward. Shared implementation does not imply shared explanation.

The Response Contract records:

```text
Issue ID:
Reviewer actually asks:
Direct answer:
Confirmed facts:
Required code/analysis/manuscript actions:
What must not be claimed or added:
Expected response length:
Verification criteria:
```

Do not treat the internal scientific rationale or the contract as response prose. If investigation
changes a material fact, revise and reconfirm the contract before drafting. Do not invent theory,
terminology, literature discussion, or defensive explanation to fill a gap.

After execution, write the Chinese response logic at near-final information density, then render the
English response from the same confirmed facts and evidence boundary. Use the original comment,
terminology table, original manuscript text, and completed revision for exact terms. Prefer concrete
actions and objects: `corrected`, `added`, `calculated`, `recalculated`, `revised`, `clarified
[object]`, `removed`, `defined`, and `moved`.

Prepare the independent verification packet with the original comment, Response Contract, relevant
result, Chinese logic, English response, original manuscript text, revised text or concise diff, and
verification criteria. Ask ChatGPT to read the chain sentence by sentence and check that:

- the Chinese logic directly answers the original comment;
- every English sentence has a clear source and function in the Chinese logic;
- the English response does not omit, add, or strengthen a scientific claim;
- the revised manuscript fulfills every stated action and remains consistent with the original
  context;
- wording, terminology, grammar, and logical transitions are natural and precise.

Accept only `PASS` or `REVISE` with specific reasons. Revise and repeat as needed. The researcher
confirms PASS before the issue is marked resolved.

## Response Structure and Length

Use this default order: answer directly; state what was checked or corrected; state the manuscript
change; add quantitative evidence or explanation only when required. State the concrete object,
result, or correction before abstraction. Do not repeat the reviewer's background explanation or
add related theory to demonstrate expertise.

| Issue | Typical response |
|-------|------------------|
| Wording or terminology correction | 1-2 sentences |
| Notation or formula correction | 1-3 sentences |
| Code or numerical error | State the error, correction, recalculation, and whether conclusions changed |
| Substantive conceptual question | One short paragraph with only the required definitions and evidence |
| New analysis request | Summarize the method, result, and resulting manuscript change |

For every sentence ask: `Which part of the reviewer's question requires this sentence?` Remove or
shorten it when there is no clear answer. Avoid unnecessary summary labels and new terminology when
direct description is clearer.

## Evidence Language

Apply the global evidence boundaries in `SKILL.md`. Match response posture to the confirmed state:

| Evidence state | Preferred posture |
|----------------|-------------------|
| Directly verified | `The analysis shows...` / `We found...` |
| Supported by converging evidence | `These results support...` |
| Plausible but not isolated | `This provides a plausible interpretation...` |
| Unresolved with available evidence | `The available outputs do not isolate...` |

Keep the response at the same evidence strength and scope as the confirmed manuscript.

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

For a Word response letter, update an existing Response DOCX when one exists. Otherwise, run
`scripts/build_response_docx_template.py` or copy `assets/response_template.docx`, then replace
the placeholders without changing the styles. Preserve the existing styles when updating.

- Use Times New Roman throughout, including tables, headers, footers and page numbers.
- Keep editor and reviewer comments as regular black text, preserving them verbatim.
- Keep each reviewer label, `Major comments`, and `Minor comments` as black section headings.
- Use blue text for manuscript metadata, response prose, revised manuscript context, response-only
  figure labels and captions. Do not selectively bold revised wording.
- Follow each revision excerpt with `Location: [section, figure, table, or caption]. Lines
  [XX-XX].` in blue italics. Leave the location and line placeholders for the author to complete.
- Insert a labeled blue placeholder for any response-only figure, and keep project-specific media
  out of the reusable template.
- Separate response units with whitespace only. Do not use dashed separators or a table of contents.

## P6. Response Word Final Delivery

Begin after P5 has locked the manuscript Word file. Treat `response0806.md`, or the corresponding
final Response Markdown, as the content authority.

Update the existing Response DOCX when the project provides one. Preserve reviewer-comment original
text, established styles and colors, and each `Revised text` and `Location` structure. When the
project has no Response DOCX, create one with the existing script or template.

Call `scripts/export_word_pdf_pages.ps1` with `-View Final` in a new temporary directory. Compare
every page with the final Response Markdown for response content, formulas, colors, verbatim comments,
`Revised text`, and `Location`.

Then cross-check every Response declaration and revised-text excerpt against the locked manuscript:
every stated revision, number, result, and conclusion must be present in the manuscript at the same
evidence strength. Update Markdown before a content change, update the Response Word file for a
transfer error, then repeat P6.

This final delivery step verifies the confirmed response and its presentation. Scientific decisions
remain governed by the established review and response-letter workflow.

## Revision Workflow

When revising an existing response:

1. Preserve each reviewer comment verbatim.
2. Compare it with the confirmed scientific decision and final manuscript change.
3. Resume from the earliest uncertain A-E stage. Do not directly polish English when the contract,
   Chinese logic, evidence, or manuscript action is uncertain.
4. Once those are confirmed, update the English response, revised text, and location from the final
   manuscript version.

## Final Check

- Does the first sentence answer the reviewer?
- Is the evidence sufficient but not exhaustive?
- Does the reply distinguish verified results from interpretation?
- Does it state whether the manuscript or conclusions changed?
- Are response-only evidence and manuscript changes clearly distinguished?
- Is the exact revised text and location provided?
- Are repeated concerns answered with one consistent scientific position?
- Does the response avoid claims absent from the revised manuscript?
