<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim ob,e,sort,total,count,title,exStr,URL,con,rs
Call openEnigmaRs(con,rs)
URL=Request.ServerVariables("URL")
sort=Request("sort")
e=Request("e")
Select case sort
	Case "cntup" ob="cnt"
	Case "domup" ob="domName"
	Case "domdn" ob="domName DESC"
	Case Else
		sort="cntdn"
		ob="cnt DESC"
End Select

Select Case e
	Case "g"
		exStr="20"
		title="GEM"
	Case "m"
		exStr="1"
		title="Main Board"
	Case Else
		exStr="1,20"
		e="a"
		title="Main Board and GEM"
End Select

total=Clng(con.Execute("SELECT count(*) FROM listedcosHK WHERE stockExID IN("&exstr&")").Fields(0))
rs.Open "SELECT d.ID AS ID, d.fullName as domName, count(issuer) AS cnt FROM "&_
	"listedcosHK JOIN (organisations o,domiciles d) ON issuer=personID AND o.domicile=d.ID "&_
	"WHERE stockExID IN("&exstr&") GROUP BY d.ID,d.fullname ORDER BY "&ob,con
title="Domicile of HK "&title&" listed companies"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,a","Main Board,GEM,All HK",URL&"?sort="&sort&"&amp;e=")%>
<%URL=URL&"?e="&e%>
<table class="numtable fcl">
	<tr>
		<th><%SL "Domicile","domup","domdn"%></th>
		<th><%SL "Count","cntdn","cntup"%></th>
		<th><b>Share %</b></th>
	</tr>
	<%Do Until rs.EOF
		count=Clng(rs("cnt"))%>
		<tr>
			<td><a href='domicilecos.asp?e=<%=e%>&dom=<%=rs("ID")%>'><%=rs("domName")%></a></td>
			<td><%=count%></td>
			<td><%=FormatNumber(count*100/total,2)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
	<tr>
		<td>Total companies</td>
		<td><%=total%></td>
		<td>100.00</td>
	</tr>
</table>
<p>Note: the table includes only companies with a primary listing in HK.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>