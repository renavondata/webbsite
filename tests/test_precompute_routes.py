"""Every precomputed page renders under every sort value, from one compute (no DB).

The database is stubbed with rows carrying every column the migrated pages
select, so a sort map naming a field the rows lack raises (sort_rows is
strict) and the page fails here instead of silently rendering unsorted. Sort
values come from tests/sort_fixtures.py, so a new one is covered for free.
The ORDER BY equivalence itself is proven against Postgres in
tests/test_precompute_pg.py.

Run:  uv run pytest -q tests/test_precompute_routes.py
"""

import json
import os
import re
import shutil
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
        "actname": "Dealing", "dismodetxt": "Dissolved", "cp5": Decimal("0.5"), "cp10": Decimal("0.6"), "cp10ip": None,
        "stake": Decimal("0.1"), "stockname": f"s{i}:O", "ncipcnt": i, "cipcnt": i, "ipcnt": 2 * i,
        "ncipstake": Decimal("0.1"), "cipstake": Decimal("0.1"), "ipstake": Decimal("0.2"), "vln": None,
        "lastdate": date(2024, 6, 3), "max_date": date(2024, 6, 3), "acnt": 2 * i, "bcnt": 2 * i, "ccnt": 0, "arep": i, "brep": i, "crep": 0, "arat": 0, "brat": 0,
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
        "roleid": 0, "issuer": i, "i": i, "lot": 1000, "partid": i,
        # one participant's holdings
        "max": date(2024, 6, 3), "partname": "p", "ccassid": "C1", "holding": n * 100,
        "atdate": date(2024, 6, i), "lastcode": f"{i:04d}", "valn": n * 500, "susp": False,
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
    "/dbpub/listed.asp": ["e=m&t=s", "e=m&t=s&d=2024-06-03"],
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
    "/dbpub/SFClicount.asp": ["", "a=1", "da=2024-06-03&db=2023-06-03"],
    "/ccass/cconc.asp": ["", "etf=1", "d=2024-06-03"],
    "/ccass/ipstakes.asp": ["", "d=2024-06-03"],
    "/ccass/cholder.asp": ["part=7", "part=7&z=1", "part=7&d=2024-06-03"],
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
    mp.setattr("webbsite.routes.ccass.execute_query", fake_query)
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
        client.get(f"/dbpub/SFClicount.asp?a=7&{q}")
        assert "a7" not in _files("sfclicount"), q
    # The explicit spelling of the default dates may share the default's copy.
    client.get("/dbpub/SFClicount.asp?a=7")
    assert "a7" in _files("sfclicount")
    default_b = today - timedelta(days=365)
    assert _queries(client, f"/dbpub/SFClicount.asp?a=7&da={today}&db={default_b}") <= 1


def _dense_rank_computes(client, url):
    calls.clear()
    assert client.get(url).status_code == 200, url
    return sum("dense_rank" in c for c in calls)


def test_listed_pinned_dates_keep_their_own_copy(client, monkeypatch):
    old = "/dbpub/listed.asp?e=g&t=s&d=2021-12-31"
    assert _dense_rank_computes(client, old) == 1
    assert _dense_rank_computes(client, old) == 0
    assert _dense_rank_computes(client, old + "&sort=namedn") == 0, "a sort link recomputed"
    assert _dense_rank_computes(client, "/dbpub/listed.asp?e=g&t=s&d=2021-12-30") == 1
    assert _dense_rank_computes(client, "/dbpub/listed.asp?e=r&t=s&d=2021-12-31") == 1
    assert "g_s_2021-12-31" in _files("listeddated")
    assert not any("2021" in f for f in _files("listed")), "dated copy under the warmed page"
    monkeypatch.setitem(precompute.SOURCES, "market", lambda: "m2")
    assert _dense_rank_computes(client, old) == 1, "a data refresh must supersede it"
    # A load that rewrites rows without moving a watermark changes no version: a day
    # is the longest such a copy may stand.
    monkeypatch.setitem(precompute.SOURCES, "today", lambda: "tomorrow")
    assert _dense_rank_computes(client, old) == 1, "a dated copy outlived its day"


