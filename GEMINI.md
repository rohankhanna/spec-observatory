# AGENTS

## Repo Direction

- Before substantive work, read `README.md`, `PROJECT_INTENT.md`, and `STATE_OF_THE_ART.md`.
- Treat `PROJECT_INTENT.md` as the authoritative internal statement of the repo's purpose and intended outcome.
- Treat `README.md` as the public-facing summary surface.
- Keep changes aligned with the repo goal: maintain `STATE_OF_THE_ART.md` with a daily Codex-in-the-loop CI job that reads the current document first, researches second, and updates only when there is a material difference.
- Keep the automation reviewable, credential-minimal, and focused on document maintenance rather than general product development.
- Treat repo-local `AGENTS.md` as canonical when `CLAUDE.md` or `GEMINI.md` mirrors exist.
- Keep `CLAUDE.md` and `GEMINI.md` as exact plain-file replicas of `AGENTS.md`.
- Do not make intended instruction changes directly in `CLAUDE.md` or `GEMINI.md`; apply them to `AGENTS.md` and regenerate mirrors from it.
