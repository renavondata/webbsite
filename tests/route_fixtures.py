"""The archived ASP route fixtures: every dbpub/ and ccass/ page with the query
parameters that render real data. Pure data, no imports, so the route-health
gate (check_all_routes.py) and the daily invariants job on the box can use it
with nothing but the standard library. Lifted verbatim from crawl_asp.py, which
still imports it under the same names.

One entry per page is enough here. check_all_routes.py multiplies each of these
out by every ?sort= value the route accepts (sort_fixtures.py reads those out of
the route source), so a page listed once with parameters that render real data
gets all of its column-header links exercised. That is why a fixture whose
parameters render an *empty* page is worse than none: it passes every check
while testing nothing.
"""

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
    # --- NEW: missing no-param routes ---
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
    # --- Sort-sweep coverage: reached only from another page's links, so these
    # had no fixture and none of their sort values had ever been requested. ---
    "/dbpub/HKsolfirms.asp",
    "/dbpub/HKsolsmoves.asp",
    "/dbpub/HKsolemps.asp",
]

# ============================================================
# Parameterized dbpub routes
# ============================================================
# Key IDs from database:
#   HSBC: personID=382, issueID=1088, code=0005
#   CKH:  personID=488, issueID=44, code=0001
#   CLP:  personID=341, issueID=63, code=0002
#   Tencent: personID=21290, issueID=3601, code=0700
#   HKEX: personID=9643, issueID=2516, code=0388
#   AIA:  personID=61400, issueID=6325, code=1299
#   Tracker Fund: personID=51819, issueID=5295, code=2800
#   SHK Props: personID=417, issueID=9, code=0016
#   MTR: personID=11569, issueID=2638, code=0066
#   Hang Seng Bank: personID=395, issueID=14, code=0011
#   China Mobile: personID=4800, issueID=998, code=0941
#   Alibaba: personID=1852090, issueID=11742, code=9988
#
#   People: 105 (Au, Alexander Siu Kee), 148 (Lee, Charles),
#           135 (Lee, Shau Kee), 2 (Kadoorie, Michael David),
#           40 (Chan, Stephen Kai Cheuk, SFC), 90 (Coull, Gary, SFC)
#
#   SFC firms: 374 (HSBC), 377 (BEA), 395 (Hang Seng Bank)
#
#   CCASS participants: 7 (HSBC Broking), 8 (JP Morgan), 1323 (Shanghai Connect),
#                       1456 (Shenzhen Connect), 100 (Tung Tai)

