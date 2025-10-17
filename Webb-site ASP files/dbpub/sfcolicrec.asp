<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Function MakeURL(s,hide,text)
MakeURL="<a href='"&Request.ServerVariables("URL")&"?p="&p&"&amp;sort="&sort&"&amp;h="&hide&"'>"&text&"</a>"
End Function

Dim p,ptype,sort,URL,ob,hide,hideStr,name,cName,orgID,lastOrg,SFCID,role,actName,lastAct,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
sort=Request("sort")
hide=getHide("h")
If hide="Y" then hideStr=" AND (isnull(endDate) or endDate>Now())"
Select Case sort
	Case "actup" ob="actName,startDate"
	Case "actdn" ob="actName DESC,startDate"
	Case "appup" ob="startDate,endDate,actName"
	Case "appdn" ob="startDate DESC,endDate DESC,actName"
	Case "resup" ob="endDate,startDate,actName"
	Case "resdn" ob="endDate DESC,startDate DESC,actName"
	Case Else
		ob="actName,startDate,endDate"
		sort="actup"
End Select
name=fnameOrg(p)
rs.Open "SELECT SFCID,SFCri FROM organisations WHERE personID="&p, con
If Not rs.EOF Then
	SFCID=rs("SFCID")
	If rs("SFCri") Then pType="ri" Else pType="corp"
End If
rs.Close
URL=Request.ServerVariables("URL")&"?p="&p%>
<title>SFC licences of <%=name%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call orgBar(name,p,9)%>
<ul class="navlist">
	<%=writeBtns(hide,"Y,N","Current,History",URL&"&amp;sort="&sort&"&amp;h=")%>
	<%If SFCID<>"" Then%>
		<li><a target="_blank" href="http://www.sfc.hk/publicregWeb/<%=ptype%>/<%=SFCID%>/licences">SFC web</a></li>
	<%End If%>
	<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
</ul>
<div class="clear"></div>
<%
LastOrg=0
rs.Open "SELECT ri,actType,startDate,endDate,actName FROM olicrec o JOIN activity a ON o.actType=a.ID WHERE orgID="&p&hideStr&" ORDER BY "&ob,con
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<h3>SFC licenses</h3>
	<p>C=licensed corporation (regulated by SFC), R=Registered Institution (regulated by HKMA). 
	If there is no starting date then the entity has been in that activity since at least 1-Apr-2003 when the current register began.</p>
	<table class="opltable">
		<tr>
			<th>C/R</th>
			<th><%SL "Activity","actup","actdn"%></th>
			<th><%SL "From","appup","appdn"%></th>
			<th><%SL "Until","resup","resdn"%></th>
		</tr>
		<%Do Until rs.EOF
			actName=rs("actName")
			If rs("ri") Then role="R" Else role="C"
			If (actName<>lastAct And Left(sort,3)="act") Or Left(sort,3)<>"act" Then%>
			<tr class="total">
				<td><%=role%></td>
				<td><%If actName<>lastAct Or Left(sort,3)<>"act" Then Response.write actName%></td>
				<td class="nowrap"><%=MSdate(rs("startDate"))%></td>
				<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
			<%Else%>
				<td><%=role%></td>
				<td><%If actName<>lastAct Or Left(sort,3)<>"act" Then Response.write actName%></td>
				<td class="nowrap"><%=MSdate(rs("startDate"))%></td>
				<td class="nowrap"><%=MSdate(rs("endDate"))%></td>
			<%End If%>
			</tr>
			<%rs.MoveNext
			lastAct=actName
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>