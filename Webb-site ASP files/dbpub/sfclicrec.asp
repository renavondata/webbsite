<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,ob,hide,hideStr,name,name2,orgID,lastOrg,cnt,cName,role,actName,lastAct,title,n,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
sort=Request("sort")
hide=getHide("hide")
n=getBool("n")
If hide="Y" then hideStr=" AND (isnull(endDate) or endDate>Now())"
Select Case sort
	Case "orgup" ob="name1,startDate,endDate,actName"
	Case "orgdn" ob="name1 DESC,startDate,endDate,actName"
	Case "actup" ob="actName,startDate,name1"
	Case "actdn" ob="actName DESC,startDate,name1"
	Case "appup" ob="startDate,endDate,name1,actName"
	Case "appdn" ob="startDate DESC,endDate DESC,name1,actName"
	Case "resup" ob="endDate,startDate,name1,actName"
	Case "resdn" ob="endDate DESC,startDate DESC,name1,actName"
	Case "rolup" ob="role,actName,startDate,name1"
	Case "roldn" ob="role DESC,actName,startDate,name1"
	Case Else ob="name1,startDate,endDate,role,actName":sort="orgup"
End Select
name=fnameppl(p)
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;n="&n
title="SFC licences of "&name
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call humanBar(name,p,2)
Call positionsBar(p,3)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<form method="get" action="sfclicrec.asp">
	<input type="hidden" name="p" value="<%=p%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="hide" value="<%=hide%>">
	<%=checkbox("n",n,True)%> show old organisation names
</form>
<%
LastOrg=0
rs.Open "SELECT "&IIF(n,"orgName(orgID,IFNULL(startDate,endDate)) AS ","")&"name1,orgID,role,actType,startDate,endDate,actName "&_
	"FROM licrec JOIN (organisations o,activity a) ON orgID=o.personID AND actType=a.ID "&_
	"WHERE staffID="&p&hideStr&" ORDER BY "&ob,con
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<h3>SFC licenses</h3>
	<p>Rep=Representative, RO=Responsible Officer. A person without a starting date was in that role since at least 1-Apr-2003 when the current register began.</p>
	<%=mobile(3)%>
	<table class="opltable">
		<tr>
			<th></th>
			<th><%SL "Organisation","orgup","orgdn"%></th>
			<th><%SL "Role","rolup","roldn"%></th>
			<th><%SL "Activity","actup","actdn"%></th>
			<th class="colHide3 nowrap"><%SL "From","appup","appdn"%></th>
			<th class="nowrap"><%SL "Until","resup","resdn"%></th>
		</tr>
		<%cnt=1
		Do Until rs.EOF
			orgID=rs("orgID")
			actName=rs("actName")
			If rs("role")=1 Then role="RO" Else role="Rep"%>
			<%If (OrgID<>lastOrg And Left(sort,3)="org") Or (actName<>lastAct And Left(sort,3)="act") Or _
				(Left(sort,3)<>"org" And Left(sort,3)<>"act") Then%>
			<tr class="total">
				<td><%=cnt%></td>
				<td>
					<%If orgID<>lastOrg Or Left(sort,3)<>"org" Then%>
						<a href="SFClicensees.asp?a=0&p=<%=orgID%>"><%=rs("name1")%></a>
					<%End If%>
				</td>
				<td><%=role%></td>
				<td>
					<%If actName<>lastAct Or Left(sort,3)<>"act" Then Response.write actName%></td>
				<td class="colHide3 nowrap"><%=MSdate(rs("startDate"))%></td>
				<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
				<%cnt=cnt+1%>
			<%Else%>
				<td></td>
				<td>
					<%If orgID<>lastOrg Or Left(sort,3)<>"org" Then%>
						<a href="SFClicensees.asp?p=<%=orgID%>"><%=rs("name1")%></a>
					<%End If%>
				</td>
				<td><%=role%></td>
				<td><%If actName<>lastAct Or Left(sort,3)<>"act" Then Response.write actName%></td>
				<td class="colHide3 nowrap"><%=MSdate(rs("startDate"))%></td>
				<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
			<%End If%>
			</tr>
			<%rs.MoveNext
			lastOrg=OrgID
			lastAct=actName
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>