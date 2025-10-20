-- Enigma Schema Views Migration
-- Generated from MySQL dump: enigmaStructure-2025-10-11-000.sql
-- Total: 58 views to migrate
-- (4 views already exist, skipped)
-- Date: 2025-10-20

SET search_path TO enigma, ccass, public;

-- ============================================================
-- HIGH PRIORITY VIEWS (23 views)
-- These views are used by the Flask application
-- ============================================================

-- MANUAL REVIEW: Depends on view: maxdate
-- View: lasthlddate
CREATE OR REPLACE VIEW enigma.lasthlddate AS
select max(enigma.sholdings.atDate) AS maxDate,enigma.sholdings.issueID AS issueID,enigma.sholdings.holderID AS holderID,enigma.sholdings.heldAs AS heldAs from enigma.sholdings group by enigma.sholdings.issueID,enigma.sholdings.holderID,enigma.sholdings.heldAs;

-- MANUAL REVIEW: Depends on view: maxdate
-- View: lastmreturn
CREATE OR REPLACE VIEW enigma.lastmreturn AS
select enigma.stocklistings.StockCode AS stockcode,enigma.organisations.Name1 AS name,enigma.sectypes.typeShort AS typeShort,(select max(enigma.issuedshares.atDate) from enigma.issuedshares where (enigma.issuedshares.issueID = enigma.issue.ID1)) AS maxDate from enigma.stocklistings join ((issue join enigma.organisations) join enigma.sectypes) on(((enigma.stocklistings.IssueID = enigma.issue.ID1) and (enigma.issue.issuer = enigma.organisations.PersonID) and (enigma.issue.typeID = enigma.sectypes.typeID)))) where (((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= CURRENT_DATE)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > CURRENT_DATE)) and (enigma.stocklistings.StockExID in (1,20,23)) and (enigma.issue.typeID not in (2,40,41))) order by (select max(enigma.issuedshares.atDate) from enigma.issuedshares where (enigma.issuedshares.issueID = enigma.issue.ID1));

-- MANUAL REVIEW: Depends on view: listedcoshkall
-- View: listedcoshkadv
CREATE OR REPLACE VIEW enigma.listedcoshkadv AS
select enigma.documents.OrgID AS orgID,enigma.listedcoshkall.name AS name,max(enigma.documents.ReportDate) AS advDone from enigma.documents join enigma.listedcoshkall on((enigma.listedcoshkall.personID = enigma.documents.OrgID))) where (0 <> enigma.documents.Adv) group by enigma.documents.OrgID order by advDone;

-- MANUAL REVIEW: Depends on view: listedcoshk
-- View: listedcoshkall
CREATE OR REPLACE VIEW enigma.listedcoshkall AS
select enigma.organisations.PersonID AS personID,enigma.organisations.Domicile AS domicile,enigma.organisations.incDate AS incDate,enigma.listedcoshk.stockExID AS stockExID,enigma.organisations.Name1 AS name from enigma.listedcoshk join enigma.organisations on((enigma.listedcoshk.issuer = enigma.organisations.PersonID)));

-- View: lookupadviser
CREATE OR REPLACE VIEW enigma.lookupadviser AS
select enigma.advisers.PersonID AS PersonID,enigma.organisations.Name1 AS Name1 from enigma.organisations join enigma.advisers on((enigma.organisations.PersonID = enigma.advisers.PersonID))) order by enigma.organisations.Name1;

-- View: lookupposition
CREATE OR REPLACE VIEW enigma.lookupposition AS
select enigma.positions.positionID AS PositionID,enigma.positions.posShort AS PosShort,enigma.positions.posLong AS PosLong from enigma.positions order by enigma.positions.posShort;

-- View: lookuprelationship
CREATE OR REPLACE VIEW enigma.lookuprelationship AS
select enigma.relationships.ID AS ID,enigma.relationships.relation AS Relation from enigma.relationships order by enigma.relationships.relation;

-- View: lookuprole
CREATE OR REPLACE VIEW enigma.lookuprole AS
select enigma.roles.RoleID AS RoleID,enigma.roles.Role AS Role from enigma.roles order by enigma.roles.Role;

-- View: webadv
CREATE OR REPLACE VIEW enigma.webadv AS
select enigma.organisations.Name1 AS Org,enigma.roles.Role AS Role,enigma.roles.RoleID AS roleID,organisations_1.Name1 AS Adv,enigma.organisations.PersonID AS OrgID,organisations_1.PersonID AS AdvID,enigma.adviserships.AddDate AS AddDate,enigma.adviserships.AddAcc AS AddAcc,enigma.adviserships.RemDate AS RemDate,enigma.adviserships.RemAcc AS RemAcc,enigma.roles.OneTime AS OneTime from enigma.roles join enigma.organisations organisations_1 join enigma.organisations join enigma.adviserships on((enigma.organisations.PersonID = enigma.adviserships.Company))) on((organisations_1.PersonID = enigma.adviserships.Adviser))) on((enigma.roles.RoleID = enigma.adviserships.Role)));

-- MANUAL REVIEW: Depends on view: listedcoshk
-- View: webadvships
CREATE OR REPLACE VIEW enigma.webadvships AS
select enigma.organisations.Name1 AS Org,enigma.roles.Role AS Role,enigma.roles.OneTime AS OneTime,enigma.organisations.PersonID AS OrgID,enigma.adviserships.Adviser AS AdvID,enigma.adviserships.AddDate AS AddDate,enigma.adviserships.AddAcc AS AddAcc,enigma.adviserships.RemDate AS RemDate,enigma.adviserships.RemAcc AS RemAcc,enigma.listedcoshk.issuer AS Issuer from ((roles join enigma.organisations join enigma.adviserships on((enigma.organisations.PersonID = enigma.adviserships.Company))) on((enigma.roles.RoleID = enigma.adviserships.Role))) left join enigma.listedcoshk on((enigma.listedcoshk.issuer = enigma.adviserships.Company)));

