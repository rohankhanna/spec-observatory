# ADR 0001: Keep The Repo Focused On A Daily-Updated Research And Shape Loop

- Status: Accepted
- Date: 2026-04-23

## Context

The repository previously explored a much broader application idea.

The narrower and more practical goal is to keep one state-of-the-art document current and keep the repo's managed shape current with a daily LLM-assisted CI loop that:

1. reads the current document
2. performs fresh research
3. compares the findings against the current research and repo shape
4. updates the managed surfaces only when there is a material difference

## Decision

This repository will focus on maintaining `STATE_OF_THE_ART.md`, `REPO_SHAPE.md`, and the automation that updates the repo's managed surface.

The repository will keep only files that are directly relevant to:

- the maintained document
- the target repo shape
- the prompt and schema that constrain the LLM step
- the update script
- the CI workflow
- the minimal docs needed to explain and verify that loop

## Consequences

- The broader control-plane exploration is removed from the repo.
- The repository becomes simpler to understand and automate.
- The daily research-plus-restructure loop becomes the primary architecture and product of the repo.
