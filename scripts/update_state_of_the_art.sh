#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOC_PATH="${ROOT_DIR}/STATE_OF_THE_ART.md"
PROMPT_PATH="${ROOT_DIR}/automation/state_of_the_art_prompt.md"
SCHEMA_PATH="${ROOT_DIR}/automation/state_of_the_art_update.schema.json"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
AUTH_FILE="${CODEX_HOME_DIR}/auth.json"

if [[ ! -f "${DOC_PATH}" ]]; then
  echo "missing document: ${DOC_PATH}" >&2
  exit 1
fi

if [[ ! -f "${PROMPT_PATH}" ]]; then
  echo "missing prompt: ${PROMPT_PATH}" >&2
  exit 1
fi

if [[ ! -f "${SCHEMA_PATH}" ]]; then
  echo "missing schema: ${SCHEMA_PATH}" >&2
  exit 1
fi

if [[ -z "${OPENAI_API_KEY:-}" && ! -f "${AUTH_FILE}" ]]; then
  echo "Set OPENAI_API_KEY or provide ${AUTH_FILE}" >&2
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

PROMPT_INPUT="${TMP_DIR}/prompt.txt"
RESULT_JSON="${TMP_DIR}/result.json"
UPDATED_BLOCK="${TMP_DIR}/updated_block.md"
UPDATED_DOC="${TMP_DIR}/updated_doc.md"

{
  cat "${PROMPT_PATH}"
  printf '\n\nCurrent UTC date: %s\n' "$(date -u +%F)"
  printf '\n<current_document>\n'
  cat "${DOC_PATH}"
  printf '\n</current_document>\n'
} > "${PROMPT_INPUT}"

MODEL_ARGS=()
if [[ -n "${CODEX_MODEL:-}" ]]; then
  MODEL_ARGS=(-m "${CODEX_MODEL}")
fi

codex --search exec \
  --ignore-user-config \
  --ignore-rules \
  --ephemeral \
  --sandbox read-only \
  -C "${ROOT_DIR}" \
  "${MODEL_ARGS[@]}" \
  --output-schema "${SCHEMA_PATH}" \
  --output-last-message "${RESULT_JSON}" \
  - < "${PROMPT_INPUT}"

python3 - "${RESULT_JSON}" "${UPDATED_BLOCK}" <<'PY'
import json
import pathlib
import sys

result_path = pathlib.Path(sys.argv[1])
block_path = pathlib.Path(sys.argv[2])
data = json.loads(result_path.read_text())

print(data["reason"])

if not data["needs_update"]:
    sys.exit(0)

replacement = data["replacement_managed_block_markdown"]
if replacement is None or not replacement.strip():
    raise SystemExit("needs_update was true but replacement_managed_block_markdown was empty")

block_path.write_text(replacement.rstrip() + "\n")
PY

if [[ ! -f "${UPDATED_BLOCK}" ]]; then
  echo "No material update detected."
  exit 0
fi

python3 - "${DOC_PATH}" "${UPDATED_BLOCK}" "${UPDATED_DOC}" <<'PY'
import pathlib
import re
import sys

doc_path = pathlib.Path(sys.argv[1])
block_path = pathlib.Path(sys.argv[2])
output_path = pathlib.Path(sys.argv[3])

start_marker = "<!-- state-of-the-art:managed:start -->"
end_marker = "<!-- state-of-the-art:managed:end -->"

doc = doc_path.read_text()
block = block_path.read_text().rstrip()

pattern = re.compile(
    rf"{re.escape(start_marker)}\n.*?\n{re.escape(end_marker)}",
    re.DOTALL,
)

replacement = f"{start_marker}\n{block}\n{end_marker}"
updated, count = pattern.subn(replacement, doc, count=1)

if count != 1:
    raise SystemExit("managed block markers not found exactly once")

output_path.write_text(updated)
PY

if cmp -s "${DOC_PATH}" "${UPDATED_DOC}"; then
  echo "Generated managed block matches the current document."
  exit 0
fi

mv "${UPDATED_DOC}" "${DOC_PATH}"
echo "Updated ${DOC_PATH}"