-- MANUAL REVIEW: Uses custom function: STOCKCODETHEN
-- View: webbuybacks
CREATE OR REPLACE VIEW enigma.webbuybacks AS
select STOCKCODETHEN(enigma.capchanges.IssueID,enigma.capchanges.EffDate) AS stockCode,enigma.capchanges.IssueID AS IssueID,enigma.capchanges.EffDate AS EffDate,enigma.capchanges.exchID AS exchID,COALESCE(b2.name,b1.name) AS exchName,-(enigma.capchanges.shares) AS shares,enigma.capchanges.Value AS Value,enigma.currencies.currency AS Currency,concat(enigma.organisations.Name1,': ',enigma.sectypes.typeShort::TEXT) AS Name from (((capchanges join (((issue join enigma.organisations) join enigma.sectypes) join enigma.bbexch b1) on(((enigma.issue.ID1 = enigma.capchanges.IssueID) and (enigma.organisations.PersonID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID) and (enigma.capchanges.exchID = b1.ID)))) left join enigma.currencies on((enigma.capchanges.Currency = enigma.currencies.ID))) left join enigma.bbexch b2 on((b1.mapTo = b2.ID))) where (enigma.capchanges.CapChangeType = 1);

-- View: webcatmembers
CREATE OR REPLACE VIEW enigma.webcatmembers AS
select enigma.organisations.PersonID AS PersonID,enigma.organisations.Name1 AS Name1,enigma.classifications.Category AS Category,enigma.categories.Name AS CatName from enigma.organisations join enigma.categories join enigma.classifications on((enigma.categories.ID = enigma.classifications.Category))) on((enigma.organisations.PersonID = enigma.classifications.Company))) order by enigma.organisations.Name1;

-- View: webcattree
CREATE OR REPLACE VIEW enigma.webcattree AS
select enigma.categories.Name AS ParentName,categories_1.Name AS ChildName,enigma.categories.ID AS ParentID,categories_1.ID AS ChildID from enigma.categories categories_1 join enigma.categories join enigma.cattree on((enigma.categories.ID = enigma.cattree.ParentCat))) on((categories_1.ID = enigma.cattree.ChildCat)));

-- MANUAL REVIEW: Depends on view: listedcoshk
-- View: webcountadvbyrole
CREATE OR REPLACE VIEW enigma.webcountadvbyrole AS
select enigma.roles.RoleID AS RoleID,enigma.roles.roleLong AS Role,enigma.roles.OneTime AS OneTime,count(enigma.adviserships.Role) AS CountOfRole from enigma.listedcoshk join enigma.roles join enigma.adviserships on((enigma.roles.RoleID = enigma.adviserships.Role))) on((enigma.listedcoshk.issuer = enigma.adviserships.Company))) where ((enigma.adviserships.RemDate is null) or (enigma.adviserships.RemDate > CURRENT_TIMESTAMP)) group by enigma.roles.RoleID,enigma.roles.Role,enigma.roles.OneTime order by enigma.roles.roleLong;

-- View: webcurrlisted
CREATE OR REPLACE VIEW enigma.webcurrlisted AS
select enigma.stocklistings.StockCode AS StockCode,enigma.organisations.Name1 AS Name1,enigma.sectypes.typeShort AS Type,enigma.organisations.PersonID AS PersonID,enigma.stocklistings.StockExID AS StockExID,left(enigma.sectypes.typeShort,1) AS Type1,enigma.stocklistings.FirstTradeDate AS FirstTradeDate,enigma.organisations.Domicile AS Domicile from enigma.organisations join (((listings join enigma.issue) join enigma.sectypes) join enigma.stocklistings) on(((enigma.issue.ID1 = enigma.stocklistings.IssueID) and (enigma.listings.stockExID = enigma.stocklistings.StockExID) and (enigma.organisations.PersonID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID)))) where ((enigma.stocklistings.StockExID in (1,20,22,23,38)) and ((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= CURRENT_TIMESTAMP)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > CURRENT_TIMESTAMP))) order by enigma.organisations.Name1,enigma.sectypes.typeShort;

-- View: webdelisted
CREATE OR REPLACE VIEW enigma.webdelisted AS
select enigma.stocklistings.StockCode AS StockCode,enigma.stocklistings.IssueID AS IssueID,enigma.organisations.Name1 AS Name1,enigma.organisations.Domicile AS domicile,enigma.sectypes.typeShort AS Type,enigma.stocklistings.FirstTradeDate AS FirstTradeDate,enigma.stocklistings.FinalTradeDate AS FinalTradeDate,enigma.stocklistings.DelistDate AS DelistDate,enigma.organisations.PersonID AS PersonID,enigma.stocklistings.StockExID AS StockExID,dlreasons.Reason AS Reason,if(((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FinalTradeDate is null)),NULL,(((to_days(enigma.stocklistings.FinalTradeDate) - to_days(enigma.stocklistings.FirstTradeDate)) + 1) / 365.2425)) AS TradeLife from ((stocklistings join (((issue join enigma.organisations) join enigma.sectypes) join enigma.listings) on(((enigma.issue.issuer = enigma.organisations.PersonID) and (enigma.stocklistings.IssueID = enigma.issue.ID1) and (enigma.stocklistings.StockExID = enigma.listings.stockExID) and (enigma.issue.typeID = enigma.sectypes.typeID)))) left join dlreasons on((enigma.stocklistings.ReasonID = dlreasons.ReasonID))) where ((enigma.stocklistings.DelistDate <= CURRENT_TIMESTAMP) and (enigma.stocklistings.StockExID in (1,20,22,23,38)));

-- View: webdirs
CREATE OR REPLACE VIEW enigma.webdirs AS
select concat(enigma.people.Name1,', ',COALESCE(enigma.people.Name2,'')) AS Dir,enigma.positions.posShort AS Position,enigma.positions.rank AS rank,enigma.positions.posLong AS PosLong,enigma.directorships.Director AS DirID,enigma.directorships.Company AS OrgID,enigma.directorships.ApptDate AS ApptDate,enigma.directorships.ResDate AS ResDate,enigma.directorships.ApptAcc AS ApptAcc,enigma.directorships.ResAcc AS ResAcc,enigma.people.YOB AS YOB from enigma.positions join enigma.people join enigma.directorships on((enigma.people.PersonID = enigma.directorships.Director))) on((enigma.positions.positionID = enigma.directorships.positionID)));

