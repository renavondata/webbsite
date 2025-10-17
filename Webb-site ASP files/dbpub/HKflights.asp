<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,count,title,sort,URL,d,p,p2,ad,pc,cargo,arrival,sched,lastSched,flightNo,lastNo,actual,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
ad=Request("ad") 'arrive or depart
pc=Request("pc") 'passengers or cargo
d=Request("d")
If Not isDate(d) Then d=Date Else d=cDate(d)
d=MSdate(Min(Max(d,#6-Sep-2021#),Date+14))

Select case sort
	Case "acdn" ob="actual DESC,flightNo,seq"
	Case "acup" ob="actual,flightNo,seq"
	Case "lateup" ob="late,flightNo,seq"
	Case "latedn" ob="late DESC,flightNo,seq"
	Case "alup" ob="airline,flightNo,seq"
	Case "aldn" ob="airline DESC,flightNo DESC,seq"
	Case "flup" ob="flightNo,actual,seq"
	Case "fldn" ob="flightNo DESC,actual DESC,seq"
	Case "iasc" ob="IATA,sched"
	Case "iaac" ob="IATA,actual"
	Case "apsc" ob="airport,sched"
	Case "apac" ob="airport,actual"
	Case "scdn" ob="sched DESC,flightNo,seq"
	Case "gtup" ob="gate*1,sched,flightNo"
	Case "stup" ob="stand,sched,flightNo"
	Case Else
		sort="scup"
		ob="sched,flightNo,seq"
End Select
Select Case pc
	Case "c"
		cargo=true
		title="cargo"
	Case Else
		pc="p"
		cargo=false
		title="passenger"
End Select
title="HK Airport "&title
Select Case ad
	Case "d"
		arrival=false
		title=title&" departures"
	Case Else
		ad="a"
		arrival=true
		title=title&" arrivals"
End Select
title=title&" on "&d
sql="SELECT ID,DATE_FORMAT(sched,'%H:%i') sched,flightNo,al.enName airline,seq,destor.IATA,ap.enName airport,"&_
	"IF(cancelled,'Cancelled',date_format(actual,'%m-%d %H:%i')) actual,"&_
	"TIME_FORMAT(TIMEDIFF(actual,sched),'%H:%i') late,terminal,aisle,gate,stand,baggage,hall FROM "&_
	"flights JOIN destor ON ID=flightID "&_
	"LEFT JOIN airlines al ON airline=icao "&_
	"LEFT JOIN airports ap ON destor.IATA=ap.IATA "&_
	"WHERE cargo="&cargo&" AND arrival="&arrival&" AND date(sched)='"&d&"' ORDER BY "&ob
rs.Open sql, con
URL=Request.ServerVariables("URL")

p=URL&"?d="&d&"&amp;sort="&sort&"&amp;"
p2=URL&"?d="&d&"&amp;ad="&ad&"&amp;pc="&pc&"&amp;"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li class="livebutton">Daily flights</li>
	<li><a href="HKflightscan.asp?ad=<%=ad%>">Cancellations</a></li>
</ul>
<%=writeNav(ad,"a,d","Arrivals,Departures",p&"pc="&pc&"&amp;ad=")%>
<%=writeNav(pc,"p,c","Passenger,Cargo",p&"ad="&ad&"&amp;pc=")%>
<%URL=URL&"?ad="&ad&"&amp;pc="&pc&"&amp;d="&d%>

<div class="clear"></div>
<p>Warning: these data are not live. Check the 
<a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page" target="_blank">boards</a> at HK Airport for today's flights, 
or with your airline. 
Our history starts 6-Sep-2021. Data extend 14 days forward, but the airport 
doesn't normally load them that early. Click column headings to sort (except 
Baggage/Hall and Terminal/Aisle).</p>
<form method="get" action="hkflights.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="ad" value="<%=ad%>">
	<input type="hidden" name="pc" value="<%=pc%>">
	<div class="inputs">
		Schedule date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<p>CSV downloads: <a href="CSV.asp?t=airlines">airlines</a> <a href="CSV.asp?t=airports">airports</a>
<a href="CSV.asp?t=flights">flights</a> <a href="CSV.asp?t=destor">destination/origin</a></p>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else%>
	<%=mobile(2)%>
	<table class="txtable yscroll">
		<tr>
			<th class="colHide2">Row</th>
			<th><%SL "Sched","scup","scdn"%></th>
			<th><%SL "Actual","acup","acdn"%></th>
			<th class="right"><%SL "Early<br>/late","latedn","lateup"%></th>
			<th><%SL "Flight","flup","fldn"%></th>
			<th class="colHide3"><%SL "Airline","alup","aldn"%></th>
			<%If arrival And Not cargo Then%>
				<th class="colHide2"><a class="info" href="<%=p2&"sort=stup"%>">S<span>Stand</span></a></th>
				<th class="colHide2 right"><a class="info" href="#">B<span>Baggage</span></a></th>
				<th class="colHide2"><a class="info" href="#">H<span>Hall</span></a></th>
			<%End If%>
			<%If (Not arrival) And (Not cargo) Then%>
				<th class="colHide2"><a class="info" href="#">T<span>Terminal</span></a></th>
				<th class="colHide2"><a class="info" href="#">A<span>Aisle</span></a></th>
				<th class="colHide2 right"><a class="info" href="<%=p2&"sort=gtup"%>">G<span>Gate</span></a></th>
			<%End If%>	
			<th><%SL "IATA","iasc","iaac"%></th>
			<th class="colHide3"><%SL "Airport","apsc","apac"%></th>			
		</tr>
		<%Do while not rs.EOF
			flightNo=rs("flightNo")
			sched=rs("sched")
			%>
			<tr>
				<%If flightNo<>lastNo or sched<>lastSched Then
					count=count+1
					lastNo=flightNo
					lastSched=sched
					%>
					<td class="colHide2"><%=count%></td>
					<td><%=sched%></td>
					<td><%=rs("actual")%></td>
					<td class="right"><%=rs("late")%></td>
					<td><a href="HKflighthist.asp?fn=<%=flightNo%>"><%=flightNo%></a></td>
					<td class="colHide3"><%=rs("airline")%></td>
					<%If Arrival And Not cargo Then%>
						<td class="colHide2"><%=rs("stand")%></td>
						<td class="colHide2 right"><%=rs("baggage")%></td>
						<td class="colHide2"><%=rs("hall")%></td>
					<%End If%>
					<%If (Not arrival) And (Not cargo) Then%>
						<td class="colHide2"><%=rs("Terminal")%></td>
						<td class="colHide2"><%=rs("Aisle")%></td>
						<td class="colHide2 right"><%=rs("Gate")%></td>
					<%End If%>			
				<%Else%>
					<td class="colHide2"></td>
					<td colspan="4"></td>
					<td class="colHide3"></td>
					<%If Not cargo Then%>
						<td class="colHide2" colspan="3"></td>
					<%End If%>
				<%End If%>
				<td><%=rs("IATA")%></td>
				<td class="colHide3"><%=rs("airport")%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>