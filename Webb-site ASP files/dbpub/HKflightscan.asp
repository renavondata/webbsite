<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,x,title,sort,URL,ad,d,xps,xcs,xts,arrival,p,con,rs,sql
Call openEnigmaRs(con,rs)
title="HK Airport flight "
ad=Request("ad") 'arrive or depart
Select Case ad
	Case "d"
		arrival=false
		title=title&"departures"
	Case Else
		ad="a"
		arrival=true
		title=title&"arrivals"
End Select
title=title&" and cancellations"
sort=Request("sort")
Select case sort
	Case "pup" ob="p,d"
	Case "pdn" ob="p DESC,d DESC"
	Case "cup" ob="c,d"
	Case "cdn" ob="c DESC,d DESC"
	Case "tup" ob="t,d"
	Case "tdn" ob="t DESC,d DESC"

	Case "xpup" ob="xp,d"
	Case "xpdn" ob="xp DESC,d DESC"
	Case "xcup" ob="xc,d"
	Case "xcdn" ob="xc DESC,d DESC"
	Case "xtup" ob="xt,d"
	Case "xtdn" ob="xt DESC,d DESC"

	Case "npup" ob="np,d"
	Case "npdn" ob="np DESC,d DESC"
	Case "ncup" ob="nc,d"
	Case "ncdn" ob="nc DESC,d DESC"
	Case "ntup" ob="nt,d"
	Case "ntdn" ob="nt DESC,d DESC"

	Case "xpsup" ob="xps,d"
	Case "xpsdn" ob="xps DESC,d DESC"
	Case "xcsup" ob="xcs,d"
	Case "xcsdn" ob="xcs DESC,d DESC"
	Case "xtsup" ob="xts,d"
	Case "xtsdn" ob="xts DESC,d DESC"

	Case "dup" ob="d"
	Case Else
		sort="ddn"
		ob="d DESC"
End Select
sql="SELECT d,p,c,t,xp,xc,xt,p-xp np,c-xc nc,t-xt nt,100*xp/p xps,100*xc/c xcs,100*xt/t xts FROM "&_
	"(SELECT d,t-c p,c,t,xt-xc xp,xc,xt FROM "&_
	"(SELECT DATE(sched)d,SUM(cargo)c,COUNT(*)t,SUM(cargo*cancelled)xc,SUM(cancelled)xt "&_
	"FROM flights WHERE arrival="&arrival&" GROUP BY DATE(sched))t1)t2  ORDER BY "&ob
rs.Open sql, con
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="HKflights.asp">Daily flights</a></li>
	<li class="livebutton">Cancellations</li>
</ul>
<%=writeNav(ad,"a,d","Arrivals,Departures",p&"ad=")%>
<p>Our history starts 6-Sep-2021. Data extend 14 days forward, but the airport 
doesn't normally load them that early. Pax=passenger flights, Car=cargo flights, 
Tot=total flights. Click column headings to sort. Click on the numbers of cancelled flights to see the flights.</p>
<%=mobile(3)%>
<table class="numtable yscroll">
	<thead>
		<tr>
			<th class="colHide3"></th>
			<th></th>
			<th class="center colHide3" colspan="3">Scheduled</th>
			<th class="center" colspan="3">Cancelled</th>
			<th class="center colHide3" colspan="3">Net flights</th>
			<th class="center" colspan="3">Cancelled share</th>		
		<tr>
			<th class="colHide3">Row</th>
			<th><%SL "Scheduled","ddn","dup"%></th>
			<th class="colHide3"><%SL "Pax","pdn","pup"%></th>
			<th class="colHide3"><%SL "Car","cdn","cup"%></th>
			<th class="colHide3"><%SL "Tot","tdn","tup"%></th>
			<th><%SL "Pax","xpdn","xpup"%></th>
			<th><%SL "Car","xcdn","xcup"%></th>
			<th><%SL "Tot","xtdn","xtup"%></th>
			<th class="colHide3"><%SL "Pax","npdn","npup"%></th>
			<th class="colHide3"><%SL "Car","ncdn","ncup"%></th>
			<th class="colHide3"><%SL "Tot","ntdn","ntup"%></th>
			<th><%SL "Pax %","xpsdn","xpsup"%></th>
			<th><%SL "Car %","xcsdn","xcsup"%></th>
			<th><%SL "Tot %","xtsdn","xtsup"%></th>
		</tr>
	</thead>
	<%Do while not rs.EOF
		x=x+1
		d=MSdate(rs("d"))
		xps=rs("xps")
		If isNull(xps) Then xps="-" Else xps=FormatNumber(CDbl(xps),2)
		xcs=rs("xcs")
		If isNull(xcs) Then xcs="-" Else xcs=FormatNumber(CDbl(xcs),2)
		xts=rs("xts")
		If isNull(xts) Then xts="-" Else xts=FormatNumber(Cdbl(xts),2)
		%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td><a href="HKflights.asp?d=<%=d%>&amp;ad=<%=ad%>"><%=d%></a></td>
			<td class="colHide3"><%=rs("p")%></td>
			<td class="colHide3"><%=rs("c")%></td>
			<td class="colHide3"><%=rs("t")%></td>
			<td><a href="HKflights.asp?s=acdn&amp;d=<%=d%>&amp;ad=<%=ad%>&amp;pc=p"><%=rs("xp")%></a></td>
			<td><a href="HKflights.asp?s=acdn&amp;d=<%=d%>&amp;ad=<%=ad%>&amp;pc=c"><%=rs("xc")%></a></td>
			<td><%=rs("xt")%></td>
			<td class="colHide3"><%=rs("np")%></td>
			<td class="colHide3"><%=rs("nc")%></td>
			<td class="colHide3"><%=rs("nt")%></td>
			<td><%=xps%></td>
			<td><%=xcs%></td>
			<td><%=xts%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>