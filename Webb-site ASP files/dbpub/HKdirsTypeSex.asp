<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim title,d,fseats,mseats,tseats,FED,FNED,FINED,MED,MNED,MINED,TED,TNED,TINED,useats,UED,UNED,UINED,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))

con.HKdirsTypeSex d,rs
If isNull(rs("sex")) Then
	useats=Clng(rs("seats"))
	UNED=Clng(rs("NEDs"))
	UINED=Clng(rs("INEDs"))
	rs.MoveNext
Else
	useats=0
	UNED=0
	UINED=0
End If
fseats=Clng(rs("seats"))
fNED=Clng(rs("NEDs"))
fINED=Clng(rs("INEDs"))
rs.Movenext
mseats=Clng(rs("seats"))
mNED=Clng(rs("NEDs"))
mINED=Clng(rs("INEDs"))
Call CloseConRs(con,rs)

FED=fseats-FNED-FINED
MED=mseats-MNED-MINED
UED=useats-UNED-UINED
TED=FED+MED+UED
TNED=FNED+MNED+UNED
TINED=FINED+MINED+UINED
tseats=mseats+fseats+useats
title="HK-listed directorships by type and gender at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table summarises the classification of Directors (Executive, 
Non-Executive and Independent Non-Executive) on the boards of companies with 
a HK primary listing and their genders on any snapshot date since 1-Jan-1990.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="HKdirsTypeSex.asp">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<h3>Seats</h3>
<table class="numtable">
	<tr>
		<th style="font-size:large">&#x26A5;</th>
		<th>All seats</th>
		<th>ED</th>
		<th>NED</th>
		<th>INED</th>
	</tr>
	<tr>
		<td>F</td>
		<td><%=fseats%></td>
		<td><%=FED%></td>
		<td><%=FNED%></td>
		<td><%=FINED%></td>
	</tr>
	<tr>
		<td>M</td>
		<td><%=mseats%></td>
		<td><%=MED%></td>
		<td><%=MNED%></td>
		<td><%=MINED%></td>
	</tr>
	<%if useats>0 Then%>
		<tr>
			<td>?</td>
			<td><%=useats%></td>
			<td><%=UED%></td>
			<td><%=UNED%></td>
			<td><%=UINED%></td>
		</tr>
	<%End If%>
	<tr>
		<td>All</td>
		<td><%=tseats%></td>
		<td><%=TED%></td>
		<td><%=TNED%></td>
		<td><%=TINED%></td>
	</tr>
</table>
<h3>Share of gender</h3>
<table class="numtable">
	<tr>
		<th style="font-size:large">&#x26A5;</th>
		<th>ED</th>
		<th>NED</th>
		<th>INED</th>
	</tr>
	<tr>
		<td>F</td>
		<td><%=formatpercent(FED/fseats,2)%></td>
		<td><%=formatpercent(FNED/fseats,2)%></td>
		<td><%=formatpercent(FINED/fseats,2)%></td>
	</tr>
	<tr>
		<td>M</td>
		<td><%=formatpercent(MED/mseats,2)%></td>
		<td><%=formatpercent(MNED/mseats,2)%></td>
		<td><%=formatpercent(MINED/mseats,2)%></td>
	</tr>
	<%if useats>0 Then%>
		<tr>
			<td>?</td>
			<td><%=formatpercent(UED/useats,2)%></td>
			<td><%=formatpercent(UNED/useats,2)%></td>
			<td><%=formatpercent(UINED/useats,2)%></td>
		</tr>
	<%End If%>
	<tr>
		<td>All</td>
		<td><%=formatpercent(TED/tseats,2)%></td>
		<td><%=formatpercent(TNED/tseats,2)%></td>
		<td><%=formatpercent(TINED/tseats,2)%></td>
	</tr>
</table>
<h3>Share of seat type</h3>
<table class="numtable">
	<tr>
		<th style="font-size:large">&#x26A5;</th>
		<th>All seats</th>
		<th>ED</th>
		<th>NED</th>
		<th>INED</th>
	</tr>
	<tr>
		<td>F</td>
		<td><%=formatpercent(fseats/tseats,2)%></td>
		<td><%=formatpercent(FED/TED,2)%></td>
		<td><%=formatpercent(FNED/TNED,2)%></td>
		<td><%=formatpercent(FINED/TINED,2)%></td>
	</tr>
	<tr>
		<td>M</td>
		<td><%=formatpercent(mseats/tseats,2)%></td>
		<td><%=formatpercent(MED/TED,2)%></td>
		<td><%=formatpercent(MNED/TNED,2)%></td>
		<td><%=formatpercent(MINED/TINED,2)%></td>
	</tr>
	<%if useats>0 Then%>
		<tr>
			<td>?</td>
			<td><%=formatpercent(useats/tseats,2)%></td>
			<td><%=formatpercent(UED/TED,2)%></td>
			<td><%=formatpercent(UNED/TNED,2)%></td>
			<td><%=formatpercent(UINED/TINED,2)%></td>
		</tr>
	<%End If%>
</table>
<p><a href="boardcomp.asp?sort=dirdn&d=<%=d%>">Click here</a> to see the list 
of companies and their board composition on the snapshot date.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>