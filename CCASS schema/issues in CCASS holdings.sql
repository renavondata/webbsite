#generate CSV for ccass issues
select ID1 issueID,i.issuer,name1,i.typeID,typeShort,typeLong,expmat FROM enigma.issue i JOIN 
(enigma.organisations o,enigma.secTypes s) ON i.issuer=o.personID AND i.typeID=s.typeID
 where ID1 in (Select distinct issueID from ccass.holdings) ORDER BY name1;