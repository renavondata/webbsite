#!/usr/bin/env python3
"""Daily box invariants for webbsite-web (run by webbsite-invariants.timer as root).

Asserts the things a test suite cannot see and a deploy does not check:

  settings   every line of deploy/postgresql/conf.d/webbsite.conf is the LIVE value
  restart    no Postgres setting is waiting for a restart
  extension  pg_stat_statements is installed (the conf loads it; a restart makes it real)
  indexes    every index database/schema/indexes.sql names exists
  functions  every function database/schema/functions.sql declares has that body
             live (they are CREATE OR REPLACE, so a restore silently reverts them)
  disk       the root filesystem is under 80% (the 72 GB database has to fit)
  env        deploy/env-check.sh passes (every declared name present, no undeclared name)
  backup     /var/lib/webbsite/backup-last-success is younger than 8 days,
             once /etc/webbsite/backup-env exists (Phase 5)
  routes     tests/check_all_routes.py against the origin renders data on every page
  checks     every check in deploy/checks.txt marked `live` exists on the operator's
             Healthchecks instance, is not paused, and has a notification channel

Exit 0 clean, 1 when any assertion fails, 2 when one could not be evaluated
(BLIND -- never a pass; a verifier that fails silently manufactures a green you
then trust). Pings HC_INVARIANTS_URL when set: root on 0, /fail with the report
otherwise. The ping is a leaf: it never changes the exit code and is never
printed.

Environment (from /etc/webbsite/env and /etc/webbsite/ops-env via the unit):
  DATABASE_URL       the app's DSN; pg_settings/pg_indexes are readable by any role
  BASE_URL           origin for the route check (default http://127.0.0.1:8000)
  HC_API_KEY         read-only Healthchecks API key (checks assertion; unset = BLIND)
  HC_API_URL         the operator's Healthchecks-compatible API base URL (no default --
                     a default would bake operator infrastructure into this public repo;
                     unset = BLIND, same as HC_API_KEY)
  HC_INVARIANTS_URL  this job's own dead-man ping URL
Stdlib + psycopg2 only, so it runs on the app's own venv interpreter.
"""

from __future__ import annotations

import json
import os
import re
import shutil
import subprocess
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PG_CONF = ROOT / "deploy" / "postgresql" / "conf.d" / "webbsite.conf"
INDEXES_SQL = ROOT / "database" / "schema" / "indexes.sql"
FUNCTIONS_SQL = ROOT / "database" / "schema" / "functions.sql"
CHECKS_TXT = ROOT / "deploy" / "checks.txt"
ENV_CHECK = ROOT / "deploy" / "env-check.sh"
ROUTE_CHECK = ROOT / "tests" / "check_all_routes.py"
BACKUP_ENV = Path("/etc/webbsite/backup-env")
BACKUP_MARKER = Path("/var/lib/webbsite/backup-last-success")
DISK_LIMIT_PCT = 80
BACKUP_MAX_AGE_S = 8 * 86400

CLEAN, FAILING, BLIND = 0, 1, 2


# --- pure helpers (unit-tested in tests/test_assert_box.py) ---------------------

_MEM = {"b": 1, "kb": 1024, "mb": 1024**2, "gb": 1024**3, "tb": 1024**4}
_TIME = {"us": 0.001, "ms": 1, "s": 1000, "min": 60_000, "h": 3_600_000, "d": 86_400_000}


def normalize(value: str, unit: str | None) -> str:
    """Canonical form of a Postgres setting for comparison.

    `value` is either a conf-file token ('2GB', '2000', 'on', "'localhost'") or a
    pg_settings.setting ('262144' with unit '8kB', '2000' with unit 'ms'). Memory
    becomes bytes, time becomes milliseconds, booleans on/off, everything else
    the bare string. Quotes are stripped. Only the conf side carries an inline
    suffix; only the pg side carries a separate unit."""
    v = value.strip().strip("'\"").strip()
    low = v.lower()
    if low in ("on", "true", "yes", "1") and unit is None and not v.isdigit():
        return "on"
    if low in ("off", "false", "no", "0") and unit is None and not v.isdigit():
        return "off"
    m = re.fullmatch(r"(-?\d+(?:\.\d+)?)\s*([a-zA-Z]*)", v)
    if not m:
        return v
    num, suffix = float(m.group(1)), (m.group(2) or (unit or "")).strip()
    s = suffix.lower()
    if s in _MEM:
        return f"{int(num * _MEM[s])}B"
    mm = re.fullmatch(r"(\d+)(kb|mb|gb)", s)          # pg units like '8kB'
    if mm:
        return f"{int(num * int(mm.group(1)) * _MEM[mm.group(2)])}B"
    if s in _TIME:
        return f"{num * _TIME[s]:g}ms"
    return f"{num:g}"


