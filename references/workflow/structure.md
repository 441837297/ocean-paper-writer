# Structure Workflow

## Purpose

The structure workflow decides the manuscript architecture — what story to tell, which claims to
feature, how to sequence figures, and which sections carry the narrative.
It is a manuscript architecture stage, not a drafting stage. Its goals are to:

- Select the central story route from prepare-stage options and user confirmation
- Build a claim hierarchy: primary claims, secondary claims, and claims not ready for the main story
- Design section architecture with figure sequence and main-text-versus-supplement decisions
- Load the target journal profile so narrative decisions are journal-aware from the start
- Produce living documents (`03_project-brief.md`, `03_figure-outline.md`) that evolve across stages
- Initialize the terminology dictionary (`03_terminology.md`) for cross-stage consistency

## When to Use

Run structure when: prepare and methods stages are complete; the user has a target journal
(or is ready to choose one); the user has an outline or section preference to discuss; or the user
needs architectural guidance before drafting begins.

Do **not** run structure when: prepare or methods are still in progress; the user only wants to
draft text without architectural planning; or the user already has a final structure and only
needs writing support.

## Core Principle

> Structure decides the manuscript architecture; it does not write the manuscript.

- The section architecture is a scaffold, not a prison — writing may reveal adjustments
- The claim hierarchy determines what belongs in the main narrative vs. supplementary
- The figure sequence determines the narrative flow, not the other way around
- Journal profile shapes narrative scope, claim depth, and section emphasis
- A well-structured outline prevents wasted drafting of text that will be cut later

## Ocean Paper Argument Chain

During the structure stage, compress the manuscript into one explicit, checkable argument chain:

```text
ocean/system need
→ unresolved process/data/method gap
→ this paper's move
→ decisive evidence
→ bounded implication
→ explicit limitation
```

This chain must be derived from the prepare-stage evidence inventory, methods materials, target journal profile, and user-confirmed research direction.

### What Each Link Means

| Link                               | Meaning                                                                                                                | Common failure                                        |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| Ocean/system need                  | Why the topic matters in ocean science, ocean-climate dynamics, biogeochemistry, marine ecosystems, or related domains | Background is too broad or generic                    |
| Unresolved process/data/method gap | What is still unknown, unresolved, poorly quantified, or methodologically limited                                      | Gap is a literature slogan, not tied to this study    |
| This paper's move                  | What this manuscript does: observation, analysis, diagnosis, comparison, synthesis, or method application              | The move is vague or disconnected from evidence       |
| Decisive evidence                  | The figure/data/result chain that most directly supports the primary claim                                             | Evidence is only suggestive but written as conclusive |
| Bounded implication                | What the result means, within the domain and scale supported by the data                                               | Regional or short-record result is overstated         |
| Explicit limitation                | What the manuscript cannot claim without additional evidence                                                           | Limitations are hidden or postponed too late          |

### Rules

* Do not introduce a separate paper-type or story-archetype classification.
* Do not force the manuscript into a Nature-style narrative if the evidence or target journal does not support it.
* If the user-provided outline conflicts with the argument chain, mark `[STRUCTURE CONFLICT]`.
* If the evidence inventory does not support a link in the chain, mark `[EVIDENCE GAP]` or `[MISSING]`.
* The argument chain should guide claim hierarchy, section architecture, figure sequence, and later writing units.

## Results Evidence Ladder

Results should be planned as an evidence ladder, not as a figure-by-figure report.
The ladder is a planning tool for ordering the Results section so that evidence
builds toward the primary claim, with each figure earning the reader's trust for the next.

### Default Ladder

| Step | Name | What it covers |
|------|------|----------------|
| 1 | System / data / workflow setup | What system, dataset, region, or diagnostic framework is being examined |
| 2 | Validation / credibility | Why the data, method, or diagnostic is trustworthy enough for the main claim |
| 3 | Main result | The primary observation, trend, pattern, or diagnostic result |
| 4 | Comparison / robustness | Comparison with baseline, independent dataset, sensitivity test, null hypothesis, or confounding factor |
| 5 | Mechanism / diagnostic evidence | Physical, statistical, or process-based analysis that explains or constrains the result |
| 6 | Consequence / generalization | What the result implies within the evidence boundary |

