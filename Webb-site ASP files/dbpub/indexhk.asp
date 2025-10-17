<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="../dbpub/functions1.asp"-->
<%Dim p,strWhere,title,con,rs
Call openEnigmaRs(con,rs)
p=Request("p")
title="Reports on companies: names starting with: "&p%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2><%=title%></h2>
<ul>
	<li><a href="#hk-listed">HK-listed</a></li>
	<li><a href="#hk-delisted">HK-delisted</a></li>
</ul>
<hr>
<h3 id="hk-listed">HK-Listed</h3>
<%If p="0" Then
	strWhere="Left(name1,1)>='0' AND Left(name1,1)<='9'"
Else
	strWhere="name1 Like '"&p&"%'"
End If
rs.Open "SELECT DISTINCT issuer,name1 AS name FROM listedcoshk JOIN (personstories ps,organisations o) "&_
	"ON issuer=o.personID AND issuer=ps.personID WHERE "&strWhere&" ORDER BY name",con
If rs.EOF Then%>
	<p>None</p>
<%Else
	Do Until rs.EOF%>
		<p><a href='articles.asp?p=<%=rs("issuer")%>'><%=rs("name")%></a></p>
	<%rs.MoveNext
	Loop
End If
rs.Close%>
<h3 id="hk-delisted">HK-delisted</h3>
<%rs.Open "SELECT DISTINCT issuer,name1 AS name FROM listedcoshkever JOIN organisations ON issuer=personID "&_
	"WHERE issuer NOT IN (SELECT issuer FROM listedcoshk) AND "&strWhere&" ORDER BY name",con
If rs.EOF Then%>
	<p>None</p>
<%Else
	Do Until rs.EOF%>
		<p><a href='articles.asp?p=<%=rs("issuer")%>'><%=rs("name")%></a></p>
	<%rs.MoveNext
	Loop
End If
Call CloseConRs(con,rs)%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>
