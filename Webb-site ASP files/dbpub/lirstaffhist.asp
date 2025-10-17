<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,name,con,rs,title,URL,sort,ob,x,s
Call openEnigmaRs(con,rs)
sort=Request("sort")
s=GetInt("s",0) 'lirstaff ID
rs.Open "SELECT fnameppl(n1,n2,cn)name FROM lirstaff WHERE ID="&s,con
If rs.EOF Then
	name="Staff member not found."
	s=0
Else
	name=rs("name")
End If
rs.Close
Select Case sort
	Case "teamup" ob="teamno,posID"
	Case "teamdn" ob="teamno DESC,posID"
	Case "namdn" ob="name DESC,teamno"
	Case "titup" ob="posID,teamno"
	Case "titdn" ob="posID DESC,teamno"
	Case "fsndn" ob="firstSeen DESC,teamno,posID DESC"
	Case Else
		sort="fsnup"
		ob="firstSeen,teamno,posID"
End Select
title="History of SEHK Listing staff member: "&name
URL=Request.ServerVariables("URL")&"?s="&s
rs.Open "SELECT teamno,title,IF(s.firstSeen='2023-12-30','',s.firstSeen)firstSeen,s.lastSeen,posID,s.dead FROM lirteamstaff s JOIN (lirteams t,lirroles r)"&_
	 " ON s.teamID=t.ID AND s.posID=r.ID WHERE staffID="&s&" ORDER BY "&ob,con
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call lirBar(1,0)%>
	<p>HK-listed issuers are regulated by the monopoly for-profit Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>, 
	wholly owned by Hong Kong Exchanges and Clearing Ltd, 0388.HK), 
	under the supervision of the Securities and Futures Commission (<strong>SFC</strong>). The staff are divided into 
	teams, with each issuer covered by 1 team at any point in time. Senior team members may serve on more than one team. 
	We began monitoring the teams on 2023-12-30. This page shows the history of a member since then, with promotions and 
	team-changes.</p>

<table class="txtable fcr c2r">
	<tr>
		<th></th>
		<th><%SL "Team","teamup","teamdn"%></th>
		<th><%SL "Title","titup","titdn"%></th>
		<th><%SL "First Seen","fsnup","fsndn"%></th>
		<th><%SL "Last Seen","fsnup","fsndn"%></th>
	</tr>
<%Do Until rs.EOF
	x=x+1%>
	<tr>
		<td><%=x%></td>
		<td><%=rs("teamno")%></td>
		<td><%=rs("title")%></td>
		<td><%=MSdate(rs("firstseen"))%></td>
		<td><%If rs("dead") Then Response.Write MSdate(rs("lastSeen"))%></td>
	</tr>
	<%rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>