<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,name,con,rs,tel,t,teamno,title,URL,sort,ob,x
sort=Request("sort")
Select Case sort
	Case "codup" ob="sc"
	Case "coddn" ob="sc DESC"
	Case "namdn" ob="name DESC"
	Case Else
		sort="namup"
		ob="name"
End Select
Call openEnigmaRs(con,rs)
t=getInt("t",1)
teamNo=CInt(con.Execute("SELECT IFNULL((SELECT teamno FROM lirteams WHERE ID="&t&"),0)").Fields(0))
title="Issuers regulated by SEHK Listing team "&teamno
URL=Request.ServerVariables("URL")&"?t="&t%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call lirBar(t,1)%>
<form method="get" action="lirteams.asp">
	<div class="inputs">
	See coverage for another team: <%=arrSelect("t",t,con.Execute("SELECT DISTINCT l.ID,teamno FROM lirteams l JOIN lirteamstaff s ON l.ID=s.teamID WHERE NOT s.dead ORDER by teamno").GetRows,True)%>
	</div>
	<div class="clear"></div>
</form>
<%If teamno>0 Then
	rs.Open "SELECT ls.staffID,fnameppl(n1,n2,cn)name,title,tel,IF(ls.firstSeen='2023-12-30','',ls.firstSeen)firstSeen FROM "&_
		"lirteamstaff ls JOIN (lirstaff s,lirroles r) ON staffID=s.ID AND posID=r.ID WHERE NOT dead AND teamID="&t&" ORDER BY posID DESC",con
	If Not rs.EOF Then%>
		<p>Complaint e-mail: <a href="mailto:lirteam<%=teamno%>@hkex.com.hk?cc=complaint@sfc.hk&subject=Complaint about:">Click here</a></p>
		<h3>Team members</h3>
		<table class="txtable">			
			<tr>
				<th>Name</th>
				<th>Title</th>
				<th>Phone</th>
				<th>First Seen</th>
			</tr>
		<%Do Until rs.EOF
			tel=rs("tel")
			tel=Left(tel,4)&"-"&right(tel,4)%>
			<tr>
				<td><a href="lirstaffhist.asp?s=<%=rs("staffID")%>"><%=rs("name")%></a></td>
				<td><%=rs("title")%></td>
				<td><%=tel%></td>
				<td><%=MSdate(rs("firstSeen"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.close
	rs.Open "SELECT ls.staffID,fnameppl(n1,n2,cn)name,title,IF(ls.firstSeen='2023-12-30','',ls.firstSeen)firstSeen,lastSeen FROM "&_
		"lirteamstaff ls JOIN (lirstaff s,lirroles r) ON staffID=s.ID AND posID=r.ID WHERE dead AND teamID="&t&" ORDER BY posID DESC,lastSeen DESC",con
	If Not rs.EOF Then%>
		<h3>Former team members or positions</h3>
		<table class="txtable">			
			<tr>
				<th>Name</th>
				<th>Title</th>
				<th>First Seen</th>
				<th>Last Seen</th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><a href="lirstaffhist.asp?s=<%=rs("staffID")%>"><%=rs("name")%></a></td>
				<td><%=rs("title")%></td>
				<td><%=MSdate(rs("firstSeen"))%></td>
				<td><%=MSdate(rs("lastSeen"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.close%>
	<p>HK-listed issuers are regulated by the monopoly for-profit Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>, 
	wholly owned by Hong Kong Exchanges and Clearing Ltd, 0388.HK), 
	under the supervision of the Securities and Futures Commission (<strong>SFC</strong>). The staff are divided into 
	teams, with each issuer covered by 1 team at any point in time. Senior team members may serve on more than one team. If you suspect a breach of the 
	Listing Rules, then please click on the company name to go to its complaint page, and file a complaint.</p>
	<%rs.Open "SELECT orgID,ordCodeThen(orgID,CURDATE())sc,fnameOrg(name1,cname)name,IF(t.firstSeen='2023-12-30','',t.firstSeen)firstSeen "&_
		"FROM lirorgteam t JOIN organisations o ON t.orgID=o.personID WHERE NOT t.dead AND teamID="&t&" ORDER BY "&ob,con
	If Not rs.EOF Then%>
		<h3>Issuers currently regulated by this team</h3>
		<table class="txtable yscroll">			
			<tr>
				<th></th>
				<th><%SL "Stock code","codup","coddn"%></th>
				<th><%SL "Issuer name","namup","namdn"%></th>
				<th>First seen</th>
			</tr>
		<%Do Until rs.EOF
			x=x+1%>
			<tr>
				<td><%=x%></td>
				<td><%=rs("sc")%></td>
				<td><a href="complain.asp?p=<%=rs("orgID")%>"><%=rs("name")%></a></td>
				<td><%=MSdate(rs("firstseen"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
	rs.Open "SELECT orgID,ordCodeThen(orgID,t.lastseen)sc,fnameOrg(name1,cname)name,IF(t.firstSeen='2023-12-30','',t.firstSeen)firstSeen,lastSeen "&_
		"FROM lirorgteam t JOIN organisations o ON t.orgID=o.personID WHERE dead AND teamID="&t&" ORDER BY "&ob,con
	If Not rs.EOF Then%>
		<h3>Issuers formerly regulated by this team</h3>
		<table class="txtable">			
			<tr>
				<th></th>
				<th><%SL "Stock code","codup","coddn"%></th>
				<th><%SL "Issuer name","namup","namdn"%></th>
				<th>First seen</th>
				<th>Last seen</th>
			</tr>
		<%x=0
		Do Until rs.EOF
			x=x+1%>
			<tr>
				<td><%=x%></td>
				<td><%=rs("sc")%></td>
				<td><a href="complain.asp?p=<%=rs("orgID")%>"><%=rs("name")%></a></td>
				<td><%=MSdate(rs("firstSeen"))%></td>
				<td><%=MSdate(rs("lastseen"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>