# /// script
# requires-python = ">=3.12"
# dependencies = []
# ///
"""Read-only Postgres query CLI for this site (the psql twin of renavon's chq).

Diagnosing a slow page means reading the production planner, and every route to
it here was ad hoc: a hand-built `ssh ... psql` line per question, each one a
fresh approval and each one able to write by accident. This wraps the one shape
that is always safe -- a read-only session with a statement timeout -- so it can
be allow-listed once (see "Approval" below).

    scripts/pgq.py "SELECT count(*) FROM enigma.organisations"
    scripts/pgq.py -f sql/report.sql --explain --timeout 60
    echo "SELECT 1" | scripts/pgq.py -
    scripts/pgq.py --local "SELECT 1"       # local dev DB, not production

Guarantees, in order of how much they are worth:

1. The server refuses writes: every session opens with
   `default_transaction_read_only = on`, so an INSERT/UPDATE/DDL errors out even
   if something slips past this script. That is the one that matters.
2. `statement_timeout` is always set (default 30s, cap 300s), so a runaway
   analytical query cannot sit on production the way `MAX(atdate)` over
   ccass.holdings (22s, full scan) once did.
3. `jit = off` by default, matching deploy/postgresql/conf.d/webbsite.conf, so a
   plan measured here is the plan the app gets.
4. A client-side check rejects statements that do not begin with SELECT, WITH,
   EXPLAIN, SHOW, TABLE or VALUES. Belt and braces for (1), and it catches a
   typo before it becomes a transaction, but it is a lint, not the boundary:
   never weaken (1) on the strength of it.

Connection:
  Production is reached over the tailnet with `ssh <host> sudo -u postgres psql`.
  This repo is public, so the host is NOT committed: it comes from $PGQ_SSH_HOST
  or the GNOME keyring (service=env, key=PGQ_SSH_HOST), the same convention as
  every other secret here. Set it once with:

      printf '%s' 'user@host' | secret-tool store --label=PGQ_SSH_HOST \\
          service env key PGQ_SSH_HOST

  --local instead targets $DATABASE_URL (the dev DB), for checking that SQL
  parses without touching production at all.

Approval:
  Claude Code prompts per command; to allow this one tool without prompting, add
  to .claude/settings.local.json (untracked, per-operator):

      {"permissions": {"allow": ["Bash(uv run python scripts/pgq.py:*)"]}}

  That is deliberately a decision the operator makes, not one this script makes.
"""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys

DEFAULT_TIMEOUT_S = 30
MAX_TIMEOUT_S = 300
DB_NAME = "enigma"

# A statement may only start with one of these.
READ_ONLY_START = re.compile(r"^(select|with|explain|show|table|values)\b", re.I)

# psql meta-commands are not SQL and the server never sees them, so they are
# listed rather than pattern-matched: \copy streams a local file INTO a table,
# \i runs another script, \o and \! write files and spawn shells. Formatting,
# timing and catalogue introspection are all that is needed here.
META_ALLOWED = {
    "timing", "echo", "pset", "x", "conninfo", "encoding",
    "d", "d+", "dt", "dt+", "di", "df", "dn", "dv", "l", "l+", "sf", "sv",
}

# Line and block comments, so a leading comment cannot hide the verb.
_LINE_COMMENT = re.compile(r"--[^\n]*")
_BLOCK_COMMENT = re.compile(r"/\*.*?\*/", re.S)


def strip_comments(sql: str) -> str:
    return _LINE_COMMENT.sub(" ", _BLOCK_COMMENT.sub(" ", sql))


def split_statements(sql: str) -> list[str]:
    """Statements of a script, naively split on `;` outside quotes.

    Good enough for a read check: the worst case of a bad split is a false
    rejection here, never a write reaching the server (the session is read-only).
    """
    out, buf, quote = [], [], None
    for ch in sql:
        if quote:
            if ch == quote:
                quote = None
        elif ch in "'\"":
            quote = ch
        elif ch == ";":
            out.append("".join(buf))
            buf = []
            continue
        buf.append(ch)
    out.append("".join(buf))
    return [s.strip() for s in out if s.strip()]


def is_read(stmt: str) -> bool:
    """True when `stmt` is a read query or an allow-listed psql meta-command.

    A psql script is line-oriented: a meta-command owns its line, and SQL may
    follow on the next one, so each line is judged separately.
    """
    allowed_meta = {m.rstrip("+") for m in META_ALLOWED}
    for line in (ln.strip() for ln in stmt.splitlines() if ln.strip()):
        if line.startswith("\\"):
            if re.split(r"[\s+]", line[1:].lower(), maxsplit=1)[0].rstrip("+") not in allowed_meta:
                return False
        else:
            # The first SQL line carries the verb; the rest continue it.
            return bool(READ_ONLY_START.match(line))
    return True


