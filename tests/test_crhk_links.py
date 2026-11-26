"""crhk.guru links on the pages Google shows most (renavondata/webbsite#133).

officers.asp, positions.asp and natperson.asp's holdings link a Hong Kong company to its
crhk.guru page, chosen by ``crhk_org_url`` exactly as orgdata.asp's banner chooses. No database:
the helper is pure, and the templates are rendered with hand-made rows.
"""

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from jinja2 import ChainableUndefined

from test_render_parity import _app, _render
from webbsite.crhk import crhk_org_url

BRN_URL = "https://crhk.guru/company/brn/13937424"
CR_URL = "https://crhk.guru/company/0001234"


def test_crhk_org_url_is_hk_only_incid_first_then_crn():
    assert crhk_org_url(1, "13937424", "1234") == BRN_URL
    assert crhk_org_url(1, None, "1234") == CR_URL
    assert crhk_org_url(1, "not a number", "1234") == CR_URL
    assert crhk_org_url(2, "13937424", "1234") is None  # not domiciled in HK
    assert crhk_org_url(None, "13937424", None) is None
    assert crhk_org_url(1, None, None) is None
    assert crhk_org_url(1, "<script>", "x'y") is None  # the allowlist still decides


def _page(name, path, extra):
    app = _app()
    env = app.jinja_env.overlay(undefined=ChainableUndefined)
    return _render(app, env, name, path, extra)


def test_officers_links_the_company():
    html = _page("dbpub/officers.html", "/dbpub/officers.asp?p=1", {"person_id": 1, "org_name": "ACME LIMITED",
                                                                    "crhk_url": BRN_URL})
    assert f'href="{BRN_URL}"' in html and "registry profile" in html
    plain = _page("dbpub/officers.html", "/dbpub/officers.asp?p=1", {"person_id": 1, "org_name": "ACME LIMITED",
                                                                     "crhk_url": None})
    assert "crhk.guru" not in plain


def _position(company, crhk_url):
    return {"company": company, "name1": f"CO {company}", "orgname": None, "posshort": "Dir", "poslong": "Director",
            "apptdate": None, "resdate": None, "is_first_row": True, "row_num": 1, "is_listed": 0,
            "crhk_url": crhk_url}


def test_positions_link_each_hk_company_once():
    rank = {"rank_text": "Main board", "has_returns": False,
            "positions": [_position(1, BRN_URL), _position(2, None), dict(_position(1, BRN_URL), is_first_row=False)]}
    html = _page("dbpub/positions.html", "/dbpub/positions.asp?p=9", {"p": 9, "person_name": "CHAN, Tai Man",
                                                                      "rank_data": [rank]})
    assert html.count(f'href="{BRN_URL}"') == 1  # first row only, like the company name
    assert html.count('class="crhk"') == 1


def test_natperson_holdings_link_hk_companies():
    holdings = [{"issuer": 1, "name": "ACME LIMITED", "orgtype": 0, "typeshort": "O", "stakecomp": 0.5,
                 "crhk_url": CR_URL},
                {"issuer": 2, "name": "FOREIGN CO", "orgtype": 0, "typeshort": "O", "stakecomp": 0.1,
                 "crhk_url": None}]
    html = _page("dbpub/natperson.html", "/dbpub/natperson.asp?p=9", {"person_id": 9, "person_name": "CHAN, Tai Man",
                                                                      "holdings_list": holdings})
    if html.startswith("!!"):
        raise AssertionError(f"natperson.html did not render: {html}")
    assert html.count(f'href="{CR_URL}"') == 1
    assert html.count('class="crhk"') == 1
