# Architecture

This document is the version-controlled source of truth for this repository's architecture.

## Role

This repository exists to maintain one document, `STATE_OF_THE_ART.md`, with a daily LLM-assisted CI loop.

## Core Loop

The architectural center of the repository is:

`Read current doc -> Research -> Compare -> Update only if different -> Commit`

## Main Surfaces

- `STATE_OF_THE_ART.md`: the document being maintained
- `automation/state_of_the_art_prompt.md`: the bounded research and comparison prompt
- `automation/state_of_the_art_update.schema.json`: the expected final response shape from Codex
- `scripts/update_state_of_the_art.sh`: the local and CI entrypoint
- `.github/workflows/daily-state-of-the-art.yml`: the scheduled automation

## Write Path

1. The CI runner ensures `${CODEX_HOME}/auth.json` exists, bootstrapping it from `CODEX_AUTH_JSON` only when the file is missing.
2. The script reads `STATE_OF_THE_ART.md`.
3. The script sends the current document plus instructions to `codex --search exec`.
4. Codex performs fresh web research.
5. Codex returns structured output that states whether a material update is needed.
6. The script replaces only the managed block inside `STATE_OF_THE_ART.md` when the returned replacement block is materially different.
7. The workflow commits only when the file changed.

## Design Constraints

- The Codex CLI is installed fresh in CI with `@openai/codex@latest`.
- The current document is always provided to the model before research.
- No update is written when the model concludes there is no material difference.
- The automation updates only the managed block of `STATE_OF_THE_ART.md`.
- The final model response must match a version-controlled JSON Schema.
- The default CI path uses ChatGPT-managed `auth.json` on a trusted private runner instead of an API key.
- The repository never stores Codex credentials in version control.

## Target Repo Shape

```text
.
├── README.md
├── PROJECT_INTENT.md
├── STATE_OF_THE_ART.md
├── ARCHITECTURE.md
├── AGENTS.md
├── automation/
│   ├── state_of_the_art_prompt.md
│   └── state_of_the_art_update.schema.json
├── scripts/
│   ├── update_state_of_the_art.sh
│   └── verify.sh
├── .github/
│   └── workflows/
│       └── daily-state-of-the-art.yml
└── docs/
    ├── adr/
    └── architecture/
```
