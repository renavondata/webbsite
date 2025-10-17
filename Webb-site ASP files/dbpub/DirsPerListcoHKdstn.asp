<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim seats,numSeats,cumSeats,cumCos,numCos,dirs,title,d,cnt,femSeats,cumFem,snapY,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))
snapY=Year(d)
title="Distribution of directors per HK-listed company at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the number of Directors on the boards of companies with 
a HK primary listing, the average age of the boards and the gender composition on any snapshot date since 1-Jan-1990.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="DirsPerListcoHKdstn.asp">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="numtable">
	<tr>
		<th>No.<br>of<br>dirs</th>
		<th>No.<br>of<br>Cos</th>
		<th>Share<br>of<br>Cos</th>
		<th>Total<br>seats</th>
		<th>Fem.<br>seats</th>
		<th>Mean<br>age in<br><%=snapY%></th>
		<th class="colHide3">Cumul-<br>ative<br>Cos</th>
		<th class="colHide3">Cumul-<br>ative<br>seats</th>
		<th class="colHide3">Cumul-<br>ative<br>female</th>
	</tr>
	<%
	cnt=con.Execute("SELECT listcoCntAtDate('"&d&"')").Fields(0)
	con.HKdirsDistnCos d,rs
	Do Until rs.EOF
		numCos=Cint(rs("numCos"))
		numSeats=Cint(rs("numSeats"))
		femSeats=Cint(rs("femSeats"))
		seats=numSeats*numCos
		cumSeats=cumSeats+seats
		cumCos=cumCos+numCos
		cumFem=cumFem+femSeats%>
		<tr>
			<td><%=numSeats%></td>
			<td><%=numCos%></td>
			<td><%=FormatPercent(numCos/cnt,1)%></td>
			<td><%=seats%></td>
			<td><%=femSeats%></td>
			<td><%=FormatNumber(snapY-Cdbl(rs("YOB2")),2)%></td>
			<td class="colHide3"><%=cumCos%></td>
			<td class="colHide3"><%=cumSeats%></td>
			<td class="colHide3"><%=cumFem%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
<tr>
	<td>0</td>
	<td><%=cnt-cumCos%></td>
	<td><%=FormatPercent((cnt-cumCos)/cnt,1)%></td>
	<td>0</td>
	<td>0</td>
	<td>-</td>
	<td class="colHide3"><%=cnt%></td>
	<td class="colHide3"><%=cumSeats%></td>
	<td class="colHide3"><%=cumFem%></td>
</tr>
</table>
<p>On the snapshot date:</p>
<p>Average number of directors per company: <b><%=FormatNumber(cumSeats/cnt,2)%>.</b></p>
<p>Average number of female directors per company: <b><%=FormatNumber(cumFem/cnt,2)%>.</b></p>
<p>Share of seats held by women: <b><%=FormatPercent(cumFem/cumSeats,2)%></b></p>
<p><a href="boardcomp.asp?sort=dirdn&d=<%=d%>">Click here</a> to see the list 
of companies and their board composition on the snapshot date.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>