<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim x,ob,URL,sort,avg,title,p,amt,hds,sumamt,sumhds,name,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=getLng("p",0)
name=fnameOrg(p)
Select case sort
	Case "amtup" ob="amt,eName,phase"
	Case "amtdn" ob="amt DESC,eName,phase"
	Case "hdsup" ob="heads,eName,phase"
	Case "hdsdn" ob="heads DESC,eName"
	Case "namup" ob="eName"
	Case "namdn" ob="eName DESC"
	Case "avgup" ob="avg,eName"
	Case "avgdn" ob="avg DESC,eName"
	Case "phaup" ob="phase,eName"
	Case "phadn" ob="phase,amt DESC"
	Case Else
		sort="phaup"
		ob="phase,eName"
End Select
title="Raw ESS filings"
URL=Request.ServerVariables("URL")&"?p="&p%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If p>0 Then
	Call orgBar(name,p,10)%>
	<h3><%=title%></h3>
	<p>This page shows the raw filings from the
	<a href="https://www.ess.gov.hk/en/granted_companies.html" target="_blank">
	Employment Support Scheme</a> files attributed to this organisation in 
	Webb-site Who's Who. <a href="searchESS.asp">
	Click here</a> to search all approved ESS claims.</p>
	<%
	rs.Open "SELECT eName,cName,phase,amt,heads,amt/heads avg FROM ess WHERE orgID="&p&" ORDER BY "&ob,con
	If rs.EOF then%>
		<p>None found.</p>
	<%Else%>
		<%=mobile(2)%>
		<table class="numtable c2l">
			<tr>
				<th><%SL "Phase","phaup","phadn"%></th>
				<th><%SL "English name","namup","namdn"%></th>
				<th class="colHide3 left">Chinese name</th>
				<th><%SL "Amount<br>HK$","amtdn","amtup"%></th>
				<th><%SL "Heads","hdsdn","hdsup"%></th>
				<th><%SL "Average","avgdn","avgup"%><br>HK$</th>
			</tr>
			<%x=0
			Do Until rs.EOF
				If isNull(rs("avg")) Then avg="-" Else avg=FormatNumber(rs("avg"),0) 
				x=x+1
				%>
				<tr>
					<td><%=rs("phase")%></td>
					<td><%=rs("eName")%></td>
					<td class="colHide3 left"><%=rs("cName")%></td>					
					<td><%=FormatNumber(rs("amt"),0)%></td>
					<td><%=FormatNumber(rs("heads"),0)%></td>
					<td><%=avg%></td>
				</tr>
				<%
				rs.MoveNext
			Loop%>
		</table>
		<%If x>1 Then%>
			<h3>Totals</h3>
			<table class="numtable">
				<tr>
					<th>Phase</th>
					<th>Amount<br>HK$</th>
					<th>Heads</th>
					<th>Average<br>HK$</th>
				</tr>
				<%
				rs.Close
				x=0
				rs.Open "SELECT phase,SUM(amt)amt,SUM(heads)hds,SUM(amt)/SUM(heads)avg FROM ess WHERE orgID="&p&_
					" GROUP BY phase ORDER BY phase",con
				Do Until rs.EOF
					x=x+1
					amt=CLng(rs("amt"))
					hds=CLng(rs("hds"))
					sumamt=sumamt+amt
					sumhds=sumhds+hds
					If isNull(rs("avg")) Then avg="-" Else avg=FormatNumber(rs("avg"),0)%>
					<tr>
						<td><%=rs("phase")%></td>
						<td><%=FormatNumber(amt,0)%></td>
						<td><%=FormatNumber(hds,0)%></td>
						<td><%=avg%></td>
					</tr>
					<%rs.MoveNext
				Loop
				If x>1 Then
					If sumhds=0 Then avg="-" Else avg=FormatNumber(sumamt/sumhds,0)%>
					<tr>
						<td>Both</td>
						<td><%=FormatNumber(sumamt,0)%></td>
						<td><%=FormatNumber(sumhds/2,0)%></td>
						<td><%=FormatNumber(sumamt/sumhds,0)%></td>
					</tr>
				<%End If%>
			</table>
		<%End If
	End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
