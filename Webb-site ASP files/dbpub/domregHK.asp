<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,total,count,title,x,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select case sort
	Case "cntup" ob="domCnt,friendly"
	Case "domup" ob="friendly"
	Case "domdn" ob="friendly DESC"
	Case Else
		sort="cntdn"
		ob="domCnt DESC,friendly"
End Select
title="Domicile of HK-registered foreign companies"
total=Clng(con.Execute("SELECT count(domicile) as total FROM organisations JOIN freg f ON personID=orgID WHERE isNull(disDate) AND isNull(f.cesDate) AND hostDom=1 AND regID RLIKE '^F[0-9]'").Fields(0))
rs.Open "SELECT domicile,friendly,count(*) AS domcnt FROM organisations o JOIN freg f ON o.personID=orgID LEFT JOIN domiciles d ON domicile=d.ID WHERE hostDom=1 AND regID RLIKE '^F[0-9]' AND "&_
	"isNull(disDate) AND isnull(f.cesDate) GROUP BY domicile ORDER BY "&ob, con
URL=Request.ServerVariables("URL")%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page ranks the domicile of overseas companies which are registered as having a place of business in HK and are not dissolved.
All companies with a primary or secondary listing on the Stock Exchange of Hong Kong Ltd are required to be registered 
(because a share registration office constitutes a place of business), but most registered
companies are not listed.</p>
<p>Note: data on domicile are often unknown after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new registrations 
and name-changes, without stating domicile.</p>
<table class="numtable">
	<tr>
		<th></th>
		<th class="left"><%SL "Domicile","domup","domdn"%></th>
		<th><%SL "Companies","cntdn","cntup"%></th>
		<th><b>Share %</b></th>
	</tr>
	<%Do Until rs.EOF
		count=Clng(rs("domcnt"))
		x=x+1%>
		<tr>
			<td><%=x%></td>
			<td class="left"><a href="incFcal.asp?dom=<%=rs("domicile")%>"><%=rs("friendly")%></a></td>
			<td><%=FormatNumber(count,0)%></td>
			<td><%=FormatNumber(count*100/total,2)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
	<tr>
		<td></td>
		<td class="left">Total companies</td>
		<td><%=FormatNumber(total,0)%></td>
		<td>100.00</td>
	</tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>