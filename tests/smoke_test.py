#!/usr/bin/env python3
"""Smoke test all Flask routes, report 500 errors."""
import sys
import re
import requests
from pathlib import Path
from urllib.parse import urlencode

BASE = "http://127.0.0.1:5001"

DBPUB_ROUTES_NO_PARAMS = [
    "/dbpub/",
    "/dbpub/FAQWWW.asp",
    "/dbpub/FAQW.asp",
    "/dbpub/payleague.asp",
    "/dbpub/boardcomp.asp",
    "/dbpub/DirsPerListcoHKdstn.asp",
    "/dbpub/FDirsPerListcoHKdstn.asp",
    "/dbpub/HKdirsTypeSex.asp",
    "/dbpub/DirsHKDistnPeople.asp",
    "/dbpub/INEDHKDistnCos.asp",
    "/dbpub/INEDHKDistnPeople.asp",
    "/dbpub/dirsHKPerPerson.asp",
    "/dbpub/DirsHKAgeDistn.asp",
    "/dbpub/latestdirsHK.asp",
    "/dbpub/leagueDirsHK.asp",
    "/dbpub/lirteams.asp",
    "/dbpub/listingtrend.asp",
    "/dbpub/domicile.asp",
    "/dbpub/domicilechange.asp",
    "/dbpub/namechangeHKlisted.asp",
    "/dbpub/yearend.asp",
    "/dbpub/reportspeed.asp",
    "/dbpub/hklistcowebs.asp",
    "/dbpub/hklistconowebs.asp",
    "/dbpub/listed.asp",
    "/dbpub/delisted.asp",
    "/dbpub/alltotrets.asp",
    "/dbpub/str.asp",
    "/dbpub/gemgrads.asp",
    "/dbpub/ctr.asp",
    "/dbpub/TRnotes.asp",
    "/dbpub/mcap.asp",
    "/dbpub/mcaphist.asp",
    "/dbpub/buybacksum.asp",
    "/dbpub/sdilatest.asp",
    "/dbpub/shortdate.asp",
    "/dbpub/rightsoo.asp",
    "/dbpub/splits.asp",
    "/dbpub/HKstocksByBoardLot.asp",
    "/dbpub/roles.asp",
    "/dbpub/auditorchanges.asp",
    "/dbpub/incHKannual.asp",
    "/dbpub/incHKmonth.asp",
    "/dbpub/incHKsurvive.asp",
    "/dbpub/incHKcaltype.asp",
    "/dbpub/disHKcaltype.asp",
    "/dbpub/oldestHKcos.asp",
    "/dbpub/regHKannual.asp",
    "/dbpub/incFcal.asp",
    "/dbpub/disFcal.asp",
    "/dbpub/namechangeHK.asp",
    "/dbpub/domregHK.asp",
    "/dbpub/incUKcaltype.asp",
    "/dbpub/SFClicount.asp",
    "/dbpub/SFCchanges.asp",
    "/dbpub/SFChistall.asp",
    "/dbpub/hksolsmoves.asp",
    "/dbpub/hksolfirms.asp",
    "/dbpub/hksols.asp",
    "/dbpub/hksolsadmhk.asp",
    "/dbpub/hksolsadmos.asp",
    "/dbpub/hksolsdom.asp",
    "/dbpub/hksolemps.asp",
    "/dbpub/HKDtender.asp",
    "/dbpub/EFBS.asp",
    "/dbpub/HKflights.asp",
    "/dbpub/HKflightscan.asp",
    "/dbpub/hkpax.asp",
    "/dbpub/landreg.asp",
    "/dbpub/lrvaluecats.asp",
    "/dbpub/veFR.asp",
    "/dbpub/vedet.asp",
    "/dbpub/vebrandhist.asp",
    "/dbpub/veFRtype.asp",
    "/dbpub/veFRtypehist.asp",
    "/dbpub/vefuel.asp",
    "/dbpub/vefuelhist.asp",
    "/dbpub/veengine.asp",
    "/dbpub/tuntraff.asp",
    "/dbpub/veJourneys.asp",
    "/dbpub/veJourneyhist.asp",
    "/dbpub/qt.asp",
    "/dbpub/ESStop.asp",
    "/dbpub/searchESS.asp",
    "/dbpub/vax.asp",
    "/dbpub/bornday.asp",
    "/dbpub/bornyear.asp",
    "/dbpub/judgments.asp",
    "/dbpub/prhdistricts.asp",
    "/dbpub/HKIDindex.asp",
    "/dbpub/jail.asp",
    "/dbpub/freecodesunder1000.asp",
    "/dbpub/govac.asp",
    "/dbpub/webbchips.asp",
    "/dbpub/shortsum.asp",
    "/dbpub/shortnotes.asp",
    "/dbpub/sdiNotes.asp",
    "/dbpub/leagueNotesD.asp",
    "/dbpub/leagueNotesA.asp",
    "/dbpub/mcaphistnotes.asp",
    "/dbpub/auditornotes.asp",
    "/dbpub/govacNotes.asp",
    "/dbpub/LIRteamNotes.asp",
    "/dbpub/indexhk.asp",
    "/dbpub/cosperdomHK.asp",
    "/dbpub/advbyrole.asp",
    "/dbpub/advltsnap.asp",
    "/dbpub/complain.asp",
    "/dbpub/ESSraw.asp",
    "/dbpub/hpu.asp",
    "/dbpub/holdings.asp",
    "/dbpub/outstanding.asp",
    "/dbpub/overlap.asp",
    "/dbpub/possum.asp",
    "/dbpub/matches.asp",
]

