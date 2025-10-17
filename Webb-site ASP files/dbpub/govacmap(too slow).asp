<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Sub GenMap(i,n)
	'Generate a branch at level n
	Dim rs,ID
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT ID,IFNULL(a.txt,g.txt)txt FROM govitems g LEFT JOIN govadopt a ON g.ID=a.govitem AND tree=0 "&_
		"WHERE NOT transfer AND NOT reimb AND IFNULL(a.parentID,g.parentID)="&i,con
	Do Until rs.EOF
		ID=rs("ID")%>
		<p><a href="govac.asp?t=0&i=<%=ID%>"><%=rs("txt")%></a></p>
		<%Call GenMap(rs("ID"),n+1) 'iterate
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

Dim title,con,rs
Call openEnigmaRs(con,rs)
title="HKSAR Government accounts site map"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call govacBar(4)
Call GenMap(1251,0)
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
