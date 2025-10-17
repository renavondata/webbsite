<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "newup" ob="newDom,dateChanged DESC"
	Case "newdn" ob="newDom DESC,dateChanged DESC"
	Case "oldup" ob="oldDom,dateChanged DESC"
	Case "olddn" ob="oldDom DESC,dateChanged DESC"
	Case "dateup" ob="dateChanged,name1"
	Case "datedn" ob="dateChanged DESC,name1"
	Case "namup" ob="name1,dateChanged DESC"
	Case "namdn" ob="name1 DESC,dateChanged DESC"
	Case Else
		ob="dateChanged DESC,name1"
		sort="datedn"
End Select
URL=Request.ServerVariables("URL")%>
<title>Domicile Changes</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Domicile changes</h2>
<p>This table is a list of companies which have changed their domicile by 
continuation in a new jurisdiction. There 
are two ways to change domicile; some companies simply change their domicile from one 
place to another, &quot;continuing&quot; the existence of the same legal entity, like a 
human changing nationality. Some jurisdictions, such as Hong Kong, do not allow 
this, while others, such as the Cayman Islands, do.</p>
<p>More often, a listed company 
becomes a wholly-owned subsidiary of an empty shell company newly-incorporated 
in the chosen jurisdiction, using a &quot;scheme of arrangement&quot; in which each share in the 
listed company is exchanged for one share in the shell, then the shell becomes 
listed instead. In that case, we treat the new vehicle as the continuation of 
the listed company in a new domicile, and we also carry over the directorships 
and adviserships from the previously listed company.</p>
<p>The following is a list of companies redomiciled by continuation.</p>
<%=mobile(3)%>
<table class="txtable yscroll">
	<tr>
		<th><%SL "Current name","namup","namdn"%></th>
		<th class="colHide3"><%SL "Current domicile","newup","newdn"%></th>
		<th><%SL "Old domicile","oldup","olddn"%></th>
		<th><%SL "Until","datedn","dateup"%></th>
	</tr>
<%rs.Open "SELECT orgID,name1,MSdateAcc(dateChanged,dateAcc)dateChanged,d1.friendly AS oldDom,d2.friendly AS newDom FROM domchanges dc "&_
	"JOIN (organisations o,domiciles d1,domiciles d2) "&_
	"ON  dc.orgID=o.personID AND dc.oldDom=d1.ID AND o.domicile=d2.ID ORDER BY "&ob,con
Do Until rs.EOF%>
	<tr>
		<td><a href='orgdata.asp?p=<%=rs("orgID")%>'><%=rs("name1")%></a></td>
		<td class="colHide3"><%=rs("newDom")%></td>
		<td><%=rs("oldDom")%></td>	
		<td class="nowrap"><%=rs("dateChanged")%></td>
	</tr>
	<%rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
