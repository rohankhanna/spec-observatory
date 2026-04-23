#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

bash -n "${ROOT_DIR}/scripts/refresh_observatory.sh"
bash -n "${ROOT_DIR}/scripts/verify.sh"
python3 -m json.tool "${ROOT_DIR}/automation/observatory_refresh.schema.json" >/dev/null

grep -q '^<!-- state-of-the-art:managed:start -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
grep -q '^<!-- state-of-the-art:managed:end -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
test -f "${ROOT_DIR}/specs/PRODUCT_SPEC.md"
test -f "${ROOT_DIR}/specs/RESEARCH_SCOPE_SPEC.md"
test -f "${ROOT_DIR}/specs/REPO_SHAPE_SPEC.md"
test -f "${ROOT_DIR}/specs/DAILY_REFRESH_SPEC.md"
test -f "${ROOT_DIR}/automation/managed_repo_paths.txt"
grep -q 'codex --search exec' "${ROOT_DIR}/scripts/refresh_observatory.sh"
grep -q 'managed_repo_paths.txt' "${ROOT_DIR}/scripts/refresh_observatory.sh"
grep -q 'PRODUCT_SPEC.md' "${ROOT_DIR}/scripts/refresh_observatory.sh"
grep -q 'cron:' "${ROOT_DIR}/.github/workflows/daily-observatory.yml"
grep -q 'CODEX_AUTH_JSON' "${ROOT_DIR}/.github/workflows/daily-observatory.yml"
grep -q 'runs-on: self-hosted' "${ROOT_DIR}/.github/workflows/daily-observatory.yml"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/CLAUDE.md"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/GEMINI.md"

echo "verification passed"
