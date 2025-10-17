<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,holderID,r1,r2,title,URL,c
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
'we don't actually use ranking in this script as there are no edit buttons
c=getInt("c",500) 'limit
Call openEnigmaRs(con,rs)
rs.Open "select CONCAT(o1.name1,':',typeShort) AS issue,namepsn(o2.name1,p.name1,p.name2) AS holderName,u.name AS userName,"&_
	"i.issuer AS issuerID,s.issueID,s.holderID,s.atDate,s.modified,IF(ISNULL(o2.name1),'P','O') AS hType,shares,stake "&_
	"FROM sholdings s JOIN (issue i,organisations o1,secTypes st,users u) "&_
	"ON s.issueID=i.ID1 AND i.issuer=o1.personID AND i.typeID=st.typeID AND s.userID=u.ID "&_
	"LEFT JOIN organisations o2 ON holderID=o2.personID "&_
	"LEFT Join people p on holderID=p.personID "&_
	"ORDER BY s.modified desc limit "&c,con
title="Latest "&c&" holdings"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<form method="post">
Limit: <input type="number" name="c" value="<%=c%>">
</form><br>
<table class="txtable">
	<tr>
		<th>Issue</th>
		<th>Holder</th>
		<th>At date</th>
		<th>Shares</th>
		<th>Stake</th>
		<th>User</th>
		<th>Timestamp</th>
	</tr>
<%Do until rs.EOF
	If rs("hType")="O" Then URL="orgdata" Else URL="natperson"
	URL="https://webb-site.com/dbpub/"&URL&".asp?p="&rs("holderID")
	%>
	<tr>
		<td><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=rs("issuerID")%>"><%=rs("issue")%></a></td>
		<td><a target="_blank" href="<%=URL%>"><%=rs("holderName")%></a></td>
		<td><%=MSdate(rs("atDate"))%></td>
		<td class="right"><%If Not isNull(rs("shares")) Then Response.Write FormatNumber(rs("shares"),0)%></td>
		<td class="right"><%If Not isNull(rs("stake")) Then Response.Write FormatPercent(rs("stake"),4)%></td>
		<td><%=rs("userName")%></td>
		<td><%=MSdateTime(rs("modified"))%></td>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>