-- MANUAL REVIEW: Depends on view: listedcoshkall
-- View: webdirships
CREATE OR REPLACE VIEW enigma.webdirships AS
select enigma.positions.posShort AS Position,enigma.positions.rank AS Rank,enigma.positions.posLong AS PosLong,enigma.organisations.Name1 AS Org,enigma.directorships.Director AS DirID,enigma.organisations.PersonID AS OrgID,enigma.directorships.ApptDate AS ApptDate,enigma.directorships.ResDate AS ResDate,enigma.directorships.ApptAcc AS ApptAcc,enigma.directorships.ResAcc AS ResAcc,enigma.listedcoshkall.stockExID AS StockExID from ((positions join enigma.organisations join enigma.directorships on((enigma.organisations.PersonID = enigma.directorships.Company))) on((enigma.positions.positionID = enigma.directorships.positionID))) left join enigma.listedcoshkall on((enigma.organisations.PersonID = enigma.listedcoshkall.personID)));

-- View: webdocs
CREATE OR REPLACE VIEW enigma.webdocs AS
select enigma.documents.OrgID AS OrgID,enigma.documents.RecordDate AS RecordDate,enigma.documents.ReportDate AS ReportDate,doctypes.DocLong AS DocLong,enigma.documents.Adv AS Adv,enigma.documents.Dir AS Dir from (doctypes join enigma.documents on((doctypes.DocTypeID = enigma.documents.DocTypeID))) where (enigma.documents.DocTypeID <> 2);

-- View: webincats
CREATE OR REPLACE VIEW enigma.webincats AS
select enigma.organisations.PersonID AS PersonID,enigma.organisations.Name1 AS Name1,enigma.classifications.Category AS Category,enigma.categories.Name AS CatName from enigma.organisations join enigma.categories join enigma.classifications on((enigma.categories.ID = enigma.classifications.Category))) on((enigma.organisations.PersonID = enigma.classifications.Company))) order by enigma.organisations.Name1;

-- View: webissues
CREATE OR REPLACE VIEW enigma.webissues AS
select enigma.issue.ID1 AS ID1,enigma.sectypes.typeShort AS SecType,enigma.organisations.Name1 AS Issuer,enigma.organisations.PersonID AS Person from enigma.organisations join enigma.issue join enigma.sectypes) on(((enigma.organisations.PersonID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID))));

-- View: weblistings
CREATE OR REPLACE VIEW enigma.weblistings AS
select enigma.stocklistings.StockCode AS StockCode,enigma.sectypes.typeShort AS SecType,enigma.organisations.Name1 AS Org,enigma.stocklistings.DelistDate AS DelistDate,enigma.organisations.PersonID AS OrgID,enigma.stocklistings.FirstTradeDate AS FirstTradeDate,enigma.stocklistings.FinalTradeDate AS FinalTradeDate,enigma.listings.shortName AS ShortName,enigma.stocklistings.IssueID AS IssueID,enigma.listings.stockExID AS StockExID,dlreasons.Reason AS Reason from ((stocklistings join (((issue join enigma.organisations) join enigma.sectypes) join enigma.listings) on(((enigma.issue.issuer = enigma.organisations.PersonID) and (enigma.stocklistings.IssueID = enigma.issue.ID1) and (enigma.stocklistings.StockExID = enigma.listings.stockExID) and (enigma.issue.typeID = enigma.sectypes.typeID)))) left join dlreasons on((enigma.stocklistings.ReasonID = dlreasons.ReasonID))) where (enigma.listings.stockExID in (1,20,22,23,38,71)) order by enigma.sectypes.typeShort,enigma.stocklistings.FirstTradeDate;

-- View: weborgs
CREATE OR REPLACE VIEW enigma.weborgs AS
select enigma.organisations.Domicile AS domID,enigma.organisations.PersonID AS orgID,enigma.organisations.Name1 AS org,enigma.organisations.orgType AS orgType,cast(enigma.organisations.cName as char charset utf8mb3) AS cName,domiciles.FullName AS Dom,orgtypes.typeName AS typeName,MSDATEACC(enigma.organisations.incDate,enigma.organisations.incAcc) AS inc,enigma.organisations.incDate AS incDate,enigma.organisations.disDate AS disDate,enigma.organisations.incAcc AS incAcc,enigma.organisations.incID AS incID,dismodes.disModeTxt AS disModeTxt,enigma.organisations.SFCID AS SFCID,enigma.organisations.SFCri AS SFCri,enigma.organisations.UKURI AS UKURI,enigma.organisations.incUpd AS incupd,oldcr.crn AS oldcrn from ((((organisations left join domiciles on((domiciles.ID = enigma.organisations.Domicile))) left join orgtypes on((enigma.organisations.orgType = orgtypes.orgType))) left join dismodes on((enigma.organisations.disMode = dismodes.ID))) left join oldcr on((enigma.organisations.PersonID = oldcr.personID)));


-- ============================================================
-- REGULAR VIEWS (31 views)
-- ============================================================

-- MANUAL REVIEW: Uses custom function: MSdateAcc
-- MANUAL REVIEW: Depends on view: listedcoshkall
-- View: auditorchanges
CREATE OR REPLACE VIEW enigma.auditorchanges AS
select enigma.adviserships.Company AS Company,enigma.adviserships.Adviser AS Adviser,MSdateAcc(enigma.adviserships.AddDate,enigma.adviserships.AddAcc) AS add,MSdateAcc(enigma.adviserships.RemDate,enigma.adviserships.RemAcc) AS rem,COALESCE(enigma.adviserships.RemDate,enigma.adviserships.AddDate) AS SortDate,enigma.listedcoshkall.name AS CoName,enigma.organisations.Name1 AS AdvName from ((organisations join enigma.listedcoshkall) join enigma.adviserships on(((enigma.listedcoshkall.personID = enigma.adviserships.Company) and (enigma.organisations.PersonID = enigma.adviserships.Adviser)))) where (enigma.adviserships.Role = 0);

