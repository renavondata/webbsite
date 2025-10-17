<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,p,ob,issue,title,adjust,t,ratio,e,marketStr,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request.QueryString("sort")
t=Request("t")
e=Request("e")
Select Case sort
	Case "anndup" ob="announced,exDate"
	Case "stckup" ob="Name1,announced DESC"
	Case "stckdn" ob="Name1 DESC,announced DESC"
	Case "exdtdn" ob="exDate DESC,announced DESC"
	Case "exdtup" ob="exDate,announced"
	Case "paydtdn" ob="acceptDate DESC,announced DESC"
	Case "paydtup" ob="acceptDate,announced"
	Case "adjudn" ob="adjust DESC,announced DESC"
	Case "adjuup" ob="adjust, announced DESC"
	Case "ratiup" ob="ratio,announced DESC"
	Case "ratidn" ob="ratio DESC,announced DESC"
	Case "codeup" ob="stockCode,exDate DESC"
	Case "codedn" ob="stockCode DESC,exDate DESC"
	Case Else
		ob="announced DESC,exDate DESC,Name1"
		sort="annddn"
End Select
Select Case t
	Case "r" sql="=2"
	Case "o" sql="=8"
	Case Else
		t="b"
		sql=" IN(2,8)"
End Select
Select Case e
	Case "m" marketStr="=1"
	Case "g" marketStr="=20"
	Case Else
		e="b"
		marketStr=" IN (1,20)"
End Select
title="Rights issues and open offers of shares"
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;"
URL=URL&"?e="&e&"&amp;t="&t
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,b","Main Board,GEM,Both",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"r,o,b","Rights issues,Open offers,Both",p&"e="&e&"&amp;t=")%>
<%rs.Open "SELECT eventID,`change`,announced,exDate,Name1,typeShort,events.issueID,new/old as ratio,adjust,acceptDate,stockCode "&_
	"FROM events JOIN (issue, organisations, capchangetypes,sectypes,stocklistings) ON eventType=CapChangeType AND events.issueID=ID1 "&_
	"AND issuer=PersonID AND issue.typeID=sectypes.typeID AND issue.ID1=stocklistings.issueID "&_
	"WHERE isNull(cancelDate) AND stockExID"&marketStr&" AND (isNull(firstTradeDate) OR firstTradeDate<=announced) AND (isNull(delistDate) OR delistDate>announced) "&_
	"AND eventType"&sql&" ORDER BY "&ob,con%>
	<p><b>Please 
	<a href="../contact">report</a> errors or missing data. </b>The adjustment 
	factor for prices prior to rights issues and open offers is the Theoretical 
	Ex-Entitlements Price (TEEP) divided by the closing price on the last day of 
	trading before the ex-entitlements date, or 1 if lower.</p>
	<%=mobile(1)%>
	<table class="numtable yscroll">
	<tr>
		<th><%SL "Stock<br/>code","codeup","codedn"%></th>
		<th class="left"><%SL "Stock","stckup","stckdn"%></th>
		<th class="left">Type</th>
		<th><%SL "Offer<br/>ratio","ratiup","ratidn"%></th>
		<th><%SL "Adj.<br/>factor","adjudn","adjuup"%></th>
		<th class="colHide2"><%SL "Announced","annddn","anndup"%></th>
		<th><%SL "ex-Date","exdtdn","exdtup"%></th>
		<th class="colHide2"><%SL "Payment<br/>date","paydtdn","paydtup"%></th>
	</tr>
	<%Do Until rs.EOF
		adjust=rs("adjust")
		If Not isNull(adjust) then adjust=FormatNumber(adjust,4)
		ratio=rs("ratio")
		If not isNull(ratio) Then ratio=FormatNumber(ratio,4)
		%>
		<tr>
			<td><%=rs("stockCode")%></td>
			<td class="left"><a href="events.asp?i=<%=rs("issueID")%>"><%=rs("Name1")&":"&rs("typeShort")%></a></td>
			<td class="left"><a href="eventdets.asp?e=<%=rs("eventID")%>"><%=Left(rs("Change"),1)%></a></td>
			<td><%=ratio%></td>
			<td><%=adjust%></td>
			<td class="colHide2"><%=MSdate(rs("Announced"))%></td>
			<td><%=MSdate(rs("exDate"))%></td>
			<td class="colHide2"><%=MSdate(rs("acceptDate"))%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>