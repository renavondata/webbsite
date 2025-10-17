<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="../dbpub/functions1.asp"-->
<%
Sub WriteLink(text,defaultSort,altSort)
Response.write "<a href='"&Request.ServerVariables("URL")&"?camp="&camp&"&hide="&hide&"&sort1="
If sort1=defaultSort then
	Response.write altSort
Else
	Response.write defaultSort
End if
Response.write "'><b>"&text&"</b></a>"
End Sub

Dim con,rs,campText
Call openEnigmaRs(con,rs)
Dim orderBy,hide,sort1,camp
sort1=Request.QueryString("sort1")
hide=Request("hide")
camp=getInt("camp",0)
Select case sort1
Case "amntup" orderBy="DonAmnt,Name"
Case "amntdn" orderBy="DonAmnt DESC,Name"
Case "namedn" orderBy="Name DESC,DonAmnt"
Case Else
	sort1="nameup"
	orderBy="Name,DonAmnt"
End Select
campText=con.Execute("SELECT CampText FROM Campaign WHERE CampID="&camp).Fields(0)
rs.Open "SELECT DonAmnt,Currency,Name,PersonType,PersonID FROM WebDonsByCampaign WHERE Campaign="&camp&" ORDER BY "&orderBy,con
%>
<title>Donations to a campaign</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Donations to campaign: <%=campText%></h2>
<p>Note: this list is incomplete. Where we can identify the parent entity of wholly-owned 
corporate donors, then donations have been attributed to the parent.</p>
<table>
	<tr>
		<td><%WriteLink "Name","nameup","namedn"%></td>
		<td>Currency</td>
		<td><%WriteLink "Amount","amntdn","amntup"%></td>
	</tr>	
	<%Do Until rs.EOF%>
		<tr>
			<td style="padding-right:10px">
			<%If rs("PersonType")="O" Then%>
				<a href='../db/company.asp?person=<%=rs("PersonID")%>&amp;hide=<%=hide%>'><%=rs("Name")%></a>
			<%Else%>
				<a href='../db/natperson.asp?person=<%=rs("PersonID")%>&amp;hide=<%=hide%>'><%=rs("Name")%></a>
			<%End If%>
			</td>
			<td><%=rs("Currency")%></td>
			<td><%=FormatNumber(rs("DonAmnt"),0)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	rs.Close
	Call CloseConRs(con,rs)%>
	<tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
