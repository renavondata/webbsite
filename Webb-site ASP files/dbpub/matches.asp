<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%
Function MakeURL(sort,text)
MakeURL="<a href='"&Request.ServerVariables("URL")&"?org1="& o1&"&org2="& o2&"&d="&d&"&sort="&sort&"'>"&text&"</a>"
End Function

Dim o1,o2,org1Name,org2Name,sort,ob,d,ds,con,rs
Call openEnigmaRs(con,rs)
o1=getLng("org1",0)
o2=getLng("org2",0)
d=Request("d")
If d="" Then d=Session("d")
If d="" Or Not isDate(d) Then d=Date
d=MSdate(d)
Session("d")=d
ds="'"&d&"'"
sort=Request("sort")
Select Case sort
	Case "app1":ob="app1,app2,"
	Case "app2":ob="app2,app1,"
	Case "pos1":ob="pns1.posShort,"
	Case "pos2":ob="pns2.posShort,"
	Case Else
		sort="name"
End Select
ob=ob&"p.Name1,p.Name2"
org1Name=fnameOrg(o1)
org2Name=fNameOrg(o2)

rs.CursorLocation=3
rs.Open "SELECT d1.director AS PersonID,CAST(fnameppl(p.Name1, p.Name2,p.cName)AS NCHAR)name, pns1.posShort AS pos1, pns2.posShort AS pos2,"&_
	"pns1.posLong pos1long,pns2.posLong pos2long,MSdateAcc(d1.apptDate,d1.apptAcc)app1,MSdateAcc(d2.apptDate,d2.apptAcc)app2 "&_
	"FROM (directorships d1 JOIN directorships d2 ON d1.Director = d2.Director) JOIN (people p,positions pns1,positions pns2) "&_
	"ON d1.director=p.personID AND d1.positionID=pns1.positionID AND d2.PositionID=pns2.positionID "&_
	"WHERE d1.Company=" & o1 &" AND d2.Company=" & o2 &_
	" AND (d1.resDate Is Null Or d1.resDate>"&ds&") AND (d2.resDate Is Null Or d2.ResDate>"&ds&")"&_
	" AND (d1.apptDate IS Null or d1.apptDate<="&ds&") AND (d2.apptDate Is Null or d2.apptDate<="&ds&")"&_
	" ORDER BY "&ob,con%>
<title>Overlapping members</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Overlapping people</h2>
<p>
Organisation 1: <a href="officers.asp?p=<%=o1%>&d=<%=d%>"><%=org1Name%></a><br>
Organisation 2: <a href="officers.asp?p=<%=o2%>&d=<%=d%>"><%=org2Name%></a>
</p>
<form method="get" action="matches.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="org1" value="<%=o1%>">
	<input type="hidden" name="org2" value="<%=o2%>">
	<div class="inputs">
		<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='<%=MSdate(Date)%>'">
	</div>
	<div class="clear"></div>
</form>
<p>The following <%=rs.RecordCount%> people hold positions in both organisations on <%=d%>:</p>
<%
If Not rs.EOF Then%>
	<table class="txtable">
	<tr>
		<th style="vertical-align: bottom"><%=MakeURL("name","Name")%></th>
		<th style="vertical-align: bottom"><%=MakeURL("pos1","Position in "&Org1Name)%></th>
		<th><%=MakeURL("app1","Since")%></th>
		<th style="vertical-align: bottom"><%=MakeURL("pos2","Position in "&Org2Name)%></th>
		<th><%=MakeURL("app2","Since")%></th>
	</tr>
	<%Do Until rs.EOF%>
		<tr>
			<td><a href='positions.asp?p=<%=rs("PersonID")%>'><%=rs("name")%></a></td>
			<td><a class="info" href="#"><%=rs("pos1")%><span><%=rs("pos1long")%></span></a></td>
			<td class="nowrap"><%=rs("app1")%></td>
			<td><a class="info" href="#"><%=rs("pos2")%><span><%=rs("pos2long")%></span></a></td>
			<td class="nowrap"><%=rs("app2")%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>