<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim ob,e,eCon,sort,URL,total,count,title,con,rs
Call openEnigmaRs(con,rs)
URL=Request.ServerVariables("URL")
sort=Request("sort")
e=Request("e")
Select case sort
	Case "cntdn" ob="cnt DESC,MonthID"
	Case "cntup" ob="cnt,MonthID"
	Case "mondn" ob="MonthID DESC"
	Case Else
	sort="monup"
	ob="MonthID"
End Select
Select Case e
	Case "g" eCon="20": title="GEM"
	Case "m" eCon=1: title="Main Board"
	Case Else
		e="a"
		eCon="1,20"
		title="Main Board and GEM"
End Select
total=CLng(con.Execute("SELECT COUNT(*) FROM listedcoshk WHERE stockExID IN("&eCon&")").Fields(0))
rs.Open "SELECT monthID,shortName,COUNT(personID) AS cnt FROM months m LEFT JOIN "&_
	"(listedcoshk l JOIN orgdata o ON l.issuer=o.PersonID AND stockExID IN("&eCon&")) "&_
	"ON m.monthID=o.yearendMonth GROUP BY monthID ORDER BY "&ob,con
title="Year-end of HK "&title&" listed companies"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,a","Main Board,GEM,All HK",URL&"?sort="&sort&"&amp;e=")%>
<table class="numtable c2l">
	<%URL=URL&"?e="&e%>
	<tr>
		<th></th>
		<th><%SL "Month","monup","mondn"%></th>
		<th><%SL "Count","cntdn","cntup"%></th>
		<th>Share %</th>
	</tr>
	<%Do Until rs.EOF
		count=CLng(rs("cnt"))%>
		<tr>
			<td><%=rs("MonthID")%></td>
			<td><a href="yearendcos.asp?e=<%=e%>&m=<%=rs("MonthID")%>"><%=rs("ShortName")%></a></td>
			<td><%=count%></td>
			<td><%=FormatNumber(count*100/total,2)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
	<tr class="total">
		<td></td>
		<td class="left">Total</td>
		<td><%=total%></td>
		<td>100.00</td>
	</tr>
</table>
<p><b>Note</b>: the table includes only companies with a primary listing in HK.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
