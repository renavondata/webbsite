"""Every precomputed page renders under every sort value, from one compute (no DB).

The database is stubbed with rows carrying every column the migrated pages
select, so a sort map naming a field the rows lack raises (sort_rows is
strict) and the page fails here instead of silently rendering unsorted. Sort
values come from tests/sort_fixtures.py, so a new one is covered for free.
The ORDER BY equivalence itself is proven against Postgres in
tests/test_precompute_pg.py.

Run:  uv run pytest -q tests/test_precompute_routes.py
"""

import os
import re
import sys
from datetime import date
from decimal import Decimal

import pytest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
os.environ.setdefault("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")

import sort_fixtures  # noqa: E402

from webbsite import precompute  # noqa: E402


def _row(i):
    n = Decimal(i)
    return {
        # identities / names
        "personid": i, "orgid": i, "pid": i, "id": i, "issueid": i, "dir": i,
        "name": f"n{i}", "name1": f"n{i}", "cname": "c", "oname": f"o{i}",
        "pname": f"p{i}", "oldname": f"old{i}", "oldcname": None, "en": f"e{i}",
        "cn": "c", "region": "r", "lstxt": "Partner", "stockcode": f"{i:04d}",
        "typeshort": "O", "typelong": "Ord", "typename": "t", "incid": str(i), "o_incid": i,
        "incdate": date(1900, 1, i), "disdate": None, "o_sc": i, "inepropn": Decimal(i), "fempropn": Decimal(1),
        "ine": i, "startdate": date(2003, 1, i), "enddate": None, "aro": i, "bro": i, "cro": 0,
        "actname": "Dealing", "acnt": 2 * i, "bcnt": 2 * i, "ccnt": 0, "arep": i, "brep": i, "crep": 0, "arat": 0, "brat": 0,
        # ordinals
        "o_name": i, "o_code": i, "o_type": 1, "o_old": i, "o_new": i, "o_en": i,
        "o_cn": 1, "o_region": 1, "o_adm": i, "o_o": i, "o_p": i, "o_role": 1,
        # numbers
        "amt": n * 10, "hds": n, "avg": Decimal(10), "p1": 1, "p2": 0, "phase": 1,
        "cnt": i, "cntpos": i, "sort_order": 1, "amtrange": "<100k", "c": i,
        "tota": n * 50, "a": Decimal(50), "elev": 1, "p": i, "t": 2 * i, "xp": 0,
        "xc": 0, "xt": 0, "np": i, "nc": i, "nt": 2 * i, "xps": None, "xcs": None,
        "xts": None, "age": 40 + i, "lsrole": 1, "yob": 1960 + i, "sex": "M",
        "cagrel": 0.1 * i, "totret": 0.5, "cagret": None,
        # dates / text dates
        "datechanged": date(2025, 1, i), "d": date(2025, 1, i), "reldate": date(2025, 1, i),
        "firsttradedate": date(1990, 1, i), "admhk": f"2000-01-0{i}", "appt": "2001",
        "res": None,
        # director snapshots, market caps, pay leagues, advisers
        "numseats": i, "ined": 1, "o_sex": 1, "dirs": i, "seats": 2 * i, "female": 1,
        "femseats": 1, "neds": 1, "ineds": 1, "lotval": n * 100, "closing": n,
        "outstanding": n * 1000, "mcap": n * 1000, "sc": i, "td": date(2025, 10, i),
        "os": n * 1000, "totsh": n * 1000, "pendmcap": n * 1000, "pricedate": None,
        "fee": i, "sal": i, "bon": 0, "ret": 0, "sha": 0, "tot": 2 * i, "sehkcurr": 0,
        "currency": "HKD", "rolelong": "Auditor", "onetime": False, "count": 0,
        "roleid": 0, "issuer": i, "i": i, "lot": 1000,
    }


ROWS = [_row(i) for i in (1, 2, 3)]
UNKNOWN_ID = 777777
calls = []


