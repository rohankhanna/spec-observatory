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

## Canonical Specs

The product is defined by these repository-owned specs:

- product: [specs/PRODUCT_SPEC.md](./specs/PRODUCT_SPEC.md)
- research scope: [specs/RESEARCH_SCOPE_SPEC.md](./specs/RESEARCH_SCOPE_SPEC.md)
- repo shape: [specs/REPO_SHAPE_SPEC.md](./specs/REPO_SHAPE_SPEC.md)
- daily refresh loop: [specs/DAILY_REFRESH_SPEC.md](./specs/DAILY_REFRESH_SPEC.md)

## Automation

The daily update loop lives in:

- workflow: [.github/workflows/daily-observatory.yml](./.github/workflows/daily-observatory.yml)
- updater: [scripts/refresh_observatory.sh](./scripts/refresh_observatory.sh)
- prompt: [automation/observatory_refresh_prompt.md](./automation/observatory_refresh_prompt.md)
- output schema: [automation/observatory_refresh.schema.json](./automation/observatory_refresh.schema.json)
- managed repo allowlist: [automation/managed_repo_paths.txt](./automation/managed_repo_paths.txt)

The workflow installs the latest `@openai/codex` CLI on each run, uses `codex --search exec` for fresh research, and only commits when the observatory report or managed repo surfaces actually change.

## Managed Versus Controller Surfaces

The daily loop may rewrite:

- the managed block of [STATE_OF_THE_ART.md](./STATE_OF_THE_ART.md)
- the allowlisted repo files named in [automation/managed_repo_paths.txt](./automation/managed_repo_paths.txt)

The daily loop should not routinely rewrite:

- workflow code
- shell scripts
- auth bootstrapping
- repo-local instruction files

Those are the controller surfaces. They change deliberately, not as part of the normal daily self-restructuring loop.

## Authentication

This repository is configured for ChatGPT-managed Codex auth rather than API-key billing.

Set the GitHub Actions secret `CODEX_AUTH_JSON` to the full contents of a trusted machine's `~/.codex/auth.json` after `codex login` with file-backed credential storage.

The workflow assumes a trusted `self-hosted` runner with a persistent `CODEX_HOME`. It bootstraps `auth.json` only if the file is missing, then lets Codex refresh the session in place on later runs.

If you use GitHub-hosted ephemeral runners instead, you need an additional secure restore-and-persist loop for the refreshed `auth.json`. That round trip is not configured in this repository.

The right term here is `GitHub Actions secret containing auth.json`, not `security key`.

This follows OpenAI's advanced Codex CI/CD guidance for maintained `auth.json` files on trusted runners: https://developers.openai.com/codex/auth/ci-cd-auth

## Local Commands

- refresh the managed research and repo surfaces locally: `./scripts/refresh_observatory.sh`
- verify the repo surfaces: `./scripts/verify.sh`

## What It Watches

The maintained document currently tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration
- software portfolio and project steering

The observatory does not try to replace spec workflow tools, coding agents, or orchestration frameworks. It monitors them, tracks how the layers fit together, and keeps this repository aligned with that view.
