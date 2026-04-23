#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOC_PATH="${ROOT_DIR}/STATE_OF_THE_ART.md"
PRODUCT_SPEC_PATH="${ROOT_DIR}/specs/PRODUCT_SPEC.md"
RESEARCH_SCOPE_SPEC_PATH="${ROOT_DIR}/specs/RESEARCH_SCOPE_SPEC.md"
REPO_SHAPE_SPEC_PATH="${ROOT_DIR}/specs/REPO_SHAPE_SPEC.md"
DAILY_REFRESH_SPEC_PATH="${ROOT_DIR}/specs/DAILY_REFRESH_SPEC.md"
PROMPT_PATH="${ROOT_DIR}/automation/observatory_refresh_prompt.md"
SCHEMA_PATH="${ROOT_DIR}/automation/observatory_refresh.schema.json"
MANAGED_PATHS_PATH="${ROOT_DIR}/automation/managed_repo_paths.txt"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
AUTH_FILE="${CODEX_HOME_DIR}/auth.json"

if [[ ! -f "${DOC_PATH}" ]]; then
  echo "missing document: ${DOC_PATH}" >&2
  exit 1
fi

if [[ ! -f "${PRODUCT_SPEC_PATH}" ]]; then
  echo "missing product spec: ${PRODUCT_SPEC_PATH}" >&2
  exit 1
fi

if [[ ! -f "${RESEARCH_SCOPE_SPEC_PATH}" ]]; then
  echo "missing research scope spec: ${RESEARCH_SCOPE_SPEC_PATH}" >&2
  exit 1
fi

if [[ ! -f "${REPO_SHAPE_SPEC_PATH}" ]]; then
  echo "missing repo shape spec: ${REPO_SHAPE_SPEC_PATH}" >&2
  exit 1
fi

if [[ ! -f "${DAILY_REFRESH_SPEC_PATH}" ]]; then
  echo "missing daily refresh spec: ${DAILY_REFRESH_SPEC_PATH}" >&2
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

if [[ ! -f "${MANAGED_PATHS_PATH}" ]]; then
  echo "missing managed path allowlist: ${MANAGED_PATHS_PATH}" >&2
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

{
  cat "${PROMPT_PATH}"
  printf '\n\nCurrent UTC date: %s\n' "$(date -u +%F)"
  printf '\n<managed_repo_paths>\n'
  cat "${MANAGED_PATHS_PATH}"
  printf '\n</managed_repo_paths>\n'
  printf '\n<current_state_of_the_art_document>\n'
  cat "${DOC_PATH}"
  printf '\n</current_state_of_the_art_document>\n'
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
  while IFS= read -r managed_path; do
    [[ -z "${managed_path}" ]] && continue
    if [[ ! -f "${ROOT_DIR}/${managed_path}" ]]; then
      printf '\n<managed_file path="%s" missing="true"></managed_file>\n' "${managed_path}"
      continue
    fi
    printf '\n<managed_file path="%s">\n' "${managed_path}"
    cat "${ROOT_DIR}/${managed_path}"
    printf '\n</managed_file>\n'
  done < "${MANAGED_PATHS_PATH}"
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

python3 - "${RESULT_JSON}" <<'PY'
import json
import pathlib
import sys

result_path = pathlib.Path(sys.argv[1])
data = json.loads(result_path.read_text())
print(data["reason"])
PY

python3 - "${ROOT_DIR}" "${RESULT_JSON}" "${MANAGED_PATHS_PATH}" <<'PY'
import json
import pathlib
import re
import sys

root_dir = pathlib.Path(sys.argv[1])
result_path = pathlib.Path(sys.argv[2])
allowlist_path = pathlib.Path(sys.argv[3])

data = json.loads(result_path.read_text())

allowed_paths = {
    line.strip()
    for line in allowlist_path.read_text().splitlines()
    if line.strip()
}

file_updates = data["file_updates"]
seen_paths = set()
changed_paths = []

for update in file_updates:
    path = update["path"]
    if path in seen_paths:
        raise SystemExit(f"duplicate file update path: {path}")
    seen_paths.add(path)
    if path not in allowed_paths:
        raise SystemExit(f"path not in managed allowlist: {path}")

doc_path = root_dir / "STATE_OF_THE_ART.md"
doc = doc_path.read_text()
start_marker = "<!-- state-of-the-art:managed:start -->"
end_marker = "<!-- state-of-the-art:managed:end -->"

if data["state_of_the_art_needs_update"]:
    replacement_block = data["replacement_state_of_the_art_managed_block_markdown"]
    if replacement_block is None or not replacement_block.strip():
        raise SystemExit(
            "state_of_the_art_needs_update was true but replacement block was empty"
        )

    pattern = re.compile(
        rf"{re.escape(start_marker)}\n.*?\n{re.escape(end_marker)}",
        re.DOTALL,
    )
    replacement = f"{start_marker}\n{replacement_block.rstrip()}\n{end_marker}"
    updated_doc, count = pattern.subn(replacement, doc, count=1)

    if count != 1:
        raise SystemExit("managed block markers not found exactly once")

    if updated_doc != doc:
        doc_path.write_text(updated_doc)
        changed_paths.append("STATE_OF_THE_ART.md")
else:
    if data["replacement_state_of_the_art_managed_block_markdown"] is not None:
        raise SystemExit(
            "state_of_the_art_needs_update was false but replacement block was not null"
        )

for update in file_updates:
    path = root_dir / update["path"]
    content = update["content"].rstrip() + "\n"
    current = path.read_text() if path.exists() else None
    if current == content:
        continue
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content)
    changed_paths.append(str(path.relative_to(root_dir)))

if not changed_paths:
    print("No material update detected.")
else:
    print("Updated paths:")
    for path in changed_paths:
        print(path)
PY
