<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%
Dim sort,URL,atDate,ob,d,cnt,lastDate,con,rs,i,n,p
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
sort=Request("sort")
Select Case sort
	Case "datedn" ob="atDate DESC,stkchg DESC"
	Case "dateup" ob="atDate,stkchg"
	Case "partup" ob="partName,atDate DESC"
	Case "partdn" ob="partName DESC,atDate"
	Case "chgdn" ob="abs(stkchg) DESC,partName"
	Case "chgup" ob="abs(stkchg),partName"
	Case Else
		sort="datedn"
		ob="atDate DESC,stkchg DESC"
End Select
URL=Request.ServerVariables("URL")&"?i="&i
%>
<title>Big changes in CCASS holders: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Big changes in CCASS holders</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call ccassbar(i,atDate,4)
End If%>
<form method="get" action="bigchangesissue.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="i" value="<%=i%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<h3>Big changes in CCASS holders</h3>
<p>This table shows daily movements larger than 0.25% of outstanding shares. 
Click the "Change" heading to sort by absolute size of change. Click the 
participant name to see the history of its holding in this stock. Click the date 
of change to see the CCASS movements on that date.</p>
<%=mobile(2)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide2">Row</th>
		<th><%SL "Date<br>Y-M-D","datedn","dateup"%></th>
		<th class="left"><%SL "Participant","partup","partdn"%></th>
		<th><%SL "Change","chgdn","chgup"%></th>	
		<th class="colHide3">Previous<br>change</th>
	</tr>
	<%rs.Open "SELECT b.partID,stkchg,b.atDate,prevDate,partName "&_
		"FROM ccass.bigchanges b JOIN ccass.participants p ON b.partID=p.partID "&_
		"WHERE issueID="&i&" ORDER BY "&ob,con
	cnt=0
	lastDate=0
	Do Until rs.EOF
		cnt=cnt+1
		atDate=rs("atDate")
		%>
		<tr>
			<td class="colHide2"><%=cnt%></td>
			<td class="nowrap">
				<%If Not((sort="datedn" Or sort="dateup") AND atDate=lastDate) Then%>
					<a href="chldchg.asp?i=<%=i%>&d=<%=MSdate(atDate)%>"><%=MSSdate(atDate)%></a>
					<%lastDate=atDate
				End If%>
			</td>
			<td class="left"><a href="chistory.asp?i=<%=i%>&part=<%=rs("partID")%>"><%=rs("PartName")%></a></td>
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