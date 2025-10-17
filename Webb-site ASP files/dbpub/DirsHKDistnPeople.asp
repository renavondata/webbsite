<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim numSeats,cumSeats,numPeople,cumPeople,numFemale,cumFemale,cumFemaleSeats,title,d,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))
title="Distribution of HK-listed directorships per person at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the number of HK-listed directorships held by directors 
of companies with a HK primary listing 
on any snapshot date since 1-Jan-1990. To see a list of directors,
<a href="dirsHKPerPerson.asp?d=<%=d%>">click here</a>.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="DirsHKDistnPeople.asp">
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
		<th>No.<br>of<br>seats</th>
		<th>No.<br>of<br>people</th>
		<th>Female</th>
		<th>Cumul-<br>ative<br>people</th>
		<th>Cumul-<br>ative<br>female</th>
		<th class="colHide3">Cumul-<br>ative<br>seats</th>
		<th class="colHide3">Cumul-<br>ative<br>female<br>seats</th>
	</tr>
	<%
	con.HKdirsDistnPpl d,rs
	Do Until rs.EOF
		numSeats=Clng(rs("numSeats"))
		numPeople=Clng(rs("numPeople"))
		numFemale=Clng(rs("female"))
		cumSeats=cumSeats+numSeats*numPeople
		cumFemaleSeats=cumFemaleSeats+numSeats*numFemale
		cumPeople=cumPeople+numPeople
		cumFemale=cumFemale+numFemale%>
		<tr>
			<td><%=numSeats%></td>
			<td><%=numPeople%></td>
			<td><%=numFemale%></td>
			<td><%=cumPeople%></td>
			<td><%=cumFemale%></td>
			<td class="colHide3"><%=cumSeats%></td>
			<td class="colHide3"><%=cumFemaleSeats%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
	<br>
<table class="opltable">
	<tr>
		<th>Statistic</th>
		<th>Result</th>
	</tr>
	<tr>
		<td>Average number of directorships per person</td>
		<td><%=FormatNumber(cumSeats/cumPeople,3)%></td>
	</tr>
	<tr>
		<td>Average number of directorships per female</td>
		<td><%=FormatNumber(cumFemaleSeats/cumFemale,3)%></td>
	</tr>
	<tr>
		<td>Percentage of directorships held by females</td>
		<td><%=FormatPercent(cumFemaleSeats/cumSeats,2)%></td>
	</tr>
	<tr>
		<td>Percentage of directors who are female</td>
		<td><%=FormatPercent(cumFemale/cumPeople,2)%></td>
	</tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>