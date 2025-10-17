<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim seats,cumSeats,cumCos,numSeats,numCos,d,title,cnt,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))
title="Distribution of INEDs per HK-listed company at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the number of Independent Non-executive Directors of companies 
with a HK primary listing on any snapshot date since 1-Jan-1990.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="INEDHKDistnCos.asp">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<table class="numtable">
	<tr>
		<th>No.<br>of<br>INEDs</th>
		<th>No.<br>of<br>Cos</th>
		<th>Share<br>of<br>Cos</th>
		<th>Total<br>INED<br>seats</th>
		<th>Cumul-<br>ative<br>Cos</th>
		<th>Cumul-<br>ative<br>seats</th>
	</tr>
	<%cnt=con.Execute("SELECT listcoCntAtDate('"&d&"')").Fields(0)
	con.HKinedDistnCos d,rs
	Do Until rs.EOF
		numSeats=Clng(rs("numSeats"))
		numCos=Clng(rs("numCos"))
		seats=numSeats*numCos
		cumSeats=cumSeats+seats
		cumCos=cumCos+numCos%>
		<tr>
			<td><%=numSeats%></td>
			<td><%=numCos%></td>
			<td><%=FormatPercent(numCos/cnt,1)%></td>
			<td><%=seats%></td>
			<td><%=cumCos%></td>
			<td><%=cumSeats%></td>
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
		<td><%=cumSeats%></td>
	</tr>
</table>
<p>The average number of INEDs per listed company at the snapshot date is: <b><%=FormatNumber(cumSeats/cnt,3)%>.</b></p>
<p><a href="boardcomp.asp?sort=inedn&d=<%=d%>">Click here</a> to see the 
list of companies and their board composition on the snapshot date.</p>
<p>From 1-Aug-1993, each newly-listed company was required to have 2 INEDs. 
Existing companies had to have 1 INED by 1-Jul-1994 and 2 INEDs by 31-Dec-1994, 
although they were sometimes hard to spot, as the company didn't have to say 
which directors it considered to be INEDs until 2003. 
The quota was increased to 3 INEDs on 30-Sep-2004, when the definition of independence 
was also 
changed to exclude those who provide professional advisory services to 
the issuer (but not bankers), and at least 1 of the 3 must have financial or 
accounting expertise. In addition, since 31-Dec-2012, INEDs 
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrulesup/mb_rupdate28_cover.htm" target="_blank">must constitute</a> at least one 
third of the board. However, most companies have fewer than 10 
directors, so the latter requirement has no effect for them. Controlling 
shareholders <a href="../articles/3wisemonkeys.asp">can still vote</a> on all 
the INED elections.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>