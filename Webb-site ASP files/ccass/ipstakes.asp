<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%
Dim issueID,sort,URL,d,cnt,o,title,latest,atDate,sql,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
d=Request("d")
latest=Cdate(GetLog("CCASSdateDone"))
If isDate(d) Then d=Cdate(d) Else d=latest
If d<#26-Jun-2007# Then d=#26-Jun-2007#
If d>latest Then d=latest
d=con.Execute("SELECT Max(settleDate) FROM ccass.calendar WHERE settleDate<='"&MSdate(d)&"'").Fields(0)
d=MSdate(d)
atDate=d 'for navbar4
Select Case sort
	Case "nipcup" o="NCIPcnt,stockName"
	Case "nipcdn" o="NCIPcnt DESC,stockName"
	Case "cipcup" o="CIPcnt,stockName"
	Case "cipcdn" o="CIPcnt DESC,stockName"
	Case "ipcup" o="IPcnt,stockName"
	Case "ipcdn" o="IPcnt DESC,stockName"
	Case "nipsup" o="NCIPstake,stockName"
	Case "nipsdn" o="NCIPstake DESC,stockName"
	Case "cipsup" o="CIPstake,stockName"
	Case "cipsdn" o="CIPstake DESC,stockName"
	Case "ipsup" o="IPstake"
	Case "ipsdn" o="IPstake DESC"
	Case "nameup" o="stockName"
	Case "namedn" o="stockName DESC"
	Case "codeup" o="stockCode"
	Case "codedn" o="stockCode DESC"
	Case "vlndn" o="vln DESC,stockName"
	Case "vlnup" o="vln,stockName"
	Case Else
		sort="ipsdn"
		o="IPstake DESC,stockName"
End Select
URL=Request.ServerVariables("URL")&"?d="&MSdate(d)
title="Investor Participant stakes on "&MSdate(d)%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call ccassallbar(atDate,4)%>
<ul class="navlist">
	<li class="livebutton">Holdings</li>
	<li><a href="ncipchg.asp?d=<%=atDate%>">Changes</a></li>
</ul>
<div class="clear"></div>
<form method="get" action="ipstakes.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		<input type="date" name="d" id="d" value="<%=atDate%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<p>
NCIP=Non-Consenting Investor Participants (no names, disclosed in aggregate)<br/>
CIP=Consenting Investor Participants (named, individual holdings)</p>
<%
sql="SELECT CONCAT(Name1,':',typeshort) stockName,i.ID1,lastCode(ID1) stockCode,NCIPcnt,CIPcnt,NCIPcnt+CIPcnt IPcnt,"&_
	"NCIPhldg/s.outstanding AS NCIPstake,CIPhldg/s.outstanding as CIPstake,(NCIPhldg+CIPhldg)/s.outstanding AS IPstake,"&_
	"IF(susp,(SELECT closing FROM ccass.quotes WHERE atDate<='"&d&"' AND issueID=dl.issueID AND closing<>0 ORDER BY atDate DESC LIMIT 1),closing)"&_
		"*(NCIPhldg+CIPhldg)/1000000 vln "&_
	"FROM ccass.dailylog dl "&_
    "JOIN (issue i,ccass.quotes q,organisations o,issuedshares s,sectypes st,"&_
	"(SELECT issueID,Max(atDate) AS MaxIssueDate FROM issuedshares WHERE atDate<='"&d&"' GROUP BY issueID) as t4) "&_
	"ON i.ID1=dl.issueID "&_
	"AND q.issueID=dl.issueID AND q.atDate=dl.atDate "&_
	"AND i.issuer=o.PersonID "&_
	"AND s.issueID=dl.issueID "&_
	"AND s.issueID=t4.issueID AND  s.atDate=t4.MaxIssueDate "&_
	"AND st.typeID=i.typeID "&_
	"WHERE dl.atDate='"&d&"' "&_
	"ORDER BY "&o

rs.Open sql,con%>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Last<br/>Code","codeup","codedn"%></th>
		<th style="text-align:left"><%SL "Issue","nameup","namedn"%></th>
		<th class="colHide3"><%SL "NCIPs", "nipcdn","nipcup"%></th>
		<th class="colHide3"><%SL "CIPs", "cipcdn","cipcup"%></th>
		<th class="colHide3"><%SL "Total IPs", "ipcdn","ipcup"%></th>
		<th><%SL "NCIP<br>stake<br>%","nipsdn","nipsup"%></th>
		<th class="colHide3"><%SL "CIP stake", "cipsdn","cipsup"%></th>
		<th class="colHide3"><%SL "IP stake", "ipsdn","ipsup"%></th>
		<th class="colHide3"><%SL "Value<br>m.", "vlndn","vlnup"%></th>
	</tr>
	<%cnt=0
	Do Until rs.EOF
	cnt=cnt+1
	issueID=rs("ID1")%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td><%=rs("stockCode")%></td>
			<td style="text-align:left"><a href="choldings.asp?i=<%=issueID%>&amp;d=<%=atDate%>"><%=rs("stockName")%></a></td>
			<td class="colHide3"><%=FormatNumber(rs("NCIPcnt"),0)%></td>
			<td class="colHide3"><%=FormatNumber(rs("CIPcnt"),0)%></td>
			<td class="colHide3"><%=FormatNumber(rs("IPcnt"),0)%></td>
			<td><a href="nciphist.asp?i=<%=rs("ID1")%>"><%=FormatNumber(rs("NCIPstake")*100,2)%></a></td>
			<td class="colHide3"><%=FormatPercent(rs("CIPstake"),3)%></td>
			<td class="colHide3"><%=FormatPercent(rs("IPstake"),3)%></td>
			<td class="colHide3"><%=FormatNumber(rs("vln"),2)%></td>		
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>