<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,sort,URL,ob,hide,hideStr,d,role,name,orgType,cnt,SFCID,cName,title,act,actName,staffID,_
	NowYear,YOB,lastPerson,apptVar,resVar,con,rs,sql
Call openEnigmaRs(con,rs)
person=getLng("p",0)
sort=Request("sort")
hide=getHide("hide")
d=getMSdate("d")
act=Request("a")
If act="" Then act=Session("act") Else Session("act")=act
If act="" Or Not isNumeric(act) Then act=0
If act=0 Then
	apptVar="apptDate"
	resVar="resDate"
Else
	apptVar="startDate"
	resVar="endDate"
End If
nowYear=Year(d)
hideStr=" AND (isnull("&apptVar&") or "&apptVar&"<='"&d&"')"
If hide="Y" Then hideStr=hideStr&" AND (isnull("&resVar&") or "&resVar&">'"&d&"')"

If person<>0 Then name=fNameOrg(person) Else Name="No organisation was specified"

Select Case sort
	Case "namup" ob="name,"&apptVar
	Case "namdn" ob="name DESC,"&apptVar
	Case "appup" ob=apptVar&",name"
	Case "appdn" ob=apptVar&" DESC,name"
	Case "resup" ob=resVar&",name"
	Case "resdn" ob=resVar&" DESC,name"
	Case "rolup" ob="role,name,"&apptVar
	Case "roldn" ob="role DESC,name,"&apptVar
	Case "agedn" ob="YOB,name,"&apptVar
	Case "ageup" ob="YOB DESC,name,"&apptVar
	Case "sexup" ob="sex,name,"&apptVar
	Case "sexdn" ob="sex DESC,name,"&apptVar
	Case Else
		ob="name,"&apptVar
		sort="namup"
End Select
URL=Request.ServerVariables("URL")&"?p="&person&"&amp;d="&d&"&amp;a="&act
title=Name
If not isNull(cName) Then title=title & " " & cName
%>
<title><%="Officers: "&title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call officersBar(name,person,4)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<form method="get" action="SFClicensees.asp">
	<input type="hidden" name="p" value="<%=person%>">
	<input type="hidden" name="s" value="<%=sort%>">
	<div class="inputs">
		Take me back: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		Activity type: <%=arrSelectZ("a",act,con.Execute("SELECT ID,actName FROM activity ORDER BY actName").getRows,True,True,0,"All")%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<%If act>0 Then
	sql="staffID,startDate,endDate,role,SFCID FROM licrec JOIN people ON staffID=personID "&_
		"WHERE actType="&act&" AND orgID="
Else
	sql="personID staffID,apptDate startDate,resDate endDate,positionID=395 role,SFCID "&_
		"FROM directorships JOIN people ON director=personID "&_
		"WHERE positionID IN(394,395) and company="
End If
sql="SELECT YOB,sex,fnameppl(name1,name2,cname) AS name,"&sql&person&hideStr&" ORDER BY "&ob
rs.Open sql,con
If Not rs.EOF then
	lastperson=0%>
	<h3>SFC licensees</h3>
	<p>RO=Responsible Officer, Rep=Representative</p>
	<table class="opltable">
		<tr>
			<th class="colHide2"></th>
			<th><%SL "Name","namup","namdn"%></th>
			<th class="colHide3"><%SL "Age in<br>"&NowYear,"agedn","ageup"%></th>
			<th class="colHide3"><%SL "<span style='font-size:large'>&#x26A5;</span>","sexup","sexdn"%></th>
			<th class="colHide3">SFC ID</th>
			<th><%SL "Role","roldn","rolup"%></th>
			<th class="colHide3 nowrap"><%SL "From","appup","appdn"%></th>
			<th class="nowrap"><%SL "Until","resup","resdn"%></th>
		</tr>
	<%cnt=1
	Do Until rs.EOF
		YOB=rs("YOB")
		staffID=rs("staffID")
		If rs("role")=1 Then role="RO" Else role="Rep"
		If staffID<>lastPerson Then%>
		<tr class="total">
			<td class="colHide2 right"><%=cnt%></td>
			<td><a href="sfclicrec.asp?p=<%=staffID%>"><%=rs("name")%></a></td>
			<td class="colHide3"><%If Not IsNull(YOB) Then Response.Write NowYear-YOB%></td>
			<td class="colHide3"><%=rs("sex")%></td>
			<td class="colHide3"><a target="_blank" href="https://apps.sfc.hk/publicregWeb/indi/<%=rs("SFCID")%>/licenceRecord"><%=rs("SFCID")%></a></td>
			<td><%=role%></td>
			<td class="colHide3 nowrap"><%=MSdate(rs("startDate"))%></td>
			<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
			<%cnt=cnt+1%>
		</tr>
		<%Else%>
		<tr>
			<td class="colHide2"></td>
			<td></td>
			<td class="colHide3" colspan="3"></td>
			<td><%=role%></td>
			<td class="colHide3 nowrap"><%=MSdate(rs("startDate"))%></td>
			<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
		</tr>
		<%End If%>
		<%
		lastPerson=staffID
		rs.MoveNext
	Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
