<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,r1,r2,title,nowYear
Const roleID=2 'people
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
nowYear=Year(Now)
rs.Open "SELECT rel1,rel2,fnameppl(p1.Name1,p1.Name2,p1.cName) as r1Name,relation,fnameppl(p2.Name1,p2.Name2,p2.cName) as r2Name,"&_
	"p1.YOB as YOB1,p2.YOB as YOB2,r.userID,maxRank('relatives',r.userID)uRank,u.name as userName,r.modified "&_
	"FROM relatives r JOIN (people p1,people p2,relationships s,users u) ON r.rel1=p1.personID AND r.rel2=p2.personID AND r.relID=s.ID "&_
	"AND r.userID=u.ID WHERE r.userID Not In (4,5) ORDER BY modified DESC LIMIT 200",con
title="Latest 200 relationships"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<table class="txtable">
	<tr>
		<th>Relative 1</th>
		<th>Age in <%=nowYear%></th>
		<th>Relation</th>
		<th>Age in <%=nowYear%></th>
		<th>Relative 2</th>
		<th>Entered by</th>
		<th>Timestamp</th>
		<th></th>
		<th></th>
	</tr>
<%Do Until rs.EOF
	r1=rs("rel1")
	r2=rs("rel2")%>
	<tr>
		<td><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=r1%>"><%=rs("r1Name")%></a></td>
		<td><%=nowYear-rs("YOB1")%></td>
		<td><%=rs("relation")%></td>
		<td><%=nowYear-rs("YOB2")%></td>
		<td><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=r2%>"><%=rs("r2Name")%></a></td>
		<td><%=rs("userName")%></td>
		<td><%=MSdateTime(rs("modified"))%></td>
		<%If rankingRs(rs,uRank) Then%>
			<td>
				<form method="post" action="relatives.asp">
					<input type="hidden" name="h1" value="<%=r1%>">
					<input type="hidden" name="h2" value="<%=r2%>">
					<input type="submit" name="submitBtn" style="color:green" value="Edit">
				</form>
			</td>
			<td>
				<form method="post" action="relatives.asp">
					<input type="hidden" name="h1" value="<%=r1%>">
					<input type="hidden" name="h2" value="<%=r2%>">
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