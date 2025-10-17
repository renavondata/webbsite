<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim person,sort,URL,ob,title,curName,curCname,oldName,oldCname,con,rs
Call openEnigmaRs(con,rs)
person=Request("person")
sort=Request("sort")
Select Case sort
	Case "oldup" ob="oldName"
	Case "olddn" ob="oldName DESC"
	Case "newdn" ob="name1 DESC"
	Case "datup" ob="dateChanged,name1"
	Case "datdn" ob="dateChanged DESC,name1"
	Case Else
		ob="name1"
		sort="newup"
End Select
rs.Open "SELECT o.personID,dateChanged,oldName,oldCname,name1,cName FROM namechanges n JOIN organisations o ON n.personID=o.personID"&_
	" WHERE domicile=1 AND Not isnull(incID) AND (Not isNull(oldName) OR Not isNull(oldCname)) AND "&_
	"((oldName<>name1 OR isNull(oldName)) OR (oldCname<>cName OR isNull(oldCname))) AND "&_
	"dateChanged>=(NOW() - INTERVAL 30 DAY) ORDER BY "&ob,con
title="Name changes of HK-incorporated companies in the last 30 days"
URL=Request.ServerVariables("URL")%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<table class="txtable" style="font-size:10pt">
	<tr>
		<th><%SL "Current Name","newup","newdn"%></th>
		<th><%SL "Old Name","oldup","olddn"%></th>
		<th><%SL "Until","datdn","datup"%></th>
	</tr>
<%Do Until rs.EOF
	curName=rs("name1")
	curcName=rs("cName")
	If Not isNull(curCname) Then curName=curName & "<br>" & curCname
	oldName=rs("oldName")
	oldCname=rs("oldCname")
	If isNull(oldName) Then
		oldName=oldCname
	ElseIf Not isNull(oldCname) Then
		oldName=oldName&"<br>"&oldCname
	End If%>
	<tr>
		<td><a href='orgdata.asp?p=<%=rs("personID")%>'><%=curName%></a></td>
		<td><%=oldName%></td>
		<td><%=MSdate(rs("dateChanged"))%></td>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>