-- MANUAL REVIEW: Uses custom function: nameppl
-- MANUAL REVIEW: Depends on view: listedcoshkever
-- View: dirnocname
CREATE OR REPLACE VIEW enigma.dirnocname AS
select distinct d.Company AS orgID,d.Director AS director,o.Name1 AS orgName,nameppl(p.Name1,p.Name2) AS pplname from enigma.directorships d join (((listedcoshkever l join enigma.positions po) join enigma.people p) join enigma.organisations o) on(((d.Company = l.issuer) and (d.Company = o.PersonID) and (d.Director = p.PersonID) and (d.positionID = po.positionID)))) where ((po.rank = 1) and (p.cName is null)) order by o.Name1,pplname;

-- View: entall
CREATE OR REPLACE VIEW enigma.entall AS
select enigma.entitlements.importID AS importID,enigma.entitlements.daily AS daily,enigma.entitlements.AutoProcess AS AutoProcess,enigma.entitlements.IgnoreRow AS IgnoreRow,enigma.entitlements.STOCK AS STOCK,enigma.entitlements.SEHKID AS SEHKID,enigma.entitlements.IssueID AS IssueID,enigma.entitlements.STK_NAME AS STK_NAME,enigma.entitlements.TYPE AS TYPE,enigma.entitlements.Announced AS Announced,enigma.entitlements.YearEnd AS YearEnd,enigma.entitlements.DETAILS_1 AS DETAILS_1,enigma.entitlements.DETAILS_2 AS DETAILS_2,enigma.entitlements.DETAILS_3 AS DETAILS_3,enigma.entitlements.DETAILS_4 AS DETAILS_4,enigma.entitlements.DETAILS_5 AS DETAILS_5,enigma.entitlements.DETAILS_6 AS DETAILS_6,enigma.entitlements.BookCloseFr AS BookCloseFr,enigma.entitlements.BookCloseTo AS BookCloseTo,enigma.entitlements.PayDate AS PayDate,enigma.entitlements.ExDate AS ExDate,enigma.entitlements.CapChangeType1 AS CapChangeType1,enigma.entitlements.Curr1 AS Curr1,enigma.entitlements.Price1 AS Price1,enigma.entitlements.PriceHKD1 AS PriceHKD1,enigma.entitlements.Old1 AS Old1,enigma.entitlements.New1 AS New1,enigma.entitlements.Date1 AS Date1,enigma.entitlements.IssueID1 AS IssueID1,enigma.entitlements.Descrip1 AS Descrip1,enigma.entitlements.CapChangeType2 AS CapChangeType2,enigma.entitlements.Curr2 AS Curr2,enigma.entitlements.Price2 AS Price2,enigma.entitlements.PriceHKD2 AS PriceHKD2,enigma.entitlements.Old2 AS Old2,enigma.entitlements.New2 AS New2,enigma.entitlements.Date2 AS Date2,enigma.entitlements.IssueID2 AS IssueID2,enigma.entitlements.Descrip2 AS Descrip2,enigma.entitlements.CapChangeType3 AS CapChangeType3,enigma.entitlements.Curr3 AS Curr3,enigma.entitlements.Price3 AS Price3,enigma.entitlements.PriceHKD3 AS PriceHKD3,enigma.entitlements.Old3 AS Old3,enigma.entitlements.New3 AS New3,enigma.entitlements.Date3 AS Date3,enigma.entitlements.IssueID3 AS IssueID3,enigma.entitlements.Descrip3 AS Descrip3,enigma.entitlements.CapChangeType4 AS CapChangeType4,enigma.entitlements.Curr4 AS Curr4,enigma.entitlements.Price4 AS Price4,enigma.entitlements.PriceHKD4 AS PriceHKD4,enigma.entitlements.Old4 AS Old4,enigma.entitlements.New4 AS New4,enigma.entitlements.Date4 AS Date4,enigma.entitlements.IssueID4 AS IssueID4,enigma.entitlements.Descrip4 AS Descrip4,enigma.entitlements.Event1 AS Event1,enigma.entitlements.Event2 AS Event2,enigma.entitlements.Event3 AS Event3,enigma.entitlements.Event4 AS Event4,enigma.entitlements.modified AS modified,trim(concat(COALESCE(enigma.entitlements.DETAILS_1,''),' ',COALESCE(enigma.entitlements.DETAILS_2,''),' ',COALESCE(enigma.entitlements.DETAILS_3,''),' ',COALESCE(enigma.entitlements.DETAILS_4,''),' ',COALESCE(enigma.entitlements.DETAILS_5,''),' ',COALESCE(enigma.entitlements.DETAILS_6,''))) AS details,enigma.entitlements.col1 AS col1,enigma.entitlements.col2 AS col2,enigma.entitlements.col3 AS col3,enigma.entitlements.col4 AS col4,enigma.entitlements.col5 AS col5,enigma.entitlements.col6 AS col6 from enigma.entitlements;

