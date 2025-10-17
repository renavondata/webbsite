<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,sort,URL,ob,hide,hideStr,d,Name,AdvID,LastAdvID,title,u,con,rs
Call openEnigmaRs(con,rs)
'sort is the sort order
'hide is the flag for hiding removed roles
hide=getHide("hide")
person=getLng("p",0)
sort=Request("sort")

d=getMSdef("d",Session("d"))
If d="" Then d=MSdate(Date)
Session("d")=d

u=getBool("u")
If isNull(sort) then sort="advup"
Select Case sort
	Case "advup" ob="Adv,AddDate,Role"
	Case "advdn" ob="Adv DESC,AddDate,Role"
	Case "rolup" ob="Role,Adv,AddDate"
	Case "roldn" ob="Role DESC,Adv,AddDate"
	Case "addup" ob="AddDate,Adv,Role"
	Case "adddn" ob="AddDate DESC,Adv,Role"
	Case "remup" ob="RemDate,Adv,AddDate,Role"
	Case "remdn" ob="RemDate DESC,Adv,AddDate,Role"
Case Else
	ob="Adv,AddDate,Role"
	sort="advup"
End Select
hideStr=" AND (isnull(addDate) or lowerDate(addDate,addAcc)<='"&d&"')"
If hide="Y" Then hideStr=hideStr&" AND (isnull(remDate) OR upperDate(remDate,remAcc)>'"&d&"' OR remDate='1000-01-01')" Else hide="N"
If u then hideStr=hideStr&" AND (isNull(remDate) or remDate<>'1000-01-01')"
name=fnameOrg(person)
URL=Request.ServerVariables("URL")&"?p="&person&"&amp;d="&d&"&amp;u="&u
title=name
%>
<title>Advisers of: <%=Name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call orgBar(title,person,5)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>

<ul class="navlist"><li><a target="_blank" href="FAQWWW.asp">FAQ</a></li></ul>
<div class="clear"></div>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="advisers.asp">
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
<%rs.Open "SELECT Adv,Role,roleID,AdvID,MSdateAcc(AddDate,AddAcc)`add`,MSdateAcc(RemDate,Remacc)rem,OrgID FROM WebAdv WHERE NOT OneTime AND OrgID="&person&hideStr&" ORDER BY "&ob,con%>
<h3>Regular advisers</h3>
<%If Not rs.EOF Then%>
	<%=mobile(3)%>
	<table class="opltable">
	<tr>
		<td><%SL "Adviser","advup","advdn"%></td>
		<td><%SL "Role","rolup","roldn"%></td>
		<td class="colHide3 nowrap"><%SL "Added","addup","adddn"%></td>
		<%If hide="N" Then%>
			<td class="nowrap"><%SL "Removed","remup","remdn"%></td>
		<%End If%>
	</tr>
	<%Do Until rs.EOF
		AdvID=rs("AdvID")%>
		<%If AdvID=LastAdvID Then%>
			<tr>
				<td></td>
				<td><%=rs("Role")%></td>
				<td class="colHide3 nowrap"><%=rs("add")%></td>
				<%If hide<>"Y" Then%>
					<td class="nowrap"><%=rs("rem")%></td>
				<%End If%>
			</tr>
		<%Else%>
			<tr class="total">
				<td><a href="adviserships.asp?p=<%=AdvID%>&amp;r=<%=rs("roleID")%>"><%=rs("Adv")%></a></td>
				<td><%=rs("Role")%></td>
				<td class="colHide3 nowrap"><%=rs("add")%></td>
				<%If Hide<>"Y" Then%>
					<td class="nowrap"><%=rs("rem")%></td>
				<%End If%>
			</tr>
		<%End If
		LastAdvID=AdvID
		rs.MoveNext
	Loop%>
	</table>
<%Else%>
	<p>None found.</p>
<%End If
rs.Close
rs.Open "SELECT Adv,roleID,role,AdvID,MSdateAcc(AddDate,AddAcc)`add`,OrgID FROM WebAdv WHERE OneTime AND OrgID="&person&hideStr&" ORDER BY "&ob,con%>
<h3>One-time advisers</h3>
<%If not rs.EOF then%>
	<table class="opltable">
		<tr>
			<td><%SL "Adviser","advup","advdn"%></td>
			<td><%SL "Role","rolup","roldn"%></td>
			<td><%SL "Added","addup","adddn"%></td>
		</tr>
		<%Do Until rs.EOF
			AdvID=rs("AdvID")
			If AdvID=LastAdvID Then%>
				<tr>
					<td></td>
					<td><%=rs("Role")%></td>
					<td><%=rs("add")%></td>
				</tr>
			<%Else%>
				<tr class="total">
					<td><a href="adviserships.asp?p=<%=AdvID%>&amp;r=<%=rs("roleID")%>"><%=rs("Adv")%></a></td>
					<td><%=rs("role")%></td>
					<td class="nowrap"><%=rs("add")%></td>
				</tr>
			<%End If
			LastAdvID=AdvID
			rs.MoveNext
		Loop%>
	</table>
<%Else%>
	<p>None found.</p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
