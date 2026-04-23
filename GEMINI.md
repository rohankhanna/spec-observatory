# AGENTS

## Repo Direction

- Before substantive work, read `README.md`, `PROJECT_INTENT.md`, `specs/PRODUCT_SPEC.md`, `specs/RESEARCH_SCOPE_SPEC.md`, `specs/REPO_SHAPE_SPEC.md`, `specs/DAILY_REFRESH_SPEC.md`, `specs/ADVANCE_JOB_SPEC.md`, `specs/WATCHDOG_JOB_SPEC.md`, `governance/WATCHDOG_FEEDBACK.md`, and `STATE_OF_THE_ART.md`.
- Treat `PROJECT_INTENT.md` as the authoritative internal statement of the repo's purpose and intended outcome.
- Treat `README.md` as the public-facing summary surface.
- Keep changes aligned with the repo goal: operate this repository as a spec-driven observatory for the state of the art in spec-driven development.
- Treat the files listed in `automation/managed_repo_paths.txt` plus the managed block of `STATE_OF_THE_ART.md` as the LLM-managed surface of the repository.
- Keep the automation reviewable, credential-minimal, and stable enough that the daily loop can restructure managed surfaces without destabilizing its own controller surfaces.
- Treat workflow files, shell scripts, auth bootstrapping, `governance/WATCHDOG_FEEDBACK.md`, and `AGENTS.md` plus mirrors as controller surfaces that should change deliberately, not as part of the routine daily restructuring loop.
- Treat repo-local `AGENTS.md` as canonical when `CLAUDE.md` or `GEMINI.md` mirrors exist.
- Keep `CLAUDE.md` and `GEMINI.md` as exact plain-file replicas of `AGENTS.md`.
- Do not make intended instruction changes directly in `CLAUDE.md` or `GEMINI.md`; apply them to `AGENTS.md` and regenerate mirrors from it.
