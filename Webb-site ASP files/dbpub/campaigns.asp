<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="../dbpub/functions1.asp"-->
<%Dim ob,hide,sort,con,rs,URL
Call openEnigmaRs(con,rs)
sort=Request("sort")
hide=Request("hide")
Select Case sort
	Case "campup" ob="CampText"
	Case "campdn" ob="CampText DESC"
	Case "namedn" ob="Name1 DESC,Name2 DESC,CampText"
	Case Else
		sort="nameup"
		ob="Name1,Name2,CampText"
End Select
URL=Request.ServerVariables("URL")
rs.Open "SELECT CampID,CampText,Recipient,Name1,Name2 FROM campaign c JOIN People p ON c.Recipient=p.PersonID ORDER BY "&ob,con%>
<title>Political campaigns</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Political campaigns</h2>
<table>
	<tr>
		<td><%SL "Campaign","campup","campdn"%></td>
		<td><%SL"Candidate","nameup","namedn"%></td>
	</tr>
	<%Do Until rs.EOF%>
		<tr>
			<td style="padding-right:10px"><a href='donations.asp?camp=<%=rs("CampID")%>&amp;hide=<%=hide%>'><%=rs("CampText")%></a></td>
			<td><a href='../db/natperson.asp?person=<%=rs("Recipient")%>&amp;hide=<%=hide%>'><%=rs("Name1")&", "&rs("Name2")%></a></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call closeConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