def parse_conf(text: str) -> dict[str, str]:
    """`key = value` lines of a postgresql.conf-style file, comments stripped."""
    out = {}
    for line in text.splitlines():
        line = line.split("#", 1)[0].strip()
        if not line or "=" not in line:
            continue
        k, v = line.split("=", 1)
        out[k.strip()] = v.strip()
    return out


def parse_index_names(sql: str) -> list[str]:
    return re.findall(r"CREATE\s+INDEX\s+(?:CONCURRENTLY\s+)?IF\s+NOT\s+EXISTS\s+(\w+)", sql, re.I)


def parse_functions(sql: str) -> dict[str, str]:
    """name -> declared definition, one per CREATE OR REPLACE FUNCTION block."""
    blocks = re.finditer(r"CREATE OR REPLACE FUNCTION enigma\.(\w+)\(.*?\$function\$;", sql, re.S)
    return {m.group(1): m.group(0).rstrip(";") for m in blocks}


def same_sql(a: str, b: str) -> bool:
    """Equal ignoring whitespace runs, which pg_get_functiondef may reflow."""
    return a.split() == b.split()


def parse_checks(text: str) -> list[dict[str, str]]:
    """Pipe-delimited rows of deploy/checks.txt as dicts."""
    rows = []
    for line in text.splitlines():
        if not line.strip() or line.lstrip().startswith("#"):
            continue
        cols = [c.strip() for c in line.split("|")]
        if len(cols) < 5:
            continue
        rows.append({"name": cols[0], "kind": cols[1], "schedule": cols[2],
                     "grace": cols[3], "status": cols[4]})
    return rows


def checks_verdict(expected: list[dict[str, str]], live: list[dict]) -> list[str]:
    """Problems with the `live` checks against the hc API's check list."""
    by_name = {c.get("name"): c for c in live}
    problems = []
    for row in expected:
        if row["status"] != "live":
            continue
        c = by_name.get(row["name"])
        if c is None:
            problems.append(f"check {row['name']}: does not exist on hc")
            continue
        if c.get("status") == "paused":
            problems.append(f"check {row['name']}: PAUSED (pings are accepted and discarded)")
        # A read-only Healthchecks API key omits `channels` from the response entirely
        # (rather than returning it empty), so its absence means "cannot tell", not
        # "none assigned" -- only flag the field when the API actually reported it.
        if "channels" in c and not c["channels"]:
            problems.append(f"check {row['name']}: no notification channel (its alarm goes nowhere)")
    return problems


# --- assertions ----------------------------------------------------------------

class Report:
    def __init__(self):
        self.lines: list[str] = []
        self.rc = CLEAN

    def ok(self, what):
        self.lines.append(f"ok    {what}")

    def fail(self, what):
        self.lines.append(f"FAIL  {what}")
        self.rc = max(self.rc, FAILING)

    def blind(self, what):
        self.lines.append(f"BLIND {what}")
        self.rc = max(self.rc, BLIND)


def _db():
    import psycopg2  # the app's venv has it

    dsn = os.environ.get("DATABASE_URL")
    if not dsn:
        return None
    return psycopg2.connect(dsn, connect_timeout=10, options="-c statement_timeout=30s")


