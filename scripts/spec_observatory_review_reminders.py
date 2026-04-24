#!/usr/bin/env python3
import argparse
import json
import os
import subprocess
import sys
import tempfile
from calendar import monthrange
from datetime import datetime, timedelta
from pathlib import Path


REMINDER_SPECS = [
    ("tomorrow", "Spec Observatory check-in: tomorrow", {"days": 1}),
    ("two-days", "Spec Observatory check-in: 2 days", {"days": 2}),
    ("one-week", "Spec Observatory check-in: 1 week", {"weeks": 1}),
    ("two-weeks", "Spec Observatory check-in: 2 weeks", {"weeks": 2}),
    ("one-month", "Spec Observatory check-in: 1 month", {"months": 1}),
    ("two-months", "Spec Observatory check-in: 2 months", {"months": 2}),
    ("four-months", "Spec Observatory check-in: 4 months", {"months": 4}),
    ("eight-months", "Spec Observatory check-in: 8 months", {"months": 8}),
    ("one-year", "Spec Observatory check-in: 1 year", {"years": 1}),
]


def now_local() -> datetime:
    return datetime.now().astimezone()


def isoformat_local(dt: datetime) -> str:
    return dt.isoformat(timespec="seconds")


def add_months(dt: datetime, months: int = 0, years: int = 0) -> datetime:
    total_months = dt.month - 1 + months + (years * 12)
    year = dt.year + (total_months // 12)
    month = (total_months % 12) + 1
    day = min(dt.day, monthrange(year, month)[1])
    return dt.replace(year=year, month=month, day=day)


def shift_datetime(anchor: datetime, spec: dict) -> datetime:
    shifted = anchor + timedelta(days=spec.get("days", 0), weeks=spec.get("weeks", 0))
    if spec.get("months", 0) or spec.get("years", 0):
        shifted = add_months(
            shifted,
            months=spec.get("months", 0),
            years=spec.get("years", 0),
        )
    return shifted


def write_json_atomic(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile("w", dir=path.parent, delete=False) as handle:
        json.dump(payload, handle, indent=2)
        handle.write("\n")
        temp_path = Path(handle.name)
    temp_path.replace(path)


def seed_state(path: Path, force: bool) -> int:
    if path.exists() and not force:
        print(f"Reminder state already exists: {path}")
        return 0

    created_at = now_local()
    reminders = []
    for reminder_id, label, spec in REMINDER_SPECS:
        due_at = shift_datetime(created_at, spec)
        reminders.append(
            {
                "id": reminder_id,
                "label": label,
                "due_epoch": int(due_at.timestamp()),
                "due_local": isoformat_local(due_at),
                "delivered_epoch": None,
                "delivered_local": None,
            }
        )

    payload = {
        "created_epoch": int(created_at.timestamp()),
        "created_local": isoformat_local(created_at),
        "timezone": str(created_at.tzinfo),
        "reminders": reminders,
    }
    write_json_atomic(path, payload)
    print(f"Seeded reminder state at {path}")
    return 0


def load_state(path: Path) -> dict:
    if not path.exists():
        raise SystemExit(f"Missing reminder state: {path}")
    return json.loads(path.read_text())


def pending_reminders(state: dict, now_epoch: int) -> list[dict]:
    pending = []
    for reminder in state["reminders"]:
        if reminder["delivered_epoch"] is None and reminder["due_epoch"] <= now_epoch:
            pending.append(reminder)
    return pending


def send_notification(reminders: list[dict]) -> int:
    title = "Spec Observatory reminders due"
    body_lines = [
        "These review checkpoints are now due:",
        "",
    ]
    for reminder in reminders:
        body_lines.append(f"- {reminder['label']} ({reminder['due_local']})")

    env = os.environ.copy()
    runtime_dir = env.get("XDG_RUNTIME_DIR")
    if runtime_dir and "DBUS_SESSION_BUS_ADDRESS" not in env:
        env["DBUS_SESSION_BUS_ADDRESS"] = f"unix:path={runtime_dir}/bus"

    result = subprocess.run(
        [
            "notify-send",
            "--app-name=Spec Observatory",
            "--urgency=normal",
            "--expire-time=0",
            title,
            "\n".join(body_lines),
        ],
        env=env,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.PIPE,
        text=True,
    )
    if result.returncode != 0:
        sys.stderr.write(result.stderr)
    return result.returncode


def run_state(path: Path) -> int:
    state = load_state(path)
    current_time = now_local()
    current_epoch = int(current_time.timestamp())
    due = pending_reminders(state, current_epoch)

    if not due:
        print("No due reminders.")
        return 0

    notification_exit = send_notification(due)
    if notification_exit != 0:
        print("Desktop notification failed; leaving reminders pending.", file=sys.stderr)
        return notification_exit

    delivered_local = isoformat_local(current_time)
    changed = False
    due_ids = {reminder["id"] for reminder in due}
    for reminder in state["reminders"]:
        if reminder["id"] in due_ids and reminder["delivered_epoch"] is None:
            reminder["delivered_epoch"] = current_epoch
            reminder["delivered_local"] = delivered_local
            changed = True

    if changed:
        write_json_atomic(path, state)
    print(f"Delivered {len(due)} reminder(s).")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest="command", required=True)

    seed_parser = subparsers.add_parser("seed")
    seed_parser.add_argument("state_path")
    seed_parser.add_argument("--force", action="store_true")

    run_parser = subparsers.add_parser("run")
    run_parser.add_argument("state_path")

    args = parser.parse_args()
    path = Path(args.state_path)

    if args.command == "seed":
        return seed_state(path, args.force)
    return run_state(path)


if __name__ == "__main__":
    raise SystemExit(main())
