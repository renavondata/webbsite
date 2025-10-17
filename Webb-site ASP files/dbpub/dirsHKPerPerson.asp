<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,d,snapY,title,YOB,x,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
d=getMSdateRange("d","1990-01-01",MSdate(Date))
snapY=Year(d)

If isNull(sort) then sort1="cntdn"
Select Case sort
	Case "cntdn" ob="numSeats DESC,name"
	Case "cntup" ob="numSeats DESC,YOB,name"
	Case "inedn" ob="INED DESC,name"
	Case "ineup" ob="INED DESC,YOB,name"
	Case "namup" ob="name"
	Case "namdn" ob="name DESC"
	Case "sexno" ob="sex,numSeats DESC,name"
	Case "sexna" ob="sex,name"
	Case "agedn" ob="YOB,numSeats DESC,name"
	Case "ageup" ob="YOB DESC,name"
	Case Else
	ob="numSeats DESC,name"
	sort="cntdn"
End Select
URL=Request.ServerVariables("URL")&"?d="&d
title="HK-listed directorships per person at "&d%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table shows the directors of companies with a 
HK primary listing 
and the number of seats they held on any snapshot date since 1-Jan-1990. For a 
distribution of INED seats per person, <a href="INEDHKDistnPeople.asp?d=<%=d%>">click here</a>, 
and for distribution of all seats per person, <a href="DirsHKDistnPeople.asp">click here</a>. 
For a league table of average annual relative returns, <a href="leagueDirsHK.asp">click here.</a></p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="dirsHKPerPerson.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';"/>
	</div>
	<div class="clear"></div>
</form>
<%rs.CursorLocation=3
con.HKdirsPerPerson d,ob,rs%>
<p>Number of people who are directors on the snapshot date: <%=rs.RecordCount%></p>
<table class="numtable yscroll">
	<tr>
		<th class="colHide3"></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th><%SL "No.<br>of<br>seats","cntdn","cntup"%></th>
		<th><%SL "No.<br>INED","inedn","ineup"%></th>
		<th><%SL "Sex","sexno","sexna"%></th>
		<th><%SL "Age in<br>"&snapY,"agedn","ageup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		YOB=rs("YOB")%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td class="left"><a href='positions.asp?p=<%=rs("director")%>'><%=rs("name")%></a></td>
			<td><%=rs("numSeats")%></td>
			<td><%=rs("INED")%></td>
			<td><%=rs("sex")%></td>
			<%If isNull(YOB) Then%>
				<td>-</td>
			<%Else%>
				<td><%=snapY-Cint(YOB)%></td>
			<%End If%>
		</tr>
		<%
		rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>