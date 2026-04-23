# Spec-Driven Development

This repository maintains one living document, [STATE_OF_THE_ART.md](./STATE_OF_THE_ART.md), about spec-driven development and the adjacent tooling ecosystem. A daily Codex-in-the-loop CI job keeps that document current.

## Goal

The job should:

1. read the current document first
2. run fresh research on the relevant ecosystem
3. compare the fresh findings against the current document
4. update the document only when there is a material difference

## Automation

The daily update loop lives in:

- workflow: [.github/workflows/daily-state-of-the-art.yml](./.github/workflows/daily-state-of-the-art.yml)
- updater: [scripts/update_state_of_the_art.sh](./scripts/update_state_of_the_art.sh)
- prompt: [automation/state_of_the_art_prompt.md](./automation/state_of_the_art_prompt.md)
- output schema: [automation/state_of_the_art_update.schema.json](./automation/state_of_the_art_update.schema.json)

The workflow installs the latest `@openai/codex` CLI on each run, uses `codex --search exec` for fresh research, and only commits when `STATE_OF_THE_ART.md` actually changes.

## Authentication

This repository is configured for ChatGPT-managed Codex auth rather than API-key billing.

Set the GitHub Actions secret `CODEX_AUTH_JSON` to the full contents of a trusted machine's `~/.codex/auth.json` after `codex login` with file-backed credential storage.

The workflow assumes a trusted `self-hosted` runner with a persistent `CODEX_HOME`. It bootstraps `auth.json` only if the file is missing, then lets Codex refresh the session in place on later runs.

If you use GitHub-hosted ephemeral runners instead, you need an additional secure restore-and-persist loop for the refreshed `auth.json`. That round trip is not configured in this repository.

The right term here is `GitHub Actions secret containing auth.json`, not `security key`.

This follows OpenAI's advanced Codex CI/CD guidance for maintained `auth.json` files on trusted runners: https://developers.openai.com/codex/auth/ci-cd-auth

## Local Commands

- refresh the document locally: `./scripts/update_state_of_the_art.sh`
- verify the repo surfaces: `./scripts/verify.sh`

## Scope

The maintained document currently tracks the state of the art for:

- spec-driven development
- outcome-driven development
- coding agents
- agent orchestration
- software portfolio and project steering
