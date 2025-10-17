<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,p,title,nowYear
Const roleID=2 'people
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
Const limit=500
nowYear=Year(Now)
'exclude entries by David and cynthia (4,5)
rs.Open "SELECT personID,fnameppl(name1,name2,cName) as name,sex,YOB,userID,maxRank('people',userID)uRank,name as userName,modified "&_
	"FROM people p JOIN USERS u on p.userID=u.ID AND p.userID Not IN (2,4,5) ORDER BY modified DESC LIMIT "&limit,con
title="Latest "&limit&" people"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<table class="txtable">
	<tr>
		<th>Name</th>
		<th>Sex</th>
		<th>Age in<br><%=nowYear%></th>
		<th>Entered by</th>
		<th>Timestamp</th>
		<th></th>
		<th></th>
	</tr>
	<%Do Until rs.EOF
		p=rs("personID")%>
		<tr>
		<td><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=p%>"><%=rs("name")%></a></td>
		<td><%=rs("sex")%></td>
		<td><%=nowYear-rs("YOB")%></td>
		<td><%=rs("userName")%></td>
		<td><%=MSdateTime(rs("modified"))%></td>
		<%If rankingRs(rs,uRank) Then%>
			<td>
				<form method="post" action="human.asp">
					<input type="hidden" name="p" value="<%=p%>">
					<input type="submit" style="color:green" value="Edit">
				</form>
			</td>
			<td>
				<form method="post" action="human.asp">
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