def assert_postgres(rep: Report):
    try:
        conn = _db()
    except Exception as e:  # noqa: BLE001
        rep.blind(f"postgres: cannot connect ({type(e).__name__})")
        return
    if conn is None:
        rep.blind("postgres: DATABASE_URL unset")
        return
    with conn, conn.cursor() as cur:
        # settings
        wanted = parse_conf(PG_CONF.read_text())
        cur.execute("SELECT name, setting, unit, pending_restart FROM pg_settings WHERE name = ANY(%s)",
                    (list(wanted),))
        live = {n: (s, u, p) for n, s, u, p in cur.fetchall()}
        bad = []
        for k, v in wanted.items():
            if k not in live:
                bad.append(f"{k} (unknown to the server; extension not loaded yet?)")
            # A bare number in the conf file is in the setting's own base unit,
            # which is what pg_settings.unit names -- so both sides get it.
            elif normalize(v, live[k][1]) != normalize(live[k][0], live[k][1]):
                bad.append(f"{k}: file says {v}, server has {live[k][0]}{live[k][1] or ''}")
        if bad:
            rep.fail("postgres settings drift: " + "; ".join(bad))
        else:
            rep.ok(f"postgres settings: {len(wanted)} match deploy/postgresql/conf.d/webbsite.conf")
        # pending restart
        cur.execute("SELECT string_agg(name, ', ') FROM pg_settings WHERE pending_restart")
        pending = cur.fetchone()[0]
        if pending:
            rep.fail(f"postgres RESTART REQUIRED for: {pending}")
        else:
            rep.ok("postgres: nothing pending a restart")
        # extension
        cur.execute("SELECT count(*) FROM pg_extension WHERE extname = 'pg_stat_statements'")
        if cur.fetchone()[0] == 1:
            rep.ok("postgres: pg_stat_statements installed")
        else:
            rep.fail("postgres: pg_stat_statements not installed (needs the restart, then converge creates it)")
        # indexes
        names = parse_index_names(INDEXES_SQL.read_text())
        # indisvalid too: a failed CREATE INDEX CONCURRENTLY leaves an invalid index
        # of the name, which IF NOT EXISTS then skips and the planner never uses.
        cur.execute("SELECT c.relname, i.indisvalid FROM pg_index i"
                    " JOIN pg_class c ON c.oid = i.indexrelid"
                    " JOIN pg_namespace n ON n.oid = c.relnamespace"
                    " WHERE n.nspname IN ('enigma','ccass') AND c.relname = ANY(%s)",
                    (names,))
        valid = dict(cur.fetchall())
        missing = [n for n in names if n not in valid]
        invalid = [n for n in names if valid.get(n) is False]
        if missing:
            rep.fail(f"indexes missing ({len(missing)}/{len(names)}): {', '.join(missing)} -- apply database/schema/indexes.sql")
        if invalid:
            rep.fail(f"indexes invalid (a failed concurrent build): {', '.join(invalid)} -- "
                     "DROP INDEX CONCURRENTLY each, then apply database/schema/indexes.sql")
        if not missing and not invalid:
            rep.ok(f"indexes: all {len(names)} from database/schema/indexes.sql present and valid")
        # functions -- the return calculations guard their divisors (a zero close
        # used to abort the whole SELECT); a plain restore brings back the
        # unguarded MySQL-era bodies, and nothing else would notice.
        declared = parse_functions(FUNCTIONS_SQL.read_text())
        # Pinned to the (integer, date, date) signature: enigma carries overloads
        # of these names (the *days family), and matching on proname alone would
        # let one of those win the dict and mask a stale body on the signature
        # the app actually calls. oidvectortypes, not pg_get_function_identity_
        # arguments -- the latter includes parameter names.
        cur.execute(
            "SELECT p.proname, pg_get_functiondef(p.oid) FROM pg_proc p "
            "JOIN pg_namespace n ON n.oid = p.pronamespace "
            "WHERE n.nspname = 'enigma' AND p.proname = ANY(%s) "
            "AND oidvectortypes(p.proargtypes) = 'integer, date, date'",
            (list(declared),),
        )
        live = {name: body for name, body in cur.fetchall()}
        stale = [n for n, want in declared.items() if not same_sql(live.get(n, ""), want)]
        if stale:
            rep.fail(f"functions differ from database/schema/functions.sql: {', '.join(sorted(stale))}"
                     " -- apply database/schema/functions.sql")
        else:
            rep.ok(f"functions: all {len(declared)} from database/schema/functions.sql match")
    conn.close()


