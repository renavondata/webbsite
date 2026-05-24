"""
Political campaigns and donations - port of dbpub/campaigns.asp and donations.asp
"""

from flask import Blueprint, render_template
from webbsite.asp_helpers import get_int, get_str
from webbsite.db import execute_query, execute_scalar

bp = Blueprint("dbpub_campaigns", __name__)


@bp.route("/campaigns.asp")
def campaigns():
    """List of political campaigns and their candidates - port of campaigns.asp"""
    sort = get_str("sort", "nameup")
    hide = get_str("hide", "")

    order_map = {
        "campup": "camptext",
        "campdn": "camptext DESC",
        "namedn": "name1 DESC, name2 DESC, camptext",
        "nameup": "name1, name2, camptext",
    }
    if sort not in order_map:
        sort = "nameup"
    ob = order_map[sort]

    rows = execute_query(
        f"""
        SELECT c.campid, c.camptext, c.recipient, p.name1, p.name2
        FROM enigma.campaign c
        JOIN enigma.people p ON c.recipient = p.personid
        ORDER BY {ob}
        """
    )

    return render_template("dbpub/campaigns.html", campaigns=rows, sort=sort, hide=hide)


@bp.route("/donations.asp")
def donations():
    """Donations to a political campaign - port of donations.asp.

    The original read from the WebDonsByCampaign view (not migrated); reproduced
    here against the base tables: resolve each donor (org or person) to a name and
    persontype, and the currency code.
    """
    camp = get_int("camp", 0)
    sort1 = get_str("sort1", "nameup")
    hide = get_str("hide", "")

    order_map = {
        "amntup": "donamnt, name",
        "amntdn": "donamnt DESC, name",
        "namedn": "name DESC, donamnt",
        "nameup": "name, donamnt",
    }
    if sort1 not in order_map:
        sort1 = "nameup"
    order_by = order_map[sort1]

    camp_text = execute_scalar(
        "SELECT camptext FROM enigma.campaign WHERE campid = %s", (camp,)
    )

    rows = execute_query(
        f"""
        SELECT d.donamnt,
               cur.currency,
               COALESCE(o.name1, p.name1 || COALESCE(', ' || p.name2, '')) AS name,
               CASE WHEN o.personid IS NOT NULL THEN 'O' ELSE 'P' END AS persontype,
               d.donor AS personid
        FROM enigma.donations d
        LEFT JOIN enigma.organisations o ON d.donor = o.personid
        LEFT JOIN enigma.people p ON d.donor = p.personid
        JOIN enigma.currencies cur ON d.doncurr = cur.id
        WHERE d.campaign = %s
        ORDER BY {order_by}
        """,
        (camp,),
    )

    return render_template(
        "dbpub/donations.html",
        donations=rows,
        camp=camp,
        camp_text=camp_text,
        sort1=sort1,
        hide=hide,
    )