-- View: entdetails
CREATE OR REPLACE VIEW enigma.entdetails AS
select enigma.entitlements.importID AS importID,enigma.entitlements.AutoProcess AS AutoProcess,enigma.entitlements.IgnoreRow AS IgnoreRow,enigma.entitlements.STOCK AS STOCK,enigma.entitlements.SEHKID AS SEHKID,enigma.entitlements.IssueID AS IssueID,enigma.entitlements.STK_NAME AS STK_NAME,enigma.entitlements.TYPE AS TYPE,enigma.entitlements.Announced AS Announced,enigma.entitlements.YearEnd AS YearEnd,enigma.entitlements.DETAILS_1 AS DETAILS_1,enigma.entitlements.DETAILS_2 AS DETAILS_2,enigma.entitlements.DETAILS_3 AS DETAILS_3,enigma.entitlements.DETAILS_4 AS DETAILS_4,enigma.entitlements.DETAILS_5 AS DETAILS_5,enigma.entitlements.DETAILS_6 AS DETAILS_6,enigma.entitlements.BookCloseFr AS BookCloseFr,enigma.entitlements.BookCloseTo AS BookCloseTo,enigma.entitlements.PayDate AS PayDate,enigma.entitlements.ExDate AS ExDate,enigma.entitlements.CapChangeType1 AS CapChangeType1,enigma.entitlements.Curr1 AS Curr1,enigma.entitlements.Price1 AS Price1,enigma.entitlements.PriceHKD1 AS PriceHKD1,enigma.entitlements.Old1 AS Old1,enigma.entitlements.New1 AS New1,enigma.entitlements.Date1 AS Date1,enigma.entitlements.IssueID1 AS IssueID1,enigma.entitlements.Descrip1 AS Descrip1,enigma.entitlements.CapChangeType2 AS CapChangeType2,enigma.entitlements.Curr2 AS Curr2,enigma.entitlements.Price2 AS Price2,enigma.entitlements.PriceHKD2 AS PriceHKD2,enigma.entitlements.Old2 AS Old2,enigma.entitlements.New2 AS New2,enigma.entitlements.Date2 AS Date2,enigma.entitlements.IssueID2 AS IssueID2,enigma.entitlements.Descrip2 AS Descrip2,enigma.entitlements.CapChangeType3 AS CapChangeType3,enigma.entitlements.Curr3 AS Curr3,enigma.entitlements.Price3 AS Price3,enigma.entitlements.PriceHKD3 AS PriceHKD3,enigma.entitlements.Old3 AS Old3,enigma.entitlements.New3 AS New3,enigma.entitlements.Date3 AS Date3,enigma.entitlements.IssueID3 AS IssueID3,enigma.entitlements.Descrip3 AS Descrip3,enigma.entitlements.CapChangeType4 AS CapChangeType4,enigma.entitlements.Curr4 AS Curr4,enigma.entitlements.Price4 AS Price4,enigma.entitlements.PriceHKD4 AS PriceHKD4,enigma.entitlements.Old4 AS Old4,enigma.entitlements.New4 AS New4,enigma.entitlements.Date4 AS Date4,enigma.entitlements.IssueID4 AS IssueID4,enigma.entitlements.Descrip4 AS Descrip4,enigma.entitlements.Event1 AS Event1,enigma.entitlements.Event2 AS Event2,enigma.entitlements.Event3 AS Event3,enigma.entitlements.Event4 AS Event4,enigma.entitlements.modified AS modified,concat(enigma.entitlements.DETAILS_1,' ',enigma.entitlements.DETAILS_2,' ',enigma.entitlements.DETAILS_3,' ',enigma.entitlements.DETAILS_4,' ',enigma.entitlements.DETAILS_5,' ',enigma.entitlements.DETAILS_6) AS details from enigma.entitlements where ((0 = enigma.entitlements.IgnoreRow) and (0 = enigma.entitlements.AutoProcess));

-- View: entlive
CREATE OR REPLACE VIEW enigma.entlive AS
select enigma.entitlements.importID AS importID,enigma.entitlements.daily AS daily,enigma.entitlements.AutoProcess AS AutoProcess,enigma.entitlements.IgnoreRow AS IgnoreRow,enigma.entitlements.STOCK AS STOCK,enigma.entitlements.SEHKID AS SEHKID,enigma.entitlements.IssueID AS IssueID,enigma.entitlements.STK_NAME AS STK_NAME,enigma.entitlements.TYPE AS TYPE,enigma.entitlements.Announced AS Announced,enigma.entitlements.YearEnd AS YearEnd,enigma.entitlements.DETAILS_1 AS DETAILS_1,enigma.entitlements.DETAILS_2 AS DETAILS_2,enigma.entitlements.DETAILS_3 AS DETAILS_3,enigma.entitlements.DETAILS_4 AS DETAILS_4,enigma.entitlements.DETAILS_5 AS DETAILS_5,enigma.entitlements.DETAILS_6 AS DETAILS_6,enigma.entitlements.BookCloseFr AS BookCloseFr,enigma.entitlements.BookCloseTo AS BookCloseTo,enigma.entitlements.PayDate AS PayDate,enigma.entitlements.ExDate AS ExDate,enigma.entitlements.CapChangeType1 AS CapChangeType1,enigma.entitlements.Curr1 AS Curr1,enigma.entitlements.Price1 AS Price1,enigma.entitlements.PriceHKD1 AS PriceHKD1,enigma.entitlements.Old1 AS Old1,enigma.entitlements.New1 AS New1,enigma.entitlements.Date1 AS Date1,enigma.entitlements.IssueID1 AS IssueID1,enigma.entitlements.Descrip1 AS Descrip1,enigma.entitlements.CapChangeType2 AS CapChangeType2,enigma.entitlements.Curr2 AS Curr2,enigma.entitlements.Price2 AS Price2,enigma.entitlements.PriceHKD2 AS PriceHKD2,enigma.entitlements.Old2 AS Old2,enigma.entitlements.New2 AS New2,enigma.entitlements.Date2 AS Date2,enigma.entitlements.IssueID2 AS IssueID2,enigma.entitlements.Descrip2 AS Descrip2,enigma.entitlements.CapChangeType3 AS CapChangeType3,enigma.entitlements.Curr3 AS Curr3,enigma.entitlements.Price3 AS Price3,enigma.entitlements.PriceHKD3 AS PriceHKD3,enigma.entitlements.Old3 AS Old3,enigma.entitlements.New3 AS New3,enigma.entitlements.Date3 AS Date3,enigma.entitlements.IssueID3 AS IssueID3,enigma.entitlements.Descrip3 AS Descrip3,enigma.entitlements.CapChangeType4 AS CapChangeType4,enigma.entitlements.Curr4 AS Curr4,enigma.entitlements.Price4 AS Price4,enigma.entitlements.PriceHKD4 AS PriceHKD4,enigma.entitlements.Old4 AS Old4,enigma.entitlements.New4 AS New4,enigma.entitlements.Date4 AS Date4,enigma.entitlements.IssueID4 AS IssueID4,enigma.entitlements.Descrip4 AS Descrip4,enigma.entitlements.Event1 AS Event1,enigma.entitlements.Event2 AS Event2,enigma.entitlements.Event3 AS Event3,enigma.entitlements.Event4 AS Event4,enigma.entitlements.modified AS modified,enigma.entitlements.col1 AS col1,enigma.entitlements.col2 AS col2,enigma.entitlements.col3 AS col3,enigma.entitlements.col4 AS col4,enigma.entitlements.col5 AS col5,enigma.entitlements.col6 AS col6 from enigma.entitlements where ((enigma.entitlements.IgnoreRow = 0) and (enigma.entitlements.AutoProcess = 0) and ((((((enigma.entitlements.col1 * enigma.entitlements.col2) * enigma.entitlements.col3) * enigma.entitlements.col4) * enigma.entitlements.col5) * enigma.entitlements.col6) = true));

