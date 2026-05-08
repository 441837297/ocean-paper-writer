# Migration Report

## Source Repository

`441837297/Paper-Polish-Workflow-skill` (GitHub, cloned for migration)

## New Repository

`/c/Users/zhisheng/ocean-paper-builder/` (local directory)

## Files Copied Directly

| Source | Destination | Status |
|--------|-------------|--------|
| `references/expression-patterns/ocean-science-domain.md` | `references/writing/ocean-science-domain.md` | Copied |
| `references/bilingual-output.md` | `references/writing/bilingual-output.md` | Copied |
| `references/anti-ai-patterns.md` | `references/review/anti-ai-patterns.md` | Copied |
| `references/anti-ai-patterns/vocabulary.md` | `references/review/anti-ai-vocabulary.md` | Copied |
| `references/anti-ai-patterns/sentence-patterns.md` | `references/review/anti-ai-sentence.md` | Copied |
| `references/anti-ai-patterns/transitions-and-tone.md` | `references/review/anti-ai-transitions.md` | Copied |
| `LICENSE` | `LICENSE` | Copied |

## Files Missing

None. All 7 target files were found in the old repository.

## Placeholder Files Created

| Path | Purpose |
|------|---------|
| `SKILL.md` | Minimal stub with name/description and workflow list |
| `README.md` | Project description and status |
| `references/workflow/prepare.md` | Phase 1 stub |
| `references/workflow/methods.md` | Phase 2 stub |
| `references/workflow/structure.md` | Phase 3 stub |
| `references/workflow/writing.md` | Phase 4 stub |
| `references/workflow/review.md` | Phase 5 stub |
| `references/workflow/polish.md` | Phase 6 stub |
| `references/journals/_template.md` | 7-section journal template |
| `references/journals/grl.md` | Placeholder, needs rewrite |
| `references/journals/jgr.md` | Placeholder, needs rewrite |
| `references/journals/jpo.md` | Placeholder, needs rewrite |
| `references/journals/nc.md` | Placeholder, needs rewrite |
| `references/journals/ncc.md` | Placeholder, needs rewrite |
| `references/writing/introduction-and-gap.md` | Placeholder, needs rewrite |
| `references/writing/methods-and-data.md` | Placeholder, needs rewrite |
| `references/writing/results-and-discussion.md` | Placeholder, needs rewrite |
| `references/writing/conclusions-and-claims.md` | Placeholder, needs rewrite |
| `references/zotero/README.md` | Zotero integration notes |
| `examples/prepare-example.md` | Placeholder |
| `examples/methods-example.md` | Placeholder |
| `examples/structure-example.md` | Placeholder |
| `examples/writing-example.md` | Placeholder |
| `examples/review-example.md` | Placeholder |
| `docs/migration-report.md` | This file |

## Not Migrated

- Old `ppw:` sub-skills (9 skills under `skills/` directory)
- `ppw:update` sync skill
- CEUS journal profile (`references/journals/ceus.md`)
- `geography-domain.md` expression pattern
- Old `README.md`, `CHANGELOG.md`, `CONTRIBUTING.md`, `CONTRIBUTING_CN.md`, `USAGE.md`
- `.claude-plugin/` metadata
- `repo-patterns.md`, `skill-conventions.md`, `skill-skeleton.md`, `body-generation-rules.md`
- `assets/` directory (logo)
- `.github/workflows/` CI files
- Old `references/expression-patterns.md` overview entrypoint (will rewrite)
- Old `references/anti-ai-patterns.md` overview (replaced with new entrypoint)

## Next Step

Next step: rewrite journal profiles using the 7-section journal template, starting with GRL.
