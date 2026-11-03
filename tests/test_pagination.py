"""webbsite/pagination.py: the contract, on a stub-backed real route (no DB).

Run:  uv run pytest -q tests/test_pagination.py
"""

import os
import re
import sys
from datetime import date

import pytest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))

os.environ.setdefault("DATABASE_URL", "postgresql://x@127.0.0.1:1/x")

from webbsite import precompute  # noqa: E402
from webbsite.pagination import page_number, paginate  # noqa: E402

N = 1203
URL = "/dbpub/dirsHKPerPerson.asp"


@pytest.mark.parametrize("raw, want", [
    ("1", 1), ("2", 2), ("999", 999),
    (None, None), ("", None), ("0", None), ("-1", None), ("02", None), ("1.5", None),
    ("x", None), ("٣", None), ("9" * 10, None),
])
def test_page_number(raw, want):
    assert page_number(raw) == want


def test_paginate_slices_and_continues_numbering():
    rows = list(range(1203))
    p = paginate(rows, "3", 500)
    assert (p.rows, p.number, p.pages, p.total, p.offset) == (rows[1000:], 3, 3, 1203, 1000)
    assert (p.first, p.last) == (1001, 1203)


@pytest.mark.parametrize("raw", [None, "", "junk", "0", "-3"])
def test_junk_means_page_one(raw):
    assert paginate(list(range(9)), raw, 5).number == 1


def test_past_the_end_is_none_and_an_exact_fit_has_no_empty_page():
    rows = list(range(1000))
    assert paginate(rows, "2", 500).rows == rows[500:]
    assert paginate(rows, "3", 500) is None


def test_no_rows_is_one_empty_page():
    p = paginate([], None, 500)
    assert (p.rows, p.pages, p.first, p.last) == ([], 1, 0, 0)
    assert paginate([], "2", 500) is None


def test_all_shows_everything():
    rows = list(range(1203))
    p = paginate(rows, "all", 500)
    assert p.rows == rows and p.showing_all and p.offset == 0


@pytest.fixture
def client(monkeypatch, tmp_path):
    monkeypatch.setenv("WEBBSITE_CACHE_DIR", str(tmp_path))
    from webbsite import create_app

    rows = [{"director": i, "name": f"n{i:05d}", "numseats": 1, "ined": 0, "yob": 1960,
             "sex": "M", "o_name": i, "o_sex": 1} for i in range(N)]
    monkeypatch.setattr("webbsite.routes.dbpub.statistics.execute_query",
                        lambda *a, **k: [dict(r) for r in rows])
    monkeypatch.setattr("webbsite.routes.dbpub.statistics._today_or_live",
                        lambda page, d, compute: compute())
    return create_app().test_client()


def _body(client, query=""):
    r = client.get(URL + query)
    assert r.status_code == 200, query
    return r.get_data(as_text=True)


def _canonical(body):
    return re.search(r'rel="canonical" href="https://[^/]+([^"]*)"', body)[1].replace("&amp;", "&")


def _names(body):
    return re.findall(r">(n\d{5})<", body)


def test_route_pages_with_totals_of_the_whole_list(client):
    body = _body(client)
    assert len(_names(body)) == 500
    assert f"snapshot date: {N}<" in body and f'data-total-rows="{N}"' in body
    assert "Showing 1&ndash;500 of 1,203." in body


def test_row_numbers_continue(client):
    body = _body(client, "?page=2")
    assert _names(body)[0] == "n00500"
    assert '<td class="colHide3">501</td>' in body


def test_past_the_end_is_a_404_not_a_500(client):
    assert client.get(URL + "?page=4").status_code == 404
    assert client.get(URL + "?page=3").status_code == 200


def test_page_all_has_every_row_and_is_not_indexed(client):
    body = _body(client, "?page=all")
    assert len(_names(body)) == N
    assert '<meta name="robots" content="noindex">' in body
    assert "?" not in _canonical(body)


def test_sort_applies_to_the_whole_list_and_links_drop_page(client):
    body = _body(client, "?page=2&sort=namdn")
    assert _names(body)[0] == f"n{N - 1 - 500:05d}"
    headers = re.findall(r"<th[^>]*><a href='([^']*)'", body)
    assert headers and not [h for h in headers if "page=" in h]


