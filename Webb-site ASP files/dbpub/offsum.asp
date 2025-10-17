<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,ob,hide,hideStr,d,msg,rank,name,orgType,cnt,u,NowYear,YOB,DirID,lastPerson,service,service2,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
sort=Request("sort")
hide=getHide("hide")
d=getMSdef("d",Session("d"))
If d="" Then d=MSdate(Date)
Session("d")=d
u=getBool("u")

hideStr=" AND (isnull(pos1.ApptDate) or pos1.ApptDate<='"&d&"')"
If hide="Y" Then hideStr=hideStr&" AND (isnull(pos2.ResDate) or pos2.ResDate>'"&d&"' OR pos2.resAcc=3)"
If u then hideStr=hideStr&" AND (isNull(pos2.resAcc) or pos2.resAcc<>3)"
nowYear=Year(d)

name=fnameOrg(p)
orgType=CInt(con.Execute("SELECT IFNULL((SELECT orgType FROM organisations WHERE personID="&p&"),0)").Fields(0))

If sort="" then
	If orgType=14 Then 'peerage
		sort="appup"
	Else
		sort="namup"
	End if
End If
Select Case sort
	Case "namup" ob="name,app"
	Case "namdn" ob="name DESC,app"
	Case "appup" ob="app,name"
	Case "appdn" ob="app DESC,name"
	Case "resup" ob="res,name"
	Case "resdn" ob="res DESC,name"
	Case "agedn" ob="YOB,name,app"
	Case "ageup" ob="YOB DESC,app"
	Case "serdn" ob="service DESC,name"
	Case "serup" ob="service,name"
	Case "sexup" ob="sex,name,app"
	Case "sexdn" ob="sex DESC,name,app"
	Case Else
		ob="Dir,ApptDate"
		sort="namup"
End Select
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;d="&d&"&amp;u="&u
%>
<title>Main board summary:<%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call officersBar(name,p,2)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="offsum.asp">
	<input type="hidden" name="p" value="<%=p%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("u",u,True)%> exclude unknown removal dates
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';document.getElementById('u').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<%con.offsum p,ob,d,hide,u,rs
If not rs.EOF then
	lastperson=0%>
	<h3>Main board summary at <%=d%></h3>
	<%=mobile(3)%>
	<table class="opltable fcr">
		<tr>
			<th class="colHide2"></th>
			<th><%SL "Name","namup","namdn"%></th>
			<th><%SL "&#x26A5;","sexup","sexdn"%></th>
			<th class="right"><%SL "Age in<br>"&NowYear,"agedn","ageup"%></th>
			<th class="colHide3"><%SL "From","appup","appdn"%></th>
			<th><%SL "Until","resup","resdn"%></th>
			<th class="right"><%SL "Service<br>years","serdn","serup"%></th>
		</tr>
		<%Do Until rs.EOF
			YOB=rs("YOB")
			DirID=rs("DirID")
			service=rs("service")
			If isNull(service) Then service="-" Else service=FormatNumber(service,2)
			%>
			<%If DirID<>lastPerson Then
				cnt=cnt+1%>
				<tr class="total">
					<td class="colHide2"><%=cnt%></td>
					<td><a href="positions.asp?p=<%=DirID%>"><%=rs("name")%></a></td>
					<td><%=rs("sex")%></td>			
					<td class="right"><%If Not IsNull(YOB) Then Response.Write NowYear-YOB%></td>
					<td class="colHide3"><%=rs("app")%></td>
					<td><%=rs("res")%></td>
					<td class="right"><%=service%></td>
				</tr>
			<%Else%>
				<tr>
					<td class="colHide2"></td>
					<td colspan="3"></td>
					<td class="colHide3"><%=rs("app")%></td>
					<td><%=rs("res")%></td>
					<td class="right"><%=service%></td>
				</tr>
			<%End If
			lastPerson=DirID
			rs.MoveNext
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
