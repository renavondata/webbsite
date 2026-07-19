# Loader validation kit (scripts/refresh/refresh.py)

Local, self-contained validation of the daily R2 → Postgres refresh loader —
no droplet, no R2 required.

```bash
# 1. Fixture database: the loader's exact table surface + the restricted role
createdb -h localhost -U postgres enigma_pg_refreshtest
psql -h localhost -U postgres -d enigma_pg_refreshtest -f tests/refresh/schema_fixture.sql
psql -h localhost -U postgres -d enigma_pg_refreshtest \
    -c "INSERT INTO enigma.issue (id1) VALUES (1001), (1002);"

# 2. Role parity: all three must FAIL with permission denied / must be owner
PGPASSWORD=refreshtest psql -h localhost -U webbsite_refresh -d enigma_pg_refreshtest \
    -c "DELETE FROM ccass.quotes" -c "TRUNCATE ccass.quotes" -c "DROP TABLE ccass.quotes"

# 3. Synthetic feed (R2 layout: 8 <dataset>/data.parquet + _manifest.json)
uv run --script tests/refresh/make_fixture.py /tmp/refresh-fixture

# 4. The ladder
export DATABASE_URL=postgresql://webbsite_refresh:refreshtest@localhost:5432/enigma_pg_refreshtest
export REFRESH_USERID=99
uv run --script scripts/refresh/refresh.py --dry-run --source /tmp/refresh-fixture  # exit 0, rollback
uv run --script scripts/refresh/refresh.py --source /tmp/refresh-fixture            # exit 0, commits
uv run --script scripts/refresh/refresh.py --source /tmp/refresh-fixture            # exit 0, "up to date"
```

The happy-path fixture also exercises the **quarantine**: issueid `9000001`
(renavon-minted, absent from `enigma.issue`) loads everywhere EXCEPT
`enigma.issuedshares`, where it is logged and excluded.

## Negatives (each must exit 1 with nothing committed)

Reset the watermarks between runs — a prior successful load leaves the
fixture DB "up to date" and the loader no-ops before validation:

```sql
UPDATE enigma.log SET val='2025-10-17' WHERE name='CCASSdateDone';
UPDATE enigma.log SET val='2025-10-10' WHERE name IN ('MBquotesDate','GEMquotesDate');
```

| fixture flag | trips |
|---|---|
| `--poison` | bigchanges `abs(stkchg) > 100` sanity bound |
| `--bad-counts` | staged rows != manifest rows |
| `--pre-freeze` | a row dated on/before 2025-10-10 (the freeze guard) |
| (delete a log row) | `enigma.log keys missing` pre-flight |

After any negative, verify no rows landed and `MBquotesDate` is still
`2025-10-10`.