def test_pager_keeps_other_params_once(client):
    d = date.today().isoformat()
    body = _body(client, f"?d={d}&sort=namup&page=2")
    nxt = re.search(r'<a rel="next" href="([^"]*)"', body)[1].replace("&amp;", "&")
    assert nxt == f"{URL}?d={d}&sort=namup&page=3"
    prev = re.search(r'<a rel="prev" href="([^"]*)"', body)[1].replace("&amp;", "&")
    assert prev == f"{URL}?d={d}&sort=namup", "page 1 has no page parameter"


def test_canonical_keeps_page_only_above_one_and_unsorted(client):
    assert _canonical(_body(client, "?page=2")) == f"{URL}?page=2"
    assert _canonical(_body(client, "?page=1")) == URL
    assert _canonical(_body(client, "?page=junk")) == URL
    assert _canonical(_body(client, "?page=2&sort=namup")) == URL


def test_canonical_reads_the_page_the_route_read(client):
    assert _canonical(_body(client, "?page=1&page=2")) == URL
    assert _canonical(_body(client, "?page=all&page=2")) == URL
    assert _canonical(_body(client, "?page=2&page=3")) == f"{URL}?page=2"
    assert _names(_body(client, "?page=2&page=3"))[0] == "n00500"


def test_every_page_of_a_date_comes_from_one_compute(client, monkeypatch):
    runs = []

    def spy(*a, **k):
        runs.append(1)
        return [{"director": i, "name": f"n{i:05d}", "numseats": 1, "ined": 0, "yob": 1960,
                 "sex": "M", "o_name": i, "o_sex": 1} for i in range(N)]

    monkeypatch.setattr("webbsite.routes.dbpub.statistics.execute_query", spy)
    monkeypatch.setitem(precompute.SOURCES, "enigma", lambda: "e1")
    for query in ("?d=2020-01-01", "?d=2020-01-01&page=2", "?d=2020-01-01&page=3&sort=namdn"):
        _body(client, query)
    assert len(runs) == 1
    today = date.today().isoformat()
    assert not list((precompute.cache_root() / "dirshkperpersondated").glob(f"{today}*"))
    _body(client, f"?d={today}")
    assert not list((precompute.cache_root() / "dirshkperpersondated").glob(f"{today}*")), \
        "today's view is the warmed copy, not a dated one"


def test_head_links_and_robots(client):
    assert '<link rel="next"' in _body(client) and '<link rel="prev"' not in _body(client)
    last = _body(client, "?page=3")
    assert '<link rel="prev"' in last and '<link rel="next"' not in last
    robots = client.get("/robots.txt").get_data(as_text=True)
    for rule in ("/*page=all", "/*sort=*page=", "/*page=*sort="):
        assert f"Disallow: {rule}\n" in robots


def test_sfc_average_covers_every_firm_not_one_page(monkeypatch, tmp_path):
    monkeypatch.setenv("WEBBSITE_CACHE_DIR", str(tmp_path))
    from webbsite import create_app

    def row(i):
        return {"orgid": i, "name": f"n{i:05d}", "o_name": i, "aro": 2 if i < 500 else 4, "arep": 0,
                "acnt": 1, "bro": 0, "brep": 0, "bcnt": 0, "cro": 0, "crep": 0, "ccnt": 0,
                "arat": None, "brat": None, "startdate": None, "enddate": None}

    monkeypatch.setattr("webbsite.routes.dbpub.sfc.precomputed",
                        lambda *a, **k: [row(i) for i in range(N)])
    r = create_app().test_client().get("/dbpub/SFClicount.asp")
    body = r.get_data(as_text=True)
    assert r.status_code == 200
    assert len(re.findall(r">n\d{5}<", body)) == 500
    # 500 firms at 2 and 703 at 4 average 3.17; the first page alone would say 2.00.
    assert f"{(500 * 2 + (N - 500) * 4) / N:.2f}" in body.split('class="total"')[1]
    assert f'data-total-rows="{N}"' in body
    assert '<td class="colHide1">501</td>' in create_app().test_client().get(
        "/dbpub/SFClicount.asp?page=2").get_data(as_text=True)
