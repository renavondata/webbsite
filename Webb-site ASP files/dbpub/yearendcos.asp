<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim e,eCon,m,ob,sort,URL,title,x,con,rs
Call openEnigmaRs(con,rs)
e=Request("e")
m=getIntRange("m",12,1,12)
sort=Request("sort")
Select case e
	Case "g" eCon="20": title="GEM"
	Case "m" eCon="1": title="Main Board"
	Case Else
		e="a"
		eCon="1,20": title="Main Board and GEM"
End Select
Select Case sort
	Case "scup" ob="sc"
	Case "scdn" ob="sc DESC"
	Case "namedn" ob="name DESC"
	Case Else
		sort="nameup"
		ob="name"
End Select
URL=Request.ServerVariables("URL")&"?m="&m
title=title&" companies with "&MonthName(m)& " year-end"
rs.Open "SELECT name,l.personID,ordCodeThen(l.personID,CURDATE()) AS sc FROM listedcoshkall l JOIN orgdata o ON l.personID = o.PersonID "&_
	"WHERE YearEndMonth="&m&" AND stockExID IN("&eCon&") ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,a","Main Board,GEM,All HK",URL&"&amp;sort="&sort&"&amp;e=")%>
<ul class="navlist"><li><a href="yearend.asp">Summary</a></li></ul>
<div class="clear"></div>
<form method="get" action="<%=URL%>">
	<input type="hidden" name="e" value="<%=e%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	Month: <%=MonthSelect("m",m,False,"",True)%>
	<input type="submit" value="Go">
</form>
<p>Note: the table includes only companies with a primary listing in HK.</p>
<table class="numtable">
	<%URL=URL&"&amp;e="&e%>
	<tr>
		<th>Row</th>
		<th><%SL "Stock<br>code","scup","scdn"%></th>
		<th class="left"><%SL "Company","nameup","namedn"%></th>
	</tr>
	<%x=1
	Do Until rs.EOF%>
		<tr>
			<td><%=x%></td>
			<td><%=rs("sc")%></td>
			<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=rs("Name")%></a></td>
		</tr>
		<%x=x+1
		rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