def test_listed_today_and_junk_dates_share_the_default_copy(client):
    from datetime import date

    before = _files("listeddated")
    assert _dense_rank_computes(client, "/dbpub/listed.asp?e=s&t=s") == 1
    assert _dense_rank_computes(client, f"/dbpub/listed.asp?e=s&t=s&d={date.today()}") == 0
    assert _dense_rank_computes(client, "/dbpub/listed.asp?e=s&t=s&d=notadate") == 0
    assert _files("listeddated") == before, "no dated copy for today or junk"


def test_sfc_explicit_dates_keep_their_own_copy(client, monkeypatch):
    url = "/dbpub/SFClicount.asp?da=2022-06-30&db=2021-06-30"
    assert _dense_rank_computes(client, url) == 1
    assert _dense_rank_computes(client, url) == 0
    assert _dense_rank_computes(client, url + "&sort=crodn") == 0, "a sort link recomputed"
    swapped = "/dbpub/SFClicount.asp?da=2021-06-30&db=2022-06-30"
    assert _dense_rank_computes(client, swapped) == 0, "the same period, spelt backwards"
    assert "a0_2022-06-30_2021-06-30" in _files("sfclicountdated")
    monkeypatch.setitem(precompute.SOURCES, "today", lambda: "tomorrow")
    assert _dense_rank_computes(client, url) == 1, "kept for the day, like the default"


def test_sfc_unknown_activity_with_dates_writes_no_files(client):
    before = _files("sfclicountdated")
    url = f"/dbpub/SFClicount.asp?a={UNKNOWN_ID}&da=2022-06-30&db=2021-06-30"
    assert client.get(url).status_code == 200
    assert _files("sfclicountdated") == before


@pytest.mark.parametrize("module, url", [
    ("webbsite.routes.ccass", "/ccass/cconc.asp?d=2024-06-03"),
    ("webbsite.routes.ccass", "/ccass/ipstakes.asp?d=2024-06-03"),
    ("webbsite.routes.ccass", "/ccass/cholder.asp?part=51"),
    ("webbsite.routes.dbpub.short_selling", "/dbpub/shortsum.asp"),
    ("webbsite.routes.dbpub.statistics", "/dbpub/advbyrole.asp"),
])
def test_market_pages_expire_daily(client, monkeypatch, module, url):
    """A load can rewrite rows without moving a watermark, so `market` alone could
    keep a copy indefinitely if the feed then stopped."""
    seen = []

    def spy(page, variant, sources, compute, **kw):
        seen.append(sources)
        return []

    monkeypatch.setattr(f"{module}.precomputed", spy)
    # Recent, for cholder: the stub calendar answers this date.
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: "2024-06-03")
    assert client.get(url).status_code == 200, url
    assert seen and all("today" in s for s in seen), (url, seen)


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


@pytest.mark.parametrize("path, page, first, second", [
    ("/dbpub/disHKcaltype.asp", "dishkcaltype", "y=2020&w=2", "y=2020&w=3"),
    ("/dbpub/disHKcaltype.asp", "dishkcaltype", "y=2020&t=28", "y=2020&t=19"),
    ("/dbpub/incUKcaltype.asp", "incukcaltype", "y=2020&dom=116", "y=2020&dom=112"),
    ("/dbpub/incHKcaltype.asp", "inchkcaltype", "y=2020", "y=2019"),
    ("/dbpub/SFClicount.asp", "sfclicount", "a=1", "a=2"),
    ("/dbpub/oldestHKcos.asp", "oldesthkcos", "a=1", "a=1&t=19"),
])
def test_each_selection_has_its_own_copy(client, path, page, first, second):
    """A parameter left out of the key would serve one selection's rows for another."""
    client.get(f"{path}?{first}")
    files = set(_files(page))
    assert _queries(client, f"{path}?{second}") > 0, "served from the other selection's file"
    assert len(set(_files(page)) - files) == 1


def _cholder_computes(client, url):
    """How many of the request's queries were the holdings query itself."""
    calls.clear()
    assert client.get(url).status_code == 200, url
    return sum("dense_rank" in c for c in calls)


def test_cholder_keeps_real_participants_only(client):
    before = _files("cholder")
    url = f"/ccass/cholder.asp?part={UNKNOWN_ID}"
    assert _cholder_computes(client, url) == 1
    assert _cholder_computes(client, url) == 1, "an unknown participant is not kept"
    assert _files("cholder") == before, "an unknown participant wrote a file"


