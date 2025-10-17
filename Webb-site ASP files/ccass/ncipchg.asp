<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%
Dim sort,URL,hldchg,title,e,o,z,cnt,d1,d2,issueID,holding,stake,stkchg,valchg,cntchg,latest,con,rs
'inputs d1 is start date, d is end date (becomes d2)
Call openEnigmaRs(con,rs)
z=getBool("z")
sort=Request("sort")
Select Case sort
	Case "codeup" o="stockCode,stockName"
	Case "codedn" o="stockCode DESC,stockName"
	Case "nameup" o="stockName"
	Case "namedn" o="stockName DESC"
	Case "holddn" o="holding DESC,stockName"
	Case "holdup" o="holding,stockName"
	Case "chngdn" o="hldchg DESC,stockName"
	Case "chngup" o="hldchg,stockName"
	Case "stakdn" o="stake DESC,stockName"
	Case "stakup" o="stake,stockName"
	Case "stkcdn" o="stkchg DESC,stockName"
	Case "stkcup" o="stkchg,stockName"
	Case "valcdn" o="valchg DESC,stockName"
	Case "valcup" o="valchg,stockName"
	Case "hchgdn" o="cntchg DESC,stkchg DESC,stockName"
	Case "hchgup" o="cntchg,stkchg,stockName"
	Case Else
		sort="valcdn"
		o="valchg DESC,stockName"
End Select
If z then e=" WHERE holding<>0 " ELSE e=" WHERE hldchg<>0 "
e=e&"ORDER BY "&o

d2=Min(getMSdateRange("d","2007-06-27",MSdate(Date-1)),GetLog("CCASSdateDone"))
d1=getMSdateRange("d1","2007-06-27",MSdate(Cdate(d2)-1))
If d1>=d2 Then d1=MSdate(Cdate(d2)-1)
rs.Open "SELECT max(settleDate) as d1 FROM ccass.calendar WHERE settleDate<='"&msDate(d1)&"'",con
d1=MSdate(rs("d1"))
rs.Close

rs.Open "Call ccass.NCIPchgext('"&d1&"','"&d2&"','"&e&"')",con
URL=Request.ServerVariables("URL")&"?d1="&d1&"&amp;d="&d2&"&amp;z="&z
title="CCASS changes: unnamed investor participants"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call ccassallbar(d2,4)%>
<ul class="navlist">
	<li><a href="ipstakes.asp?d=<%=d2%>">Holdings</a></li>
	<li class="livebutton">Changes</li>
</ul>
<div class="clear"></div>	
<h3>Holding changes from <%=d1%> to <%=d2%></h3>
<form method="get" action="ncipchg.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		From <input type="date" name="d1" id="d1" value="<%=d1%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		to <input type="date" name="d" id="d2" value="<%=d2%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("z",z,True)%> Show unchanged holdings
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d1').value='';document.getElementById('d2').value='';document.getElementById('z').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<p>"Value change" is the value of the change in shares at the closing price at the end of the period. &quot;*&quot;=stock is suspended
 or in parallel trading. Last close on this counter is used. Click the stake change to see the history in that stock.</p>
<%=mobile(2)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Last<br>code","codeup","codedn"%></th>
		<th style="text-align:left"><%SL "Name","nameup","namedn"%></th>
		<th class="colHide2"><%SL "Holding","holddn","holdup"%></th>
		<th class="colHide2"><%SL "Change", "chngdn","chngup"%></th>
		<th class="colHide3"><%SL "Holders<br>Change", "hchgdn","hchgup"%></th>
		<th class="colHide3"><%SL "Stake<br>%","stakdn","stakup"%></th>
		<th><%SL "Stake<br>&#x0394; %","stkcdn","stkcup"%></th>
		<th><%SL "Value<br>change","valcdn","valcup"%></th>
		<th></th>
	</tr>
	<%cnt=0
	Do Until rs.EOF
		holding=Cdbl(rs("holding"))
		hldchg=Cdbl(rs("hldchg"))
		issueID=rs("issueID")
		stake=rs("stake")*100
		stkchg=rs("stkchg")*100
		valchg=rs("valchg")
		cntchg=rs("cntchg")
		cnt=cnt+1%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td><%=rs("stockCode")%></td>
			<td style="text-align:left"><a href="chldchg.asp?i=<%=issueID%>&d1=<%=d1%>&d=<%=d2%>"><%=rs("stockName")%></a></td>
			<td class="colHide2"><%=FormatNumber(holding,0)%></td>
			<td class="colHide2"><%=FormatNumber(hldchg,0)%></td>			
			<td class="colHide3"><%=FormatNumber(cntchg,0)%></td>
			<td class="colHide3"><%=FormatNumber(stake,2)%></td>
			<td><a href="nciphist.asp?i=<%=issueID%>"><%=FormatNumber(stkchg,2)%></a></td>
			<td><%=FormatNumber(valchg,0)%></td>
			<td><%If rs("susp") Then Response.Write "*"%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>