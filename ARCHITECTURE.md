# Architecture

This document is the version-controlled source of truth for this repository's architecture.

## Role

This repository exists to operate as a spec-driven observatory for the state of the art in spec-driven development.

It maintains one research report, `STATE_OF_THE_ART.md`, one canonical spec set under `specs/`, and a two-job LLM-assisted CI control loop.

## Core Loop

The architectural center of the repository is:

`Advance -> Verify -> Watchdog -> Accept or Revert -> Feed Back Into Next Advance`

## Main Surfaces

- `STATE_OF_THE_ART.md`: the observatory research report
- `specs/PRODUCT_SPEC.md`: what the observatory is for
- `specs/RESEARCH_SCOPE_SPEC.md`: what the observatory watches
- `specs/REPO_SHAPE_SPEC.md`: how the repo should present itself
- `specs/DAILY_REFRESH_SPEC.md`: the operating contract for the daily loop
- `specs/ADVANCE_JOB_SPEC.md`: the contract for one bounded self-reimplementation step
- `specs/WATCHDOG_JOB_SPEC.md`: the contract for regression detection and rollback
- `governance/WATCHDOG_FEEDBACK.md`: durable feedback from watchdog to advance
- `automation/managed_repo_paths.txt`: the bounded allowlist of repo files the LLM may rewrite
- `automation/advance_observatory_prompt.md`: the bounded prompt for the advance job
- `automation/advance_observatory.schema.json`: the expected final response shape for advance
- `automation/watchdog_observatory_prompt.md`: the bounded prompt for the watchdog job
- `automation/watchdog_observatory.schema.json`: the expected final response shape for watchdog
- `scripts/advance_observatory.sh`: the local and CI entrypoint for advance
- `scripts/watchdog_observatory.sh`: the local and CI entrypoint for watchdog
- `.github/workflows/advance-observatory.yml`: the scheduled advance automation
- `.github/workflows/watchdog-observatory.yml`: the follow-on watchdog automation

## Write Path

1. Each CI job runs inside the GitHub Actions environment `observatory` on `ubuntu-latest`, writes `${CODEX_HOME}/auth.json` from that environment's `CODEX_AUTH_JSON_B64` secret, and authenticates GitHub operations with `GH_OBSERVATORY_AUTOMATION_TOKEN`.
2. The advance job reads `STATE_OF_THE_ART.md`, the canonical specs, `governance/WATCHDOG_FEEDBACK.md`, and the current contents of the allowlisted managed files.
3. The advance job runs Codex with web search, the latest CLI, `gpt-5.4` by default, and `model_reasoning_effort = "xhigh"`.
4. Advance performs fresh research, returns a bounded set of managed-surface updates, writes them, verifies the repo, and creates at most one advance commit.
5. The watchdog job reads the candidate advance commit, the previous commit, the canonical specs, the current watchdog feedback, and verification signals.
6. The watchdog uses Codex to decide whether the candidate commit is genuine progress or disguised regression.
7. On acceptance, the watchdog may update the feedback file if the guidance materially changed.
8. On rejection, the watchdog produces a revert commit and updates the feedback file so the next advance run sees the critique.
9. After a successful Codex run, the workflow base64-encodes the refreshed `auth.json` and overwrites the `observatory` environment secret `CODEX_AUTH_JSON_B64` so the next run starts from the newest session state.

## Design Constraints

- The Codex CLI is installed fresh in CI with `@openai/codex@latest`.
- The current document and current managed repo surfaces are always provided to the model before research.
- No update is written when the model concludes there is no material difference.
- The automation updates only the managed block of `STATE_OF_THE_ART.md` plus the allowlisted managed repo files.
- The final model response must match a version-controlled JSON Schema.
- The default CI path uses ChatGPT-managed `auth.json`, sourced from the `observatory` environment secret `CODEX_AUTH_JSON_B64` on GitHub-hosted runners, instead of an API key.
- A second environment secret, `GH_OBSERVATORY_AUTOMATION_TOKEN`, is used to push commits and rotate `CODEX_AUTH_JSON_B64`.
- The repository never stores Codex credentials in version control.
- The routine daily loop may not mutate controller surfaces such as workflow code, scripts, and repo-local instruction files.
- The repo should express itself primarily through version-controlled specs and generated research, not ad hoc prose.
- The watchdog feedback surface must remain outside the managed rewrite set so the advance job cannot erase its own critique.

## Target Repo Shape

```text
.
├── README.md
├── PROJECT_INTENT.md
├── STATE_OF_THE_ART.md
├── ARCHITECTURE.md
├── AGENTS.md
├── governance/
│   └── WATCHDOG_FEEDBACK.md
├── specs/
│   ├── PRODUCT_SPEC.md
│   ├── RESEARCH_SCOPE_SPEC.md
│   ├── REPO_SHAPE_SPEC.md
│   ├── DAILY_REFRESH_SPEC.md
│   ├── ADVANCE_JOB_SPEC.md
│   └── WATCHDOG_JOB_SPEC.md
├── automation/
│   ├── managed_repo_paths.txt
│   ├── advance_observatory_prompt.md
│   ├── advance_observatory.schema.json
│   ├── watchdog_observatory_prompt.md
│   └── watchdog_observatory.schema.json
├── scripts/
│   ├── advance_observatory.sh
│   ├── watchdog_observatory.sh
│   └── verify.sh
├── .github/
│   └── workflows/
│       ├── advance-observatory.yml
│       └── watchdog-observatory.yml
└── docs/
    ├── adr/
    └── architecture/
```
