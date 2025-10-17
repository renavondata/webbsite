<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim seats,cumSeats,cumCos,fdirs,numberOfCos,title,cnt,d,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))
title="Distribution of female directors per HK-listed company at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the number of female Directors on the boards of companies with a 
HK primary listing on any snapshot date since 1-Jan-1990.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="FDirsPerListcoHKdstn.asp">
	<div class="inputs">
		<input type="date" id="d" name="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="numtable">
	<tr>
		<th>No. of<br>fem.<br>dirs</th>
		<th>No.<br>of<br>Cos</th>
		<th>Share<br>of<br>Cos</th>
		<th>Total<br>seats</th>
		<th>Cumul-<br>ative<br>Cos</th>
		<th class="colHide3">Cumul-<br>ative<br>share</th>
		<th class="colHide3">Cumul-<br>ative<br>seats</th>
	</tr>
	<%
	cnt=con.Execute("SELECT listcoCntAtDate('"&d&"')").Fields(0)
	con.HKfdirsDistn d,rs
	Do while not rs.EOF
		fdirs=Clng(rs("fdirs"))
		numberOfCos=Clng(rs("numberOfCos"))
		seats=fdirs*numberOfCos
		cumSeats=cumSeats+seats
		cumCos=numberOfCos+cumCos%>
		<tr>
			<td><%=fdirs%></td>
			<td><%=numberOfCos%></td>
			<td><%=FormatPercent(numberOfCos/cnt,1)%></td>
			<td><%=seats%></td>
			<td><%=cumCos%></td>
			<td class="colHide3"><%=FormatPercent(cumCos/cnt,1)%></td>
			<td class="colHide3"><%=cumSeats%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
	<tr>
		<td>0</td>
		<td><%=cnt-cumCos%></td>
		<td><%=FormatPercent((cnt-cumCos)/cnt,1)%></td>
		<td>0</td>
		<td><%=cnt%></td>
		<td class="colHide3">100.0%</td>
		<td class="colHide3"><%=cumSeats%></td>
	</tr>
</table>
<p>The average number of female directors per listed company on the snapshot date is: <b><%=FormatNumber(cumSeats/cnt,2)%>.</b></p>
<p><a href="boardcomp.asp?sort=femdn&d=<%=d%>">Click here</a> to see the company list.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>