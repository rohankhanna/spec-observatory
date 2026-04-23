#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

bash -n "${ROOT_DIR}/scripts/update_state_of_the_art.sh"
bash -n "${ROOT_DIR}/scripts/verify.sh"
python3 -m json.tool "${ROOT_DIR}/automation/state_of_the_art_update.schema.json" >/dev/null

grep -q '^<!-- state-of-the-art:managed:start -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
grep -q '^<!-- state-of-the-art:managed:end -->$' "${ROOT_DIR}/STATE_OF_THE_ART.md"
grep -q 'codex --search exec' "${ROOT_DIR}/scripts/update_state_of_the_art.sh"
grep -q 'cron:' "${ROOT_DIR}/.github/workflows/daily-state-of-the-art.yml"
grep -q 'CODEX_AUTH_JSON' "${ROOT_DIR}/.github/workflows/daily-state-of-the-art.yml"
grep -q 'runs-on: self-hosted' "${ROOT_DIR}/.github/workflows/daily-state-of-the-art.yml"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/CLAUDE.md"
cmp -s "${ROOT_DIR}/AGENTS.md" "${ROOT_DIR}/GEMINI.md"

echo "verification passed"