### Ocean-Specific Journal Adaptation

| Journal | Map the ladder to |
|---------|-------------------|
| Nature Climate Change | detection → robustness/confounders → attribution → consequence |
| Nature Communications | core finding → supporting evidence → mechanism/pathway → broader context |
| JGR / JPO / GRL | Keep the ladder but compress or expand according to journal profile |

### Rules

* The ladder is a planning tool, not a requirement that every paper must have all six steps.
* Missing steps must be marked as missing rather than written around.
* If mechanism or consequence evidence is absent, the structure should not promise mechanism or consequence in Results.
* Figure order should follow the evidence ladder, not the order in which analyses were performed.
* The ladder must not contradict the ocean paper argument chain; it is a subordinate planning tool
  that helps populate the "decisive evidence" link with a well-sequenced figure set.

## Required Inputs

**Prepare-stage files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`

**Methods-stage file:** `02_methods/02a_data.md and 02_methods/02b_methods.md`

**User input:** target journal (or willingness to choose); existing outline or section preference; central story direction preference.

**Journal profile:** loaded from `references/journals/{journal}.md` based on confirmed target.

## Required Output

Structure produces the following files in the user's project directory:

```
03_structure/03_project-brief.md       ← 活文档：项目书，跨阶段持续更新（旧版进 old/）
03_structure/03_figure-outline.md      ← 活文档：图表蓝图，与项目书同步更新
03_structure/03_terminology.md         ← 术语字典，review/polish 阶段维护
03_structure/reference_papers/         ← 参考论文全文（用于风格参照与术语对齐）
```

**Living document convention:** `03_project-brief.md` and `03_figure-outline.md` are not one-time
snapshots. They are updated throughout the project lifecycle as evidence, figures, and narrative
decisions evolve. When a major revision occurs, the previous version is moved to `03_structure/old/`
with a date suffix (e.g., `03_project-brief_v0601.md`).

The legacy `03_manuscript-structure.md` (single-file manuscript architecture document) is deprecated.
When migrating an existing project, move it to `03_structure/old/` and split its content into
`03_project-brief.md` and `03_figure-outline.md`.

Do **not** create additional files unless the user explicitly asks.

## Interaction Flow

The structure workflow proceeds through thirteen phases:

```
 1. Intake materials        → read prepare, methods, evidence inventory
 2. Ask for outline         → does user have an existing outline or preference?
 3. Confirm target journal  → ask if missing, confirm if specified
 4. Load journal profile    → from references/journals/{journal}.md
 5. Identify central story  → from evidence inventory routes and claims
 6. Build ocean paper argument chain → need / gap / move / decisive evidence / bounded implication / limitation
 7. Build claim hierarchy   → primary / secondary / not ready for main story
 8. Design architecture     → what each section contains and accomplishes
 9. Assign figures          → build figure sequence table
