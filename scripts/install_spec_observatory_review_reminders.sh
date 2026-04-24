#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RUNTIME_DIR="${ROOT_DIR}/runtime/review-reminders"
UNIT_DIR="${RUNTIME_DIR}/systemd"
STATE_FILE="${RUNTIME_DIR}/state.json"
FORCE_FLAG=""

if [[ "${1:-}" == "--force" ]]; then
  FORCE_FLAG="--force"
fi

mkdir -p "${UNIT_DIR}"

python3 "${ROOT_DIR}/scripts/spec_observatory_review_reminders.py" seed "${STATE_FILE}" ${FORCE_FLAG}

python3 - "${ROOT_DIR}" "${STATE_FILE}" "${UNIT_DIR}" <<'PY'
import pathlib
import sys

root_dir = pathlib.Path(sys.argv[1])
state_file = pathlib.Path(sys.argv[2])
unit_dir = pathlib.Path(sys.argv[3])

service_template = (root_dir / "scripts/systemd/spec-observatory-review-reminders.service.in").read_text()
timer_template = (root_dir / "scripts/systemd/spec-observatory-review-reminders.timer.in").read_text()

service_text = service_template.replace("@ROOT_DIR@", str(root_dir)).replace("@STATE_FILE@", str(state_file))
timer_text = timer_template

(unit_dir / "spec-observatory-review-reminders.service").write_text(service_text)
(unit_dir / "spec-observatory-review-reminders.timer").write_text(timer_text)
PY

systemctl --user link "${UNIT_DIR}/spec-observatory-review-reminders.service" || true
systemctl --user link "${UNIT_DIR}/spec-observatory-review-reminders.timer" || true
systemctl --user daemon-reload
systemctl --user enable --now spec-observatory-review-reminders.timer

printf 'Installed reminder timer.\n'
printf 'State file: %s\n' "${STATE_FILE}"
printf 'Timer unit: spec-observatory-review-reminders.timer\n'
