# Spec Observatory

This repository is a spec-driven development observatory.

It watches the state of the art around spec-driven development across layers of abstraction, maintains a daily research report, and keeps its own managed surfaces aligned with that research.

## Product

The observatory should:

1. read the current research document and current managed repo surfaces first
2. run fresh research on the relevant ecosystem
3. compare the fresh findings against the current document and current repo shape
4. update the research document only when there is a material difference
5. restructure the repo's managed surfaces only when the researched state of the art implies a better shape
6. audit those changes with an independent watchdog before treating them as progress

## Canonical Specs

The product is defined by these repository-owned specs:

- product: [specs/PRODUCT_SPEC.md](./specs/PRODUCT_SPEC.md)
- research scope: [specs/RESEARCH_SCOPE_SPEC.md](./specs/RESEARCH_SCOPE_SPEC.md)
- repo shape: [specs/REPO_SHAPE_SPEC.md](./specs/REPO_SHAPE_SPEC.md)
- daily refresh loop: [specs/DAILY_REFRESH_SPEC.md](./specs/DAILY_REFRESH_SPEC.md)
- advance job: [specs/ADVANCE_JOB_SPEC.md](./specs/ADVANCE_JOB_SPEC.md)
- watchdog job: [specs/WATCHDOG_JOB_SPEC.md](./specs/WATCHDOG_JOB_SPEC.md)

## Automation

The control loop lives in:

- advance workflow: [.github/workflows/advance-observatory.yml](./.github/workflows/advance-observatory.yml)
- watchdog workflow: [.github/workflows/watchdog-observatory.yml](./.github/workflows/watchdog-observatory.yml)
- advance runner: [scripts/advance_observatory.sh](./scripts/advance_observatory.sh)
- watchdog runner: [scripts/watchdog_observatory.sh](./scripts/watchdog_observatory.sh)
- advance prompt: [automation/advance_observatory_prompt.md](./automation/advance_observatory_prompt.md)
- advance schema: [automation/advance_observatory.schema.json](./automation/advance_observatory.schema.json)
- watchdog prompt: [automation/watchdog_observatory_prompt.md](./automation/watchdog_observatory_prompt.md)
- watchdog schema: [automation/watchdog_observatory.schema.json](./automation/watchdog_observatory.schema.json)
- managed repo allowlist: [automation/managed_repo_paths.txt](./automation/managed_repo_paths.txt)
- watchdog feedback: [governance/WATCHDOG_FEEDBACK.md](./governance/WATCHDOG_FEEDBACK.md)

The advance workflow installs the latest `@openai/codex` CLI on each run, uses `codex exec` with web search enabled, defaults to `gpt-5.4`, forces `model_reasoning_effort = "xhigh"`, and performs exactly one bounded self-reimplementation step. The watchdog then reviews that candidate step, can revert it by normal git history, and leaves durable feedback for the next advance run.

## Managed Versus Controller Surfaces

The daily loop may rewrite:

- the managed block of [STATE_OF_THE_ART.md](./STATE_OF_THE_ART.md)
- the allowlisted repo files named in [automation/managed_repo_paths.txt](./automation/managed_repo_paths.txt)

The daily loop should not routinely rewrite:

- workflow code
- shell scripts
- auth bootstrapping
- repo-local instruction files
- `governance/WATCHDOG_FEEDBACK.md`

Those are the controller surfaces. They change deliberately, not as part of the normal daily self-restructuring loop.

## Authentication

This repository is configured for ChatGPT-managed Codex auth rather than API-key billing.

Set the GitHub Actions secret `CODEX_AUTH_JSON_B64` to the base64-encoded contents of a trusted machine's `~/.codex/auth.json` after `codex login` with file-backed credential storage.

The workflows assume a trusted `self-hosted` runner. On each run they decode `CODEX_AUTH_JSON_B64` into `${CODEX_HOME:-$HOME/.codex}/auth.json` before invoking Codex.

If you use GitHub-hosted ephemeral runners instead, you need an additional secure restore-and-persist loop for the refreshed `auth.json`. That round trip is not configured in this repository.

The right term here is `GitHub Actions secret containing base64-encoded auth.json`, not `security key`.

This follows OpenAI's advanced Codex CI/CD guidance for maintained `auth.json` files on trusted runners: https://developers.openai.com/codex/auth/ci-cd-auth

## Local Commands

- run one bounded advance step locally: `./scripts/advance_observatory.sh`
- run the watchdog decision locally: `./scripts/watchdog_observatory.sh`
- verify the repo surfaces: `./scripts/verify.sh`

## What It Watches

The maintained document currently tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration
- software portfolio and project steering

The observatory does not try to replace spec workflow tools, coding agents, or orchestration frameworks. It monitors them, tracks how the layers fit together, and keeps this repository aligned with that view.

## Suggested Repo Name

`spec-observatory`

That is shorter, clearer, and more product-like than `spec-driven-development`, while still matching what this repository actually does.