10. Plan supplement         → main text vs. supplementary material
11. Initialize terminology  → create 03_terminology.md with initial term entries
12. Flag conflicts          → [STRUCTURE CONFLICT] between outline, argument chain, and evidence
13. Save materials          → generate 03_project-brief.md, 03_figure-outline.md, 03_terminology.md
14. Confirm readiness       → assess readiness for writing stage
```

### Pacing

Each turn asks **3–5 questions maximum**. Never ask the user to answer a dozen questions at once.

## Target Journal Handling

**Hard rule: Do not decide the target journal for the user.**

- If the user provides a target journal: record it, confirm it, then load the corresponding journal profile from `references/journals/`
- If the user does not provide one: ask during structure. If still unsure, write `target journal: not specified yet` and proceed without profile loading
- If the user asks for suggestions: offer 2–3 options with brief reasoning, referencing available journal profiles. End with "discuss with your advisor or coauthors."
- The profile is used to shape narrative architecture, not to enforce formatting constraints

## Journal Profile Use

When a target journal is confirmed, load the matching profile:

| Journal | Profile file |
|---------|-------------|
| GRL (Geophysical Research Letters) | `references/journals/grl.md` |
| JGR-Oceans | `references/journals/jgr.md` |
| JPO (Journal of Physical Oceanography) | `references/journals/jpo.md` |
| Nature Communications | `references/journals/nc.md` |
| Nature Climate Change | `references/journals/ncc.md` |

The profile shapes: narrative architecture (sharp message vs. complete chain vs. dynamics-first
vs. broad significance vs. climate-change-centered); section emphasis (whether Methods is main
text or supplement, whether Discussion should be short or comprehensive); and claim depth (single
central claim vs. multi-line evidence).

## Structure Design Logic

The architecture is built in this order:

1. **Central story route** — select one route from the evidence inventory's possible story routes. Confirm with user.
2. **Argument chain** — build the ocean paper argument chain: need → gap → move → decisive evidence → bounded implication → limitation. Mark any missing or weak links.
3. **Claim hierarchy** — classify each claim as primary (must be in main narrative), secondary
   (supports primary but can be compressed), or not ready (insufficient evidence, move to
   supplement or defer).
4. **Section architecture** — design what each section does: Introduction sets up gap, Methods documents approach, Results presents evidence, Discussion interprets, Conclusion states significance.
5. **Figure sequence** — assign each figure to a section and narrative position. Order figures according to the Results Evidence Ladder (not the chronological order of analysis). Ensure figures build the story in logical order.
6. **Main text vs. supplement** — decide which figures, methods details, and secondary analyses belong in supplement.

## Missing and Conflicting Information

| Tag | Meaning |
|-----|---------|
| `[STRUCTURE CONFLICT]` | User's outline or section preference conflicts with available evidence |
| `[MISSING]` | Information the user has not provided |
| `[UNCERTAIN]` | Information that may change or needs verification |

**Conflict handling:** If the user's outline claims something the evidence does not support, mark
`[STRUCTURE CONFLICT]`, present both the outline claim and the evidence limitation, and ask the
user to revise.

## Resume and Update Mode

When the user returns with existing `03_structure/` files:

1. **Read** the existing files (`03_project-brief.md`, `03_figure-outline.md`, `03_terminology.md`)
2. **Identify update points** — new evidence, revised claims, changed journal target
3. **Preserve** confirmed architecture. Update only changed sections
4. **Archive** the previous version to `03_structure/old/` with a date suffix before major revisions
5. **Generate changelog:**

```markdown
## Update Summary
- Updated files: [list]
- New evidence or claims: [list]
- Changed journal or profile: [if applicable]
- Remaining structural issues: [list]
- Ready for writing: [yes / no / partial]
```

## Handoff to Writing

Needs: confirmed central story route, claim hierarchy (primary/secondary/not ready), section architecture, figure sequence with main/supplement assignment, journal profile loaded.

## Template References

When generating structure-stage materials, use:

- `references/templates/03_project-brief.md` — project brief template
- `references/templates/03_figure-outline.md` — figure outline template
- `references/templates/03_terminology.md` — terminology dictionary template

The user-facing output files should be saved as:

- `03_structure/03_project-brief.md`
- `03_structure/03_figure-outline.md`
- `03_structure/03_terminology.md`

The legacy `references/templates/03_manuscript-structure.md` is deprecated and retained for reference only.

## Guardrails

- **Do not draft the manuscript during structure.** The output is an architecture document, not Introduction, Results, or Discussion text.
- **Do not decide the target journal for the user.** Record or suggest, then confirm.
- **Do not assign claims to sections that the evidence cannot support.** Mark `[STRUCTURE CONFLICT]`.
- **Do not force a narrative route that ignores available evidence.** Select from what the evidence supports.
- **Do not overload the main text with supplementary-level detail.** The supplement plan exists for a reason.
- **Do not skip journal profile loading when a target journal is specified.** The profile shapes section architecture.
- **Do not treat the structure as immutable.** The writing stage may reveal necessary adjustments.
- **Do not overcompress the structure to fit journal length limits.** Compression happens in writing and polish.
- **Preserve the evidence-to-claim connection.** Every section assignment must trace back to a verified claim.
