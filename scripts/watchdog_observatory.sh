#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOC_PATH="${ROOT_DIR}/STATE_OF_THE_ART.md"
PRODUCT_SPEC_PATH="${ROOT_DIR}/specs/PRODUCT_SPEC.md"
RESEARCH_SCOPE_SPEC_PATH="${ROOT_DIR}/specs/RESEARCH_SCOPE_SPEC.md"
REPO_SHAPE_SPEC_PATH="${ROOT_DIR}/specs/REPO_SHAPE_SPEC.md"
DAILY_REFRESH_SPEC_PATH="${ROOT_DIR}/specs/DAILY_REFRESH_SPEC.md"
ADVANCE_JOB_SPEC_PATH="${ROOT_DIR}/specs/ADVANCE_JOB_SPEC.md"
WATCHDOG_JOB_SPEC_PATH="${ROOT_DIR}/specs/WATCHDOG_JOB_SPEC.md"
WATCHDOG_FEEDBACK_PATH="${ROOT_DIR}/governance/WATCHDOG_FEEDBACK.md"
WATCHDOG_FEEDBACK_REL="governance/WATCHDOG_FEEDBACK.md"
PROMPT_PATH="${ROOT_DIR}/automation/watchdog_observatory_prompt.md"
SCHEMA_PATH="${ROOT_DIR}/automation/watchdog_observatory.schema.json"
MANAGED_PATHS_PATH="${ROOT_DIR}/automation/managed_repo_paths.txt"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
AUTH_FILE="${CODEX_HOME_DIR}/auth.json"
CODEX_MODEL="${CODEX_MODEL:-gpt-5.4}"
CODEX_REASONING_EFFORT="${CODEX_REASONING_EFFORT:-xhigh}"
CODEX_TRANSIENT_RETRY_DELAY_SECONDS="${CODEX_TRANSIENT_RETRY_DELAY_SECONDS:-30}"
WATCHDOG_TARGET_SHA="${WATCHDOG_TARGET_SHA:-$(git rev-parse HEAD)}"
WATCHDOG_BASE_SHA="${WATCHDOG_BASE_SHA:-$(git rev-parse "${WATCHDOG_TARGET_SHA}^")}"

require_file() {
  local path="$1"
  local label="$2"
  if [[ ! -f "${path}" ]]; then
    echo "missing ${label}: ${path}" >&2
    exit 1
  fi
}

require_file "${DOC_PATH}" "document"
require_file "${PRODUCT_SPEC_PATH}" "product spec"
require_file "${RESEARCH_SCOPE_SPEC_PATH}" "research scope spec"
require_file "${REPO_SHAPE_SPEC_PATH}" "repo shape spec"
require_file "${DAILY_REFRESH_SPEC_PATH}" "daily refresh spec"
require_file "${ADVANCE_JOB_SPEC_PATH}" "advance job spec"
require_file "${WATCHDOG_JOB_SPEC_PATH}" "watchdog job spec"
require_file "${WATCHDOG_FEEDBACK_PATH}" "watchdog feedback"
require_file "${PROMPT_PATH}" "prompt"
require_file "${SCHEMA_PATH}" "schema"
require_file "${MANAGED_PATHS_PATH}" "managed path allowlist"

if [[ -z "${OPENAI_API_KEY:-}" && ! -f "${AUTH_FILE}" ]]; then
  echo "Set OPENAI_API_KEY or provide ${AUTH_FILE}" >&2
  exit 1
fi

is_transient_codex_failure() {
  local log_path="$1"
  grep -Eiq \
    '429|rate.?limit|bandwidth|temporar(il)?y unavailable|timeout|timed out|connection reset|connection refused|network error|5[0-9]{2}|internal server error|server error|overloaded|capacity' \
    "${log_path}"
}

run_codex_exec() {
  local log_path="$1"
  local attempt=1
  local max_attempts=2
  local exit_code=0

  while true; do
    : > "${log_path}"
    set +e
    codex exec \
      --ignore-user-config \
      --ignore-rules \
      --ephemeral \
      --sandbox read-only \
      -C "${ROOT_DIR}" \
      -m "${CODEX_MODEL}" \
      -c 'web_search="live"' \
      -c "model_reasoning_effort=\"${CODEX_REASONING_EFFORT}\"" \
      --output-schema "${SCHEMA_PATH}" \
      --output-last-message "${RESULT_JSON}" \
      - < "${PROMPT_INPUT}" 2>&1 | tee "${log_path}"
    exit_code=${PIPESTATUS[0]}
    set -e

    if [[ "${exit_code}" -eq 0 ]]; then
      return 0
    fi

    if [[ "${attempt}" -ge "${max_attempts}" ]] || ! is_transient_codex_failure "${log_path}"; then
      return "${exit_code}"
    fi

    echo "Transient Codex failure detected on attempt ${attempt}; retrying once after ${CODEX_TRANSIENT_RETRY_DELAY_SECONDS}s." >&2
    sleep "${CODEX_TRANSIENT_RETRY_DELAY_SECONDS}"
    attempt=$((attempt + 1))
  done
}

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

