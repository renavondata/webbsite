#!/bin/bash
# Extended archive - remaining dbpub routes
# This supplements archive_routes.sh

BASE="https://webb-site.com"
OUT="archive/webb-site"
DELAY=0.5

save_page() {
    local url="$1"
    local output="$2"
    local desc="$3"
    echo "Archiving: $desc"
    if curl -s -f -o "$output" "$url"; then
        echo "  ✓ $(basename $output) ($(wc -c < "$output") bytes)"
    else
        echo "  ✗ Failed: $(basename $output)"
    fi
    sleep $DELAY
}

echo "=== Extended Archive - Additional Routes ==="

# Statistical routes (no parameters)
save_page "$BASE/dbpub/incHKcaltype.asp" "$OUT/dbpub/incHKcaltype.html" "HK inc by type"
save_page "$BASE/dbpub/incHKsurvive.asp" "$OUT/dbpub/incHKsurvive.html" "HK inc survival"
save_page "$BASE/dbpub/regHKannual.asp" "$OUT/dbpub/regHKannual.html" "HK registration annual"
save_page "$BASE/dbpub/disFcal.asp" "$OUT/dbpub/disFcal.html" "Foreign dissolution"
save_page "$BASE/dbpub/incFcal.asp" "$OUT/dbpub/incFcal.html" "Foreign incorporation"
save_page "$BASE/dbpub/incUKcaltype.asp" "$OUT/dbpub/incUKcaltype.html" "UK inc by type"
save_page "$BASE/dbpub/domregHK.asp" "$OUT/dbpub/domregHK.html" "HK domicile registration"

# Director statistics
save_page "$BASE/dbpub/DirsHKAgeDistn.asp" "$OUT/dbpub/DirsHKAgeDistn.html" "Directors age distribution"
save_page "$BASE/dbpub/DirsHKDistnPeople.asp" "$OUT/dbpub/DirsHKDistnPeople.html" "Directors distribution people"
save_page "$BASE/dbpub/DirsPerListcoHKdstn.asp" "$OUT/dbpub/DirsPerListcoHKdstn.html" "Directors per listco distribution"
save_page "$BASE/dbpub/FDirsPerListcoHKdstn.asp" "$OUT/dbpub/FDirsPerListcoHKdstn.html" "Female directors distribution"
save_page "$BASE/dbpub/bornday.asp" "$OUT/dbpub/bornday.html" "Born on this day"
save_page "$BASE/dbpub/bornyear.asp" "$OUT/dbpub/bornyear.html" "Born in this year"

# Adviser/auditor routes
save_page "$BASE/dbpub/adviserships.asp" "$OUT/dbpub/adviserships.html" "Adviserships"
save_page "$BASE/dbpub/auditornotes.asp" "$OUT/dbpub/auditornotes.html" "Auditor notes"

# Market data
save_page "$BASE/dbpub/str.asp" "$OUT/dbpub/str.html" "Short Term Returns"
save_page "$BASE/dbpub/alltotrets.asp" "$OUT/dbpub/alltotrets.html" "All total returns"
save_page "$BASE/dbpub/mcap.asp" "$OUT/dbpub/mcap.html" "Market cap"
save_page "$BASE/dbpub/gemgrads.asp" "$OUT/dbpub/gemgrads.html" "GEM graduates"
save_page "$BASE/dbpub/freecodesunder1000.asp" "$OUT/dbpub/freecodesunder1000.html" "Free codes under 1000"

# Domicile routes  
save_page "$BASE/dbpub/domicile.asp" "$OUT/dbpub/domicile.html" "Domicile"
save_page "$BASE/dbpub/domicilechange.asp" "$OUT/dbpub/domicilechange.html" "Domicile changes"
save_page "$BASE/dbpub/domicilecos.asp" "$OUT/dbpub/domicilecos.html" "Domicile companies"

# SFC routes
save_page "$BASE/dbpub/sfclicensees.asp" "$OUT/dbpub/sfclicensees.html" "SFC licensees"
save_page "$BASE/dbpub/sfcactivity.asp" "$OUT/dbpub/sfcactivity.html" "SFC activity"

# Law Society routes
save_page "$BASE/dbpub/solicitors.asp" "$OUT/dbpub/solicitors.html" "Solicitors"
save_page "$BASE/dbpub/lawfirms.asp" "$OUT/dbpub/lawfirms.html" "Law firms"

# Transport routes
save_page "$BASE/dbpub/veage.asp" "$OUT/dbpub/veage.html" "Vehicle age"
save_page "$BASE/dbpub/traffic.asp" "$OUT/dbpub/traffic.html" "Traffic"
save_page "$BASE/dbpub/parking.asp" "$OUT/dbpub/parking.html" "Parking"

# Misc routes
save_page "$BASE/dbpub/FAQW.asp" "$OUT/dbpub/FAQW.html" "FAQ Webb"
save_page "$BASE/dbpub/FAQWWW.asp" "$OUT/dbpub/FAQWWW.html" "FAQ WWW"
save_page "$BASE/dbpub/complain.asp" "$OUT/dbpub/complain.html" "Complain"

echo "Extended archive complete"