-- View: hkdelisted
CREATE OR REPLACE VIEW enigma.hkdelisted AS
select enigma.organisations.Name1 AS Name,enigma.stocklistings.DelistDate AS DelistDate,enigma.organisations.PersonID AS PersonID from enigma.organisations join enigma.issue join enigma.stocklistings) on(((enigma.issue.ID1 = enigma.stocklistings.IssueID) and (enigma.organisations.PersonID = enigma.issue.issuer)))) where ((enigma.stocklistings.DelistDate <= CURRENT_TIMESTAMP) and (enigma.issue.typeID in (0,6,7)) and (enigma.stocklistings.StockExID in (1,20))) order by enigma.organisations.Name1;

-- View: hklistedordsever
CREATE OR REPLACE VIEW enigma.hklistedordsever AS
select distinct enigma.stocklistings.IssueID AS issueID,enigma.issue.issuer AS issuer from enigma.stocklistings join enigma.issue on((enigma.stocklistings.IssueID = enigma.issue.ID1))) where ((enigma.stocklistings.StockExID in (1,20,23)) and (0 = enigma.stocklistings.2ndCtr) and (enigma.issue.typeID in (0,6,7,8,10,42)));

-- View: hklistedordsnow
CREATE OR REPLACE VIEW enigma.hklistedordsnow AS
select distinct enigma.stocklistings.IssueID AS issueID,enigma.issue.issuer AS issuer from enigma.stocklistings join enigma.issue on((enigma.stocklistings.IssueID = enigma.issue.ID1))) where ((enigma.stocklistings.StockExID in (1,20,23)) and (0 = enigma.stocklistings.2ndCtr) and (enigma.issue.typeID in (0,6,7,8,10,42)) and ((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= CURRENT_TIMESTAMP)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > CURRENT_TIMESTAMP)));

-- MANUAL REVIEW: Depends on view: listedcoshk
-- View: inedhk
CREATE OR REPLACE VIEW enigma.inedhk AS
select enigma.directorships.Director AS Director,enigma.directorships.Company AS Company,enigma.directorships.ApptDate AS ApptDate from enigma.listedcoshk join enigma.positions join enigma.directorships on((enigma.positions.positionID = enigma.directorships.positionID))) on((enigma.listedcoshk.issuer = enigma.directorships.Company))) where ((enigma.positions.status = 3) and (enigma.positions.rank = 1) and ((enigma.directorships.ResDate is null) or (enigma.directorships.ResDate >= CURRENT_TIMESTAMP)));

-- View: inedhkdistncos
CREATE OR REPLACE VIEW enigma.inedhkdistncos AS
select inedhkperco.NumberOfSeats AS NumberOfSeats,count(inedhkperco.PersonID) AS NumberOfCos from inedhkperco group by inedhkperco.NumberOfSeats;

-- View: inedhkdistnpeople
CREATE OR REPLACE VIEW enigma.inedhkdistnpeople AS
select inedhkperperson.NumberOfSeats AS NumberOfSeats,count(inedhkperperson.Director) AS NumberOfPeople,sum((inedhkperperson.Sex = 'F')) AS Female from inedhkperperson group by inedhkperperson.NumberOfSeats;

-- MANUAL REVIEW: Depends on view: listedcoshkall
-- View: inedhkperco
CREATE OR REPLACE VIEW enigma.inedhkperco AS
select enigma.listedcoshkall.personID AS PersonID,count(inednow.Director) AS NumberOfSeats,enigma.listedcoshkall.name AS Name from enigma.listedcoshkall left join inednow on((enigma.listedcoshkall.personID = inednow.Company))) group by enigma.listedcoshkall.personID,enigma.listedcoshkall.name;

-- View: inedhkperperson
CREATE OR REPLACE VIEW enigma.inedhkperperson AS
select count(inedhk.Director) AS NumberOfSeats,inedhk.Director AS Director,concat(enigma.people.Name1,', ',enigma.people.Name2) AS Name,enigma.people.Sex AS Sex,enigma.people.YOB AS YOB from (inedhk join enigma.people on((inedhk.Director = enigma.people.PersonID))) group by inedhk.Director;

-- View: inednow
CREATE OR REPLACE VIEW enigma.inednow AS
select enigma.directorships.Director AS Director,enigma.directorships.Company AS Company,enigma.directorships.ApptDate AS ApptDate from enigma.positions join enigma.directorships on((enigma.positions.positionID = enigma.directorships.positionID))) where ((enigma.positions.status = 3) and (enigma.positions.rank = 1) and ((enigma.directorships.ResDate is null) or (enigma.directorships.ResDate > CURRENT_TIMESTAMP)));

-- MANUAL REVIEW: Depends on view: maxdate
-- View: issuedlatest
CREATE OR REPLACE VIEW enigma.issuedlatest AS
select i.issueID AS issueID,i.outstanding AS outstanding,i.atDate AS atDate from enigma.issuedshares i join issuedlatestdate t on(((i.issueID = t.issueID) and (i.atDate = t.maxDate))));

-- MANUAL REVIEW: Depends on view: maxdate
-- View: issuedlatestdate
CREATE OR REPLACE VIEW enigma.issuedlatestdate AS
select enigma.issuedshares.issueID AS issueID,max(enigma.issuedshares.atDate) AS maxDate from enigma.issuedshares group by enigma.issuedshares.issueID;

-- View: issuers2003
CREATE OR REPLACE VIEW enigma.issuers2003 AS
select distinct enigma.organisations.PersonID AS personID,enigma.organisations.Name1 AS name from ((stocklistings join enigma.issue on((enigma.stocklistings.IssueID = enigma.issue.ID1))) join enigma.organisations on((enigma.issue.issuer = enigma.organisations.PersonID))) where (((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= '2003-12-31')) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > '2004-09-30')) and (enigma.stocklistings.StockExID in (1,20)) and (enigma.issue.typeID not in (1,2,40,41)));

