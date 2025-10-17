<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,count,title,cmd,proc,d1,d2,totRet,CAGR,temp,incIPO,ob,maxDate,con,rs
Call openEnigmaRs(con,rs)
incIPO=getBool("i")
sort=Request("sort")

maxDate=Min(GetLog("MBquotesDate"),GetLog("GEMquotesDate"))
d1=Max(Min(getMSdef("d1","1994-01-03"),MaxDate),"1994-01-03")
d2=Max(Min(getMSdef("d2",maxDate),maxDate),"1994-01-03")
If d1>d2 Then Swap d1,d2

Select Case sort
	Case "nameup" ob="name1,typeShort"
	Case "namedn" ob="name1 DESC,typeShort"
	Case "tretup" ob="totRet,name1"
	Case "cagrup" ob="CAGRet,name1"
	Case "cagrdn" ob="CAGRET DESC,name1"
	Case "typeup" ob="typeShort,totRet DESC"
	Case "typedn" ob="typeShort DESC,totRet DESC"
	Case "frstup" ob="buyDate,name1"
	Case "frstdn" ob="buyDate DESC,name1"
	Case "lastup" ob="sellDate,name1"
	Case "lastdn" ob="sellDate DESC,name1"
	Case "codedn" ob="lastCode DESC,buyDate DESC"
	Case "codeup" ob="lastCode,buyDate DESC"
	Case Else
		ob="totRet DESC,name1"
		sort="tretdn"
End Select
rs.Open "Call allTotRets('"&d1&"','"&d2&"',"&incIPO&",'"&ob&"')",con
title="Webb-site Total Returns up to "&d2&" of stocks listed at "&d1
If incIPO then title=title&" or after"
URL=Request.ServerVariables("URL")&"?d1="&d1&"&amp;d2="&d2&"&amp;i="&incIPO
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="TRnotes.asp" target="_blank">Notes</a></li>
	<li><a href="ctr.asp">Compare returns</a></li>
</ul>
<div class="clear"></div>
<p>This page shows the total returns in a fixed period of all ordinary shares 
and REIT units which were primary-listed in HK at the start date and tradable on 
at least 2 days in the period. &quot;*&quot; means the stock was delisted during the 
period, for whatever reason. If a stock was suspended in a crisis and later 
delisted, then its subsequent return may have been -100%! CAGR is the Compound 
Annual Growth Rate, for stocks traded over a period of at least 180 days. Check 
the box to include new listings after the start date. Please 
<b><a href="../contact">report</a></b> any errors or desired features.</p>
<form method="get" action="alltotrets.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Shares listed at: <input type="date" name="d1" id="d1" value="<%=d1%>">
	</div>
	<div class="inputs">
		Period end: <input type="date" name="d2" id="d2" value="<%=d2%>">
	</div>
	<div class="inputs">
		<%=checkbox("i",incIPO,False)%> Include new listings in period
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d1').value='';document.getElementById('d2').value=''">
	</div>
	<div class="clear"></div>	
</form>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide2">Row</th>
		<th class="left colHide3"><%SL "Type","typeup","typedn"%></th>
		<th><%SL "Last<br/>code","codeup","codedn"%></th>
		<th class="left"><%SL "Issuer","nameup","namedn"%></th>
		<th class="colHide2"><%SL "First trade<br/>in period","frstup","frstdn"%></th>
		<th class="colHide2"><%SL "Last trade<br/>in period","lastup","lastdn"%></th>
		<th></th>
		<th><%SL "Total<br/>return","tretdn","tretup"%></th>
		<th class="colHide3"><%SL "CAGR","cagrdn","cagrup"%></th>
	</tr>
<%Do while not rs.EOF
	totRet=rs("totRet")
	If not isNull(totRet) Then
		count=count+1
		totRet=totRet-1
		totRet=FormatPercent(totRet,pcsig(totRet))
		CAGR=rs("CAGRet")
		If isNull(CAGR) Then CAGR="" Else CAGR=FormatPercent(CAGR-1,pcsig(CAGR-1))
		%>
		<tr>
			<td class="colHide2"><%=count%></td>
			<td class="left colHide3"><%=rs("typeShort")%></td>
			<td><%=rs("lastCode")%></td>
			<td class="left"><a href='ctr.asp?i1=<%=rs("issueID")%>&d1=<%=d1%>'><%=rs("Name1")%></a></td>
			<td class="colHide2"><%=MSdate(rs("buyDate"))%></td>
			<td class="colHide2"><%=MSdate(rs("sellDate"))%></td>
			<td><%If rs("delisted") Then%>*<%End If%></td>
			<td><%=totRet%></td>
			<td class="colHide3"><%=CAGR%></td>
		</tr>
	<%End If
	rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<%if count=0 Then%><p><b>None found.</b></p><%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>