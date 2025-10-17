<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,cnt,d,f,orgID,pplID,posText,lastppl,lastorg,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
d=getMSdateRange("d","2003-04-14",MSdate(Date))
f=MSdate(CDate(d)-14)
Select Case sort
	Case "pplup" ob="pplName,orgName,apptDate"
	Case "ppldn" ob="pplName DESC,orgName,apptDate"
	Case "orgup" ob="orgName,pplName,apptDate"
	Case "orgdn" ob="orgName DESC,pplName,apptDate"
	Case "datup" ob="relDate,orgName,pplName"
	Case "datdn" ob="relDate DESC,orgName,pplName"
	Case Else
		sort="orgup"
		ob="orgName,pplName,apptDate"
End Select
URL=Request.ServerVariables("URL")&"?d="&d%>
<title>Latest changes in SFC licensees</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Latest changes in SFC licensees</h2>
<ul class="navlist">
	<li><a href="SFClicount.asp">League table</a></li>
	<li id="livebutton">Latest moves</li>
	<li><a href="SFChistall.asp">Historic total</a></li>
</ul>
<div class="clear"></div>
<p>This page shows appointments (+) and cessations (-) in SFC licensees over the last 14 days. 
A licensee is either a Responsible Officer (<strong>RO</strong>) or Representative (<strong>Rep</strong>). 
We treat a person who holds both roles (in different activities) as 
an RO. We query the SFC database and update the tables regularly. A 
licensee is not necessarily a full-time employee and may have roles in more than 
1 firm.</p>
<form method="get" action="SFCchanges.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Take me back: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">	
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="opltable">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Firm","orgup","orgdn"%></th>
		<th><%SL "Licensee","pplup","ppldn"%></th>
		<th>Role</th>
		<th class="colHide3"><%SL "Appointed","datdn","datup"%></th>
		<th class="colHide3"><%SL "Ceased","datdn","datup"%></th>
	</tr>
	<%rs.Open "SELECT o.name1 orgName,fnameppl(p.Name1,p.Name2,p.cName) pplName,company orgID,"&_
		"director pplID,apptDate,resDate,positionID, IF(resDate>='"&f&"','-','+') appCes,"&_
		"IF(resDate>='" &f& "',resDate,apptDate) relDate "&_
		"FROM directorships d JOIN (organisations o,people p) ON d.company=o.personID AND d.director=p.personID "&_
		"WHERE positionID IN(394,395) AND ((apptDate>='"&f&"' AND apptDate<='"&d&"') OR "&_
		"(resDate>='"&f&"' AND resDate<='"&d&"')) ORDER BY "&ob, con
	cnt=0
	Do until rs.EOF
		cnt=cnt+1
		orgID=rs("orgID")
		pplID=rs("pplID")
		If rs("positionID")=394 Then posText="Rep" Else posText="RO"
		If ((sort="orgup" or sort="orgdn") AND lastorg<>orgID) Or ((sort="pplup" or sort="ppldn") AND lastppl<>pplID) Then%>
			<tr class="total">
				<td class="colHide1"><%=cnt%></td>
				<%If lastorg<>orgID Then%>
					<td><a href='officers.asp?p=<%=orgID%>'><%=rs("orgName")%></a></td>
				<%Else%>
					<td>&nbsp;</td>
				<%End If%>
				<%If lastppl<>pplID Then%>
					<td><a href='positions.asp?p=<%=pplID%>'><%=rs("pplName")%></a></td>
				<%Else%>
					<td>&nbsp;</td>
				<%End If%>
				<td><%=rs("appCes")&posText%></td>
				<%If rs("appCes")="+" Then%>
					<td class="colHide3 nowrap"><b><%=MSdate(rs("apptDate"))%></b></td>
					<td class="colHide3 nowrap"><%=MSdate(rs("resDate"))%></td>
				<%Else%>
					<td class="colHide3 nowrap"><%=MSdate(rs("apptDate"))%></td>
					<td class="colHide3 nowrap"><b><%=MSdate(rs("resDate"))%></b></td>
				<%End If%>
			</tr>
		<%Else%>
			<tr>
				<td class="colHide1"><%=cnt%></td>
				<%If lastorg<>orgID Then%>
					<td><a href='SFClicensees.asp?p=<%=orgID%>'><%=rs("orgName")%></a></td>
				<%Else%>
					<td>&nbsp;</td>
				<%End If%>
				<%If lastppl<>pplID Then%>
					<td><a href='SFClicrec.asp?p=<%=pplID%>'><%=rs("pplName")%></a></td>
				<%Else%>
					<td>&nbsp;</td>
				<%End If%>
				<td><%=rs("appCes")&posText%></td>
				<%If rs("appCes")="+" Then%>
					<td class="colHide3 nowrap"><b><%=MSdate(rs("apptDate"))%></b></td>
					<td class="colHide3 nowrap"><%=MSdate(rs("resDate"))%></td>
				<%Else%>
					<td class="colHide3 nowrap"><%=MSdate(rs("apptDate"))%></td>
					<td class="colHide3 nowrap"><b><%=MSdate(rs("resDate"))%></b></td>
				<%End If%>
			</tr>
		<%End If
		lastppl=pplID
		lastorg=orgID
		rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