def test_warming_fills_what_the_page_reads(client, monkeypatch):
    from webbsite import warm

    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: "2024-06-03")
    app = client.application
    calls.clear()
    assert warm.warm_cholder(app) == (3, 0)
    assert sum("dense_rank" in c for c in calls) == 3
    for part in (1, 2, 3):
        assert _cholder_computes(client, f"/ccass/cholder.asp?part={part}") == 0, part
    calls.clear()
    assert warm.warm_cholder(app) == (3, 0)
    assert not any("dense_rank" in c for c in calls), "a current list recomputed"


def test_warming_counts_failures_and_carries_on(client, monkeypatch, capsys):
    from webbsite import warm

    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: "2024-06-03")

    def fail_one(part, d, z):
        if part == 2:
            raise RuntimeError("timed out")

    monkeypatch.setattr("webbsite.routes.ccass.kept_cholder_rows", fail_one)
    assert warm.warm_cholder(client.application) == (2, 1)
    assert "FAIL /ccass/cholder.asp?part=2" in capsys.readouterr().out

    def no_list():
        raise RuntimeError("database away")

    monkeypatch.setattr("webbsite.routes.ccass.cholder_warm_list", no_list)
    assert warm.warm_cholder(client.application) == (0, 1)


def test_warming_stops_when_lists_keep_failing(client, monkeypatch):
    from webbsite import warm

    tried = []

    def fail(part, d, z):
        tried.append(part)
        raise RuntimeError("timed out")

    monkeypatch.setattr("webbsite.routes.ccass.cholder_warm_list", lambda: ("2024-06-03", list(range(50))))
    monkeypatch.setattr("webbsite.routes.ccass.kept_cholder_rows", fail)
    assert warm.warm_cholder(client.application) == (0, warm.STOP_AFTER)
    assert len(tried) == warm.STOP_AFTER


def test_warming_a_failure_reaches_sentry_tagged_synthetic(client, monkeypatch):
    import logging

    import sentry_sdk

    from webbsite import warm

    events = []

    def keep(event, hint):
        events.append(event)

    def fail(part, d, z):
        logging.getLogger("webbsite.db").error("timed out")
        raise RuntimeError("timed out")

    monkeypatch.setattr("webbsite.routes.ccass.cholder_warm_list", lambda: ("2024-06-03", [1]))
    monkeypatch.setattr("webbsite.routes.ccass.kept_cholder_rows", fail)
    sentry_sdk.init(dsn="http://k@127.0.0.1:1/1", before_send=keep, default_integrations=True)
    try:
        warm.warm_cholder(client.application)
    finally:
        sentry_sdk.init()
    assert events, "no event captured"
    assert all(e.get("tags", {}).get("synthetic") == "warm" for e in events), events


def test_lists_kept_for_a_month_are_not_crowded_out_by_warming(client, monkeypatch):
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: "2025-10-10")
    assert _cholder_computes(client, "/ccass/cholder.asp?part=41&d=2024-06-03") == 1
    assert any(f.startswith("p41_") for f in _files("cholderkept"))
    assert not any(f.startswith("p41_") for f in _files("cholder"))
    # A recent date, which is what warming writes, goes in the other page.
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: "2024-06-03")
    assert _cholder_computes(client, "/ccass/cholder.asp?part=42") == 1
    assert any(f.startswith("p42_") for f in _files("cholder"))
    assert not any(f.startswith("p42_") for f in _files("cholderkept"))


