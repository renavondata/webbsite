<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim numSeats,cumSeats,numPeople,cumPeople,female,cumFemale,cumFemaleSeats,d,title,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))
title="Distribution of INED seats per person at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the number of HK primary-listed INED positions held per 
person on any snapshot date since 1-Jan-1990.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="INEDHKDistnPeople.asp">
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
		<th>No. of<br>INED<br>seats</th>
		<th>No. of<br>people</th>
		<th>Fem.</th>
		<th>Cumul-<br>ative<br>people</th>
		<th>Cumul-<br>ative<br>female</th>
		<th class="colHide3">Cumul-<br>ative<br>seats</th>
		<th class="colHide3">Cumul-<br>ative<br>female<br>seats</th>
	</tr>
	<%con.HKinedDistnPpl d,rs
	Do Until rs.EOF
		numSeats=Clng(rs("numSeats"))
		numPeople=Clng(rs("numPeople"))
		female=Clng(rs("female"))
		cumPeople=cumPeople+numPeople
		cumFemale=cumFemale+female
		cumFemaleSeats=cumFemaleSeats+numSeats*female
		cumSeats=cumSeats+numSeats*numPeople
		%>
		<tr>
			<td><%=numSeats%></td>
			<td><%=numPeople%></td>
			<td><%=female%></td>
			<td><%=cumPeople%></td>
			<td><%=cumFemale%></td>
			<td class="colHide3"><%=cumSeats%></td>
			<td class="colHide3"><%=cumFemaleSeats%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<table class="opltable">
	<tr>
		<th>Statistic</th>
		<th class="right">Result</th>
	</tr>
	<tr>
		<td>Average number of seats per person</td>
		<td class="right"><%=FormatNumber(cumSeats/cumPeople,3)%></td>
	</tr>
	<tr>
		<td>Average number of seats per female</td>
		<td class="right"><%=FormatNumber(cumFemaleSeats/cumFemale,3)%></td>
	</tr>
	<tr>
		<td>Percentage of INED seats held by females</td>
		<td class="right"><%=FormatPercent(cumFemaleSeats/cumSeats,2)%></td>
	</tr>
	<tr>
		<td>Percentage of INEDs who are female</td>
		<td class="right"><%=FormatPercent(cumFemale/cumPeople,2)%></td>
	</tr>
</table>
<p><a href="dirsHKPerPerson.asp?d=<%=d%>">Click here</a> to see a complete list of 
INEDs and the number of seats they hold.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>