DBPUB_ROUTES_WITH_PARAMS = [
    # --- Charts ---
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

    # --- Categories ---
    ("/dbpub/cat.asp", {"c": "2"}),
    ("/dbpub/cat.asp", {"c": "3"}),
    ("/dbpub/cat.asp", {"c": "4"}),
    ("/dbpub/cat.asp", {"c": "6"}),
    ("/dbpub/cat.asp", {"c": "7"}),
    ("/dbpub/cat.asp", {"c": "27"}),
    ("/dbpub/cat.asp", {"c": "72"}),
    ("/dbpub/cat.asp", {"c": "81"}),

    # --- Search ---
    ("/dbpub/searchorgs.asp", {"n": "Tencent"}),
    ("/dbpub/searchorgs.asp", {"n": "HSBC"}),
    ("/dbpub/searchorgs.asp", {"n": "China", "st": "a"}),
    ("/dbpub/searchpeople.asp", {"n1": "Li", "n2": "Ka"}),
    ("/dbpub/searchpeople.asp", {"n1": "Chan"}),

    # --- Code lookup ---
    ("/dbpub/code.asp", {"code": "5"}),
    ("/dbpub/code.asp", {"code": "9"}),
    ("/dbpub/code.asp", {"code": "700"}),
    ("/dbpub/code.asp", {"code": "1"}),
    ("/dbpub/code.asp", {"code": "388"}),

    # --- Orgdata (company pages) ---
    ("/dbpub/orgdata.asp", {"code": "5"}),
    ("/dbpub/orgdata.asp", {"code": "700"}),
    ("/dbpub/orgdata.asp", {"code": "1"}),
    ("/dbpub/orgdata.asp", {"code": "388"}),
    ("/dbpub/orgdata.asp", {"code": "941"}),
    ("/dbpub/orgdata.asp", {"p": "382"}),      # HSBC by personID
    ("/dbpub/orgdata.asp", {"p": "21290"}),    # Tencent by personID

    # --- Officers/positions/advisers (company-level) ---
    ("/dbpub/officers.asp", {"p": "24855630"}),
    ("/dbpub/officers.asp", {"p": "382"}),     # HSBC
    ("/dbpub/officers.asp", {"p": "21290"}),   # Tencent
    ("/dbpub/positions.asp", {"p": "105"}),    # Au, Alexander Siu Kee -- first,
                                               # because the sort sweep uses the
                                               # first fixture for a path as its
                                               # baseline and p=24855630 is empty
    ("/dbpub/positions.asp", {"p": "24855630"}),
    ("/dbpub/positions.asp", {"p": "135"}),    # Lee, Shau Kee
    ("/dbpub/advisers.asp", {"p": "24855630"}),
    ("/dbpub/advisers.asp", {"p": "382"}),     # HSBC

    # --- Natural person pages ---
    ("/dbpub/natperson.asp", {"p": "105"}),    # Au, Alexander Siu Kee
    ("/dbpub/natperson.asp", {"p": "148"}),    # Lee, Charles Yeh Kwong
    ("/dbpub/natperson.asp", {"p": "135"}),    # Lee, Shau Kee
    ("/dbpub/natperson.asp", {"p": "2"}),      # Kadoorie, Michael David
    ("/dbpub/natperson.asp", {"p": "40"}),     # Chan, Stephen (SFC licensee)

    # --- Events ---
    ("/dbpub/events.asp", {"i": "1088"}),      # HSBC issueID
    ("/dbpub/events.asp", {"p": "382"}),       # HSBC by personID
    ("/dbpub/events.asp", {"i": "3601"}),      # Tencent
    ("/dbpub/events.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/events.asp", {"i": "1088", "fd": "2020-01-01", "td": "2020-12-31"}),

    # --- Holders (complex!) ---
    ("/dbpub/holders.asp", {"i": "1088"}),     # HSBC
    ("/dbpub/holders.asp", {"i": "3601"}),     # Tencent
    ("/dbpub/holders.asp", {"i": "2516"}),     # HKEX

    # --- Quotes/Prices ---
    ("/dbpub/quotes.asp", {"i": "1088"}),      # HSBC
    ("/dbpub/quotes.asp", {"i": "3601"}),      # Tencent
    ("/dbpub/quotes.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),
    ("/dbpub/prices.asp", {"i": "1088"}),
    ("/dbpub/prices.asp", {"i": "3601"}),
    ("/dbpub/pricesCSV.asp", {"i": "1088"}),

    # --- Sort variations ---
    ("/dbpub/listed.asp", {"sort": "codeup"}),
    ("/dbpub/listed.asp", {"sort": "namedn"}),
    ("/dbpub/delisted.asp", {"sort": "codeup"}),
    ("/dbpub/delisted.asp", {"sort": "datedn"}),
    ("/dbpub/alltotrets.asp", {"fd": "2023-01-01", "td": "2023-12-31"}),

    # --- SDI routes with params ---
    ("/dbpub/sdilatest.asp", {"sort": "stakdn"}),
    ("/dbpub/sdilatest.asp", {"d": "2024-06-01"}),
    ("/dbpub/sdidir.asp", {"p": "105"}),       # Au, Alexander
    ("/dbpub/sdidirco.asp", {"p": "382"}),     # HSBC
    ("/dbpub/sdiissue.asp", {"i": "1088"}),    # HSBC issueID
    ("/dbpub/sdicap.asp", {"i": "1088"}),

    # --- Short selling with params ---
    ("/dbpub/short.asp", {"sc": "5"}),
    ("/dbpub/short.asp", {"sc": "700"}),
    ("/dbpub/shortdate.asp", {"d": "2024-06-14"}),
    ("/dbpub/shortdate.asp", {"d": "2023-12-29"}),

    # --- Buybacks with params ---
    ("/dbpub/buybacks.asp", {"i": "1088"}),
    ("/dbpub/buybacks.asp", {"d": "2024-06-01"}),
    ("/dbpub/buybackstime.asp", {"i": "1088"}),
    ("/dbpub/buybackstime.asp", {"i": "1088", "fd": "2023-01-01", "td": "2023-12-31"}),

    # --- Domicile with params ---
    ("/dbpub/domicilecos.asp", {"d": "HK"}),
    ("/dbpub/domicilecos.asp", {"d": "CI"}),
    ("/dbpub/cosperdomHK.asp", {"d": "HK"}),

    # --- Govac ---
    ("/dbpub/govacsearch.asp", {"n": "finance"}),
    ("/dbpub/govacCSV.asp", {"n": "finance"}),

    # --- SFC with params ---
    ("/dbpub/SFChistfirm.asp", {"p": "374"}),  # HSBC SFC firm
    ("/dbpub/SFChistfirm.asp", {"p": "395"}),  # Hang Seng Bank
    ("/dbpub/sfclicrec.asp", {"p": "101742"}),  # the most-licensed individual
    ("/dbpub/sfclicrec.asp", {"p": "40"}),     # Chan, Stephen (SFC licensee)
    ("/dbpub/sfclicrec.asp", {"p": "90"}),     # Coull, Gary
    ("/dbpub/SFClicensees.asp", {"p": "1464", "a": "1"}),  # the route reads p
    ("/dbpub/SFClicensees.asp", {"p": "1464"}),            # and a, never "act"

    # --- Incorporation stats with year params ---
    ("/dbpub/incHKannual.asp", {"y": "2023"}),
    ("/dbpub/incHKmonth.asp", {"y": "2023"}),
    ("/dbpub/incHKcaltype.asp", {"y": "2023"}),
    ("/dbpub/disHKcaltype.asp", {"y": "2015"}),  # 2023 has two rows
    ("/dbpub/incUKcaltype.asp", {"y": "2023"}),

    # --- Auditor changes with year ---
    ("/dbpub/auditorchanges.asp", {"y": "2023"}),

    # --- Report speed with year ---
    ("/dbpub/reportspeed.asp", {"y": "2023"}),

    # --- Listing trend with year ---
    ("/dbpub/listingtrend.asp", {"y": "2023"}),

    # --- Adviserships and roles ---
    ("/dbpub/adviserships.asp", {"p": "382"}),  # HSBC
    ("/dbpub/advbyrole.asp", {"r": "1"}),
    ("/dbpub/advltsnap.asp", {"r": "1"}),

    # --- Splits ---
    ("/dbpub/splits.asp", {"i": "1088"}),

    # --- Year-end ---
    ("/dbpub/yearend.asp", {"m": "12"}),

    # --- Board composition ---
    ("/dbpub/boardcomp.asp", {"sort": "nameup"}),

    # --- PRH routes with params ---
    ("/dbpub/prhdistricts.asp", {"d": "HK"}),

    # --- Sort-sweep coverage ---
    # Drill-down pages, each reachable only from a link on the page above it, so
    # none of them had a fixture and none of their sort links had ever been
    # requested. Parameters chosen because they render rows: an empty page would
    # make every sort check on it vacuous.
    ("/dbpub/enigma.events.asp", {"i": "1088"}),
    ("/dbpub/docs.asp", {"p": "382"}),
    ("/dbpub/SFColicrec.asp", {"p": "374"}),   # HSBC: an org, not a person -- a
                                               # personID here is a 404 by design
    ("/dbpub/HKsols.asp", {"p": "1"}),         # p is the role (1 = Partner)
    ("/dbpub/payleagueorg.asp", {"y": "2023"}),
    ("/dbpub/prhestates.asp", {"dis": "3"}),
    ("/dbpub/prhblocks.asp", {"e": "1"}),
    ("/dbpub/prhfloors.asp", {"b": "1"}),
    ("/dbpub/prhunits.asp", {"b": "1"}),
    ("/dbpub/lirstaffhist.asp", {"s": "1"}),

    # Pages that were listed without parameters and so rendered an empty table:
    # the sort sweep passed on every one of them without testing anything.
    ("/dbpub/possum.asp", {"p": "105"}),
    ("/dbpub/holdings.asp", {"p": "382"}),
    ("/dbpub/searchESS.asp", {"n": "Chan"}),
    ("/dbpub/ESSraw.asp", {"p": "1631609"}),
    ("/dbpub/incFcal.asp", {"y": "2023"}),
    ("/dbpub/disFcal.asp", {"y": "2015"}),
    ("/dbpub/hpu.asp", {"i": "983"}),            # parallel trading: needs an
    ("/dbpub/hpup.asp", {"i": "983"}),           # issue that actually had some
]

# ============================================================
# CCASS routes
# ============================================================
CCASS_ROUTES_NO_PARAMS = [
    "/ccass/bigchanges.asp",
    "/ccass/cconc.asp",
    "/ccass/ipstakes.asp",
    "/ccass/cparticipants.asp",
    "/ccass/CCASSnotes.asp",
]

CCASS_ROUTES_WITH_PARAMS = [
    # --- Holder lookups ---
    ("/ccass/cholder.asp", {"part": "1323"}),    # Shanghai connect
    ("/ccass/cholder.asp", {"part": "1456"}),    # Shenzhen connect
    ("/ccass/cholder.asp", {"part": "7"}),       # HSBC Broking
    ("/ccass/cholder.asp", {"part": "8"}),       # JP Morgan

    # --- Issue-level ---
    ("/ccass/bigchangesissue.asp", {"i": "1088"}),  # HSBC
    ("/ccass/bigchangesissue.asp", {"i": "3601"}),  # Tencent
    ("/ccass/choldings.asp", {"i": "1088"}),
    ("/ccass/choldings.asp", {"i": "3601"}),

    # --- History routes ---
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

    # --- With older dates (within our data range) ---
    ("/ccass/bigchanges.asp", {"d": "2024-06-01"}),
    ("/ccass/bigchanges.asp", {"d": "2023-12-01"}),
    ("/ccass/bigchangesissue.asp", {"i": "1088", "d": "2024-06-01"}),
    ("/ccass/cconc.asp", {"d": "2024-06-01"}),
    ("/ccass/ipstakes.asp", {"d": "2024-06-01"}),
    ("/ccass/choldings.asp", {"i": "1088", "d": "2024-06-01"}),
    ("/ccass/cholder.asp", {"part": "1323", "d": "2024-06-01"}),
    ("/ccass/cholder.asp", {"part": "7", "d": "2024-06-01"}),

    # --- Sort-sweep coverage: two-date change pages, linked from cholder/
    # choldings and so never fixtured. portchg.asp is the same shape and is
    # already covered by EXTRA_URLS in check_all_routes.py.
    ("/ccass/reghist.asp", {"i": "1088"}),
    ("/ccass/ncipchg.asp", {"d1": "2024-06-03", "d": "2024-06-14"}),
    ("/ccass/chldchg.asp", {"i": "1088", "d1": "2024-06-03", "d": "2024-06-14"}),
]
