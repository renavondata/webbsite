"""Shared navigation-context builders.

The org/stock pages (buybacks, short, dealings, total-return …) and the person
pages (natperson, dealings-by-director …) all render the same orgBar / stockBar
/ humanBar navigation. Rather than duplicate ~130 lines of existence-check
queries in every route, the SDI and short-selling pages build their nav context
here and render it via the shared ``includes/stockbar.html`` / ``includes/humanbar.html``
partials. The queries mirror the inline logic in ``buybacks.py`` and ``people.natperson``.
"""

from datetime import date as _date

from webbsite.db import execute_query

_CCASS_CUTOFF = _date(2007, 6, 26)
# Exchanges treated as HK listings for the HKlistings table / stockBar.
_HK_EXCHANGES = (1, 20, 22, 23, 38, 71)


def _exists(sql, params):
    try:
        return bool(execute_query(sql, params)[0]["exists"])
    except Exception:
        return False


def _org_flags(org_id):
    """orgBar existence flags for an organisation personID (shared by stock_nav
    for the issuer and org_nav for an org filer)."""
    nf = {}
    if not org_id:
        return nf
    nf["has_directorships"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.directorships WHERE Company=%s) AS exists", (org_id,))
    nf["has_pay"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE docTypeID=0 AND pay AND orgid=%s) AS exists", (org_id,))
    nf["has_advisers"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Company=%s) AS exists", (org_id,))
    nf["has_adviserships"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.adviserships WHERE Adviser=%s) AS exists", (org_id,))
    nf["has_sfc_licenses"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.olicrec WHERE orgid=%s) AS exists", (org_id,))
    nf["has_documents"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.documents WHERE orgid=%s) AS exists", (org_id,))
    nf["has_ess"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.ess WHERE orgid=%s) AS exists", (org_id,))
    nf["has_stories"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.personstories WHERE personid=%s) AS exists", (org_id,))
    nf["has_lir_team"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.lirorgteam WHERE orgid=%s) AS exists", (org_id,)) or (org_id == 9643)
    try:
        pr = execute_query(
            "SELECT partID FROM ccass.participants WHERE personid=%s LIMIT 1", (org_id,))
        nf["ccass_part_id"] = pr[0]["partid"] if pr else None
    except Exception:
        nf["ccass_part_id"] = None
    return nf


def org_nav(org_id):
    """Build orgBar context for an organisation: name + nav_flags."""
    ctx = {"name": "", "org_id": org_id, "nav_flags": {}}
    if not org_id:
        return ctx
    try:
        r = execute_query(
            "SELECT name1 FROM enigma.organisations WHERE personid=%s", (org_id,))
        if r:
            ctx["name"] = r[0]["name1"]
    except Exception:
        pass
    ctx["nav_flags"] = _org_flags(org_id)
    return ctx


