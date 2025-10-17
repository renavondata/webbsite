<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,x,maxDate,y,m,d,value,shares,stockCode,con,rs,title,dt,dstart,dend,os,stake,u,vwap,f
Call openEnigmaRs(con,rs)
maxDate=con.Execute("SELECT Max(EffDate) AS maxdate FROM WebBuybacks").Fields(0)
y=getIntRange("y",Year(maxDate),1991,Year(Date))
m=getIntRange("m",Month(maxDate),0,12)
d=IIF(m=0,0,getIntRange("d",Day(maxDate),0,MonthEnd(m,y)))
f=IIF(m=0,"y",IIF(d=0,"m","d")) 'frequency for individual stock page link
u=getBool("u")
If y=1991 And m>0 Then m=Max(11,m)
If y=1991 And m=11 And d>0 Then d=Max(d,27)
If y=Year(Date) Then m=Min(m,Month(Date))
If d>0 Then
	dt=dateSerial(y,m,d)
	dt=Min(dt,maxDate)
	If Weekday(dt)=7 Then dt=dt-1
	If Weekday(dt)=1 Then dt=dt-2
	y=Year(dt)
	m=Month(dt)
	d=Day(dt)
End If
dstart=dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))
dend=dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))
sort=Request("sort")
Select case sort
	Case "namup" ob="Name ASC"
	Case "namdn" ob="Name DESC"
	Case "codup" ob="stockCode ASC"
	Case "coddn" ob="stockCode DESC"
	Case "valup" ob="Value,Name"
	Case "valdn" ob="Value DESC,Name"
	Case "curup" ob="Currency, Value DESC"
	Case "curdn" ob="Currency, Value"
	Case "stkdn" ob="stake DESC,Name"
	Case "stkup" ob="stake,Name"
	Case Else
		sort="valdn"
		ob="Value DESC,Name"
End Select
title="Buybacks "&IIF(d>0,"on ","in ")&dateYMD(y,m,d)
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li id="livebutton">Calendar</li>
	<li><a href="buybackstime.asp">Lookback</a></li>
</ul>
<div class="clear"></div>
<form method="get" action="buybacksum.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Buyback date 
		<%=rangeSelect("y",y,False,,True,1991,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",True)%>
		<%=daySelect("d",d,True,"Any day",True)%>
	</div>
	<div class="inputs">
		<%=checkbox("u",u,True)%> Show unadjusted for splits and bonus shares 
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p>Note: share repurchases on SEHK have been permitted since 1991-11-27. 
This table comprises buybacks by HK-listed companies whether executed 
on SEHK or on another exchange. By default, we adjust repurchased shares and 
outstanding shares for subsequent splits/consolidations and bonus issues. For 
the years 1991-2002, manual data collection of outstanding shares is a work in 
progress.</p>
<%=mobile(1)%>
<table class="numtable c3l yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th class="colHide2"><%SL "Stock<br>code","codup","coddn"%></th>
		<th><%SL "Issue","namup","namdn"%></th>
		<th><%SL "Curr.","curup","curdn"%></th>
		<th><%SL "Value","valdn","valup"%></th>
		<th class="colHide2">Number</th>
		<th class="colHide2">Av.<br>price</th>
		<th class="colHide1">Outstanding</th>
		<th class="colHide1">at Date</th>
		<th class="colHide2"><%SL "Stake %","stkdn","stkup"%></th>
	</tr>
<%If u Then
	rs.Open "SELECT b.issueID,stockCode,name,currency,SUM(shares)shares,SUM(Value)value,outstanding os,osd,SUM(shares)*100/outstanding stake FROM WebBuybacks b LEFT JOIN "&_
		"((SELECT issueID,Max(atDate)osd FROM issuedshares WHERE atDate<='"&dstart&"' GROUP BY issueID)m,issuedshares s) "&_
		"ON b.issueID=m.issueID AND  m.issueID=s.issueID AND m.osd=s.atDate "&_
		"WHERE EffDate BETWEEN '"&dstart&"' AND '"&dend&"' GROUP BY issueID,currency ORDER BY "&ob,con
Else
	rs.Open "SELECT b.issueID,stockCode,name,currency,shares,osd,os/splitadj(b.issueID,osd)os,shares*100*splitadj(b.issueID,osd)/os stake,value FROM "&_
		"(SELECT issueID,stockCode,name,currency,SUM(shares)shares,SUM(Value)value FROM buybacksadj "&_
	    "WHERE EffDate BETWEEN '"&dstart&"' AND '"&dend&"'GROUP BY issueID,currency)b LEFT JOIN "&_
	    "(SELECT m.issueID,osd,outstanding os FROM "&_
		"(SELECT issueID,Max(atDate)osd FROM issuedshares WHERE atDate<='"&dstart&"' GROUP BY issueID)m JOIN issuedshares s	ON m.issueID=s.issueID AND m.osd=s.atDate)t "&_
		"ON b.issueID=t.issueID ORDER BY "&ob,con
End If
Do Until rs.EOF
	x=x+1
	shares=rs("Shares")
	If isNull(shares) Then shares=0 Else shares=CDbl(shares)
	value=rs("Value")
	stockCode=rs("stockCode")
	If Not isNull(stockCode) Then stockCode=Right("0000"&stockCode,5)
	os=rs("os")
	If Not isNull(os) Then os=FormatNumber(os,0) Else os="-"
	If shares>0 Then vwap=FormatNumber(CDbl(rs("value"))/shares,3) Else vwap="-"
	stake=rs("stake")
	If Not isNull(stake) Then stake=FormatNumber(stake,3) Else stake="-"
	%>
	<tr>
		<td class="colHide1"><%=x%></td>
		<td class="colHide2"><%=stockCode%></td>
		<td><a href="buybacks.asp?i=<%=rs("IssueID")%>&amp;f=<%=f%>"><%=rs("Name")%></a></td>
		<td><%=rs("Currency")%></td>
		<td><%=FormatNumber(value,0)%></td>
		<td class="colHide2"><%=FormatNumber(shares,0)%></td>
		<td class="colHide2"><%=vwap%></td>
		<td class="colHide1"><%=os%></td>
		<td class="colHide1"><%=MSdate(rs("osd"))%></td>
		<td class="colHide2"><%=stake%></td>
	</tr>
	<%rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
