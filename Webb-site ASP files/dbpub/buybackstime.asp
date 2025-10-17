<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim ob,sort,x,hist,URL,con,rs,title
Call openEnigmaRs(con,rs)
sort=Request("sort")
hist=getLng("hist",10)
Select case sort
	Case "namup" ob="Name ASC"
	Case "namdn" ob="Name DESC"
	Case "valup" ob="sumValue,Name"
	Case "valdn" ob="sumValue DESC,Name"
	Case "curup" ob="Currency,sumValue DESC"
	Case "curdn" ob="Currency,sumValue"
	Case Else
		sort="valdn"
		ob="Sum(Value) DESC,Name"
End Select
URL=Request.ServerVariables("URL")&"?hist="&hist
title="Buybacks since "&MSdate(Date-hist)&" inclusive"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="buybacksum.asp">Calendar</a></li>
	<li id="livebutton">Lookback</li>
</ul>
<div class="clear"></div>
<form method="get" action="buybackstime.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	Last 
	<%=MakeSelect("hist",hist,"10,10 days,30,30 days,60,60 days,90,90 days,180,180 days,365,1 year,730,2 years,1826,5 years,3652,10 years,"&Date-Dateserial(1991,11,27)&",Since 1991-11-27",True)%>
</form>
<p>Latest buyback found: <%=MSdate(con.Execute("SELECT Max(EffDate) AS maxdate FROM WebBuybacks").Fields(0))%></p>
<p>Note: share repurchases on SEHK have been permitted since 1991-11-27. This table comprises on-market buybacks by HK-listed issuers whether executed on SEHK or on another exchange.</p>
<table class="numtable c2l">
	<tr>
		<th></th>
		<th><%SL "Issue","namup","namdn"%></th>
		<th><%SL "Value","valdn","valup"%></th>
		<th><%SL "Curr.","curup","curdn"%></th>
	</tr>
	<%rs.Open "SELECT IssueID,Name,Currency,Sum(Value)sumValue FROM WebBuybacks WHERE EffDate>='"&MSdate(Date-hist)&"' GROUP BY IssueID,Name,Currency ORDER BY "&ob,con
	Do Until rs.EOF
		x=x+1%>
		<tr>
			<td><%=x%></td>
			<td><a href='buybacks.asp?i=<%=rs("IssueID")%>'><%=rs("Name")%></a></td>
			<td><%=FormatNumber(rs("sumValue"),0)%></td>
			<td><%=rs("Currency")%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>