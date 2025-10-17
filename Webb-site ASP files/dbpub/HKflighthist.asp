<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,count,title,sort,URL,ftype,last,sched,actual,fn,ICAO,alName,fns,al,als,pc,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
fn=Left(Request("fn"),7)
al=Left(Request("al"),3)

'load airlines array
als=con.Execute("SELECT DISTINCT airline,enName FROM flights JOIN airlines ON airline=ICAO ORDER BY enName").getRows

If fn="" And al="" Then al="CPA"
If fn>"" Then
	rs.Open "SELECT * FROM flights WHERE flightNo='"&fn&"' LIMIT 1",con
	If rs.EOF Then
		'flight not found, so no airline can be found in flights table
		fn=""
		If al="" Then al="CPA"
	Else
		ICAO=rs("airline")
		If rs("cargo") Then ftype="cargo" else ftype="passenger"
	End If
	rs.Close
End If
If al<>"" and al<>ICAO Then
	'a different airline al was picked from the form so pick the first flight number
	rs.Open "SELECT DISTINCT flightNo,cargo FROM flights WHERE airline='"&al&"' ORDER BY flightNo LIMIT 1",con
	If rs.EOF Then
		'not a recognised airline
		rs.Close
		ICAO="CPA"
		al=ICAO
		rs.Open "SELECT DISTINCT flightNo,cargo FROM flights WHERE airline='"&al&"' ORDER BY flightNo LIMIT 1",con
	Else
		ICAO=al		
	End if
	fn=rs("flightNo")
	If rs("cargo") Then ftype="cargo" else ftype="passenger"
	rs.Close
End If
If ftype="cargo" Then pc="c" Else pc="p"
'generate two-column array for HTML selection of flight number
fns=con.Execute("SELECT DISTINCT flightNo,flightNo FROM flights WHERE airline='"&ICAO&"' ORDER BY flightNo").getRows
'get name of airline, if known (some dummy airline codes have appeared such as 3L and AA0, which we added to the airlines table)
alName=con.Execute("SELECT IFNULL((SELECT enName FROM airlines WHERE ICAO='"&ICAO&"'),'"&ICAO&"')").Fields(0)

Select case sort
	Case "acdn" ob="actual DESC,flightNo,seq"
	Case "acup" ob="actual,flightNo,seq"
	Case "lateup" ob="late,flightNo,seq"
	Case "latedn" ob="late DESC,flightNo,seq"
	Case "scup" ob="sched,seq"
	Case Else
		sort="scdn"
		ob="sched DESC,seq"
End Select
title="HK Airport movements for flight "&fn
sql="SELECT ID,date_format(sched,'%y-%m-%d %H:%i') sched,"&_
	"IF(cancelled,'Cancelled',date_format(actual,'%m-%d %H:%i')) actual,"&_
	"TIME_FORMAT(TIMEDIFF(actual,sched),'%H:%i') late,"&_
	"seq,destor.IATA,ap.enName airport,IF(arrival,'A','D') ad "&_
	"FROM flights JOIN destor ON ID=flightID "&_
	"LEFT JOIN airports ap ON destor.IATA=ap.IATA "&_
	"WHERE flightNo='"&fn&"' ORDER BY "&ob
rs.Open sql, con
URL=Request.ServerVariables("URL")&"?fn="&fn
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="HKflights.asp?pc=<%=pc%>">Daily flights</a></li>
	<li><a href="HKflightscan.asp">Cancellations</a></li>
</ul>
<div class="clear"></div>
<table class="txtable">
	<tr>
		<td>Airline ICAO code</td>
		<td><%=ICAO%></td>
	</tr>
	<tr>
		<td>Airline</td>
		<td><%=alName%></td>
	</tr>
	<tr>
		<td>Flight type</td>
		<td><%=ftype%></td>
	</tr>
</table>
<div class="clear"></div>
<p>Warning: these data are not live. Check the 
<a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page" target="_blank">boards</a> at HK Airport for today's flights, 
or with your airline. 
Our history starts 6-Sep-2021. Data extend 14 days forward, but the airport 
doesn't normally load them that early. A=arrival, D=departure.</p>
<form method="get" action="hkflighthist.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
	Pick an airline: 
	<%=arrSelect("al",ICAO,als,true)%>	
	</div>
	<div class="inputs">
	Pick a flight: 
	<%=arrSelect("fn",fn,fns,true)%>
	</div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else%>
	<%=mobile(3)%>
	<table class="txtable">
		<tr>
			<th>Row</th>
			<th>A/<br>D</th>
			<th><%SL "Sched<br>YY-MM-DD","scdn","scup"%></th>
			<th><%SL "Actual<br>MM-DD","acdn","acup"%></th>
			<th class="right"><%SL "Early<br>/late","latedn","lateup"%></th>
			<th>IATA</th>
			<th class="colHide3">Airport</th>			
		</tr>
		<%Do while not rs.EOF
			sched=rs("sched")
			%>
			<tr>
				<%If last<>sched Then
					count=count+1					
					last=sched
					%>
					<td><%=count%></td>
					<td><%=rs("ad")%></td>
					<td><%=rs("sched")%></td>
					<td><%=rs("actual")%></td>
					<td class="right"><%=rs("late")%></td>
				<%Else%>
					<td colspan="5"></td>
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