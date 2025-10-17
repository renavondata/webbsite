<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim dom,monthID,count,fullName,friendly,title,sort,URL,ob,con,rs
Call openEnigmaRs(con,rs)
dom=getInt("dom",2)
sort=Request("sort")
Select case sort
	Case "namdn" ob="name DESC,regDate DESC"
	Case "regup" ob="regDate,name"
	Case "regdn" ob="regDate DESC,name DESC"
	Case Else
		sort="namup"
		ob="name,regDate"
End Select
rs.Open "SELECT friendly FROM domiciles WHERE ID="&dom,con
friendly=rs("friendly")
rs.Close
title="Foreign companies registered in HK"
URL=Request.ServerVariables("URL")&"?dom="&dom
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<h3><a href="domregHK.asp?">Domicile:</a>&nbsp;<%=friendly%></h3>
<p>Note:</p>
<%
rs.Open "SELECT personID,name1 as name,regDate FROM organisations JOIN freg ON personID=orgID "&_
	"WHERE hostDom=1 AND isNull(cesDate) AND isNull(disDate) AND "&_
	"domicile="&dom&" ORDER BY "&ob,con
%>
<table class="txtable">
	<tr>
		<th>Count</th>
		<th><%SL "Name","namup","namdn"%></th>
		<th><%SL "Registered","regup","regdn"%></th>
	</tr>
	<%count=1
	Do while not rs.EOF%>
		<tr>
			<td><%=count%></td>
			<td><a href='orgdata.asp?p=<%=rs("personID")%>'><%=rs("name")%></a></td>
			<td><%=MSDate(rs("regDate"))%></td>
		</tr>
		<%rs.MoveNext
		count=count+1
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>