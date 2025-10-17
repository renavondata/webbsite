<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,seats,cumSeats,dirs,cumDirs,YOB,Age,YearNow,totalAge,female,cumFemale,femaleAge,femSeats,avSeats,cumFemSeats,_
	unkDirs,unkFemale,ob,d,con,rs
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1990-01-01",MSdate(Date))

sort=Request("sort")
Select case sort
	Case "YOBdn" ob="YOB DESC"
	Case Else ob="YOB":sort="YOBup"
End Select
YearNow=Year(d)
URL=Request.ServerVariables("URL")&"?d="&d
%>
<title>Distribution of HK-listed directors by age</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Distribution of HK-listed directors by age</h2>
<p>This table summarises the age distribution of directors of HK primary-listed 
companies on any snapshot date since 1-Jan-1990. Biographies were not required 
in annual reports until 1995, so some age data is missing for directors who 
resigned before that. Biographies were not required upon appointment until 
31-Mar-2004, so if a director was appointed and left between successive annual 
reports, then he could avoid his biography being published. For a list of 
directors ranked by age, <a href="dirsHKPerPerson.asp?sort=agedn">click here</a>.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="DirsHKAgeDistn.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
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
<table class="numtable yscroll">
	<tr>
		<th><%SL "Year<br>of<br>birth","YOBup","YOBdn"%></th>
		<th><%SL "Age<br>in<br>"&YearNow,"YOBup","YOBdn"%></th>
		<th>No.<br>of<br>dirs</th>
		<th>Total<br>seats<br>held</th>
		<th>Female</th>
		<th>Female<br>seats</th>
		<th class="colHide3">Cumul-<br>ative<br>dirs</th>
		<th class="colHide3">Cumul-<br>ative<br>seats</th>
		<th class="colHide3">Cumul-<br>ative<br>females</th>
		<th class="colHide3">Cumul-<br>ative<br>female<br>seats</th>
	</tr>
	<%
	con.HKdirsAgeDistn d,ob,rs
	Do Until rs.EOF
		YOB=rs("YOB")
		seats=Clng(rs("seats"))
		dirs=Clng(rs("dirs"))
		avseats=seats/dirs
		female=Clng(rs("female"))
		femSeats=cLng(rs("femSeats"))
		If IsNull(YOB) then
			YOB="?"
			Age="?"
			unkDirs=dirs
			unkFemale=female
		Else
			Age=YearNow-YOB
			totalAge=totalAge+dirs*Age
			femaleAge=femaleAge+female*Age
		End If
		cumSeats=cumSeats+seats
		cumDirs=cumDirs+dirs
		cumFemale=cumFemale+female
		cumFemSeats=cumFemSeats+femSeats%>
		<tr>
			<td><%=YOB%></td>
			<td><%=Age%></td>
			<td><%=dirs%></td>
			<td><%=seats%></td>
			<td><%=female%></td>
			<td><%=femSeats%></td>
			<td class="colHide3"><%=cumDirs%></td>
			<td class="colHide3"><%=cumSeats%></td>
			<td class="colHide3"><%=cumFemale%></td>
			<td class="colHide3"><%=cumFemSeats%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<br/>
<table class="numtable fcl">
	<tr>
		<th></th>
		<th>Male</th>
		<th>Female</th>
		<th>Total</th></tr>
	<tr>
		<td >Directors</td>
		<td><%=cumDirs-cumFemale%></td>
		<td><%=cumFemale%></td>
		<td><%=cumDirs%></td>
	</tr>
	<tr>
		<td>Seats</td>
		<td><%=cumSeats-cumFemSeats%></td>
		<td><%=cumFemSeats%></td>
		<td><%=cumSeats%></td></tr>
	<tr>
		<td>Average seats</td>
		<td><%=FormatNumber((cumSeats-cumFemSeats)/(cumDirs-cumFemale),3)%></td>
		<td><%=FormatNumber(cumFemSeats/cumFemale,3)%></td>
		<td><%=FormatNumber(cumSeats/cumDirs,3)%></td>
	</tr>
	<tr>
		<td>Share of directors</td>
		<td><%=FormatPercent((cumDirs-cumFemale)/cumDirs,2)%></td>
		<td><%=FormatPercent(cumFemale/cumDirs,2)%></td>
		<td><%=FormatPercent(1,2)%></td>
	</tr>
	<tr>
		<td>Share of seats</td>
		<td><%=FormatPercent((cumSeats-cumFemSeats)/cumSeats,2)%></td>
		<td><%=FormatPercent(cumFemSeats/cumSeats,2)%></td>
		<td><%=FormatPercent(1,2)%></td>
	</tr>
	<tr>
		<td>Average age in <%=YearNow%></td>
		<td><%=FormatNumber((totalAge-femaleAge)/(cumDirs-cumFemale-unkDirs+unkFemale),1)%></td>
		<td><%=FormatNumber(femaleAge/(cumFemale-unkFemale),1)%></td>
		<td><%=FormatNumber(totalAge/(cumDirs-unkDirs),1)%></td>
	</tr>
</table>
<p>Note: the average age excludes any people whose ages are unknown.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>