def test_cholder_old_dates_survive_a_data_refresh(client, monkeypatch):
    old = "/ccass/cholder.asp?part=31&d=2024-06-03"
    latest = "/ccass/cholder.asp?part=31"
    # The stub calendar answers 2024-06-03 for every date, so ask for the sources
    # of a recent date through the function the route uses.
    from webbsite.routes.ccass import _holdings_sources

    done = "2025-10-10"
    # Stubbed here: the real one memoises whatever an earlier test's stub answered.
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: done)
    assert _holdings_sources(done) == ("market", "enigma", "today")
    assert _holdings_sources("2025-09-26") == ("market", "enigma", "today")
    assert _holdings_sources("2025-09-25") == ("month", "enigma")
    # A stalled feed: dates beyond the load stay tied to the data version.
    assert _holdings_sources("2026-01-01") == ("market", "enigma", "today")
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: None)
    assert _holdings_sources("2024-06-03") == ("market", "enigma", "today"), "no watermark, nothing pinned"
    monkeypatch.setattr("webbsite.watermarks.ccass_done", lambda: done)
    monkeypatch.setitem(precompute.SOURCES, "month", lambda: "2026-11")

    assert _cholder_computes(client, old) == 1
    assert _cholder_computes(client, old) == 0
    assert _cholder_computes(client, latest) == 0, "same settled date, same list"
    monkeypatch.setitem(precompute.SOURCES, "market", lambda: "m2")
    assert _cholder_computes(client, old) == 0, "an old date recomputed after a refresh"
    monkeypatch.setitem(precompute.SOURCES, "enigma", lambda: "e2")
    assert _cholder_computes(client, old) == 1, "old dates still follow enigma data"
    monkeypatch.setitem(precompute.SOURCES, "month", lambda: "2026-12")
    assert _cholder_computes(client, old) == 1, "a kept list expires when the month rolls"


def test_cholder_sort_reorders_the_kept_rows(client):
    def names(sort):
        html = client.get(f"/ccass/cholder.asp?part=41&sort={sort}").get_data(as_text=True)
        return re.findall(r">(n[123])</a>", html)

    assert names("holddn") == ["n3", "n2", "n1"]
    assert names("holdup") == ["n1", "n2", "n3"]
    assert names("namedn") == ["n3", "n2", "n1"]
    assert names("datedn") == ["n3", "n2", "n1"]


# --- adviserships.asp: one kept list, sorted per request ------------------------------

def _adv_row(org, rank, issue, added, removed, totret, cagret, cagrel):
    return {"orgid": rank, "org": org, "issueid": issue, "adddate": added, "remdate": removed,
            "totret": totret, "cagret": cagret, "cagrel": cagrel, "o_org": rank}


# In Client order, as the query returns them. Every sort key has a NULL and at least two
# values, and Alpha has two rows, so each sort's direction, NULL place and tie-break show.
ADV_ROWS = [
    _adv_row("Alpha", 1, 10, date(2001, 1, 1), date(2009, 1, 1), 0.3, None, 0.5),
    _adv_row("Alpha", 1, 11, date(2003, 1, 1), None, None, 0.2, None),
    _adv_row("Beta", 2, 20, None, date(2010, 1, 1), 0.5, 0.1, 0.2),
    _adv_row("Gamma", 3, 30, date(1999, 1, 1), date(2005, 1, 1), -0.25, -0.1, 0.4),
]

# Rows named by issueid, by the ORDER BY the query used before it sorted in Python.
ADV_SORTS = {
    "orgup": [10, 11, 20, 30],     # org, addDate
    "orgdn": [30, 20, 10, 11],     # org DESC, addDate
    "addup": [30, 10, 11, 20],     # addDate (NULLs last), org
    "adddn": [20, 11, 10, 30],     # addDate DESC (NULLs first), org
    "remup": [30, 10, 20, 11],     # remDate (NULLs last), org
    "remdn": [11, 20, 10, 30],     # remDate DESC (NULLs first), org
    "totdn": [20, 10, 30, 11],     # totret DESC NULLS LAST, org
    "totup": [11, 30, 10, 20],     # totret NULLS FIRST, org
    "cagretdn": [11, 20, 30, 10],  # cagret DESC NULLS LAST, org
    "cagretup": [10, 30, 20, 11],  # cagret NULLS FIRST, org
    "cagreldn": [10, 30, 20, 11],  # cagrel DESC NULLS LAST, org
    "cagrelup": [11, 20, 30, 10],  # cagrel NULLS FIRST, org
    "cagdn": [10, 30, 20, 11],     # what advltsnap's link meant: cagreldn
    "junk": [10, 11, 20, 30],      # an unknown sort is Client order
}


