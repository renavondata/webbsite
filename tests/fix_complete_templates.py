#!/usr/bin/env python3
"""Complete fix for ALL url_for references - using full route mappings"""

import re
from pathlib import Path

# Complete route mappings from find_route_mappings.py
ROUTE_MAPPINGS = {
    "advisers": "dbpub_corporate.advisers",
    "adviserships": "dbpub_statistics.adviserships",
    "advltsnap": "dbpub_statistics.advltsnap",
    "alltotrets": "dbpub_market_data.alltotrets",
    "articles": "dbpub_articles.articles",
    "articles_year": "dbpub_articles.articles_year",
    "artlinks": "dbpub_articles.artlinks",
    "auditor_notes": "dbpub_statistics.auditor_notes",
    "auditorchanges": "dbpub_statistics.auditorchanges",
    "boardcomp": "dbpub_statistics.boardcomp",
    "bornday": "dbpub_statistics.bornday",
    "bornyear": "dbpub_statistics.bornyear",
    "buybacks": "dbpub_buybacks.buybacks",
    "buybacks_time": "dbpub_buybacks.buybacks_time",
    "buybacksum": "dbpub_buybacks.buybacksum",
    "cat": "dbpub_articles.cat",
    "chart": "dbpub_market_data.chart",
    "code": "dbpub_listings.code",
    "complain": "dbpub_statistics.complain",
    "cosperdomhk": "dbpub_statistics.cosperdomhk",
    "csv": "dbpub_statistics.csv",
    "ctr": "dbpub_statistics.ctr",
    "delisted": "dbpub_listings.delisted",
    "dirs_hk_age_distn": "dbpub_statistics.dirs_hk_age_distn",
    "dirs_hk_distn_people": "dbpub_statistics.dirs_hk_distn_people",
    "dirs_hk_per_person": "dbpub_statistics.dirs_hk_per_person",
    "dirs_per_listco_hk": "dbpub_statistics.dirs_per_listco_hk",
    "disfcal": "dbpub_incorporations.disfcal",
    "dishkcaltype": "dbpub_incorporations.dishkcaltype",
    "docs": "dbpub_events.docs",
    "domicile": "dbpub_incorporations.domicile",
    "domicile_change": "dbpub_incorporations.domicile_change",
    "domicilecos": "dbpub_incorporations.domicilecos",
    "domreghk": "dbpub_incorporations.domreghk",
    "efbs": "dbpub_statistics.efbs",
    "enigma_events": "dbpub_events.enigma_events",
    "enigma_orgdata": "dbpub_statistics.enigma_orgdata",
    "enigma_positions": "dbpub_statistics.enigma_positions",
    "essraw": "dbpub_statistics.essraw",
    "esstop": "dbpub_statistics.esstop",
    "eventdets": "dbpub_events.eventdets",
    "events": "dbpub_events.events",
    "faq_w": "dbpub_statistics.faq_w",
    "faq_www": "dbpub_statistics.faq_www",
    "fdirsperlistcohkdstn": "dbpub_statistics.fdirsperlistcohkdstn",
    "freecodesunder1000": "dbpub_statistics.freecodesunder1000",
    "functions1": "dbpub_statistics.functions1",
    "gemgrads": "dbpub_statistics.gemgrads",
    "govac": "dbpub_statistics.govac",
    "govac_csv": "dbpub_statistics.govac_csv",
    "govac_notes": "dbpub_statistics.govac_notes",
    "hk_dirs_type_sex": "dbpub_statistics.hk_dirs_type_sex",
    "hk_sol_emps": "dbpub_solicitors.hk_sol_emps",
    "hk_sol_firms": "dbpub_solicitors.hk_sol_firms",
    "hk_sols": "dbpub_solicitors.hk_sols",
    "hk_sols_moves": "dbpub_solicitors.hk_sols_moves",
    "hk_stocks_by_board_lot": "dbpub_statistics.hk_stocks_by_board_lot",
    "hkbrcheck": "dbpub_statistics.hkbrcheck",
    "hkdtender": "dbpub_statistics.hkdtender",
    "hkflights": "dbpub_statistics.hkflights",
    "hkflightscan": "dbpub_statistics.hkflightscan",
    "hkidindex": "dbpub_statistics.hkidindex",
    "hklistconowebs": "dbpub_statistics.hklistconowebs",
    "hklistcowebs": "dbpub_statistics.hklistcowebs",
    "hkpax": "dbpub_statistics.hkpax",
    "hksolemps": "dbpub_solicitors.hksolemps",
    "hksolfirms": "dbpub_solicitors.hksolfirms",
    "hksols": "dbpub_solicitors.hksols",
    "hksolsadmhk": "dbpub_solicitors.hksolsadmhk",
    "hksolsadmos": "dbpub_solicitors.hksolsadmos",
    "hksolsdom": "dbpub_solicitors.hksolsdom",
    "hksolsmoves_lowercase": "dbpub_solicitors.hksolsmoves_lowercase",
    "holders": "dbpub_corporate.holders",
    "holdings": "dbpub_corporate.holdings",
    "hpu": "dbpub_statistics.hpu",
    "inc_hk_annual": "dbpub_incorporations.inc_hk_annual",
    "incfcal": "dbpub_incorporations.incfcal",
    "inchkcaltype": "dbpub_incorporations.inchkcaltype",
    "inchkmonth": "dbpub_incorporations.inchkmonth",
    "inchksurvive": "dbpub_incorporations.inchksurvive",
    "incukcaltype": "dbpub_incorporations.incukcaltype",
    "index": "dbpub_index.index",
    "indexhk": "dbpub_statistics.indexhk",
    "inedhkdstncos": "dbpub_statistics.inedhkdstncos",
    "inedhkdstnpeople": "dbpub_statistics.inedhkdstnpeople",
    "jail": "dbpub_statistics.jail",
    "judgments": "dbpub_statistics.judgments",
    "landreg": "dbpub_statistics.landreg",
    "latest_dirs_hk": "dbpub_statistics.latest_dirs_hk",
    "league_dirs_hk": "dbpub_statistics.league_dirs_hk",
    "lir_team_notes": "dbpub_statistics.lir_team_notes",
    "lirteams": "dbpub_statistics.lirteams",
    "listed": "dbpub_listings.listed",
    "listingtrend": "dbpub_statistics.listingtrend",
    "lrvaluecats": "dbpub_statistics.lrvaluecats",
    "matches": "dbpub_statistics.matches",
    "mcap": "dbpub_market_data.mcap",
    "mcaphist": "dbpub_market_data.mcaphist",
    "namechange_hk": "dbpub_statistics.namechange_hk",
    "namechange_hk_listed": "dbpub_statistics.namechange_hk_listed",
    "natperson": "dbpub_people.natperson",
    "navbars": "dbpub_statistics.navbars",
    "officers": "dbpub_corporate.officers",
    "oldest_hk_cos": "dbpub_incorporations.oldest_hk_cos",
    "orgdata": "dbpub_statistics.orgdata",
    "outstanding": "dbpub_statistics.outstanding",
    "overlap": "dbpub_statistics.overlap",
    "pay": "dbpub_statistics.pay",
    "payleague": "dbpub_statistics.payleague",
    "payleague_org": "dbpub_statistics.payleague_org",
    "positions": "dbpub_corporate.positions",
    "possum": "dbpub_statistics.possum",
    "prh_blocks": "dbpub_statistics.prh_blocks",
    "prh_estates": "dbpub_statistics.prh_estates",
    "prhdistricts": "dbpub_statistics.prhdistricts",
    "pricescsv": "dbpub_statistics.pricescsv",
    "qt": "dbpub_statistics.qt",
    "reghkannual": "dbpub_incorporations.reghkannual",
    "reportspeed": "dbpub_statistics.reportspeed",
    "rightsoo": "dbpub_statistics.rightsoo",
    "roles": "dbpub_statistics.roles",
    "sdi_notes": "dbpub_sdi.sdi_notes",
    "sdicap": "dbpub_sdi.sdicap",
    "sdidir": "dbpub_sdi.sdidir",
    "sdidirco": "dbpub_sdi.sdidirco",
    "sdiissue": "dbpub_sdi.sdiissue",
    "sdilatest": "dbpub_sdi.sdilatest",
    "searchess": "dbpub_statistics.searchess",
    "searchorgs": "dbpub_people.searchorgs",
    "searchpeople": "dbpub_people.searchpeople",
    "sfc_changes": "dbpub_sfc.sfc_changes",
    "sfc_hist_all": "dbpub_sfc.sfc_hist_all",
    "sfc_hist_firm": "dbpub_sfc.sfc_hist_firm",
    "sfc_licensees": "dbpub_sfc.sfc_licensees",
    "sfc_licount": "dbpub_sfc.sfc_licount",
    "sfcolicrec": "dbpub_sfc.sfcolicrec",
    "short": "dbpub_short_selling.short",
    "short_notes": "dbpub_short_selling.short_notes",
    "shortdate": "dbpub_short_selling.shortdate",
    "shortsum": "dbpub_short_selling.shortsum",
    "splits": "dbpub_corporate.splits",
    "str_route": "dbpub_statistics.str_route",
    "subject": "dbpub_articles.subject",
    "tr_notes": "dbpub_statistics.tr_notes",
    "tuntraff": "dbpub_transport.tuntraff",
    "vax": "dbpub_transport.vax",
    "vebrandhist": "dbpub_transport.vebrandhist",
    "vedet": "dbpub_transport.vedet",
    "veengine": "dbpub_transport.veengine",
    "vefr": "dbpub_transport.vefr",
    "vefrtype": "dbpub_transport.vefrtype",
    "vefrtypehist": "dbpub_transport.vefrtypehist",
    "vefuel": "dbpub_transport.vefuel",
    "vefuelhist": "dbpub_transport.vefuelhist",
    "vejourneyhist": "dbpub_transport.vejourneyhist",
    "vejourneys": "dbpub_transport.vejourneys",
    "webbchips": "dbpub_statistics.webbchips",
    "websites": "dbpub_statistics.websites",
    "yearend": "dbpub_statistics.yearend",
}