def stock_nav(issue_id):
    """Build orgBar + stockBar context for an issue.

    Returns a dict with org_id, stock_name, nav_flags, listings_data (each row
    gains ``stockcode_formatted``), sec_type, stock_ex_id, delist_date — the
    same names ``buybacks.html`` and the shared stockbar partial expect.
    """
    ctx = {
        "org_id": 0,
        "stock_name": "",
        "nav_flags": {},
        "listings_data": [],
        "sec_type": None,
        "stock_ex_id": None,
        "delist_date": None,
    }
    if not issue_id:
        return ctx

    try:
        r = execute_query(
            """SELECT o.name1, o.personid, st.typeShort,
                      COALESCE(c.currency, 'HKD') AS currency
               FROM enigma.issue i
               JOIN enigma.organisations o ON i.issuer = o.personid
               JOIN enigma.secTypes st ON i.typeID = st.typeID
               LEFT JOIN enigma.currencies c ON i.SEHKcurr = c.id
               WHERE i.ID1 = %s""",
            (issue_id,),
        )
        if r:
            name = f"{r[0]['name1']}: {r[0]['typeshort']}"
            if r[0].get("currency"):
                name += f" {r[0]['currency']}"
            ctx["stock_name"] = name
            ctx["org_id"] = r[0]["personid"]
    except Exception:
        pass

    org_id = ctx["org_id"]
    nf = ctx["nav_flags"]
    nf.update(_org_flags(org_id))

    try:
        si = execute_query(
            """SELECT i.typeID, sl.stockExID, sl.delistDate
               FROM enigma.issue i
               LEFT JOIN enigma.stockListings sl ON i.ID1 = sl.issueid
               WHERE i.ID1=%s AND sl.stockExID IN (1,20,22,23,38,71)
               ORDER BY sl.delistDate LIMIT 1""",
            (issue_id,),
        )
        if si:
            ctx["sec_type"] = si[0]["typeid"]
            ctx["stock_ex_id"] = si[0]["stockexid"]
            ctx["delist_date"] = si[0]["delistdate"]
    except Exception:
        pass

    nf["has_outstanding"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.issuedshares WHERE issueid=%s) AS exists", (issue_id,))
    nf["has_short"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.sfcshort WHERE issueid=%s) AS exists", (issue_id,))
    nf["has_sdi"] = _exists(
        "SELECT EXISTS(SELECT 1 FROM enigma.sdi WHERE issueid=%s) AS exists", (issue_id,))
    nf["ccass_on"] = ctx["sec_type"] not in (2, 40, 41) and (
        ctx["delist_date"] is None or ctx["delist_date"] >= _CCASS_CUTOFF)

    try:
        ld = execute_query(
            """SELECT l.shortName AS exchange_name, sl.stockCode,
                      sl.firstTradeDate, sl.finalTradeDate, sl.delistDate, sl.stockId
               FROM enigma.stockListings sl
               JOIN enigma.listings l ON sl.stockExID = l.stockExID
               WHERE sl.issueid=%s AND sl.stockExID IN (1,20,22,23,38,71)
               ORDER BY sl.firstTradeDate""",
            (issue_id,),
        )
        for x in ld:
            x["stockcode_formatted"] = str(x["stockcode"]).zfill(5) if x.get("stockcode") else ""
        ctx["listings_data"] = ld
    except Exception:
        pass

    return ctx


def person_nav(person_id):
    """Build humanBar context for a person: person_name, is_org, nav_flags."""
    ctx = {"person_name": "", "is_org": False, "nav_flags": {}}
    if not person_id:
        return ctx
    try:
        r = execute_query(
            """SELECT COALESCE(o.name1, CONCAT(p.name1,
                        CASE WHEN p.name2 IS NOT NULL THEN ', ' || p.name2 ELSE '' END)) AS name,
                      CASE WHEN o.name1 IS NOT NULL THEN TRUE ELSE FALSE END AS is_org,
                      EXISTS(SELECT 1 FROM enigma.directorships WHERE director=%s) AS has_positions,
                      EXISTS(SELECT 1 FROM enigma.directorships d
                             JOIN enigma.documents a ON d.company=a.orgid
                             WHERE a.doctypeid=0 AND d.director=%s) AS has_pay,
                      EXISTS(SELECT 1 FROM enigma.sdi WHERE dir=%s) AS has_sdi,
                      (SELECT partid FROM ccass.participants WHERE personid=%s LIMIT 1) AS ccass_part_id,
                      EXISTS(SELECT 1 FROM enigma.personstories WHERE personid=%s) AS has_stories
               FROM enigma.persons ps
               LEFT JOIN enigma.organisations o ON ps.personid=o.personid
               LEFT JOIN enigma.people p ON ps.personid=p.personid
               WHERE ps.personid=%s""",
            (person_id, person_id, person_id, person_id, person_id, person_id),
        )
        if r:
            ctx["person_name"] = r[0]["name"]
            ctx["is_org"] = r[0]["is_org"]
            ctx["nav_flags"] = {
                "has_positions": r[0]["has_positions"],
                "has_pay": r[0]["has_pay"],
                "has_sdi": r[0]["has_sdi"],
                "ccass_part_id": r[0]["ccass_part_id"],
                "has_stories": r[0]["has_stories"],
            }
    except Exception:
        pass
    return ctx
