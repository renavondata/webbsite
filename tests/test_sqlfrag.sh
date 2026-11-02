#!/usr/bin/env bash
# webbsite/sqlfrag.py against the database functions it stands in for, on a real
# Postgres: every value must be exactly the function's, NULLs included.
#
# A planted wrong fragment must be caught first, or a pass means nothing.
# Needs a Postgres reachable through the PG* env vars as a superuser.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DB=enigma_pg_sqlfrag
export PGHOST="${PGHOST:-localhost}" PGUSER="${PGUSER:-postgres}"
dropdb --if-exists "$DB"; createdb "$DB"
trap 'dropdb --if-exists "$DB"' EXIT
q() { psql -X -Atq -v ON_ERROR_STOP=1 -d "$DB" "$@"; }

q <<'SQL'
CREATE SCHEMA enigma;
CREATE TABLE enigma.adjustments (issueid bigint, exdate date, cumadjust double precision NOT NULL, PRIMARY KEY (issueid, exdate));
CREATE TABLE enigma.issuedshares (issueid bigint, atdate date, outstanding double precision, PRIMARY KEY (issueid, atdate));
-- 1: splits both sides of the probes; 2: consolidation; 3: a non-positive factor
-- (the ELSE branch); 4: nothing at all; 5: a NULL share count.
INSERT INTO enigma.adjustments VALUES
  (1, '2001-01-01', 0.5), (1, '2010-06-30', 0.125), (1, '2020-01-01', 0.1),
  (2, '2005-05-05', 3.0), (2, '2015-05-05', 7.25),
  (3, '2005-05-05', 0), (3, '2015-05-05', -1.5);
INSERT INTO enigma.issuedshares VALUES
  (1, '2000-01-01', 100), (1, '2010-06-30', 250.5), (2, '2005-05-05', 3e9), (5, '2005-05-05', NULL);
-- The bodies as they are on the live database.
CREATE FUNCTION enigma.getadjust(i integer, d date) RETURNS double precision LANGUAGE plpgsql STABLE AS $$
BEGIN
    RETURN COALESCE((SELECT cumAdjust FROM enigma.adjustments WHERE issueID = i AND exDate <= d ORDER BY exDate DESC LIMIT 1), 1.0);
END;
$$;
CREATE FUNCTION enigma.outstanding(i integer, d date) RETURNS double precision LANGUAGE plpgsql STABLE AS $$
BEGIN
    IF d IS NULL THEN
        RETURN (SELECT outstanding FROM enigma.issuedshares WHERE issueid = i ORDER BY atdate DESC LIMIT 1);
    ELSE
        RETURN (SELECT outstanding FROM enigma.issuedshares WHERE issueid = i AND atdate <= d ORDER BY atdate DESC LIMIT 1);
    END IF;
END;
$$;
CREATE FUNCTION enigma.splitadj(i integer, d date) RETURNS double precision LANGUAGE sql STABLE AS $$
 SELECT COALESCE(CASE WHEN MIN(cumAdjust) > 0 THEN MAX(cumAdjust) / MIN(cumAdjust) ELSE 1.0 END, 1.0)
 FROM (
   SELECT COALESCE((SELECT cumAdjust FROM enigma.adjustments WHERE issueID = i AND exDate <= d ORDER BY exDate DESC LIMIT 1), 1.0) AS cumAdjust
   UNION ALL
   SELECT COALESCE((SELECT cumAdjust FROM enigma.adjustments WHERE issueID = i AND exDate <= CURRENT_DATE ORDER BY exDate DESC LIMIT 1), 1.0) AS cumAdjust
 ) adjustments
$$;
CREATE TABLE grid AS
SELECT i, d::date FROM generate_series(1, 6) i,
  (VALUES ('1990-01-01'), ('2001-01-01'), ('2005-05-04'), ('2005-05-05'), ('2010-06-29'), ('2010-06-30'),
          ('2015-05-05'), ('2020-01-01'), ('2030-01-01')) v(d);
SQL

# The fragments are the ones the app uses, not copies of them.
frag() {   # prints a SELECT with the mismatch count
    (cd "$ROOT" && uv run --quiet python -c "
from webbsite import sqlfrag as f
cum=f.cum_adjust('g.i','g.d'); now=f.cum_adjust('g.i','CURRENT_DATE')
print(f'''SELECT
  count(*) FILTER (WHERE enigma.getadjust(g.i, g.d) IS DISTINCT FROM {cum}) +
  count(*) FILTER (WHERE enigma.outstanding(g.i, g.d) IS DISTINCT FROM {f.outstanding_asof('g.i','g.d')}) +
  count(*) FILTER (WHERE enigma.splitadj(g.i, g.d) IS DISTINCT FROM (
      SELECT {f.split_adj('x.a','x.b')} FROM (SELECT {cum} AS a, {now} AS b) x))
FROM grid g''')
")
}
SQL_RIGHT="$(frag)"

echo "== self-proof: a planted wrong fragment must be counted =="
planted="${SQL_RIGHT/GREATEST(x.a, x.b) \/ LEAST(x.a, x.b)/LEAST(x.a, x.b) \/ GREATEST(x.a, x.b)}"
[ "$planted" != "$SQL_RIGHT" ] || { echo "FAIL: nothing was planted"; exit 1; }
n=$(q -c "$planted")
[ "$n" -gt 0 ] || { echo "FAIL: planted fragment not caught"; exit 1; }
echo "  ok: caught ($n rows)"

echo "== fragments equal the functions exactly =="
n=$(q -c "$SQL_RIGHT")
[ "$n" = 0 ] || { echo "FAIL: $n values differ"; exit 1; }
echo "  ok: $(q -c 'SELECT count(*) FROM grid') issue/date pairs identical"
