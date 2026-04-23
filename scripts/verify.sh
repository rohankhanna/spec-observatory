#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

bash -n "${ROOT_DIR}/scripts/advance_observatory.sh"
bash -n "${ROOT_DIR}/scripts/watchdog_observatory.sh"
bash -n "${ROOT_DIR}/scripts/verify.sh"
python3 -m json.tool "${ROOT_DIR}/automation/advance_observatory.schema.json" >/dev/null
python3 -m json.tool "${ROOT_DIR}/automation/watchdog_observatory.schema.json" >/dev/null

grep -q '^<!-- state-of-the-art:managed:start -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
grep -q '^<!-- state-of-the-art:managed:end -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
test -f "${ROOT_DIR}/specs/PRODUCT_SPEC.md"
test -f "${ROOT_DIR}/specs/RESEARCH_SCOPE_SPEC.md"
test -f "${ROOT_DIR}/specs/REPO_SHAPE_SPEC.md"
test -f "${ROOT_DIR}/specs/DAILY_REFRESH_SPEC.md"
test -f "${ROOT_DIR}/specs/ADVANCE_JOB_SPEC.md"
test -f "${ROOT_DIR}/specs/WATCHDOG_JOB_SPEC.md"
test -f "${ROOT_DIR}/governance/WATCHDOG_FEEDBACK.md"
test -f "${ROOT_DIR}/docs/architecture/spec-observatory-control-loop.mmd"
test -f "${ROOT_DIR}/automation/managed_repo_paths.txt"
grep -q 'codex exec' "${ROOT_DIR}/scripts/advance_observatory.sh"
grep -q 'model_reasoning_effort' "${ROOT_DIR}/scripts/advance_observatory.sh"
grep -q 'WATCHDOG_FEEDBACK.md' "${ROOT_DIR}/scripts/advance_observatory.sh"
grep -q 'codex exec' "${ROOT_DIR}/scripts/watchdog_observatory.sh"
grep -q 'git revert --no-commit' "${ROOT_DIR}/scripts/watchdog_observatory.sh"
grep -q 'push:' "${ROOT_DIR}/.github/workflows/watchdog-observatory.yml"
grep -q 'advance:' "${ROOT_DIR}/.github/workflows/watchdog-observatory.yml"
grep -q 'cron:' "${ROOT_DIR}/.github/workflows/advance-observatory.yml"
grep -q 'CODEX_AUTH_JSON_B64' "${ROOT_DIR}/.github/workflows/advance-observatory.yml"
grep -q 'CODEX_AUTH_JSON_B64' "${ROOT_DIR}/.github/workflows/watchdog-observatory.yml"
grep -q 'base64.b64decode' "${ROOT_DIR}/.github/workflows/advance-observatory.yml"
grep -q 'base64.b64decode' "${ROOT_DIR}/.github/workflows/watchdog-observatory.yml"
grep -q 'runs-on: self-hosted' "${ROOT_DIR}/.github/workflows/advance-observatory.yml"
grep -q 'runs-on: self-hosted' "${ROOT_DIR}/.github/workflows/watchdog-observatory.yml"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/CLAUDE.md"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/GEMINI.md"

echo "verification passed"
