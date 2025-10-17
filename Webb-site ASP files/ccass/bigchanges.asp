<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Dim sort,URL,issueID,ob,title,d,etf,sqletf,cnt,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
'whether to include unit ETFs. default no
etf=getBool("etf")
If Not etf Then sqletf=" AND orgType<>4"
d=getMSdateRange("d","2007-06-26",getLog("CCASSdateDone"))
d=MSdate(con.Execute("SELECT Max(settleDate) FROM ccass.calendar WHERE settleDate<='"&d&"'").Fields(0))
Select Case sort
	Case "nameup" ob="Name1,stkchg DESC"
	Case "namedn" ob="Name1 DESC,stkchg"
	Case "partup" ob="partName,stkchg DESC"
	Case "partdn" ob="partName DESC,stkchg"
	Case "chgdn" ob="stkchg DESC,name1,partName"
	Case "chgup" ob="stkchg,name1,partName"
	Case "scup" ob="stockCode,stkchg DESC"
	Case "scdn" ob="stockCode DESC,stkchg"
	Case Else
		sort="chgdn"
		ob="stkchg DESC"
End Select
rs.Open "SELECT b.issueID,b.partID,stkchg,prevDate,name1,partName,lastCode(b.issueID) AS stockCode,typeShort "&_
	"FROM ccass.bigchanges b JOIN (issue i,organisations o,ccass.participants p,secTypes s) "&_
	"ON b.issueID=i.ID1 AND b.partID=p.partID AND i.issuer=o.personID AND i.typeID=s.typeID "&_
	"WHERE b.atDate='"&d&"'" & sqletf & " ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?d="&d
title="Big CCASS changes on "&d%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call ccassallbar(d,1)%>
<form method="get" action="bigchanges.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("etf",etf,True)%> include ETFs
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';document.getElementById('etf').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<p>This table shows movements greater than 0.25% of outstanding shares.</p>
<%=mobile(2)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th class="colHide3"><%SL "Stock<br>code","scup","scdn"%></th>
		<th class="left"><%SL "Issue","nameup","namedn"%></th>
		<th class="left"><%SL "Participant","partup","partdn"%></th>
		<th><%SL "Change","chgdn","chgup"%></th>
		<th class="colHide2">Previous<br>change</th>
	</tr>
	<%cnt=0
	Do Until rs.EOF
		cnt=cnt+1
		issueID=rs("issueID")
		%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td class="colHide3"><%=rs("stockCode")%></td>
			<td class="left"><a href="chldchg.asp?i=<%=issueID%>&amp;d=<%=d%>"><%=rs("Name1")&":"&rs("typeShort")%></a></td>
			<td class="left"><a href="chistory.asp?i=<%=rs("issueID")%>&part=<%=rs("partID")%>"><%=rs("PartName")%></a></td>
			<td><%=FormatNumber(cdbl(rs("stkchg"))*100,2)%></td>
			<td class="colHide2 nowrap"><%=MSSdate(rs("prevDate"))%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)
If cnt=0 Then%>
	<p>None found.</p>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>