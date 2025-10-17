<%Option Explicit
Dim r,c%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim con,rs
Call openEnigmaRs(con,rs)%>
<title>League Tables of Advisers</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Webb-site League Tables</h2>
<ul class="navlist">
	<li><a href="leagueNotesA.asp">Notes</a></li>
	<li id="livebutton">All league tables</li>
</ul>
<div class="clear"></div>
<!--#include file="shutdown-note.asp"-->
<p>Click the role to see average total returns for each adviser in that role, for companies or REITs with a primary listing on either the 
Main Board or Growth Enterprises Market (GEM) of the Stock Exchange of Hong Kong Ltd. 
For continuing roles, click the number of positions to see a current league 
table of advisers.</p>
<table class="numtable fcl yscroll">
	<tr>
		<th>Role</th>
		<th>Positions</th>
	</tr>
<%rs.Open "SELECT * FROM WebCountAdvByRole",con
Do Until rs.EOF
	c=rs("CountOfRole")
	r=rs("roleID")%>
	<tr>
		<td><a href="advbyrole.asp?r=<%=r%>"><%=rs("Role")%></a></td>
		<td>
			<%If Not rs("oneTime") Then%>
				<a href="advltsnap.asp?r=<%=r%>"><%=c%></a>
			<%Else%>
				<%=c%>
			<%End If%>
		</td>
	</tr>
	<%rs.Movenext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