def assert_disk(rep: Report):
    u = shutil.disk_usage("/")
    pct = 100 * u.used / u.total
    (rep.ok if pct < DISK_LIMIT_PCT else rep.fail)(f"disk: / at {pct:.0f}% (limit {DISK_LIMIT_PCT}%)")


def assert_env(rep: Report):
    r = subprocess.run([str(ENV_CHECK)], capture_output=True, text=True)
    if r.returncode == 0:
        rep.ok("env: " + r.stdout.strip())
    elif r.returncode == 2:
        rep.blind("env: " + r.stderr.strip())
    else:
        rep.fail("env: " + " | ".join(r.stderr.strip().splitlines()))


def assert_backup(rep: Report):
    if not BACKUP_ENV.exists():
        rep.ok("backup: not configured on this box yet (no /etc/webbsite/backup-env); skipped")
        return
    if not BACKUP_MARKER.exists():
        rep.fail("backup: configured but no successful backup has ever been recorded")
        return
    age = time.time() - BACKUP_MARKER.stat().st_mtime
    (rep.ok if age < BACKUP_MAX_AGE_S else rep.fail)(f"backup: last success {age / 86400:.1f} days ago (limit 8)")


def assert_routes(rep: Report):
    env = dict(os.environ, ACCEPT_LANGUAGE="en-GB,en;q=0.8")
    env.setdefault("BASE_URL", "http://127.0.0.1:8000")
    r = subprocess.run([sys.executable, str(ROUTE_CHECK)], capture_output=True, text=True, env=env, timeout=1500)
    tail = [line for line in r.stdout.splitlines() if line.startswith(("  FAIL", "FAILED", "all "))][-12:]
    if r.returncode == 0:
        rep.ok("routes: check_all_routes.py passed against " + env["BASE_URL"])
    else:
        rep.fail("routes: " + (" | ".join(tail) or r.stderr.strip()[-500:]))


def assert_checks(rep: Report):
    key = os.environ.get("HC_API_KEY")
    if not key:
        rep.blind("checks: HC_API_KEY unset; cannot see whether the alarms are armed")
        return
    base = os.environ.get("HC_API_URL")
    if not base:
        rep.blind("checks: HC_API_URL unset; cannot see whether the alarms are armed")
        return
    base = base.rstrip("/")
    try:
        req = urllib.request.Request(f"{base}/checks/", headers={"X-Api-Key": key})
        with urllib.request.urlopen(req, timeout=20) as resp:  # noqa: S310
            live = json.load(resp).get("checks", [])
    except (urllib.error.URLError, OSError, ValueError) as e:
        rep.blind(f"checks: hc API unreachable ({type(e).__name__})")
        return
    if not live:
        rep.blind("checks: hc API returned no checks at all (wrong key?)")
        return
    expected = parse_checks(CHECKS_TXT.read_text())
    problems = checks_verdict(expected, live)
    n = sum(1 for r in expected if r["status"] == "live")
    if problems:
        rep.fail("checks: " + "; ".join(problems))
    else:
        rep.ok(f"checks: {n} live check(s) in deploy/checks.txt exist, unpaused, with a channel")


def ping(rc: int, body: str) -> None:
    url = os.environ.get("HC_INVARIANTS_URL")
    if not url:
        return
    target = url if rc == CLEAN else url.rstrip("/") + "/fail"
    try:
        urllib.request.urlopen(  # noqa: S310
            urllib.request.Request(target, data=body.encode()[:100_000]), timeout=10)
    except OSError:
        print("assert_box: could not ping the invariants check", file=sys.stderr)


def main() -> int:
    rep = Report()
    for fn in (assert_postgres, assert_disk, assert_env, assert_backup, assert_routes, assert_checks):
        try:
            fn(rep)
        except Exception as e:  # noqa: BLE001 -- one broken assertion must not hide the rest
            rep.blind(f"{fn.__name__}: crashed with {type(e).__name__}: {e}")
    verdict = {CLEAN: "CLEAN", FAILING: "FAILING", BLIND: "BLIND"}[rep.rc]
    body = f"webbsite invariants: {verdict}\n" + "\n".join(rep.lines)
    print(body)
    ping(rep.rc, body)
    return rep.rc


if __name__ == "__main__":
    sys.exit(main())
