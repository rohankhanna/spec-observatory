# Watchdog Job Spec

## Purpose

The watchdog job reviews the latest advance commit and decides whether the repository genuinely improved or regressed under the guise of progress.

## Inputs

- the candidate advance commit
- the previous commit
- `STATE_OF_THE_ART.md`
- canonical specs under `specs/`
- `governance/WATCHDOG_FEEDBACK.md`
- verification signals

## Decisions

The watchdog must produce one of:

- `accept`
- `rollback`

## Accept Path

On accept, the watchdog may update `governance/WATCHDOG_FEEDBACK.md` with durable guidance for the next advance run.

## Rollback Path

On rollback, the watchdog should prefer a revert commit over destructive history edits. The revert commit should also update `governance/WATCHDOG_FEEDBACK.md` so the next advance run sees the critique that caused the rejection.

## Limits

- it must not silently rewrite the managed surface as a substitute for the advance job
- it audits and decides; it does not become a second advance job
