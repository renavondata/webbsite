<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,title,NowYear,YOB,cnt,d1,d2,sex,male,female,nosex,mage,magecnt,fage,fagecnt,nage,nagecnt,tagecnt,tage,con,rs
Call openEnigmaRs(con,rs)
male=0
female=0
nosex=0
magecnt=0
fagecnt=0
nagecnt=0
sort=Request("sort")
d1=Request("d1")
d2=Request("d2")
If isDate(d2) Then d2=Cdate(d2) Else d2=Date()
If d2>Date() Then d2=Date()
If isDate(d1) Then d1=Cdate(d1) Else d1=d2-59
If d2<d1 Then d1=d2-59
If d2-d1>365 then d1=d2-365
d1=msDate(d1)
d2=msDate(d2)
NowYear=Year(d2)
Select Case sort
	Case "dirup" ob="Dir,ApptDate"
	Case "dirdn" ob="Dir DESC,ApptDate"
	Case "appup" ob="ApptDate,Dir"
	Case "appdn" ob="ApptDate DESC,Dir"
	Case "posup" ob="posShort,Dir,ApptDate"
	Case "posdn" ob="posShort DESC,Dir,ApptDate"
	Case "agedn" ob="YOB,Dir,ApptDate"
	Case "ageup" ob="YOB DESC,ApptDate"
	Case "sexup" ob="sex,Dir,org"
	Case "sexdn" ob="sex DESC,Dir,org"
	Case "orgdn" ob="org DESC,apptDate,dir"
	Case "orgup" ob="org,apptDate,dir"
	Case Else
		ob="Dir,ApptDate"
		sort="dirup"
End Select
rs.Open "SELECT fnameppl(p.name1,name2,p.cName) dir,director dirID,company orgID,o.name1 org,"&_
	"sex,MSdateAcc(apptDate,apptAcc)appt,posShort,posLong,YOB FROM "&_
	"directorships d JOIN (listedcosHKever,people p,organisations o,positions pn) ON "&_
	"director=p.personID AND company=o.personID AND company=issuer AND "&_
	"d.positionID=pn.positionID WHERE apptDate<='"&d2&"' AND apptDate>='"&d1&"' AND `rank`=1 "&_
	"ORDER BY "&ob,con
cnt=1
URL=Request.ServerVariables("URL")&"?d1="&d1&"&amp;d2="&d2
title="Recent HK-listed director appointments"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This table shows appointments (including changes of position) of directors of HK-listed companies. 
Pick an inclusive start date and end date then click Go. The default range is the last 60 days. 
If you change the end date to earlier than the start date then the range will be 
60 days up to the end date. 
The maximum range is 366 days. Appointments are usually captured from 
announcements by the next working day but sometimes we have trouble keeping up.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="latestdirsHK.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		From <input type="date" name="d1" id="d1" value="<%=d1%>">
	</div>
	<div class="inputs">
		to <input type="date" name="d2" id="d2" value="<%=d2%>">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d1').value='';document.getElementById('d2').value=''">
	</div>
	<div class="clear"></div>
</form>
<p>Period length: <%=Cdate(d2)-Cdate(d1)+1%> days.</p>
<%=mobile(2)%>
<table class="txtable yscroll">
	<tr>
		<th class="colHide1"></th>
		<th><%SL "Director","dirup","dirdn"%></th>
		<th><%SL "<span style='font-size:large'>&#x26A5;</span>","sexup","sexdn"%></th>
		<th class="right"><%SL "Age in<br>"&NowYear,"agedn","ageup"%></th>
		<th><%SL "Position","posup","posdn"%></th>
		<th><%SL "From","appdn","appup"%></th>
		<th class="colHide2"><%SL "Company","orgup","orgdn"%></th>
	</tr>
<%Do Until rs.EOF
	YOB=rs("YOB")
	sex=rs("sex")
	If sex="M" then
		male=male+1
		If Not isNull(YOB) Then
			magecnt=magecnt+1
			mage=mage+YOB
		End If
	ElseIf sex="F" then
		female=female+1
		If Not isNull(YOB) Then
			fagecnt=fagecnt+1
			fage=fage+YOB
		End If
	Else
		nosex=nosex+1
		If Not isNull(YOB) Then
			nagecnt=nagecnt+1
			nage=nage+YOB
		End If
	End If%>
	<tr>
		<td class="right colHide1"><%=cnt%></td>
		<td><a href="positions.asp?p=<%=rs("dirID")%>"><%=rs("dir")%></a></td>
		<td><%=rs("sex")%></td>	
		<td class="right"><%If Not IsNull(YOB) Then Response.Write NowYear-YOB%></td>
		<td><span class="info"><%=rs("posShort")%><span><%=rs("PosLong")%></span></span></td>
		<td><%=rs("appt")%></td>
		<td class="colHide2"><a href="officers.asp?p=<%=rs("orgID")%>"><%=rs("org")%></a></td>
		<%cnt=cnt+1%>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call CloseConRs(con,rs)
tagecnt=magecnt+fagecnt+nagecnt
tage=mage+fage+nage%>
<h3>Analysis</h3>
<h4>Gender</h4>
<table class="numtable">
	<tr>
		<th>Male</th>
		<th>Female</th>
		<th>Unknown</th>
	</tr>
	<tr>
		<td><%=male%></td>
		<td><%=female%></td>
		<td><%=nosex%></td>
	</tr>
	<tr><td><%=FormatPercent(male/cnt,2)%></td><td><%=FormatPercent(female/cnt,2)%></td><td><%=FormatPercent(nosex/cnt,2)%></td></tr>
</table>
<h4>Average age in <%=NowYear%></h4>
<table class="numtable">
	<tr>
		<th>Male</th>
		<th>Female</th>
		<th>Unknown</th>
		<th>Total</th>
	</tr>
	<tr>
		<td><%=magecnt%></td>
		<td><%=fagecnt%></td>
		<td><%=nagecnt%></td>
		<td><%=tagecnt%></td>
	</tr>
	<tr>
		<td><%If magecnt<>0 Then Response.Write FormatNumber(NowYear-mage/magecnt,2)%></td>
		<td><%If fagecnt<>0 Then Response.Write FormatNumber(NowYear-fage/fagecnt,2)%></td>
		<td><%If nagecnt<>0 Then Response.Write FormatNumber(NowYear-nage/nagecnt,2)%></td>
		<td><%If tagecnt<>0 Then Response.Write FormatNumber(NowYear-tage/tagecnt,2)%></td>
	</tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
