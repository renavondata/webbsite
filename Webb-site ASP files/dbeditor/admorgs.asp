<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,p,title,name,cName
Const roleID=4 'orgs
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
Const limit=500
rs.Open "SELECT personID,name1,cName,incDate,domicile,friendly,userID,maxRank('organisations',userID)uRank,name as userName,modified "&_
	"FROM organisations o JOIN USERS u on o.userID=u.ID LEFT JOIN domiciles d on o.domicile=d.id "&_
	"WHERE (isNull(domicile) Or domicile NOT IN(1,2,112,116,311)) AND isNull(SFCID) ORDER BY modified DESC LIMIT "&limit,con
title="Latest "&limit&" organisations"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<p>Note: this excludes HK-registered companies and SFC licensees.</p>
<table class="txtable">
<tr>
	<th>Name</th>
	<th>Domicile</th>
	<th>Formation<br>date</th>
	<th>Entered by</th>
	<th>Timestamp</th>
	<th></th>
	<th></th>
</tr>
<%Do until rs.EOF
	p=rs("personID")
	name=rs("name1")
	cName=rs("cName")
	If Not isNull(cName) Then name=name&"<br>"&cName%>
	<tr>
	<td><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>"><%=name%></a></td>
	<td><%=rs("friendly")%></td>
	<td><%=MSdate(rs("incDate"))%></td>
	<td><%=rs("userName")%></td>
	<td><%=MSdateTime(rs("modified"))%></td>
	<%If rankingRs(rs,uRank) Then%>
		<td>
			<form method="post" action="org.asp">
				<input type="hidden" name="p" value="<%=p%>">
				<input type="submit" style="color:green" value="Edit">
			</form>
		</td>
		<td>
			<form method="post" action="org.asp">
				<input type="hidden" name="p" value="<%=p%>">
				<input type="submit" name="submitBtn" style="color:red" value="Delete">
			</form>
		</td>
	<%Else%>
		<td></td>
		<td></td>
	<%End If%>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>