def fix_template(template_path):
    """Fix all url_for references in a template"""
    try:
        content = template_path.read_text()
        original_content = content
        changes = 0

        for route_name, correct_endpoint in ROUTE_MAPPINGS.items():
            # Pattern: url_for('dbpub.route_name'
            pattern = rf"url_for\('dbpub\.{re.escape(route_name)}'"
            replacement = f"url_for('{correct_endpoint}'"

            new_content = re.sub(pattern, replacement, content)
            if new_content != content:
                count = len(re.findall(pattern, content))
                changes += count
                content = new_content

        if content != original_content:
            template_path.write_text(content)
            return changes
        return 0
    except Exception as e:
        print(f"Error: {template_path}: {e}")
        return 0

def main():
    templates_dir = Path("webbsite/templates")
    total_changes = 0
    files_changed = 0

    print("Fixing ALL url_for references in templates...")
    print()

    for template_path in sorted(templates_dir.rglob("*.html")):
        changes = fix_template(template_path)
        if changes > 0:
            rel_path = template_path.relative_to(templates_dir)
            print(f"  {rel_path}: {changes} fix(es)")
            total_changes += changes
            files_changed += 1

    print()
    print(f"TOTAL: {total_changes} fixes in {files_changed} files")

if __name__ == "__main__":
    main()
