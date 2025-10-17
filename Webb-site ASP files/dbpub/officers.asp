<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,sort,URL,ob,hide,hideStr,msg,d,rank,name,orgType,cnt,u,NowYear,YOB,DirID,lastPerson,rsRank,rankID,con,rs
Call openEnigmaRs(con,rs)
Set rsRank=Server.CreateObject("ADODB.Recordset")
person=getLng("p",0)
sort=Request("sort")
hide=getHide("hide")
d=getMSdef("d",Session("d"))
If d="" Then d=MSdate(Date)
Session("d")=d
u=getBool("u")
nowYear=Year(d)
hideStr=" AND (isnull(ApptDate) or lowerDate(ApptDate,ApptAcc)<='"&d&"')"
If hide="Y" Then hideStr=hideStr&" AND (isnull(ResDate) or upperDate(ResDate,ResAcc)>'"&d&"' or resDate='1000-01-01')"
If u then hideStr=hideStr&" AND (isNull(ResDate) or ResDate<>'1000-01-01')"
name=fNameOrg(person)
orgType=CInt(con.Execute("SELECT IFNULL((SELECT orgType FROM organisations WHERE personID="&person&"),0)").Fields(0))
If sort="" then
	If orgType=14 Then 'peerage
		sort="appup"
	Else
		sort="namup"
	End if
End If
Select Case sort
	Case "namup" ob="Dir,ApptDate"
	Case "namdn" ob="Dir DESC,ApptDate"
	Case "appup" ob="ApptDate,Dir"
	Case "appdn" ob="ApptDate DESC,Dir"
	Case "resup" ob="ResDate,Dir"
	Case "resdn" ob="ResDate DESC,Dir"
	Case "posup" ob="posShort,Dir,ApptDate"
	Case "posdn" ob="posShort DESC,Dir,ApptDate"
	Case "agedn" ob="YOB,Dir,ApptDate"
	Case "ageup" ob="YOB DESC,Dir,ApptDate"
	Case "sexup" ob="sex,Dir,ApptDate"
	Case "sexdn" ob="sex DESC,Dir,ApptDate"
	Case Else
		ob="Dir,ApptDate"
		sort="namup"
End Select
URL=Request.ServerVariables("URL")&"?p="&person&"&amp;d="&d&"&amp;u="&u%>
<title>Officers: <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call officersBar(name,person,1)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="officers.asp">
	<input type="hidden" name="p" value="<%=person%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("u",u,True)%> exclude unknown removal dates
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='<%=MSdate(Date)%>';document.getElementById('u').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<%rsRank.Open "SELECT * FROM `rank`",con
Do until rsRank.EOF
	rankID=rsRank("rankID")
	rs.Open "SELECT CAST(fnamepsn(o.name1,p.name1,p.name2,o.cname,p.cname) AS NCHAR) Dir,posShort,posLong,director,YOB,sex,IF(ISNULL(o.personID),'P','O')ptype,"&_
		"MSdateAcc(apptDate,apptAcc)appt,MSdateAcc(resDate,resAcc)res "&_
		"FROM directorships d JOIN positions pn ON d.positionID=pn.positionID LEFT JOIN people p ON d.director=p.personID LEFT JOIN organisations o ON d.director=o.personID "&_
		"WHERE `rank`="&rankID&" AND company="&person&hideStr&" ORDER BY "&ob,con
	If not rs.EOF then
		lastperson=0%>
		<h3><%=rsRank("RankText")%></h3>
		<%If rankID=7 Then%>
			<p><a href="SFClicensees.asp?a=0&p=<%=person%>">Click here for SFC licensees</a></p>
		<%Else%>
			<table class="opltable">
				<tr>
					<th class="colHide1"></th>
					<th><%SL "Name","namup","namdn"%></th>
					<th style="font-size:large"><%SL "&#x26A5;","sexup","sexdn"%></th>
					<th class="right"><%SL "Age<br>in<br>"&NowYear,"agedn","ageup"%></th>
					<th><%SL "Position","posup","posdn"%></th>
					<th><%SL "From","appup","appdn"%></th>
					<th><%SL "Until","resup","resdn"%></th>
				</tr>
			<%cnt=0
			Do Until rs.EOF
				YOB=rs("YOB")
				DirID=rs("director")
				If DirID<>lastPerson Then
					cnt=cnt+1%>
					<tr class="total">
						<td class="right colHide1"><%=cnt%></td>
						<td><a href="positions.asp?p=<%=DirID%>"><%=rs("Dir")%></a></td>
						<td><%=rs("sex")%></td>
						<td class="right"><%If Not IsNull(YOB) Then Response.Write NowYear-YOB%></td>
						<td><span class="info"><%=rs("posShort")%><span><%=rs("PosLong")%></span></span></td>
						<td><%=rs("appt")%></td>
						<td><%=rs("res")%></td>
					</tr>
				<%Else%>
					<tr>
						<td class="colHide1"></td>
						<td colspan="3"></td>
						<td><span class="info"><%=rs("posShort")%><span><%=rs("posLong")%></span></span></td>
						<td><%=rs("appt")%></td>
						<td><%=rs("res")%></td>
					</tr>
				<%End If
				lastPerson=DirID
				rs.MoveNext
			Loop%>
			</table>
		<%End If
	End if
	rs.Close
	rsRank.MoveNext
Loop
rsRank.Close
Set rsRank=Nothing
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
