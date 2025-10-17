<%Option Explicit
Response.Expires=-1%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Call login%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Dim u,con,rs,title,p,e,r,name,ot
e=Session("e")
u=Session("ID")
p=Request("p")
Call openMailrs(con,rs)

If Not isNumeric(p) Then 
	p=0
Else
	rs.Open "SELECT name1 AS name FROM enigma.organisations WHERE personID="&p,con
	If rs.EOF Then
		rs.Close
		rs.Open "SELECT enigma.fnameppl(name1,name2,cname) AS name FROM enigma.people WHERE personID="&p,con
		If rs.EOF Then
			p=0
		Else
			name=rs("name")
			ot="P"
			title="My Trust"
		End If
	Else
		name=rs("name")
		ot="O"
		title="My Governance"
	End If
	rs.Close
	title=title&" ratings for "&name
End If
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call userBar(0)%>
<h2><%=title%></h2>
<%If p>0 Then
	rs.Open "SELECT score,DATE_FORMAT(atDate,'%Y-%m-%d') AS atDate FROM scores "&_
		"WHERE orgID="&p&" AND userID="&u&" ORDER BY atDate DESC",con
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="txtable">
			<tr>
				<th>Date</th>
				<th>Rating</th>
			</tr>
			<%Do Until rs.EOF
				r=rs("score")
				If isNull(r) Then r="None"%>
				<tr>
					<td><%=rs("atDate")%></td>
					<td class="right"><%=r%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
Call CloseConRs(con,rs)%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>