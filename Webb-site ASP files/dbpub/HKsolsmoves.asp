<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim title,p,lastp,lasto,sort,URL,ob,con,rs
Call openEnigmaRs(con,rs)
p=getIntRange("p",0,1,5)
sort=Request("sort")
Select Case sort
	Case "orgup" ob="oName,pName,LSrole DESC"
	Case "orgdn" ob="oName DESC,pName,LSrole DESC"
	Case "solup" ob="pName,oName,LSrole DESC"
	Case "soldn" ob="pName DESC,oName,LSrole DESC"
	Case "datdn" ob="IFNULL(resDate,apptDate) DESC,pName,oName"
	Case "datup" ob="IFNULL(resDate,apptDate),pName,oName"
	Case Else
		ob="oName,pName,LSrole DESC"
		sort="orgup"
End Select
URL=Request.ServerVariables("URL")
title="Moves in HK law firms"%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,3)
rs.open "SELECT DISTINCT company AS orgID,director AS pID,fnameppl(p.Name1,p.Name2,p.cName) AS pName,o.name1 as oName,"&_
	"MSdateAcc(apptDate,apptAcc)appt,MSdateAcc(resDate,resAcc)res,LStxt FROM "&_
	"directorships d JOIN (lsppl lp,lsorgs lo,organisations o,people p,positions pn,lsroles lr) "&_
	"ON company=lo.personID AND director=lp.personID AND company=o.personID AND director=p.PersonID AND d.positionID=pn.positionID AND pn.LSrole=lr.ID "&_
    "WHERE resDate>=DATE_SUB(CURDATE(), INTERVAL 30 DAY) or apptDate>=DATE_SUB(CURDATE(), INTERVAL 30 DAY) "&_
	"ORDER BY "&ob,con%>
<p>This table lists the latest moves in HK solicitors associated with HK law firms seen in the 
<a href="https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List" target="_blank">Law Society's Law List</a> in the last 30 days. 
Click the column-headings to sort.</p>
<table class="opltable">
	<tr>
		<th><%SL "Lawyer","solup","soldn"%></th>
		<th><%SL "Firm","orgup","orgdn"%></th>
		<th>Role</th>
		<th><%SL "From","datdn","datup"%></th>
		<th><%SL "Until","datdn","datup"%></th>
	</tr>
	<%Do Until rs.EOF
		If lastp<>rs("pID") Or lasto<>rs("orgID") Then%>
			<tr class="total">
				<td><a href='positions.asp?p=<%=rs("pID")%>'><%=rs("pName")%></a></td>
				<td><a href='officers.asp?p=<%=rs("orgID")%>'><%=rs("oName")%></a></td>
				<td><%=rs("LStxt")%></td>
				<td><%=rs("appt")%></td>
				<td><%=rs("res")%></td>
			</tr>
		<%Else%>
			<tr>
				<td colspan="2"></td>
				<td><%=rs("LStxt")%></td>
				<td><%=rs("appt")%></td>
				<td><%=rs("res")%></td>
			</tr>
		<%End If
		lasto=rs("orgID")
		lastp=rs("pID")
		rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>