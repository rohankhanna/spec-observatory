# ADR 0004: Adopt An Advance And Watchdog Control Loop

- Status: Accepted
- Date: 2026-04-24

## Context

The repository is recursive by design. It researches spec-driven development, applies that research to itself, and therefore needs a control loop that can distinguish genuine progress from self-justifying regression.

A single self-reimplementation workflow is not sufficient because it can confuse movement with improvement.

## Decision

The repository will use two jobs:

1. `advance`
   Performs one bounded self-reimplementation step using current research, current specs, and current watchdog feedback.
2. `watchdog`
   Reviews the candidate advance commit, accepts it or reverts it, and leaves durable feedback for the next advance run.

The watchdog feedback surface is version controlled but remains outside the managed rewrite set.

## Consequences

- The repo gains an explicit second-order control loop.
- Bad self-modifications can be rejected through normal git history.
- The next advance run must read critique from the previous watchdog decision.