-- View: issues2003
CREATE OR REPLACE VIEW enigma.issues2003 AS
select issuers2003.personID AS personID,enigma.issue.ID1 AS issueID,issuers2003.name AS name,enigma.sectypes.typeShort AS typeShort from (issuers2003 join enigma.issue join enigma.sectypes) on(((issuers2003.personID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID)))) where (enigma.issue.typeID in (0,7,8,6)) order by issuers2003.name,enigma.sectypes.typeShort;

-- View: issuesforhku
CREATE OR REPLACE VIEW enigma.issuesforhku AS
select distinct listingsforhku.personID AS personID,listingsforhku.name AS name,enigma.issue.ID1 AS issueID,enigma.sectypes.typeShort AS typeShort from (listingsforhku join enigma.issue join enigma.sectypes) on(((listingsforhku.personID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID)))) where (enigma.issue.typeID not in (1,2,40,41)) order by listingsforhku.name,enigma.sectypes.typeShort;

-- View: listedfirsttrade
CREATE OR REPLACE VIEW enigma.listedfirsttrade AS
select enigma.issue.issuer AS PersonID,min(enigma.stocklistings.FirstTradeDate) AS FirstTradeDate from enigma.issue join enigma.stocklistings on((enigma.issue.ID1 = enigma.stocklistings.IssueID))) where (((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > CURRENT_TIMESTAMP)) and (enigma.issue.typeID <> 1)) group by enigma.issue.issuer;

-- View: listingsforhku
CREATE OR REPLACE VIEW enigma.listingsforhku AS
select enigma.organisations.PersonID AS personID,enigma.organisations.Name1 AS name,enigma.sectypes.typeShort AS typeShort,enigma.stocklistings.IssueID AS issueID,enigma.stocklistings.StockCode AS stockCode,enigma.stocklistings.FirstTradeDate AS FirstTradeDate,enigma.stocklistings.DelistDate AS DelistDate from enigma.stocklistings join ((issue join enigma.organisations) join enigma.sectypes) on(((enigma.stocklistings.IssueID = enigma.issue.ID1) and (enigma.issue.issuer = enigma.organisations.PersonID) and (enigma.issue.typeID = enigma.sectypes.typeID)))) where (((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > '2000-01-01')) and (enigma.stocklistings.StockExID in (1,20)) and (enigma.issue.typeID not in (1,2,40,41,46))) order by enigma.organisations.Name1,enigma.stocklistings.FirstTradeDate;

-- MANUAL REVIEW: Depends on view: listedcoshkall
-- View: missingage
CREATE OR REPLACE VIEW enigma.missingage AS
select h.name AS name,p.Name1 AS name1,p.Name2 AS name2,d.ApptDate AS apptDate,d.ResDate AS resDate from enigma.listedcoshkall h join ((directorships d join enigma.people p) join enigma.positions pn) on(((h.personID = d.Company) and (d.Director = p.PersonID) and (d.positionID = pn.positionID)))) where (((d.ApptDate is null) or (d.ApptDate <= CURRENT_TIMESTAMP)) and ((d.ResDate is null) or (d.ResDate > CURRENT_TIMESTAMP)) and (pn.rank < 2) and (p.YOB is null));

-- View: missingdistdate
CREATE OR REPLACE VIEW enigma.missingdistdate AS
select e.eventID AS eventID,e.announced AS announced,o.Name1 AS name1,c.Change AS change,e.exDate AS exDate,sl.StockCode AS StockCode,e.distDate AS distDate from enigma.events e join (((issue i join enigma.stocklistings sl) join enigma.organisations o) join capchangetypes c) on(((e.issueID = i.ID1) and (i.ID1 = sl.IssueID) and (i.issuer = o.PersonID) and (e.eventType = c.CapChangeType)))) where ((e.distDate is null) and (e.cancelDate is null) and (sl.StockExID in (1,20,22,23,38)) and ((sl.FirstTradeDate is null) or (sl.FirstTradeDate <= e.exDate)) and ((sl.DelistDate is null) or (sl.DelistDate > e.exDate)) and ((e.price <> 0) or (e.eventType in (5,18,25,50)))) order by e.exDate desc,o.Name1;

-- View: missingexent
CREATE OR REPLACE VIEW enigma.missingexent AS
select e.eventID AS eventID,e.announced AS announced,o.Name1 AS name1,c.Change AS change,sl.StockCode AS StockCode,e.exDate AS exDate,e.bookCloseFr AS bookCloseFr,e.bookCloseTo AS bookCloseTo from enigma.events e join (((issue i join enigma.stocklistings sl) join enigma.organisations o) join capchangetypes c) on(((e.issueID = i.ID1) and (i.ID1 = sl.IssueID) and (i.issuer = o.PersonID) and (e.eventType = c.CapChangeType)))) where ((e.exDate is null) and (e.cancelDate is null) and (sl.StockExID in (1,20,22,23,38)) and ((sl.FirstTradeDate is null) or (sl.FirstTradeDate <= e.announced)) and ((sl.DelistDate is null) or (sl.DelistDate > e.announced)) and ((e.price <> 0) or ((e.new is not null) and (e.old is not null)))) order by e.announced desc,o.Name1;

-- View: st1cos
CREATE OR REPLACE VIEW enigma.st1cos AS
select distinct enigma.issue.issuer AS issuer from enigma.issue where (enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= '2003-12-31')))) and enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > '2005-03-31')))) and (enigma.issue.typeID in (0,6,7,42)));

-- View: st1dates
CREATE OR REPLACE VIEW enigma.st1dates AS
select st1cos.issuer AS issuer,(select max(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st1cos.issuer) and (enigma.documents.RecordDate <= '2003-12-31'))) AS befDate,(select min(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st1cos.issuer) and (enigma.documents.RecordDate >= '2004-12-31'))) AS aftDate from st1cos;

-- View: st2cos
CREATE OR REPLACE VIEW enigma.st2cos AS
select distinct enigma.issue.issuer AS issuer from enigma.issue where (enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= '2011-12-31')))) and enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > '2012-12-31')))) and (enigma.issue.typeID in (0,6,7,42)));

