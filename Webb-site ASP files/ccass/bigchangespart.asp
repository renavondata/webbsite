<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%
Dim sort,URL,con,rs,atDate,ob,title,d,sc,person,cnt,name,isOrg,p
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=getLng("p",1)
rs.Open "SELECT partName,personID from ccass.participants WHERE partID="&p,con
If not rs.EOF Then
	name=rs("partName")
	person=rs("personID")
Else
	p=1
	person=1453
End If
rs.Close
If person>0 Then call fnamePsn(person,name,isOrg)
Select Case sort
	Case "datedn" ob="atDate DESC,stkchg DESC"
	Case "dateup" ob="atDate,stkchg"
	Case "issdn" ob="issueName DESC,atDate"
	Case "issup" ob="issueName,atDate DESC"
	Case "chgdn" ob="abs(stkchg) DESC,issueName"
	Case "chgup" ob="abs(stkchg),issueName"
	Case Else
		sort="datedn"
		ob="atDate DESC,stkchg DESC"
End Select
URL=Request.ServerVariables("URL")&"?p="&p
title=name
%>
<title>Big changes in CCASS holdings: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If isOrg Then
	Call orgBar(title,person,7)
Else
	Call humanBar(name,person,5)
End If
Call ccassbarpart(p,d,3)%>
<h3>Big changes in CCASS holdings</h3>
<p>This table shows daily movements larger than 5% of outstanding shares. ETFs are excluded.
Click the "Change" heading to sort by absolute size of change. Click the 
issue name to see the history of the participant's holding in this stock. Click the date 
of change to see the CCASS movements on that date.</p>
<%=mobile(2)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide2">Row</th>
		<th class="colHide3">Stock<br>code</th>
		<th><%SL "Date<br>Y-M-D","datedn","dateup"%></th>
		<th class="left"><%SL "Issue","issup","issdn"%></th>
		<th><%SL "Change<br>%","chgdn","chgup"%></th>	
		<th class="colHide3">Previous<br>change</th>
	</tr>
	<%rs.Open "SELECT b.issueID,stkchg,b.atDate,prevDate,CONCAT(name1,':',typeShort) AS issueName,stockCodeThen(issueID,b.atDate) AS sc "&_
		"FROM ccass.bigchanges b JOIN (issue i,organisations o,secTypes s) ON b.issueID=i.ID1 AND i.issuer=o.personID AND i.typeID=s.typeID "&_
		"WHERE orgType<>4 AND abs(stkchg)>=0.05 AND partID="&p&" ORDER BY "&ob,con
	cnt=0
	Do Until rs.EOF
		cnt=cnt+1
		atDate=rs("atDate")
		%>
		<tr>
			<td class="colHide2"><%=cnt%></td>
			<td class="colHide3"><%=rs("sc")%></td>
			<td class="nowrap"><a href="chldchg.asp?i=<%=rs("issueID")%>&d=<%=MSdate(atDate)%>"><%=MSSdate(atDate)%></a></td>
			<td class="left"><a href="chistory.asp?i=<%=rs("issueID")%>&part=<%=p%>"><%=rs("issueName")%></a></td>
			<td><%=FormatNumber(cdbl(rs("stkchg"))*100,2)%></td>
			<td class="nowrap colHide3"><%=MSSdate(rs("prevDate"))%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)
If cnt=0 Then%>
	<p>None found.</p>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>