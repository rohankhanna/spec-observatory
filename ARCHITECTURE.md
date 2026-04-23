# Architecture

This document is the version-controlled source of truth for this repository's architecture.

## Role

This repository exists to operate as a spec-driven observatory for the state of the art in spec-driven development.

It maintains one research report, `STATE_OF_THE_ART.md`, and one canonical spec set under `specs/`, with a daily LLM-assisted CI loop.

## Core Loop

The architectural center of the repository is:

`Read current repo -> Research -> Compare -> Update managed surfaces -> Verify -> Commit`

## Main Surfaces

- `STATE_OF_THE_ART.md`: the observatory research report
- `specs/PRODUCT_SPEC.md`: what the observatory is for
- `specs/RESEARCH_SCOPE_SPEC.md`: what the observatory watches
- `specs/REPO_SHAPE_SPEC.md`: how the repo should present itself
- `specs/DAILY_REFRESH_SPEC.md`: the operating contract for the daily loop
- `automation/managed_repo_paths.txt`: the bounded allowlist of repo files the LLM may rewrite
- `automation/observatory_refresh_prompt.md`: the bounded research and repo-conformance prompt
- `automation/observatory_refresh.schema.json`: the expected final response shape from Codex
- `scripts/refresh_observatory.sh`: the local and CI entrypoint
- `.github/workflows/daily-observatory.yml`: the scheduled automation

## Write Path

1. The CI runner ensures `${CODEX_HOME}/auth.json` exists, bootstrapping it from `CODEX_AUTH_JSON` only when the file is missing.
2. The script reads `STATE_OF_THE_ART.md`, the canonical specs, and the current contents of the allowlisted managed files.
3. The script sends the current repo context plus instructions to `codex --search exec`.
4. Codex performs fresh web research.
5. Codex returns structured output that states whether the research document or managed repo files need a material update.
6. The script replaces only the managed block inside `STATE_OF_THE_ART.md` and rewrites only the allowlisted spec and doc files whose returned contents materially differ.
7. The workflow verifies the repository.
8. The workflow commits only when the repo changed.

## Design Constraints

- The Codex CLI is installed fresh in CI with `@openai/codex@latest`.
- The current document and current managed repo surfaces are always provided to the model before research.
- No update is written when the model concludes there is no material difference.
- The automation updates only the managed block of `STATE_OF_THE_ART.md` plus the allowlisted managed repo files.
- The final model response must match a version-controlled JSON Schema.
- The default CI path uses ChatGPT-managed `auth.json` on a trusted private runner instead of an API key.
- The repository never stores Codex credentials in version control.
- The routine daily loop may not mutate controller surfaces such as workflow code, scripts, and repo-local instruction files.
- The repo should express itself primarily through version-controlled specs and generated research, not ad hoc prose.

## Target Repo Shape

```text
.
├── README.md
├── PROJECT_INTENT.md
├── STATE_OF_THE_ART.md
├── ARCHITECTURE.md
├── AGENTS.md
├── specs/
│   ├── PRODUCT_SPEC.md
│   ├── RESEARCH_SCOPE_SPEC.md
│   ├── REPO_SHAPE_SPEC.md
│   └── DAILY_REFRESH_SPEC.md
├── automation/
│   ├── managed_repo_paths.txt
│   ├── observatory_refresh_prompt.md
│   └── observatory_refresh.schema.json
├── scripts/
│   ├── refresh_observatory.sh
│   └── verify.sh
├── .github/
│   └── workflows/
│       └── daily-observatory.yml
└── docs/
    ├── adr/
    └── architecture/
```
