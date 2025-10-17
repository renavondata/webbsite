<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,name,con,rs,title,URL,sort,ob,last,staffID,x,tel
sort=Request("sort")
Select Case sort
	Case "namup" ob="name,teamno"
	Case "namdn" ob="name DESC,teamno"
	Case "titup" ob="posID,name,teamno"
	Case "telup" ob="tel"
	Case "teldn" ob="tel DESC"
	Case Else
		sort="titdn"
		ob="posID DESC,teamno,name"
End Select
Call openEnigmaRs(con,rs)
title="SEHK listed issuer regulatory staff"
URL=Request.ServerVariables("URL")
rs.Open "SELECT teamID,staffID,teamno,fnameppl(n1,n2,cn)name,tel,title FROM lirteamstaff ls JOIN(lirteams t,lirstaff s,lirroles r) "&_
	"ON teamID=t.ID AND staffID=s.ID AND ls.posID=r.ID AND NOT ls.dead ORDER BY "&ob,con
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call lirBar(1,2)%>
	<p>HK-listed issuers are regulated by the monopoly for-profit Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>, 
	wholly owned by Hong Kong Exchanges and Clearing Ltd, 0388.HK), 
	under the supervision of the Securities and Futures Commission (<strong>SFC</strong>). The staff are divided into 
	teams, with each issuer covered by 1 team at any point in time. Senior team members may serve on more than one team. 
	Click on the team numbers to see the issuers they cover. Click on the staff name to see their history.</p>

<table class="txtable">
	<tr>
		<th></th>
		<th><%SL "Staff name","namup","namdn"%></th>
		<th><%SL "Title","titup","titdn"%></th>
		<th>Teams</th>
		<th><%SL "Tel","telup","teldn"%></th>
	</tr>
<%Do Until rs.EOF
	x=x+1
	staffID=rs("staffID")
	tel=rs("tel")
	tel=Left(tel,4)&"-"&right(tel,4)%>
	<tr>
		<td><%=x%></td>
		<td><a href="lirstaffhist.asp?s=<%=staffID%>"><%=rs("name")%></a></td>
		<td><%=rs("title")%></td>
		<td>
			<a href="lirteams.asp?t=<%=rs("teamID")%>"><%=rs("teamno")%></a>&nbsp;
		<%last=staffID
		rs.MoveNext
		Do Until rs.EOF
			staffID=rs("staffID")
			If staffID<>last Then Exit Do%>
			<a href="lirteams.asp?t=<%=rs("teamID")%>"><%=rs("teamno")%></a>&nbsp;
			<%rs.MoveNext
		Loop
		last=staffID%>
		</td>
		<td><%=tel%></td>
	</tr>
<%Loop%>
</table>
<%rs.Close
ob=Replace(ob,",teamno","")
rs.Open "SELECT t.ID,name,posID,title,seen FROM (SELECT l.ID,fnameppl(n1,n2,cn)name,SUM(NOT DEAD)c,max(posID)posID,max(lastSeen)seen FROM "&_
	"lirstaff l JOIN lirteamstaff s ON l.ID=s.staffID GROUP BY staffID)t JOIN lirroles r ON t.posID=r.ID WHERE c=0 ORDER BY "&ob,con%>
<h3>Former team members</h3>
<table class="txtable">
	<tr>
		<th></th>
		<th><%SL "Staff name","namup","namdn"%></th>
		<th><%SL "Title","titup","titdn"%></th>
		<th>Last seen</th>
	</tr>
<%x=0
Do Until rs.EOF
	x=x+1%>
	<tr>
		<td><%=x%></td>
		<td><%=rs("name")%></td>
		<td><%=rs("title")%></td>
		<td><%=MSdate(rs("seen"))%></td>
	</tr>
	<%rs.MoveNext
Loop%>
</table>

<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>