def fake_query(sql, params=None, timeout_s=None):
    calls.append(sql)
    if params and UNKNOWN_ID in params:  # an organisation type or activity that does not exist
        return []
    return [dict(r) for r in ROWS]


PAGES = {
    "/dbpub/ESStop.asp": ["p=0", "p=1"],
    "/dbpub/namechangeHK.asp": [""],
    "/dbpub/namechangeHKlisted.asp": [""],
    "/dbpub/prhdistricts.asp": [""],
    "/dbpub/HKflightscan.asp": ["ad=a", "ad=d"],
    "/dbpub/hksols.asp": ["p=0", "p=2"],
    "/dbpub/HKsolsmoves.asp": [""],
    "/dbpub/listed.asp": ["e=m&t=s"],
    "/dbpub/dirsHKPerPerson.asp": [""],
    "/dbpub/DirsHKAgeDistn.asp": [""],
    "/dbpub/HKdirsTypeSex.asp": [""],
    "/dbpub/mcap.asp": ["e=a&t=s"],
    "/dbpub/mcaphist.asp": ["e=a&t=s", "e=a&t=s&p=1"],
    "/dbpub/payleague.asp": ["", "i=1"],
    "/dbpub/payleagueorg.asp": [""],
    "/dbpub/advbyrole.asp": [""],
    "/dbpub/oldestHKcos.asp": ["", "a=1", "t=28"],
    "/dbpub/boardcomp.asp": [""],
    "/dbpub/SFClicount.asp": ["", "a=1"],
}


@pytest.fixture(scope="module")
def client(tmp_path_factory):
    mp = pytest.MonkeyPatch()
    mp.setenv("WEBBSITE_CACHE_DIR", str(tmp_path_factory.mktemp("cache")))
    mp.setitem(precompute.SOURCES, "market", lambda: "m")
    mp.setitem(precompute.SOURCES, "enigma", lambda: "e")
    from webbsite import create_app, db

    app = create_app()
    mp.setattr(db, "execute_query", fake_query)
    mp.setattr("webbsite.watermarks.execute_scalar", lambda *a, **k: "2025-10-10")
    for mod in ("statistics", "solicitors", "listings", "market_data", "incorporations", "sfc"):
        mp.setattr(f"webbsite.routes.dbpub.{mod}.execute_query", fake_query)
    yield app.test_client()
    mp.undo()


def sorts_for(path):
    values = sort_fixtures.sort_values().get(path, {})
    return sorted(values.get("sort", ())) or [None]


@pytest.mark.parametrize("path", sorted(PAGES))
def test_every_sort_renders_from_one_compute(client, path, caplog):
    sorts = sorts_for(path)
    assert sorts != [None] or path in ("/dbpub/HKdirsTypeSex.asp",), path
    for extra in PAGES[path]:
        base = f"{path}?{extra}" if extra else path
        client.get(base)  # computes once
        calls.clear()
        for s in sorts:
            url = f"{base}{'&' if '?' in base else '?'}sort={s}" if s else base
            r = client.get(url)
            assert r.status_code == 200, (url, r.status_code)
            assert "no-store" not in r.headers.get("Cache-Control", ""), url
            # Sort ordinals are ours: hksols.html prints every key it is given.
            html = r.get_data(as_text=True)
            assert not re.search(r"\bo_[a-z]+\b", html), (url, "sort ordinal on the page")
            # Several pages catch their own errors and render an empty table.
            errors = [rec.getMessage() for rec in caplog.records if rec.levelname == "ERROR"]
            assert errors == [], (url, errors)
        heavy = [c for c in calls if "dense_rank" in c or "enigma.ess" in c]
        assert heavy == [], (base, "a sort recomputed")


CALENDARS = ("/dbpub/incHKcaltype.asp", "/dbpub/disHKcaltype.asp", "/dbpub/incUKcaltype.asp")


