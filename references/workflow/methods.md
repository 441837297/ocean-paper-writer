# Methods Workflow

## Purpose

The methods workflow reconstructs data sources, preprocessing, analysis steps, statistical methods,
and reproducibility details from code, notebooks, README files, data descriptions, and user
explanations. Its goals are to:

- Reconstruct and confirm the complete analysis chain before any methods prose is drafted
- Cross-check user descriptions against code and README for consistency
- Flag missing, uncertain, or conflicting methodological information
- Produce a reusable methods material file for the structure and writing stages

## When to Use

Run methods when: prepare stage is complete; the user has code, notebooks, or data descriptions;
the user needs to organize methods before story structuring; or the user wants to verify that the
code does what they describe.

Do **not** run methods when: no code or data description is available; prepare stage is not complete; or the user only wants to polish an existing methods section.

## Core Principle

> Use user confirmation as the authority and code inspection as cross-check evidence.

- The user's research design description is the primary source
- Code verifies workflow steps, variable names, parameters, thresholds, and outputs
- If code and user description disagree: mark `[CONFLICT]` and ask the user to confirm. Do not silently choose one.
- Do not infer scientific motivation from code alone.

## Required Inputs

**Prepare-stage files:** `01_prepare/01a_project-brief.md`, `01_prepare/01b_evidence-inventory.md`

**Code and workflow:** code directory path; scripts/notebooks with roles; README or workflow documentation; environment file if available; acquisition, preprocessing, and figure scripts.

**Data information:** dataset names and providers; variables, time range, spatial coverage, resolution; version and access info; raw vs. processed distinction; manual data selection or filtering.

**User confirmations:** which scripts are final vs. exploratory; which outputs are used in manuscript; which parameter choices are intentional; which analyses are still provisional.

## Required Output

Methods produces two default user-facing files:

```
02_methods/02a_data.md   ← 数据来源表 + Data Availability（URL/DOI/简介/参考文献）
02_methods/02b_methods.md ← 分析流程、变量定义、统计方法
```

**02a_data.md** 必须包含 Data Availability 表格（每行一个数据集，含访问地址/DOI、1-2 句简介、参考文献）。
这是材料整理阶段的数据清单，不是手稿中的 "Data Availability Statement"——后者留到 writing 阶段按目标期刊格式撰写。

Do **not** create additional files unless the user explicitly asks. If information is insufficient, produce a draft with `[MISSING]`, `[UNCERTAIN]`, and `[CONFLICT]` markers.

## Interaction Flow

The methods workflow proceeds through ten phases. Each phase can span multiple conversation turns.

```
1. Intake prepare materials   → read project brief and evidence inventory
2. Ask for code/data paths    → request directory, scripts, README (3–5 Qs max)
3. Identify relevant files    → find figure-producing, core-analysis, and utility scripts
4. Classify scripts           → user marks each as final or exploratory
5. Cross-check code/README    → inspect datasets, variables, params, thresholds, outputs
6. Extract details            → populate template sections from code and user descriptions
7. Flag gaps                  → mark as [MISSING], [UNCERTAIN], [CONFLICT], [CONFIRM WITH USER]
8. Ask confirmation Qs        → present conflicts and gaps; 3–5 questions per turn
9. Save materials             → generate 02a_data.md and 02b_methods.md in conversation
10. Confirm readiness         → assess readiness for structure stage
```

### Pacing

Each turn should ask **3–5 questions maximum**. Never ask the user to answer a dozen questions at once. If more questions remain, defer them to the next turn.

## Path and Material Request

When starting methods, ask for materials in stages — do not ask all at once:

Turn 1: "Please share the path to your code directory and which scripts produced the manuscript figures."
Turn 2: "Do you have a README or workflow document? How was the raw data acquired?"
Turn 3: "Which scripts should I treat as final versus exploratory?"

## Code Cross-check Logic

When inspecting code, look for:

- **Data loading:** file paths, dataset names, variable names, date ranges, spatial bounds
- **Preprocessing:** quality control flags, filtering criteria, interpolation method, regridding target, masking, thresholding
- **Derived variables:** how each key variable is computed from raw data
- **Statistics:** trend method, significance test, autocorrelation treatment, effective sample size
- **Uncertainty:** confidence intervals, standard errors, ensemble spread, sensitivity tests
- **Outputs:** figure file names, data file names

### Cross-check rules

- Do not treat exploratory code as final methods
- Do not treat plotting choices as analysis methods unless they affect results
- Do not ignore hard-coded thresholds, paths, masks, or manually selected regions
- For each parameter, record its source: `user`, `code`, `README`, `metadata`, `inferred`, or `[MISSING]`
- If source is `inferred`, mark `[CONFIRM WITH USER]`

## Missing and Conflicting Information

### Marking conventions

| Tag | Meaning |
|-----|---------|
| `[MISSING]` | Information the user has not provided |
| `[UNCERTAIN]` | Information that may change or needs verification |
| `[TODO]` | Action item for the user to complete later |
| `[CONFLICT]` | User description and code disagree |
| `[CONFIRM WITH USER]` | Information inferred; needs user confirmation |

### Conflict handling

If user description and code disagree: mark `[CONFLICT]`, present both versions, ask the user which is correct, record the confirmed version. Do not silently choose one.

### Missing information categories

- **Critical:** dataset name unknown, time/spatial coverage unknown, final scripts unknown, key preprocessing unknown, statistical method unknown, figure-output link unknown
- **Useful but not blocking:** dataset version, download date, code environment, software versions, data DOI
- **Optional refinement:** naming conventions, preferred wording, supplementary-methods detail, journal-specific emphasis

## Target Journal Handling

- Do not decide the target journal for the user
- Record the user's target journal if provided
- Do not compress methods details to fit journal style during methods
- Journal-specific methods emphasis is handled in structure, writing, or polish stage
- Preserve enough detail for reproducibility — compression comes later

## Resume and Update Mode

When the user returns with existing `02_methods/02a_data.md and 02_methods/02b_methods.md`:

1. **Read** the existing file
2. **Identify update points** — new code, revised descriptions, user corrections
3. **Preserve** confirmed content. Update only changed sections
4. **Cross-check** new or modified code
5. **Generate changelog:**

```markdown
## Update Summary
- Updated sections: [list]
- New code/data inspected: [list]
- Confirmed details: [list]
- New conflicts or missing information: [list]
- Ready for next stage: [yes / no / partial]
```

## Handoff to Next Stages

**To structure:** needs confirmed datasets, time/spatial coverage, key variables, analysis workflow documented, figure-output links, main limitations identified.

**To writing:** needs enough method detail for a Methods draft, confirmed statistical methods, preprocessing, units, definitions, and reproducibility notes.

**Back to prepare:** if methods inspection reveals unclear research question, figures, or claims, return to update `01_prepare/01a_project-brief.md` and `01b_evidence-inventory.md`.

## Template References

When generating methods-stage materials, use:

- `references/templates/02a_data.md, references/templates/02b_methods.md`

The user-facing output file should be saved as:

- `02_methods/02a_data.md and 02_methods/02b_methods.md`

## Guardrails

- **Do not draft the polished Methods section unless explicitly requested.** The output is a structured materials file, not manuscript-ready prose.
- **Do not treat code as the final authority when it conflicts with user confirmation.** Mark `[CONFLICT]` and ask.
- **Do not invent dataset names, versions, processing steps, or statistical tests.** Mark missing information as `[MISSING]`.
- **Do not ignore exploratory scripts versus final scripts.** Ask the user to classify each.
- **Do not silently resolve conflicts between code and user description.** Always present both sides.
- **Do not omit hard-coded thresholds, masks, filters, baselines, or manual choices.** These affect reproducibility.
- **Do not overcompress methods details according to journal style during methods.** Compression comes later.
- **Do not write a formal "Data Availability Statement" in methods stage.** Record data access info in the 02a data table; the journal-formatted statement is written during the writing stage.
- **Preserve enough detail for reproducibility.** `[MISSING]`, `[UNCERTAIN]`, `[CONFLICT]`, and `[CONFIRM WITH USER]` flags are features, not bugs.
