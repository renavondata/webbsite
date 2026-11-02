#!/usr/bin/env python3
"""Keep the precompute cache warm from inside webbsite.service.

gunicorn.conf.py starts this once, so warming needs no unit of its own: it lives
in the service's cgroup and inherits its user, environment and sandbox, and
systemd stops it with the service. It imports only the standard library so that
waiting costs a few MB. Each round is a fresh ``python -m webbsite.warm``, so a
deploy's new code (and the code fingerprint in its cache keys) is always the code
doing the warming.

A round runs ten minutes after the last one, which bounds how long a data refresh
or the midnight date roll leaves a page cold, and at once on SIGUSR1, which
gunicorn's reload hook sends because a deploy can change the keys. Low priority:
nobody is waiting on it, and a page that is already current costs a file read.

A reload only wakes a running loop, so a change to this file, or reverting it,
takes effect at the next service restart. If the loop dies, the next reload starts
another; until then pages are simply computed by their first visitor.
"""

from __future__ import annotations

import os
import shutil
import signal
import subprocess
import sys

FIRST_S = 120
EVERY_S = 600
ROUND_TIMEOUT_S = 1800
SLOW_MS = 1000


def round_command(python: str, ionice: str | None) -> list[str]:
    return [*([ionice, "-c", "3"] if ionice else []), python, "-m", "webbsite.warm"]


def worth_logging(line: str) -> bool:
    """Failures, the summary, and pages that had to compute, not every file read.

    A current page is an ``ok 200  <ms> ms  <url>`` line, about 150 a round.
    """
    parts = line.split()
    if not parts or " INFO " in line:  # the app's own startup chatter
        return False
    if parts[0] != "ok":
        return True
    try:
        return float(parts[2]) >= SLOW_MS
    except (IndexError, ValueError):
        return True


def run_round(command: list[str], cwd: str, timeout_s: float = ROUND_TIMEOUT_S) -> None:
    """One warming round. Nothing it does may end the loop."""
    try:
        done = subprocess.run(
            command, cwd=cwd, timeout=timeout_s, check=False, text=True, errors="replace",
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        )
        output, ending = done.stdout, f"exit {done.returncode}"
    except subprocess.TimeoutExpired as e:
        output, ending = e.stdout or "", f"killed after {timeout_s:.0f} s"
        output = output.decode(errors="replace") if isinstance(output, bytes) else output
    except OSError as e:
        output, ending = "", f"could not start: {e}"
    for line in filter(worth_logging, output.splitlines()):
        print(f"warm: {line}", flush=True)
    if ending != "exit 0":
        print(f"warm: round ended: {ending}", flush=True)


def loop(command: list[str], cwd: str, first_s: float = FIRST_S, every_s: float = EVERY_S) -> int:
    parent = os.getppid()
    # Blocked, a SIGUSR1 sent during a round waits for the next wait below, so the
    # code a deploy brought in mid-round still gets its own round.
    signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGUSR1})
    wait_s = first_s
    while True:
        signal.sigtimedwait({signal.SIGUSR1}, wait_s)
        if os.getppid() != parent:  # gunicorn died outside systemd (a local run)
            return 0
        run_round(command, cwd)
        wait_s = every_s


if __name__ == "__main__":
    os.nice(10)
    root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    sys.exit(loop(round_command(sys.executable, shutil.which("ionice")), root))
