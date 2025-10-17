<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,name,con,rs,tel,teamno,t,sc
Call openEnigmaRs(con,rs)
p=getLng("p",0)
name=fnameOrg(p)
sc=Right("00000" & con.Execute("SELECT ordCodeLast("&p&")").Fields(0),5)
%>
<title>Complain about: <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If p>0 Then
	Call orgBar(name,p,11)
	If p=9643 Then 'HKEX%>
		<p>HKEX cannot regulate itself, so if you think that it is breaching its own Listing Rules then complain to the SFC 
		<a href="mailto:complaint@sfc.hk?subject=Complaint about HKEX as a listed company (stock code 0388)">by e-mail at this link</a>. </p>
	<%Else		
		rs.Open "SELECT teamID,teamno FROM lirorgteam JOIN  lirteams t ON teamID=t.ID WHERE NOT dead AND orgID=" & p,con
		If Not rs.EOF Then
			t=rs("teamID")
			teamno=rs("teamno")%>
			<p>This is a HK-listed issuer. The listing is regulated by the monopoly for-profit Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>, 
			wholly owned by Hong Kong Exchanges and Clearing Ltd, 0388.HK), 
			under the supervision of the Securities and Futures Commission (<strong>SFC</strong>). If you suspect a breach of the 
			Listing Rules, then please email the relevant team in the Listing Division of SEHK and copy the SFC, or just 
			call the SEHK team.</p>
			<h3>SEHK Listing Team</h3>
			<p>Team number: <%=teamno%></p>
			<p>Complaint e-mail: <a href="mailto:<%=sc%>@hkex.com.hk?cc=complaint@sfc.hk&subject=Complaint about <%=htmlEnt(name)%> (stock code <%=sc%>)">
			Click here</a></p>
			<%rs.Close
			rs.Open "SELECT fnameppl(n1,n2,cn)name,title,tel FROM lirteamstaff ls JOIN (lirstaff s,lirroles r) ON staffID=s.ID AND posID=r.ID "&_
				"WHERE NOT dead AND teamID="&t&" ORDER BY posID DESC",con
			If Not rs.EOF Then%>
				<p>Team members</p>
				<table class="txtable">			
					<tr>
						<th>Name</th>
						<th>Title</th>
						<th>Phone</th>
					</tr>
				<%Do Until rs.EOF
					tel=rs("tel")
					tel=Left(tel,4)&"-"&right(tel,4)%>
					<tr>
						<td><%=rs("name")%></td>
						<td><%=rs("title")%></td>
						<td><%=tel%></td>
					</tr>
					<%rs.MoveNext
				Loop%>
				</table>
			<%End If
			Call lirBar(t,0)
		End If
		rs.Close
		rs.Open "SELECT teamID,teamno,IF(o.firstseen='2023-12-30','',o.firstseen)firstseen,o.lastseen FROM lirorgteam o JOIN lirteams t ON o.teamID=t.ID WHERE o.dead AND orgID="&p,con
		If Not rs.EOF Then%>
			<h3>Former SEHK Listing Teams on this issuer</h3>
			<table class="txtable fcr">
				<tr>
					<th>Team</th>
					<th>First seen</th>
					<th>Last seen</th>
				</tr>
				<%Do Until rs.EOF%>
					<tr>
						<td><a href="lirteams.asp?t=<%=rs("teamID")%>"><%=rs("teamno")%></a></td>
						<td><%=MSdate(rs("firstseen"))%></td>
						<td><%=MSdate(rs("lastseen"))%></td>
					</tr>
					<%rs.MoveNext
				Loop%>
			</table>
		<%End If
	End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>