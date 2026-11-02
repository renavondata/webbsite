"""scripts/warm_loop.py and the gunicorn hooks that start it (no DB).

Run:  uv run pytest -q tests/test_warm_loop.py
"""

import os
import runpy
import signal
import subprocess
import sys
import time
from types import SimpleNamespace

ROOT = os.path.join(os.path.dirname(__file__), "..")
sys.path.insert(0, os.path.join(ROOT, "scripts"))

import warm_loop  # noqa: E402


def test_round_logs_failures_summary_and_computes_not_file_reads():
    assert not warm_loop.worth_logging("ok 200       12 ms  /dbpub/mcap.asp  app;dur=12")
    assert warm_loop.worth_logging("ok 200     1500 ms  /dbpub/mcap.asp  app;dur=1500")
    assert warm_loop.worth_logging("FAIL 500       12 ms  /dbpub/mcap.asp  ")
    assert warm_loop.worth_logging("warmed 150 pages in 3.2 s; 0 failed")
    assert warm_loop.worth_logging("Traceback (most recent call last):")
    assert not warm_loop.worth_logging("")
    assert not warm_loop.worth_logging("2026-11-02 22:36:57,938 INFO webbsite.db: engine initialized")
    assert warm_loop.worth_logging("2026-11-02 22:36:57,938 ERROR webbsite.db: no connection")


def test_round_command_runs_low_priority_io_only_when_available():
    assert warm_loop.round_command("py", "/bin/ionice") == [
        "/bin/ionice", "-c", "3", "py", "-m", "webbsite.warm"]
    assert warm_loop.round_command("py", None) == ["py", "-m", "webbsite.warm"]


def test_no_round_failure_ends_the_loop(tmp_path, capfd):
    fail = [sys.executable, "-c", "print('FAIL 500 1 ms /x'); raise SystemExit(1)"]
    warm_loop.run_round(fail, str(tmp_path))
    warm_loop.run_round([str(tmp_path / "missing")], str(tmp_path))
    hang = [sys.executable, "-c", "print('FAIL 500 1 ms /y', flush=True); import time; time.sleep(30)"]
    warm_loop.run_round(hang, str(tmp_path), timeout_s=1)
    out = capfd.readouterr().out
    assert "warm: FAIL 500 1 ms /x" in out and "round ended: exit 1" in out
    assert "could not start" in out
    assert "warm: FAIL 500 1 ms /y" in out and "killed after 1 s" in out


def _wait_for(check, seconds=10):
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        if check():
            return True
        time.sleep(0.05)
    return False


def test_loop_rounds_on_schedule_and_at_once_on_sigusr1(tmp_path):
    stamp = tmp_path / "rounds"
    round_ = [sys.executable, "-c", f"open({str(stamp)!r}, 'a').write('x')"]
    program = (
        f"import sys; sys.path.insert(0, {os.path.join(ROOT, 'scripts')!r}); import warm_loop; "
        f"warm_loop.loop({round_!r}, {str(tmp_path)!r}, first_s=0.1, every_s=300)"
    )
    proc = subprocess.Popen([sys.executable, "-c", program])
    rounds = lambda: len(stamp.read_text()) if stamp.exists() else 0  # noqa: E731
    try:
        assert _wait_for(lambda: rounds() == 1), "first round never ran"
        time.sleep(0.5)  # into the 300 s wait: only the signal can start another
        assert rounds() == 1
        proc.send_signal(signal.SIGUSR1)
        assert _wait_for(lambda: rounds() == 2), "SIGUSR1 did not start a round"
        assert proc.poll() is None
    finally:
        proc.kill()
        proc.wait()


class FakeProcess:
    def __init__(self, argv, cwd=None):
        self.argv, self.cwd, self.exit, self.signals = argv, cwd, None, []

    def poll(self):
        return self.exit

    def send_signal(self, sig):
        self.signals.append(sig)


def _hooks(monkeypatch, env, popen=FakeProcess):
    monkeypatch.delenv("WEBBSITE_WARM", raising=False)
    monkeypatch.delenv("DATABASE_URL", raising=False)
    for k, v in env.items():
        monkeypatch.setenv(k, v)
    monkeypatch.setattr(subprocess, "Popen", popen)
    errors = []
    return (
        runpy.run_path(os.path.join(ROOT, "gunicorn.conf.py")),
        SimpleNamespace(log=SimpleNamespace(info=lambda m: None, error=errors.append)),
        errors,
    )


def test_hooks_keep_one_loop_and_wake_it_on_reload(monkeypatch):
    conf, server, _ = _hooks(monkeypatch, {"DATABASE_URL": "postgresql://x"})
    conf["when_ready"](server)
    first = server._warm_loop
    assert first.argv[1].endswith("scripts/warm_loop.py") and os.path.isfile(first.argv[1])
    assert os.path.samefile(first.cwd, ROOT)

    # A reload re-executes the config file: a new module, the same arbiter.
    runpy.run_path(os.path.join(ROOT, "gunicorn.conf.py"))["on_reload"](server)
    assert server._warm_loop is first and first.signals == [signal.SIGUSR1]

    first.exit = 1  # died: the next reload replaces it
    conf["on_reload"](server)
    assert server._warm_loop is not first


def test_first_deploy_reload_starts_the_loop(monkeypatch):
    # The master that takes this code in was started before it, so when_ready never ran.
    conf, server, _ = _hooks(monkeypatch, {"DATABASE_URL": "postgresql://x"})
    conf["on_reload"](server)
    assert isinstance(server._warm_loop, FakeProcess)


def test_hooks_start_nothing_when_off_or_without_a_database(monkeypatch):
    for env in ({"DATABASE_URL": "postgresql://x", "WEBBSITE_WARM": "0"}, {}):
        conf, server, _ = _hooks(monkeypatch, env)
        conf["when_ready"](server)
        conf["on_reload"](server)
        assert not hasattr(server, "_warm_loop")


def test_a_failed_start_cannot_take_the_master_down(monkeypatch):
    def refuse(*a, **k):
        raise OSError("no")

    conf, server, errors = _hooks(monkeypatch, {"DATABASE_URL": "postgresql://x"}, refuse)
    conf["when_ready"](server)
    assert errors == ["Warm loop not started: no"]
