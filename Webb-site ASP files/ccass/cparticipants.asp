<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%
Dim sort,URL,ob,cnt,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "namedn" ob="partName DESC"
	Case "ccidup" ob="CCASSID,partName"
	Case "cciddn" ob="CCASSID DESC,partName DESC"
	Case Else
		sort="nameup"
		ob="partName"
End Select
URL=Request.ServerVariables("URL")
rs.Open "SELECT CCASSID, partName, partID FROM ccass.participants WHERE hadHoldings=True ORDER BY "&ob,con%>
<title>CCASS participants</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css" />
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Named CCASS Participants</h2>
<%Call ccassallbar("",3)%>
<p>Click on the links below to show the current CCASS shareholdings of each 
participant. Sort by CCASS ID to show Investor Participants first (who have no 
ID).</p>
<table class="txtable yscroll">
	<tr>
		<th class="colHide3">Count</th>
		<th><%SL "CCASS ID","ccidup","cciddn"%></th>
		<th><%SL "Name","nameup","namedn"%></th>
	</tr>
	<%cnt=0
	Do Until rs.EOF
		cnt=cnt+1
		%>
		<tr>
			<td class="colHide3"><%=cnt%></td>
			<td><%=rs("CCASSID")%></td>
			<td><a href='cholder.asp?part=<%=rs("partID")%>'><%=rs("partName")%></a></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>