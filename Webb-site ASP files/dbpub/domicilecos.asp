<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim dom,e,exStr,monthID,title,x,ob,sort,URL,sel,domName,con,rs
Call openEnigmaRs(con,rs)
URL=Request.ServerVariables("URL")
dom=getLng("dom",1)
e=Request("e")
sort=Request("sort")
domName=con.Execute("SELECT friendly FROM domiciles WHERE ID="&dom).Fields(0)
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
		title="HK"
End Select
Select case sort
	Case "namedn" ob="name DESC"
	Case "incdup" ob="incDate,name"
	Case "incddn" ob="incDate DESC,name"
	Case "scup" ob="sc"
	Case "scdn" ob="sc DESC"
	Case Else
		sort="nameup"
		ob="name"
End Select
title=title&"-listed companies domiciled in "&domName%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,a","Main Board,GEM,All HK",URL&"?sort="&sort&"&amp;dom="&dom&"&amp;e=")%>
<ul class="navlist"><li><a href="domicile.asp?e=<%=e%>">All domiciles</a></li></ul>
<div class="clear"></div>
<form method="get" action="<%=URL%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="e" value="<%=e%>">
	Select domicile: <select name="dom" onchange="this.form.submit()">
	<%rs.Open "SELECT DISTINCT domicile,friendly FROM stockListings sl JOIN (issue i,organisations o,domiciles d) "&_
		"ON sl.issueID=i.ID1 AND i.issuer=o.personID AND o.Domicile=d.ID "&_
		"WHERE StockExID IN (1,20) AND i.typeID IN (0,6,7,10,42) AND (ISNULL(firstTradeDate) OR firstTradeDate <= CURDATE()) "&_
		"AND (ISNULL(delistDate) OR delistDate > CURDATE()) ORDER BY friendly;",con
	Do Until rs.EOF
		If rs("domicile")=CLng(dom) Then sel=" selected" Else sel=""%>
		<option value="<%=rs("domicile")%>"<%=sel%>><%=rs("friendly")%></option>
		<%rs.MoveNext
	Loop
	rs.Close%>
	</select>
</form>
<p>Note: the table includes only companies with a primary listing in HK.</p>
<%=mobile(3)%>	
<%rs.Open "SELECT Name,PersonID,incDate,ordCodeThen(personID,CURDATE()) AS sc FROM ListedCosHKall WHERE StockExID IN("&exStr&") AND domicile="&dom&" ORDER BY "&ob,con
URL=URL&"?e="&e&"&amp;dom="&dom%>
<table class="numtable c3l">
	<tr>
		<th class="colHide3">Row</th>
		<th class="colHide3"><%SL "Stock<br>code","scup","scdn"%></th>
		<th><%SL "Company name","nameup","namedn"%></th>
		<th class="nowrap"><%SL "Inc. date","incdup","incddn"%></th>
	</tr>
	<%x=1
	Do Until rs.EOF%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td class="colHide3"><%=rs("sc")%></td>
			<td><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name")%></a></td>
			<td class="nowrap"><%=MSdate(rs("incDate"))%></td>
		</tr>
		<%rs.MoveNext
		x=x+1
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>