CCASS_ROUTES_NO_PARAMS = [
    "/ccass/bigchanges.asp",
    "/ccass/cconc.asp",
    "/ccass/ipstakes.asp",
    "/ccass/cparticipants.asp",
    "/ccass/CCASSnotes.asp",
]

DBPUB_ROUTES_WITH_PARAMS = [
    ("/dbpub/chart.asp", {"c": "1"}),
    ("/dbpub/chart.asp", {"c": "2"}),
    ("/dbpub/chart.asp", {"c": "3"}),
    ("/dbpub/chart.asp", {"c": "4"}),
    ("/dbpub/chart.asp", {"c": "5"}),
    ("/dbpub/chart.asp", {"c": "6"}),
    ("/dbpub/chart.asp", {"c": "7"}),
    ("/dbpub/chart.asp", {"c": "8"}),
    ("/dbpub/chart.asp", {"c": "9"}),
    ("/dbpub/chart.asp", {"c": "10"}),
    ("/dbpub/chart.asp", {"c": "11"}),
    ("/dbpub/chart.asp", {"c": "13"}),
    ("/dbpub/chart.asp", {"c": "14"}),
    ("/dbpub/cat.asp", {"c": "2"}),
    ("/dbpub/cat.asp", {"c": "3"}),
    ("/dbpub/cat.asp", {"c": "4"}),
    ("/dbpub/cat.asp", {"c": "6"}),
    ("/dbpub/cat.asp", {"c": "7"}),
    ("/dbpub/cat.asp", {"c": "27"}),
    ("/dbpub/cat.asp", {"c": "72"}),
    ("/dbpub/cat.asp", {"c": "81"}),
    ("/dbpub/searchorgs.asp", {"n": "Tencent"}),
    ("/dbpub/searchorgs.asp", {"n": "HSBC"}),
    ("/dbpub/searchorgs.asp", {"n": "China", "st": "a"}),
    ("/dbpub/searchpeople.asp", {"n1": "Li", "n2": "Ka"}),
    ("/dbpub/searchpeople.asp", {"n1": "Chan"}),
    ("/dbpub/code.asp", {"code": "5"}),
    ("/dbpub/code.asp", {"code": "9"}),
    ("/dbpub/code.asp", {"code": "700"}),
    ("/dbpub/code.asp", {"code": "1"}),
    ("/dbpub/code.asp", {"code": "388"}),
    ("/dbpub/orgdata.asp", {"code": "5"}),
    ("/dbpub/orgdata.asp", {"code": "700"}),
    ("/dbpub/orgdata.asp", {"code": "1"}),
    ("/dbpub/orgdata.asp", {"code": "388"}),
    ("/dbpub/orgdata.asp", {"code": "941"}),
    ("/dbpub/orgdata.asp", {"p": "382"}),
    ("/dbpub/orgdata.asp", {"p": "21290"}),
    ("/dbpub/officers.asp", {"p": "24855630"}),
    ("/dbpub/officers.asp", {"p": "382"}),
    ("/dbpub/officers.asp", {"p": "21290"}),
    ("/dbpub/positions.asp", {"p": "24855630"}),
    ("/dbpub/positions.asp", {"p": "105"}),
    ("/dbpub/positions.asp", {"p": "135"}),
    ("/dbpub/advisers.asp", {"p": "24855630"}),
    ("/dbpub/advisers.asp", {"p": "382"}),
    ("/dbpub/natperson.asp", {"p": "105"}),
    ("/dbpub/natperson.asp", {"p": "148"}),
    ("/dbpub/natperson.asp", {"p": "135"}),
    ("/dbpub/natperson.asp", {"p": "2"}),
    ("/dbpub/natperson.asp", {"p": "40"}),
    ("/dbpub/events.asp", {"i": "1088"}),
    ("/dbpub/events.asp", {"p": "382"}),
    ("/dbpub/events.asp", {"i": "3601"}),
    ("/dbpub/events.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/events.asp", {"i": "1088", "fd": "2020-01-01", "td": "2020-12-31"}),
    ("/dbpub/holders.asp", {"i": "1088"}),
    ("/dbpub/holders.asp", {"i": "3601"}),
    ("/dbpub/holders.asp", {"i": "2516"}),
    ("/dbpub/quotes.asp", {"i": "1088"}),
    ("/dbpub/quotes.asp", {"i": "3601"}),
    ("/dbpub/quotes.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/prices.asp", {"i": "1088"}),
    ("/dbpub/prices.asp", {"i": "3601"}),
    ("/dbpub/pricesCSV.asp", {"i": "1088"}),
    ("/dbpub/listed.asp", {"sort": "codeup"}),
    ("/dbpub/listed.asp", {"sort": "namedn"}),
    ("/dbpub/delisted.asp", {"sort": "codeup"}),
    ("/dbpub/delisted.asp", {"sort": "datedn"}),
    ("/dbpub/alltotrets.asp", {"fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/sdilatest.asp", {"sort": "stakdn"}),
    ("/dbpub/sdilatest.asp", {"d": "2024-06-01"}),
    ("/dbpub/sdidir.asp", {"p": "105"}),
    ("/dbpub/sdidirco.asp", {"p": "382"}),
    ("/dbpub/sdiissue.asp", {"i": "1088"}),
    ("/dbpub/sdicap.asp", {"i": "1088"}),
    ("/dbpub/short.asp", {"sc": "5"}),
    ("/dbpub/short.asp", {"sc": "700"}),
    ("/dbpub/shortdate.asp", {"d": "2024-06-14"}),
    ("/dbpub/shortdate.asp", {"d": "2023-12-29"}),
    ("/dbpub/buybacks.asp", {"i": "1088"}),
    ("/dbpub/buybacks.asp", {"d": "2024-06-01"}),
    ("/dbpub/buybackstime.asp", {"i": "1088"}),
    ("/dbpub/buybackstime.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/domicilecos.asp", {"d": "HK"}),
    ("/dbpub/domicilecos.asp", {"d": "CI"}),
    ("/dbpub/cosperdomHK.asp", {"d": "HK"}),
    ("/dbpub/govacsearch.asp", {"n": "finance"}),
    ("/dbpub/govacCSV.asp", {"n": "finance"}),
    ("/dbpub/SFChistfirm.asp", {"p": "374"}),
    ("/dbpub/SFChistfirm.asp", {"p": "395"}),
    ("/dbpub/sfclicrec.asp", {"p": "40"}),
    ("/dbpub/sfclicrec.asp", {"p": "90"}),
    ("/dbpub/SFClicensees.asp", {"act": "1"}),
    ("/dbpub/SFClicensees.asp", {"act": "9"}),
    ("/dbpub/incHKannual.asp", {"y": "2023"}),
    ("/dbpub/incHKmonth.asp", {"y": "2023"}),
    ("/dbpub/incHKcaltype.asp", {"y": "2023"}),
    ("/dbpub/disHKcaltype.asp", {"y": "2023"}),
    ("/dbpub/incUKcaltype.asp", {"y": "2023"}),
    ("/dbpub/auditorchanges.asp", {"y": "2023"}),
    ("/dbpub/reportspeed.asp", {"y": "2023"}),
    ("/dbpub/listingtrend.asp", {"y": "2023"}),
    ("/dbpub/adviserships.asp", {"p": "382"}),
    ("/dbpub/advbyrole.asp", {"r": "1"}),
    ("/dbpub/advltsnap.asp", {"r": "1"}),
    ("/dbpub/splits.asp", {"i": "1088"}),
    ("/dbpub/yearend.asp", {"m": "12"}),
    ("/dbpub/boardcomp.asp", {"sort": "nameup"}),
    ("/dbpub/prhdistricts.asp", {"d": "HK"}),
]

CCASS_ROUTES_WITH_PARAMS = [
    ("/ccass/cholder.asp", {"part": "1323"}),
    ("/ccass/cholder.asp", {"part": "1456"}),
    ("/ccass/cholder.asp", {"part": "7"}),
    ("/ccass/cholder.asp", {"part": "8"}),
    ("/ccass/bigchangesissue.asp", {"i": "1088"}),
    ("/ccass/bigchangesissue.asp", {"i": "3601"}),
    ("/ccass/choldings.asp", {"i": "1088"}),
    ("/ccass/choldings.asp", {"i": "3601"}),
    ("/ccass/bigchangespart.asp", {"part": "1323"}),
    ("/ccass/bigchangespart.asp", {"part": "7"}),
    ("/ccass/brokhist.asp", {"part": "7", "i": "1088"}),
    ("/ccass/brokhist.asp", {"part": "1323", "i": "1088"}),
    ("/ccass/cconchist.asp", {"i": "1088"}),
    ("/ccass/cconchist.asp", {"i": "3601"}),
    ("/ccass/ctothist.asp", {"i": "1088"}),
    ("/ccass/ctothist.asp", {"i": "3601"}),
    ("/ccass/nciphist.asp", {"i": "1088"}),
    ("/ccass/nciphist.asp", {"i": "3601"}),
    ("/ccass/chistory.asp", {"i": "1088", "part": "1323"}),
    ("/ccass/chistory.asp", {"i": "1088", "part": "7"}),
    ("/ccass/bigchanges.asp", {"d": "2024-06-01"}),
    ("/ccass/bigchanges.asp", {"d": "2023-12-01"}),
    ("/ccass/bigchangesissue.asp", {"i": "1088", "d": "2024-06-01"}),
    ("/ccass/cconc.asp", {"d": "2024-06-01"}),
    ("/ccass/ipstakes.asp", {"d": "2024-06-01"}),
    ("/ccass/choldings.asp", {"i": "1088", "d": "2024-06-01"}),
    ("/ccass/cholder.asp", {"part": "1323", "d": "2024-06-01"}),
    ("/ccass/cholder.asp", {"part": "7", "d": "2024-06-01"}),
]

def main():
    urls = []
    for r in DBPUB_ROUTES_NO_PARAMS:
        urls.append(r)
    for r in CCASS_ROUTES_NO_PARAMS:
        urls.append(r)
    for r, params in DBPUB_ROUTES_WITH_PARAMS:
        urls.append(f"{r}?{urlencode(params)}")
    for r, params in CCASS_ROUTES_WITH_PARAMS:
        urls.append(f"{r}?{urlencode(params)}")

    errors_500 = []
    errors_other = []
    ok = 0

    for url in urls:
        full = f"{BASE}{url}"
        try:
            r = requests.get(full, timeout=30)
            if r.status_code == 500:
                errors_500.append(url)
                print(f"500  {url}")
            elif r.status_code >= 400:
                errors_other.append((url, r.status_code))
                print(f"{r.status_code}  {url}")
            else:
                ok += 1
        except Exception as e:
            errors_other.append((url, str(e)))
            print(f"ERR  {url}: {e}")

    print(f"\n{'='*60}")
    print(f"OK: {ok}  |  500 errors: {len(errors_500)}  |  Other errors: {len(errors_other)}")
    print(f"{'='*60}")

    if errors_500:
        print("\n=== 500 ERRORS ===")
        for url in errors_500:
            print(f"  {url}")

    if errors_other:
        print("\n=== OTHER ERRORS ===")
        for url, code in errors_other:
            print(f"  {code}  {url}")

    return len(errors_500)

if __name__ == "__main__":
    sys.exit(main())
