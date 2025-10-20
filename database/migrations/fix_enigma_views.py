#!/usr/bin/env python3
"""Manually fix Enigma views with JOIN syntax issues."""
import sys
from pathlib import Path
from extract_views import extract_views
from convert_mysql_views import convert_view_to_postgres

# Views to fix in this batch
VIEWS_TO_FIX = [
    'lastmreturn',
    'listedcoshkall',
    'listedcoshkadv',
    'lookupadviser',
    'webadv',
    'webadvships',
    'webcatmembers',
    'webcattree',
    'webcountadvbyrole',
    'webcurrlisted',
    'webdelisted',
    'webdirs',
    'webdirships',
    'webincats',
    'webissues',
    'weborgs',
    'weblistings',
    'issuedlatest',
    'stockcodes1000',
    'dirnocname',
    'auditorchanges',
    'listedfirsttrade',
]


def manual_fix_view(view_name, mysql_def):
    """
    Manually fix specific views that have complex JOIN syntax issues.

    Returns PostgreSQL CREATE VIEW statement or None if no manual fix needed.
    """

    if view_name == 'lastmreturn':
        # FROM (`stocklistings` join ((`issue` join `organisations`) join `sectypes`)
        #       on(((`stocklistings`.`IssueID` = `issue`.`ID1`)
        #           and (`issue`.`issuer` = `organisations`.`PersonID`)
        #           and (`issue`.`typeID` = `sectypes`.`typeID`))))

        return """-- View: lastmreturn
CREATE OR REPLACE VIEW enigma.lastmreturn AS
SELECT
    stocklistings.StockCode AS stockcode,
    organisations.Name1 AS name,
    sectypes.typeShort AS typeShort,
    (SELECT MAX(issuedshares.atDate)
     FROM enigma.issuedshares
     WHERE issuedshares.issueID = issue.ID1) AS maxDate
FROM enigma.stocklistings
JOIN enigma.issue ON stocklistings.IssueID = issue.ID1
JOIN enigma.organisations ON issue.issuer = organisations.PersonID
JOIN enigma.sectypes ON issue.typeID = sectypes.typeID
WHERE ((stocklistings.FirstTradeDate IS NULL) OR (stocklistings.FirstTradeDate <= CURRENT_DATE))
  AND ((stocklistings.DelistDate IS NULL) OR (stocklistings.DelistDate > CURRENT_DATE))
  AND (stocklistings.StockExID IN (1,20,23))
  AND (issue.typeID NOT IN (2,40,41))
ORDER BY (SELECT MAX(issuedshares.atDate)
          FROM enigma.issuedshares
          WHERE issuedshares.issueID = issue.ID1);
"""

    elif view_name == 'listedcoshkall':
        # FROM (`listedcoshk` join `organisations`
        #       on((`listedcoshk`.`issuer` = `organisations`.`PersonID`)))

        return """-- View: listedcoshkall
CREATE OR REPLACE VIEW enigma.listedcoshkall AS
SELECT
    organisations.PersonID AS personID,
    organisations.Domicile AS domicile,
    organisations.incDate AS incDate,
    listedcoshk.stockExID AS stockExID,
    organisations.Name1 AS name
FROM enigma.listedcoshk
JOIN enigma.organisations ON listedcoshk.issuer = organisations.PersonID;
"""

    elif view_name == 'listedcoshkadv':
        # FROM (`documents` join `listedcoshkall`
        #       on((`listedcoshkall`.`personID` = `documents`.`OrgID`)))

        return """-- View: listedcoshkadv
CREATE OR REPLACE VIEW enigma.listedcoshkadv AS
SELECT
    documents.OrgID AS orgID,
    listedcoshkall.name AS name,
    MAX(documents.ReportDate) AS advDone
FROM enigma.documents
JOIN enigma.listedcoshkall ON listedcoshkall.personID = documents.OrgID
WHERE documents.Adv = TRUE
GROUP BY documents.OrgID, listedcoshkall.name
ORDER BY advDone;
"""

    elif view_name == 'lookupadviser':
        # FROM (`organisations` join `advisers`
        #       on((`organisations`.`PersonID` = `advisers`.`PersonID`)))

        return """-- View: lookupadviser
CREATE OR REPLACE VIEW enigma.lookupadviser AS
SELECT
    advisers.PersonID AS PersonID,
    organisations.Name1 AS Name1
FROM enigma.organisations
JOIN enigma.advisers ON organisations.PersonID = advisers.PersonID
ORDER BY organisations.Name1;
"""

    elif view_name == 'webadv':
        # Complex multi-table join - need to flatten
        # FROM ((`roles` join (`organisations` join `adviserships`
        #        on((`organisations`.`PersonID` = `adviserships`.`Company`)))
        #        on((`organisations_1`.`PersonID` = `adviserships`.`Adviser`)))
        #        on((`roles`.`RoleID` = `adviserships`.`Role`)))

        return """-- View: webadv
CREATE OR REPLACE VIEW enigma.webadv AS
SELECT
    org1.Name1 AS Org,
    roles.Role AS Role,
    roles.RoleID AS roleID,
    org2.Name1 AS Adv,
    org1.PersonID AS OrgID,
    org2.PersonID AS AdvID,
    adviserships.AddDate AS AddDate,
    adviserships.AddAcc AS AddAcc,
    adviserships.RemDate AS RemDate,
    adviserships.RemAcc AS RemAcc,
    roles.OneTime AS OneTime
FROM enigma.adviserships
JOIN enigma.organisations org1 ON org1.PersonID = adviserships.Company
JOIN enigma.organisations org2 ON org2.PersonID = adviserships.Adviser
JOIN enigma.roles ON roles.RoleID = adviserships.Role;
"""

    elif view_name == 'webadvships':
        # Similar structure to webadv but with LEFT JOIN

        return """-- View: webadvships
CREATE OR REPLACE VIEW enigma.webadvships AS
SELECT
    organisations.Name1 AS Org,
    roles.Role AS Role,
    roles.OneTime AS OneTime,
    organisations.PersonID AS OrgID,
    adviserships.Adviser AS AdvID,
    adviserships.AddDate AS AddDate,
    adviserships.AddAcc AS AddAcc,
    adviserships.RemDate AS RemDate,
    adviserships.RemAcc AS RemAcc,
    listedcoshk.issuer AS Issuer
FROM enigma.adviserships
JOIN enigma.organisations ON organisations.PersonID = adviserships.Company
JOIN enigma.roles ON roles.RoleID = adviserships.Role
LEFT JOIN enigma.listedcoshk ON listedcoshk.issuer = adviserships.Company;
"""

    elif view_name == 'webcatmembers':
        # FROM (`organisations` join (`categories` join `classifications`
        #       on((`categories`.`ID` = `classifications`.`Category`)))
        #       on((`organisations`.`PersonID` = `classifications`.`Company`)))

        return """-- View: webcatmembers
CREATE OR REPLACE VIEW enigma.webcatmembers AS
SELECT
    organisations.PersonID AS PersonID,
    organisations.Name1 AS Name1,
    classifications.Category AS Category,
    categories.Name AS CatName
FROM enigma.classifications
JOIN enigma.organisations ON organisations.PersonID = classifications.Company
JOIN enigma.categories ON categories.ID = classifications.Category
ORDER BY organisations.Name1;
"""

    elif view_name == 'webcattree':
        # FROM (`categories` join (`cattree` join `categories`
        #       on((`categories`.`ID` = `cattree`.`ParentCat`)))
        #       on((`categories_1`.`ID` = `cattree`.`ChildCat`)))

        return """-- View: webcattree
CREATE OR REPLACE VIEW enigma.webcattree AS
SELECT
    parent.Name AS ParentName,
    child.Name AS ChildName,
    parent.ID AS ParentID,
    child.ID AS ChildID
FROM enigma.cattree
JOIN enigma.categories parent ON parent.ID = cattree.ParentCat
JOIN enigma.categories child ON child.ID = cattree.ChildCat;
"""

    elif view_name == 'webcountadvbyrole':
        # FROM ((`listedcoshk` join (`roles` join `adviserships`
        #        on((`roles`.`RoleID` = `adviserships`.`Role`)))
        #        on((`listedcoshk`.`issuer` = `adviserships`.`Company`))))

        return """-- View: webcountadvbyrole
CREATE OR REPLACE VIEW enigma.webcountadvbyrole AS
SELECT
    roles.RoleID AS RoleID,
    roles.roleLong AS Role,
    roles.OneTime AS OneTime,
    COUNT(adviserships.Role) AS CountOfRole
FROM enigma.adviserships
JOIN enigma.roles ON roles.RoleID = adviserships.Role
JOIN enigma.listedcoshk ON listedcoshk.issuer = adviserships.Company
WHERE (adviserships.RemDate IS NULL) OR (adviserships.RemDate > CURRENT_TIMESTAMP)
GROUP BY roles.RoleID, roles.roleLong, roles.OneTime
ORDER BY roles.roleLong;
"""

    elif view_name == 'webcurrlisted':
        # Complex multi-table join

        return """-- View: webcurrlisted
CREATE OR REPLACE VIEW enigma.webcurrlisted AS
SELECT
    stocklistings.StockCode AS StockCode,
    organisations.Name1 AS Name1,
    sectypes.typeShort AS Type,
    organisations.PersonID AS PersonID,
    stocklistings.StockExID AS StockExID,
    LEFT(sectypes.typeShort, 1) AS Type1,
    stocklistings.FirstTradeDate AS FirstTradeDate,
    organisations.Domicile AS Domicile
FROM enigma.stocklistings
JOIN enigma.issue ON issue.ID1 = stocklistings.IssueID
JOIN enigma.organisations ON organisations.PersonID = issue.issuer
JOIN enigma.sectypes ON issue.typeID = sectypes.typeID
JOIN enigma.listings ON listings.stockExID = stocklistings.StockExID
WHERE (stocklistings.StockExID IN (1,20,22,23,38))
  AND ((stocklistings.FirstTradeDate IS NULL) OR (stocklistings.FirstTradeDate <= CURRENT_TIMESTAMP))
  AND ((stocklistings.DelistDate IS NULL) OR (stocklistings.DelistDate > CURRENT_TIMESTAMP))
ORDER BY organisations.Name1, sectypes.typeShort;
"""

    elif view_name == 'webdelisted':
        # Complex join with LEFT JOIN and MySQL-specific functions

        return """-- View: webdelisted
CREATE OR REPLACE VIEW enigma.webdelisted AS
SELECT
    stocklistings.StockCode AS StockCode,
    stocklistings.IssueID AS IssueID,
    organisations.Name1 AS Name1,
    organisations.Domicile AS domicile,
    sectypes.typeShort AS Type,
    stocklistings.FirstTradeDate AS FirstTradeDate,
    stocklistings.FinalTradeDate AS FinalTradeDate,
    stocklistings.DelistDate AS DelistDate,
    organisations.PersonID AS PersonID,
    stocklistings.StockExID AS StockExID,
    dlreasons.Reason AS Reason,
    CASE
        WHEN stocklistings.FirstTradeDate IS NULL OR stocklistings.FinalTradeDate IS NULL
        THEN NULL
        ELSE ((stocklistings.FinalTradeDate - stocklistings.FirstTradeDate) + 1) / 365.2425
    END AS TradeLife
FROM enigma.stocklistings
JOIN enigma.issue ON stocklistings.IssueID = issue.ID1
JOIN enigma.organisations ON issue.issuer = organisations.PersonID
JOIN enigma.sectypes ON issue.typeID = sectypes.typeID
JOIN enigma.listings ON stocklistings.StockExID = listings.stockExID
LEFT JOIN enigma.dlreasons ON stocklistings.ReasonID = dlreasons.ReasonID
WHERE (stocklistings.DelistDate <= CURRENT_TIMESTAMP)
  AND (stocklistings.StockExID IN (1,20,22,23,38));
"""

    elif view_name == 'webdirs':
        # FROM ((`positions` join (`people` join `directorships`
        #        on((`people`.`PersonID` = `directorships`.`Director`)))
        #        on((`positions`.`positionID` = `directorships`.`positionID`))))

        return """-- View: webdirs
CREATE OR REPLACE VIEW enigma.webdirs AS
SELECT
    CONCAT(people.Name1, ', ', COALESCE(people.Name2, '')) AS Dir,
    positions.posShort AS Position,
    positions.rank AS rank,
    positions.posLong AS PosLong,
    directorships.Director AS DirID,
    directorships.Company AS OrgID,
    directorships.ApptDate AS ApptDate,
    directorships.ResDate AS ResDate,
    directorships.ApptAcc AS ApptAcc,
    directorships.ResAcc AS ResAcc,
    people.YOB AS YOB
FROM enigma.directorships
JOIN enigma.people ON people.PersonID = directorships.Director
JOIN enigma.positions ON positions.positionID = directorships.positionID;
"""

    elif view_name == 'webdirships':
        # Similar to webdirs but with org names

        return """-- View: webdirships
CREATE OR REPLACE VIEW enigma.webdirships AS
SELECT
    positions.posShort AS Position,
    positions.rank AS Rank,
    positions.posLong AS PosLong,
    organisations.Name1 AS Org,
    directorships.Director AS DirID,
    organisations.PersonID AS OrgID,
    directorships.ApptDate AS ApptDate,
    directorships.ResDate AS ResDate,
    directorships.ApptAcc AS ApptAcc,
    directorships.ResAcc AS ResAcc,
    listedcoshkall.stockExID AS StockExID
FROM enigma.directorships
JOIN enigma.organisations ON organisations.PersonID = directorships.Company
JOIN enigma.positions ON positions.positionID = directorships.positionID
LEFT JOIN enigma.listedcoshkall ON organisations.PersonID = listedcoshkall.personID;
"""

    elif view_name == 'webincats':
        # Same as webcatmembers essentially

        return """-- View: webincats
CREATE OR REPLACE VIEW enigma.webincats AS
SELECT
    organisations.PersonID AS PersonID,
    organisations.Name1 AS Name1,
    classifications.Category AS Category,
    categories.Name AS CatName
FROM enigma.classifications
JOIN enigma.organisations ON organisations.PersonID = classifications.Company
JOIN enigma.categories ON categories.ID = classifications.Category
ORDER BY organisations.Name1;
"""

    elif view_name == 'webissues':
        # Simple nested JOIN

        return """-- View: webissues
CREATE OR REPLACE VIEW enigma.webissues AS
SELECT
    issue.ID1 AS ID1,
    sectypes.typeShort AS SecType,
    organisations.Name1 AS Issuer,
    organisations.PersonID AS Person
FROM enigma.issue
JOIN enigma.organisations ON organisations.PersonID = issue.issuer
JOIN enigma.sectypes ON issue.typeID = sectypes.typeID;
"""

    elif view_name == 'weborgs':
        # Complex view with LEFT JOINs and MSDATEACC function

        return """-- View: weborgs
CREATE OR REPLACE VIEW enigma.weborgs AS
SELECT
    organisations.Domicile AS domID,
    organisations.PersonID AS orgID,
    organisations.Name1 AS org,
    organisations.orgType AS orgType,
    organisations.cName::TEXT AS cName,
    domiciles.FullName AS Dom,
    orgtypes.typeName AS typeName,
    enigma.MSdateAcc(organisations.incDate, organisations.incAcc) AS inc,
    organisations.incDate AS incDate,
    organisations.disDate AS disDate,
    organisations.incAcc AS incAcc,
    organisations.incID AS incID,
    dismodes.disModeTxt AS disModeTxt,
    organisations.SFCID AS SFCID,
    organisations.SFCri AS SFCri,
    organisations.UKURI AS UKURI,
    organisations.incUpd AS incupd,
    oldcr.crn AS oldcrn
FROM enigma.organisations
LEFT JOIN enigma.domiciles ON domiciles.ID = organisations.Domicile
LEFT JOIN enigma.orgtypes ON organisations.orgType = orgtypes.orgType
LEFT JOIN enigma.dismodes ON organisations.disMode = dismodes.ID
LEFT JOIN enigma.oldcr ON organisations.PersonID = oldcr.personID;
"""

    elif view_name == 'weblistings':
        # Complex nested JOIN similar to webdelisted

        return """-- View: weblistings
CREATE OR REPLACE VIEW enigma.weblistings AS
SELECT
    stocklistings.StockCode AS StockCode,
    sectypes.typeShort AS SecType,
    organisations.Name1 AS Org,
    stocklistings.DelistDate AS DelistDate,
    organisations.PersonID AS OrgID,
    stocklistings.FirstTradeDate AS FirstTradeDate,
    stocklistings.FinalTradeDate AS FinalTradeDate,
    listings.shortName AS ShortName,
    stocklistings.IssueID AS IssueID,
    listings.stockExID AS StockExID,
    dlreasons.Reason AS Reason
FROM enigma.stocklistings
JOIN enigma.issue ON stocklistings.IssueID = issue.ID1
JOIN enigma.organisations ON issue.issuer = organisations.PersonID
JOIN enigma.sectypes ON issue.typeID = sectypes.typeID
JOIN enigma.listings ON stocklistings.StockExID = listings.stockExID
LEFT JOIN enigma.dlreasons ON stocklistings.ReasonID = dlreasons.ReasonID
WHERE listings.stockExID IN (1,20,22,23,38,71)
ORDER BY sectypes.typeShort, stocklistings.FirstTradeDate;
"""

    elif view_name == 'issuedlatest':
        # Simple JOIN with issuedlatestdate view

        return """-- View: issuedlatest
CREATE OR REPLACE VIEW enigma.issuedlatest AS
SELECT
    i.issueID AS issueID,
    i.outstanding AS outstanding,
    i.atDate AS atDate
FROM enigma.issuedshares i
JOIN enigma.issuedlatestdate t ON i.issueID = t.issueID AND i.atDate = t.maxDate;
"""

    elif view_name == 'stockcodes1000':
        # Simple SELECT, remove charset prefix

        return """-- View: stockcodes1000
CREATE OR REPLACE VIEW enigma.stockcodes1000 AS
SELECT
    stocklistings.StockCode AS StockCode
FROM enigma.stocklistings
WHERE (stocklistings.StockCode < '1000')
  AND (stocklistings.StockExID IN (1,20,22,23,38))
  AND ((stocklistings.DelistDate IS NULL) OR (stocklistings.DelistDate > CURRENT_TIMESTAMP))
ORDER BY stocklistings.StockCode;
"""

    elif view_name == 'dirnocname':
        # Complex JOIN with nameppl function

        return """-- View: dirnocname
CREATE OR REPLACE VIEW enigma.dirnocname AS
SELECT DISTINCT
    d.Company AS orgID,
    d.Director AS director,
    o.Name1 AS orgName,
    enigma.nameppl(p.Name1, p.Name2) AS pplname
FROM enigma.directorships d
JOIN enigma.organisations o ON d.Company = o.PersonID
JOIN enigma.people p ON d.Director = p.PersonID
JOIN enigma.positions po ON d.positionID = po.positionID
JOIN enigma.listedcoshkever l ON d.Company = l.issuer
WHERE (po.rank = 1)
  AND (p.cName IS NULL)
ORDER BY o.Name1, pplname;
"""

    elif view_name == 'auditorchanges':
        # Uses MSdateAcc function

        return """-- View: auditorchanges
CREATE OR REPLACE VIEW enigma.auditorchanges AS
SELECT
    adviserships.Company AS Company,
    adviserships.Adviser AS Adviser,
    enigma.MSdateAcc(adviserships.AddDate, adviserships.AddAcc) AS add,
    enigma.MSdateAcc(adviserships.RemDate, adviserships.RemAcc) AS rem,
    COALESCE(adviserships.RemDate, adviserships.AddDate) AS SortDate,
    listedcoshkall.name AS CoName,
    organisations.Name1 AS AdvName
FROM enigma.adviserships
JOIN enigma.listedcoshkall ON listedcoshkall.personID = adviserships.Company
JOIN enigma.organisations ON organisations.PersonID = adviserships.Adviser
WHERE adviserships.Role = 0;
"""

    elif view_name == 'listedfirsttrade':
        # Simple JOIN with GROUP BY

        return """-- View: listedfirsttrade
CREATE OR REPLACE VIEW enigma.listedfirsttrade AS
SELECT
    issue.issuer AS PersonID,
    MIN(stocklistings.FirstTradeDate) AS FirstTradeDate
FROM enigma.issue
JOIN enigma.stocklistings ON issue.ID1 = stocklistings.IssueID
WHERE ((stocklistings.DelistDate IS NULL) OR (stocklistings.DelistDate > CURRENT_TIMESTAMP))
  AND (issue.typeID <> 1)
GROUP BY issue.issuer;
"""

    # No manual fix for this view
    return None