-- View: st2dates
CREATE OR REPLACE VIEW enigma.st2dates AS
select st2cos.issuer AS issuer,(select max(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st2cos.issuer) and (enigma.documents.RecordDate <= '2011-12-31'))) AS befDate,(select min(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st2cos.issuer) and (enigma.documents.RecordDate >= '2012-12-31'))) AS aftDate from st2cos;

-- View: st4cos
CREATE OR REPLACE VIEW enigma.st4cos AS
select distinct enigma.issue.issuer AS issuer from enigma.issue where (enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.FirstTradeDate is null) or (enigma.stocklistings.FirstTradeDate <= '2007-12-31')))) and enigma.issue.ID1 in (select enigma.stocklistings.IssueID from enigma.stocklistings where ((enigma.stocklistings.StockExID in (1,20)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > '2008-12-31')))) and (enigma.issue.typeID in (0,6,7,42)));

-- View: st4dates
CREATE OR REPLACE VIEW enigma.st4dates AS
select st4cos.issuer AS issuer,(select max(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st4cos.issuer) and (enigma.documents.RecordDate <= '2007-12-31'))) AS befDate,(select min(enigma.documents.RecordDate) from enigma.documents where ((enigma.documents.repID is not null) and (enigma.documents.OrgID = st4cos.issuer) and (enigma.documents.RecordDate >= '2008-12-31'))) AS aftDate from st4cos;

-- View: stockcodes1000
CREATE OR REPLACE VIEW enigma.stockcodes1000 AS
select enigma.stocklistings.StockCode AS StockCode from enigma.stocklistings where ((enigma.stocklistings.StockCode < _latin1'1000') and (enigma.stocklistings.StockExID in (1,20,22,23,38)) and ((enigma.stocklistings.DelistDate is null) or (enigma.stocklistings.DelistDate > CURRENT_TIMESTAMP))) order by enigma.stocklistings.StockCode;


-- ============================================================
-- DEFERRED VIEWS (4 views)
-- These views use custom functions that haven't been ported yet:
--   STOCKCODETHEN, SPLITADJ, OUTSTANDING
-- Uncomment and test after porting those functions
-- ============================================================

-- View: buybacksadj (COMMENTED OUT - needs functions)
-- -- -- View: buybacksadj
-- CREATE OR REPLACE VIEW enigma.buybacksadj AS
-- select STOCKCODETHEN(enigma.capchanges.IssueID,enigma.capchanges.EffDate) AS stockCode,enigma.capchanges.IssueID AS IssueID,enigma.capchanges.EffDate AS EffDate,enigma.capchanges.exchID AS exchID,COALESCE(b2.name,b1.name) AS exchName,(-(enigma.capchanges.shares) / SPLITADJ(enigma.capchanges.IssueID,enigma.capchanges.EffDate)) AS shares,enigma.capchanges.Value AS Value,enigma.currencies.currency AS Currency,concat(enigma.organisations.Name1,': ',enigma.sectypes.typeShort::TEXT) AS Name from (((capchanges join (((issue join enigma.organisations) join enigma.sectypes) join enigma.bbexch b1) on(((enigma.issue.ID1 = enigma.capchanges.IssueID) and (enigma.organisations.PersonID = enigma.issue.issuer) and (enigma.issue.typeID = enigma.sectypes.typeID) and (enigma.capchanges.exchID = b1.ID)))) left join enigma.currencies on((enigma.capchanges.Currency = enigma.currencies.ID))) left join enigma.bbexch b2 on((b1.mapTo = b2.ID))) where (enigma.capchanges.CapChangeType = 1);
-- 

-- View: currentlistedshareshk (COMMENTED OUT - needs functions)
-- -- -- View: currentlistedshareshk
-- CREATE OR REPLACE VIEW enigma.currentlistedshareshk AS
-- select sl.StockCode AS StockCode,enigma.sectypes.typeShort AS Type,i.issuer AS issuer,sl.FirstTradeDate AS FirstTradeDate,sl.StockExID AS StockExID,sl.IssueID AS issueID,OUTSTANDING(i.ID1,CURRENT_TIMESTAMP) AS outstanding from enigma.stocklistings sl join enigma.issue i join enigma.sectypes) on(((sl.IssueID = i.ID1) and (i.typeID = enigma.sectypes.typeID)))) where (((sl.FirstTradeDate is null) or (sl.FirstTradeDate <= CURRENT_TIMESTAMP)) and ((sl.DelistDate is null) or (sl.DelistDate > CURRENT_TIMESTAMP)) and (sl.StockExID in (1,20,22)) and (i.typeID not in (1,2,5,40,41,46)) and ((i.SEHKcurr is null) or (i.SEHKcurr = 0)));
-- 

-- View: hkmarketcapperstock (COMMENTED OUT - needs functions)
-- -- -- View: hkmarketcapperstock
-- CREATE OR REPLACE VIEW enigma.hkmarketcapperstock AS
-- select currentlistedshareshk.issuer AS Issuer,enigma.hkexdata.StockCode AS StockCode,currentlistedshareshk.outstanding AS Outstanding,enigma.hkexdata.NomPrice AS NomPrice,enigma.hkexdata.BoardLot AS BoardLot,(enigma.hkexdata.NomPrice * currentlistedshareshk.outstanding) AS MarketCap,(enigma.hkexdata.NomPrice * enigma.hkexdata.BoardLot) AS LotValue,enigma.organisations.Name1 AS Name,currentlistedshareshk.StockExID AS StockExID,currentlistedshareshk.Type AS Type,enigma.hkexdata.PriceDate AS PriceDate from ((organisations join enigma.hkexdata) join currentlistedshareshk on(((enigma.hkexdata.IssueID = currentlistedshareshk.issueID) and (enigma.organisations.PersonID = currentlistedshareshk.issuer))));
-- 

-- View: hkstocksbyboardlot (COMMENTED OUT - needs functions)
-- -- -- View: hkstocksbyboardlot
-- CREATE OR REPLACE VIEW enigma.hkstocksbyboardlot AS
-- select h.BoardLot AS BoardLot,count(h.StockCode) AS Stocks,sum((h.MarketCap / 1000000)) AS mcapM,sum(h.Outstanding) AS shares from hkmarketcapperstock h group by h.BoardLot order by h.BoardLot;
-- 

