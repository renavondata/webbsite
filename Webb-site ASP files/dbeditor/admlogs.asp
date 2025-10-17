<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,title,role,done,p,d,sort,ob,tu,u,filter,cnt,sql,st,x,y,chkst(4),j,URL
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
'we don't actually use ranking in this script as there are no edit buttons
sort=Request("sort")
st=getInt("st",3)
y=getInt("y",1990)
If st=3 Then j=1 Else j=0
chkst(st)=" checked"
Select Case sort
	Case "issu" ob="name1,td,modified"
	Case "issd" ob="name1 DESC,td DESC"
	Case "snapd" ob="td DESC,issuer"
	Case "snapu" ob="td, name1"
	Case "useru" ob="userName,modified DESC"
	Case "userd" ob="userName DESC,modified"
	Case "modd" ob="modified DESC"
	Case "modu" ob="modified"
	Case Else
		ob="name1,td,modified"
		sort="issu"
End Select
u=getBool("u")
tu=getInt("tu",0)
If tu>0 Then filter=" AND u.ID="&tu
If u Then filter=filter&" AND Not Done"
URL="admlogs.asp?tu="&tu&"&amp;u="&u&"&amp;st="&st&"&amp;y="&y
title="Snapshot logs"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<form action="admlogs.asp" method="post">
	<input type="hidden" name="sort" value="<%=sort%>">
	<p>User: <%=arrSelectZ("tu",tu,con.Execute("SELECT DISTINCT userID,name FROM snaplog s JOIN users u on s.userID=u.ID ORDER by name").GetRows,True,True,"","All")%></p>
	<p><input type="radio" name="st" value="1"<%=chkst(1)%> onchange="this.form.submit()">Study 1: report by 2003-12-31 and on or after 2004-12-31</p>
	<p><input type="radio" name="st" value="2"<%=chkst(2)%> onchange="this.form.submit()">Study 2: report by 2011-12-31 and on or after 2012-12-31</p>
	<p><input type="radio" name="st" value="4"<%=chkst(4)%> onchange="this.form.submit()">Study 4: report by 2007-12-31 and on or after 2008-12-31</p>	
	<p><input type="radio" name="st" id="st3" value="3"<%=chkst(3)%> onchange="this.form.submit()">Study 3: Board committees in 
	<input type="number" name="y" min="1990" max="<%=year(Date)%>" step="1" width="4" value="<%=y%>" onchange="document.getElementById('st3').checked=true;">
	-06-01 to 05-31 of next year.</p>
	<input type="checkbox" name="u" value="1" <%=checked(u)%> onchange="this.form.submit()">Show not done only
	<input type="submit" value="Go">
</form>
<p>Click on the snap date to add or edit your comment. A=Author, R=Reviewer. Click column-heads to sort.</p>
<table class="txtable">
<tr>
	<th></th>
	<th><%SL "Issuer","issu","issd"%></th>
	<th><%SL "Snap date","snapd","snapu"%></th>
	<th><%SL "User","useru","userd"%></th>
	<th>Role</th>
	<th>Done?</th>
	<th><%SL "Updated","modd","modu"%></th>
	<th>Notes</th>
</tr>
<%
If st=3 Then
	sql="SELECT DISTINCT issuer,name1,snapDate AS td,done,status,entered,s.modified,notes,u.name AS username,u.ID as userID "&_
		"FROM stocklistings sl JOIN(issue i, organisations o) ON sl.issueID=i.ID1 AND i.issuer=o.personID "&_
		"LEFT JOIN snaplog s ON project=1 AND i.issuer=s.orgID AND snapDate>'"&y&"-05-31' AND snapDate<'"&y+1&"-06-01'"&_
		" JOIN users u on s.userID=u.ID "&_
		"WHERE stockExID IN(1,20) AND typeID NOT IN(1,2,40,41,46) "&filter&_
		" AND (isNull(firstTradeDate) OR firstTradeDate<='"&y+1&"-05-31') AND (isNull(delistDate) OR delistDate>'"&y&"-06-01') "&" ORDER BY "&ob
Else
	sql="SELECT issuer,name1,td,done,status,entered,s.modified,notes,u.name as userName,u.ID as userID "&_
		"FROM (SELECT issuer, befdate as td FROM st"&st&"dates WHERE NOT ISNULL(aftDate) UNION "&_
		"SELECT issuer, aftdate as td FROM st"&st&"dates WHERE NOT ISNULL(aftDate)) AS t1 "&_
		"JOIN organisations ON issuer=personID "&_
		"LEFT JOIN snaplog s ON project=0 AND t1.issuer=s.orgID AND t1.td=s.snapDate "&_
		"JOIN users u on s.userID=u.ID WHERE 1=1"&filter&" ORDER BY "&ob
End If
rs.Open sql,con
Do Until rs.EOF
	If rs("status") Then
		role="R"
	ElseIf Not rs("status") Then
		role="A"
	Else
		role=""
	End If
	If rs("done") Then
		done="Y"
	ElseIf Not rs("done") Then
		done="N"
	Else
		done=""
	End If
	d=MSdate(rs("td"))
	p=rs("issuer")
	cnt=cnt+1%>
	<tr>
		<td><%=cnt%></td>
		<td><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>"><%=rs("name1")%></a></td>
		<td><a href="snaplog.asp?p=<%=p%>&d=<%=d%>&j=<%=j%>"><%=d%></a></td>
		<td><%=rs("userName")%></td>
		<td><%=role%></td>
		<td><%=done%></td>
		<td><%=MSdateTime(rs("modified"))%></td>
		<td><%=rs("notes")%></td>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>