@pytest.mark.parametrize("path", CALENDARS)
def test_calendar_whole_year_is_cached_per_sort_and_months_stay_live(client, path, tmp_path):
    def queries(url):
        calls.clear()
        r = client.get(url)
        assert r.status_code == 200, url
        return len(calls)

    year = f"{path}?y=2023"
    assert queries(year) > 0, "first hit computes"
    assert queries(year) == 0, "second hit is from disk"
    # A capped list holds different rows under each sort, so each sort is its own
    # query, and asks SQL for that order.
    assert queries(f"{year}&sort=namdn") > 0
    assert any("DESC" in c for c in calls), "a sort reached the SQL"
    assert queries(f"{year}&sort=namdn") == 0
    # A junk sort is the default, and creates no file of its own.
    assert queries(f"{year}&sort=junk") == 0
    # A different selection is a different list.
    assert queries(f"{year}&t=28") > 0
    # Months and days are not kept.
    assert queries(f"{year}&m=5") > 0
    assert queries(f"{year}&m=5") > 0
    assert queries(f"{year}&m=5&d=3") > 0
    assert queries(f"{year}&m=5&d=3") > 0


def _queries(client, url):
    calls.clear()
    assert client.get(url).status_code == 200, url
    return len(calls)


def _files(page):
    root = precompute.cache_root() / page
    return sorted(p.name.split(".")[0] for p in root.glob("*.pkl"))


def test_sfc_explicit_dates_never_fill_the_default_copy(client):
    """?da=<old>&db=<today> swaps into da=today: it must not be saved as the default."""
    from datetime import date, timedelta

    today = date.today()
    for q in (f"da=2003-04-01&db={today}", f"da={today}&db=2003-04-01",
              f"da={today}&db={today - timedelta(days=30)}", f"db={today - timedelta(days=30)}"):
        assert _queries(client, f"/dbpub/SFClicount.asp?a=7&{q}") > 0, q
        assert _queries(client, f"/dbpub/SFClicount.asp?a=7&{q}") > 0, (q, "kept")
        assert "a7" not in _files("sfclicount"), q
    # The explicit spelling of the default dates may share the default's copy.
    client.get("/dbpub/SFClicount.asp?a=7")
    assert "a7" in _files("sfclicount")
    default_b = today - timedelta(days=365)
    assert _queries(client, f"/dbpub/SFClicount.asp?a=7&da={today}&db={default_b}") <= 1


def test_ids_that_do_not_exist_write_no_files(client):
    before = {page: _files(page) for page in
              ("oldesthkcos", "sfclicount", "inchkcaltype", "dishkcaltype", "incukcaltype")}
    for url in (f"/dbpub/oldestHKcos.asp?t={UNKNOWN_ID}",
                f"/dbpub/SFClicount.asp?a={UNKNOWN_ID}",
                "/dbpub/SFClicount.asp?a=-5",
                f"/dbpub/incHKcaltype.asp?y=2021&t={UNKNOWN_ID}",
                "/dbpub/incHKcaltype.asp?y=2021&t=-1",
                f"/dbpub/disHKcaltype.asp?y=2021&t={UNKNOWN_ID}",
                f"/dbpub/disHKcaltype.asp?y=2021&w={UNKNOWN_ID}",
                f"/dbpub/incUKcaltype.asp?y=2021&t={UNKNOWN_ID}"):
        assert client.get(url).status_code == 200, url
    after = {page: _files(page) for page in before}
    new = {page: set(after[page]) - set(before[page]) for page in before}
    # An unknown type is ignored on oldestHKcos, so it may fill the unfiltered copy.
    assert new["oldesthkcos"] <= {"a0_t0"}, new
    assert not any(new[p] for p in new if p != "oldesthkcos"), new


def test_unknown_oldest_type_shows_the_unfiltered_list_from_its_copy(client):
    client.get("/dbpub/oldestHKcos.asp")
    calls.clear()
    assert client.get(f"/dbpub/oldestHKcos.asp?t={UNKNOWN_ID}").status_code == 200
    assert not any("LIMIT" in c for c in calls), "the main query ran again"
