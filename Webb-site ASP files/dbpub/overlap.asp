<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Function MakeURL(sort)
MakeURL="<a href='"&Request.ServerVariables("URL")&"?p="&p&"&d="&d&"&sort="&sort&"'>"
End Function

Dim p,sort,proc,name,listed,title,ob,d,ds,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
sort=Request("sort")
d=Request("d")
If d="" Then d=Session("d")
If d="" Or Not isDate(d) Then d=Date
d=MSdate(d)
Session("d")=d
ds="'"&d&"'"
name=fnameOrg(p)
title=name%>
<title>Overlaps with: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If Name<>"No record found" Then
	Call orgBar(title,p,4)%>
	<form method="get" action="overlap.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="hidden" name="p" value="<%=p%>">
		<div class="inputs">
			<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="Clear" onclick="document.getElementById('d').value='<%=MSdate(Date)%>'">
		</div>
		<div class="clear"></div>
	</form>
	<p>This page lists the number of positions in each organisation held by 
	persons with positions in the subject organisation on <%=d%>. Click on a name to 
	produce a list of matching members.</p>
	<%rs.CursorLocation=3
	If sort<>"nam" Then ob="cd DESC,"
	rs.Open "SELECT t.Company orgID, Count(t.Director) cd, o.Name1, ListedCosHKall.StockExID "&_
		"FROM ((SELECT DISTINCT d2.Company, d2.Director FROM directorships d1 JOIN directorships d2 ON d1.Director = d2.Director "&_
		"WHERE d2.Company<>"&p&" AND d1.Company="&p&_
		" AND (d1.ResDate Is Null OR d1.ResDate>"&ds&") AND (d2.ResDate Is Null Or d2.ResDate>"&ds&") "&_
		" AND (d1.apptDate Is Null OR d1.apptDate<="&ds&") AND (d2.apptDate Is Null Or d2.apptDate<="&ds&")) t "&_
		" JOIN organisations o ON t.Company = o.PersonID) "&_
		"LEFT JOIN ListedCosHKall ON o.PersonID = ListedCosHKall.PersonID "&_
		"GROUP BY t.Company, o.Name1, ListedCosHKall.StockExID "&_
		"ORDER BY "&ob&"Name1",con
	%>
	<p>There are <%=rs.RecordCount%> overlapping organisations.</p>
	<%If Not rs.EOF Then%>
		<table class="txtable">
			<tr>
				<th></th>
				<th><%=MakeURL("nam")%><b>Organisation</b></th>
				<th><%=MakeURL("cnt")%><b>Overlap</b></th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%If Not IsNull(rs("StockExID")) Then Response.Write "*":listed=True%></td>
				<td><a href='matches.asp?org1=<%=p%>&amp;org2=<%=rs("OrgID")%>&d=<%=d%>'><%=htmlEnt(rs("Name1"))%></a></td>
				<td class="right"><%=rs("cd")%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
		<%If listed=True Then%>
			<p>*=currently HK primary-listed</p>
		<%End If
	End If
Else%>
	<h3><%=name%></h3>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>