def main():
    # Extract all views from MySQL dump
    sql_file = Path("Enigma schema/enigmaStructure-2025-10-11- 000.sql")

    if not sql_file.exists():
        print(f"Error: {sql_file} not found")
        sys.exit(1)

    print("Extracting views from MySQL dump...")
    all_views = extract_views(sql_file)
    views_dict = {name: definition for name, definition in all_views}

    # Generate fixed SQL
    output_file = Path("database/migrations/enigma_views_fixed.sql")

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("-- Enigma Schema Views Migration (MANUALLY FIXED)\n")
        f.write("-- Fixed views with JOIN syntax issues\n")
        f.write("-- Date: 2025-10-20\n")
        f.write("\n")
        f.write("SET search_path TO enigma, ccass, public;\n")
        f.write("\n")

        fixed_count = 0
        for view_name in VIEWS_TO_FIX:
            if view_name not in views_dict:
                print(f"Warning: View {view_name} not found in MySQL dump")
                continue

            print(f"Processing: {view_name}")

            # Try manual fix first
            fixed_sql = manual_fix_view(view_name, views_dict[view_name])

            if fixed_sql:
                f.write(fixed_sql)
                f.write("\n")
                fixed_count += 1
                print(f"  ✓ Manually fixed")
            else:
                print(f"  ⚠ No manual fix available")

        print(f"\n✓ Generated {output_file}")
        print(f"  Fixed {fixed_count} views")


if __name__ == '__main__':
    main()