def check_read_only(sql: str) -> list[str]:
    """Statements that do not look like reads; empty when the script is clean."""
    return [
        s if len(s) <= 80 else s[:77] + "..."
        for s in split_statements(strip_comments(sql))
        if not is_read(s)
    ]


def resolve_host(required: bool = True) -> str:
    """The ssh destination for production, or a placeholder on a dry run."""
    host = os.environ.get("PGQ_SSH_HOST", "").strip()
    if host:
        return host
    if shutil.which("secret-tool"):
        try:
            got = subprocess.run(
                ["secret-tool", "lookup", "service", "env", "key", "PGQ_SSH_HOST"],
                capture_output=True, text=True, timeout=5,
            )
        except (subprocess.TimeoutExpired, OSError) as exc:
            sys.exit(f"pgq: keyring lookup failed ({exc}); set PGQ_SSH_HOST instead")
        if got.returncode == 0 and got.stdout.strip():
            return got.stdout.strip()
    if not required:
        return "$PGQ_SSH_HOST"
    sys.exit(
        "pgq: no production host. Set PGQ_SSH_HOST, or store it in the keyring:\n"
        "  printf '%s' 'user@host' | secret-tool store --label=PGQ_SSH_HOST "
        "service env key PGQ_SSH_HOST\n"
        "(the host is not committed: this repo is public)"
    )


def preamble(timeout_s: int, jit: bool) -> str:
    return (
        "SET default_transaction_read_only = on;\n"
        f"SET statement_timeout = '{timeout_s}s';\n"
        f"SET jit = {'on' if jit else 'off'};\n"
    )


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Run read-only SQL against the site's Postgres.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Reads are enforced server-side (default_transaction_read_only); "
               "the client-side check is a lint on top of that.",
    )
    ap.add_argument("query", nargs="?", help="SQL, or - to read stdin")
    ap.add_argument("-f", "--file", help="read SQL from a file")
    ap.add_argument("-t", "--timeout", type=int, default=DEFAULT_TIMEOUT_S,
                    help=f"statement_timeout in seconds (default {DEFAULT_TIMEOUT_S}, max {MAX_TIMEOUT_S})")
    ap.add_argument("--explain", action="store_true",
                    help="prefix a single statement with EXPLAIN (ANALYZE, BUFFERS)")
    ap.add_argument("--jit", action="store_true",
                    help="leave JIT on (default off, matching the server config)")
    ap.add_argument("--csv", action="store_true", help="CSV output")
    ap.add_argument("--local", action="store_true",
                    help="run against $DATABASE_URL (dev DB) instead of production")
    ap.add_argument("-n", "--dry-run", action="store_true",
                    help="print what would run, connect to nothing")
    args = ap.parse_args()

    if args.file:
        sql = open(args.file).read()
    elif args.query == "-" or (args.query is None and not sys.stdin.isatty()):
        sql = sys.stdin.read()
    elif args.query:
        sql = args.query
    else:
        ap.print_help()
        return 1

    if not sql.strip():
        sys.exit("pgq: empty query")

    bad = check_read_only(sql)
    if bad:
        sys.exit("pgq: refusing, these do not look like reads:\n  " + "\n  ".join(bad))

    timeout_s = max(1, min(args.timeout, MAX_TIMEOUT_S))
    if args.explain:
        stmts = split_statements(strip_comments(sql))
        if len(stmts) != 1:
            sys.exit(f"pgq: --explain wants exactly one statement, got {len(stmts)}")
        sql = f"EXPLAIN (ANALYZE, BUFFERS) {sql.strip().rstrip(';')}"

    script = preamble(timeout_s, args.jit) + sql.rstrip().rstrip(";") + ";\n"
    psql = ["psql", "-X", "-v", "ON_ERROR_STOP=1"] + (["--csv"] if args.csv else []) + ["-f", "-"]

    if args.local:
        dsn = os.environ.get("DATABASE_URL")
        if not dsn:
            sys.exit("pgq: --local needs DATABASE_URL")
        cmd = psql + [dsn]
    else:
        cmd = ["ssh", resolve_host(required=not args.dry_run),
               f"sudo -u postgres {' '.join(psql)} {DB_NAME}"]

    if args.dry_run:
        print("$ " + " ".join(cmd) + "\n--- stdin ---\n" + script, end="")
        return 0

    return subprocess.run(cmd, input=script, text=True).returncode


if __name__ == "__main__":
    sys.exit(main())
