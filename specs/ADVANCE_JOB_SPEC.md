# Advance Job Spec

## Purpose

The advance job performs one bounded self-reimplementation step.

It reads the current observatory implementation, compares it against its researched understanding of the current state of the art, updates the managed surfaces to close the gap as much as possible in a single iteration, commits those changes, and stops.

## Inputs

- `STATE_OF_THE_ART.md`
- canonical specs under `specs/`
- allowlisted managed files
- `governance/WATCHDOG_FEEDBACK.md`

## Model Policy

- use Codex CLI
- install the latest available `@openai/codex` CLI in CI
- default to `gpt-5.4` unless a repo variable overrides the model
- use `model_reasoning_effort = "xhigh"`

## Output Contract

The job may emit:

- a new managed block for `STATE_OF_THE_ART.md`
- updated allowlisted files
- one commit that captures the bounded advance step

## Limits

- one iteration only per scheduled run
- no internal retry loop that keeps mutating until convergence
- do not mutate controller surfaces
- must read current watchdog feedback before acting