# Tied on every key but org and, for one client, the date: tie-breaks and NULL dates show.
_ADD = date(2005, 1, 1)
ADV_TIED = [
    _adv_row("Delta", 1, 40, _ADD, _ADD, 0.1, 0.1, 0.1),
    _adv_row("Epsilon", 2, 50, _ADD, _ADD, 0.1, 0.1, 0.1),
    _adv_row("Zeta", 3, 60, _ADD, _ADD, 0.1, 0.1, 0.1),
    _adv_row("Zeta", 3, 61, None, _ADD, 0.1, 0.1, 0.1),
]
ADV_TIED_SORTS = {
    "orgdn": [60, 61, 50, 40],     # org DESC, then the date (NULL last) within a client
    "addup": [40, 50, 60, 61],     # the three equal dates in Client order, NULL last
    "adddn": [61, 40, 50, 60],     # NULL first, then equal dates in Client order
}


@pytest.fixture
def adviser_pages(client, monkeypatch):
    """adviserships.asp on stub data; yields (client, the list queries it ran)."""
    from webbsite.routes.dbpub import statistics

    shutil.rmtree(precompute.cache_root() / "adviserships", ignore_errors=True)
    lists = []
    adviser_roles = [{"roleid": 2, "rolelong": "Auditor"}]

    def stub(sql, params=None, **_kw):
        if "enigma.organisations WHERE personid" in sql:
            return [{"name1": "Adviser"}]
        if "SELECT DISTINCT roleID" in sql:
            return list(adviser_roles)
        if "FROM enigma.roles" in sql:
            return [{"roleid": 2, "rolelong": "Auditor", "onetime": False}]
        lists.append((sql, params))
        return [dict(r) for r in client.adviser_rows]

    monkeypatch.setattr(statistics, "execute_query", stub)
    monkeypatch.setattr(statistics, "render_template",
                        lambda _t, **ctx: json.dumps([r["issueid"] for r in ctx.get("adviserships", [])]))
    client.adviser_roles = adviser_roles
    client.adviser_rows = ADV_ROWS
    return client, lists


def _adv(client, query):
    response = client.get(f"/dbpub/adviserships.asp?p=374&r=2{query}")
    assert response.status_code == 200
    return json.loads(response.get_data(as_text=True))


def test_adviserships_every_sort_comes_from_one_compute(adviser_pages):
    client, lists = adviser_pages
    assert _adv(client, "") == ADV_SORTS["orgup"]
    for sort, want in ADV_SORTS.items():
        assert _adv(client, f"&sort={sort}") == want, sort
    assert len(lists) == 1


def test_adviserships_ties_break_on_client(adviser_pages):
    client, _ = adviser_pages
    client.adviser_rows = ADV_TIED
    for sort in ("orgup", "remup", "remdn", "totdn", "totup", "cagretdn", "cagretup",
                 "cagreldn", "cagrelup", "cagdn"):
        assert _adv(client, f"&sort={sort}") == [40, 50, 60, 61], sort
    for sort, want in ADV_TIED_SORTS.items():
        assert _adv(client, f"&sort={sort}") == want, sort


def test_adviserships_sorts_are_all_tested():
    from webbsite.routes.dbpub import statistics

    assert set(statistics._ADVISERSHIP_SORTS) | {"junk"} == set(ADV_SORTS)


def test_adviserships_writes_nothing_for_a_role_the_adviser_lacks(adviser_pages):
    client, lists = adviser_pages
    client.adviser_roles.clear()
    _adv(client, "")
    _adv(client, "")
    assert len(lists) == 2, "kept for an adviser without this role"
    assert not (precompute.cache_root() / "adviserships").exists()


def test_adviserships_hide_is_its_own_list(adviser_pages):
    client, lists = adviser_pages
    _adv(client, "&hide=Y")
    _adv(client, "&hide=N")
    assert len(lists) == 2
    assert "CURRENT_DATE" in lists[0][0] and "CURRENT_DATE" not in lists[1][0]


def test_adviserships_with_dates_stay_live(adviser_pages):
    client, lists = adviser_pages
    _adv(client, "&f=2020-01-01")
    _adv(client, "&f=2020-01-01")
    assert len(lists) == 2


def test_adviserships_warm_list_fills_what_the_page_reads(adviser_pages, monkeypatch):
    from webbsite import warm
    from webbsite.routes.dbpub import statistics

    client, lists = adviser_pages
    monkeypatch.setattr(statistics, "adviserships_warm_list", lambda: [(374, 2, False)])
    assert warm.warm_adviserships(client.application) == (1, 0)
    assert len(lists) == 1
    _adv(client, "&sort=orgdn")
    assert len(lists) == 1