PROMPT_INPUT="${TMP_DIR}/prompt.txt"
RESULT_JSON="${TMP_DIR}/result.json"
VERIFY_OUTPUT="${TMP_DIR}/verify.txt"
CHANGED_PATHS="${TMP_DIR}/changed_paths.txt"
CODEX_LOG="${TMP_DIR}/codex.log"

set +e
"${ROOT_DIR}/scripts/verify.sh" >"${VERIFY_OUTPUT}" 2>&1
VERIFY_EXIT=$?
set -e

git diff --name-only "${WATCHDOG_BASE_SHA}" "${WATCHDOG_TARGET_SHA}" -- \
  STATE_OF_THE_ART.md $(cat "${MANAGED_PATHS_PATH}") > "${CHANGED_PATHS}" || true

{
  cat "${PROMPT_PATH}"
  printf '\n\nCurrent UTC date: %s\n' "$(date -u +%F)"
  printf '\n<candidate_commit_sha>\n%s\n</candidate_commit_sha>\n' "${WATCHDOG_TARGET_SHA}"
  printf '\n<base_commit_sha>\n%s\n</base_commit_sha>\n' "${WATCHDOG_BASE_SHA}"
  printf '\n<verify_exit_code>\n%s\n</verify_exit_code>\n' "${VERIFY_EXIT}"
  printf '\n<verify_output>\n'
  cat "${VERIFY_OUTPUT}"
  printf '\n</verify_output>\n'
  printf '\n<changed_paths>\n'
  cat "${CHANGED_PATHS}"
  printf '\n</changed_paths>\n'
  printf '\n<current_watchdog_feedback>\n'
  cat "${WATCHDOG_FEEDBACK_PATH}"
  printf '\n</current_watchdog_feedback>\n'
  printf '\n<current_product_spec>\n'
  cat "${PRODUCT_SPEC_PATH}"
  printf '\n</current_product_spec>\n'
  printf '\n<current_research_scope_spec>\n'
  cat "${RESEARCH_SCOPE_SPEC_PATH}"
  printf '\n</current_research_scope_spec>\n'
  printf '\n<current_repo_shape_spec>\n'
  cat "${REPO_SHAPE_SPEC_PATH}"
  printf '\n</current_repo_shape_spec>\n'
  printf '\n<current_daily_refresh_spec>\n'
  cat "${DAILY_REFRESH_SPEC_PATH}"
  printf '\n</current_daily_refresh_spec>\n'
  printf '\n<current_advance_job_spec>\n'
  cat "${ADVANCE_JOB_SPEC_PATH}"
  printf '\n</current_advance_job_spec>\n'
  printf '\n<current_watchdog_job_spec>\n'
  cat "${WATCHDOG_JOB_SPEC_PATH}"
  printf '\n</current_watchdog_job_spec>\n'
  printf '\n<candidate_diff>\n'
  git diff --minimal --unified=3 "${WATCHDOG_BASE_SHA}" "${WATCHDOG_TARGET_SHA}" -- \
    STATE_OF_THE_ART.md $(cat "${MANAGED_PATHS_PATH}") "${WATCHDOG_FEEDBACK_REL}" || true
  printf '\n</candidate_diff>\n'
} > "${PROMPT_INPUT}"

run_codex_exec "${CODEX_LOG}"

python3 - "${RESULT_JSON}" <<'PY'
import json
import pathlib
import sys

result_path = pathlib.Path(sys.argv[1])
data = json.loads(result_path.read_text())
print(data["reason"])
print(f"watchdog decision: {data['decision']}")
PY

python3 - "${ROOT_DIR}" "${RESULT_JSON}" "${WATCHDOG_FEEDBACK_PATH}" <<'PY'
import json
import pathlib
import sys

root_dir = pathlib.Path(sys.argv[1])
result_path = pathlib.Path(sys.argv[2])
feedback_path = pathlib.Path(sys.argv[3])

data = json.loads(result_path.read_text())
feedback = data["feedback_markdown"].rstrip()

content = (
    "# Watchdog Feedback\n\n"
    "This file is the durable feedback surface from the watchdog job to the advance job.\n\n"
    "The advance job must read this file before proposing the next self-reimplementation step.\n\n"
    "## Current Guidance\n\n"
    f"{feedback}\n"
)

if feedback_path.read_text() != content:
    feedback_path.write_text(content)
PY

WATCHDOG_DECISION="$(python3 - "${RESULT_JSON}" <<'PY'
import json
import pathlib
import sys
print(json.loads(pathlib.Path(sys.argv[1]).read_text())["decision"])
PY
)"

if [[ "${WATCHDOG_DECISION}" == "rollback" ]]; then
  git revert --no-commit "${WATCHDOG_TARGET_SHA}"
  git add "${WATCHDOG_FEEDBACK_REL}"
  git commit -m "watchdog: revert regressive advance"
  exit 0
fi

if ! git diff --quiet -- "${WATCHDOG_FEEDBACK_REL}"; then
  git add "${WATCHDOG_FEEDBACK_REL}"
  git commit -m "watchdog: update guidance"
fi
