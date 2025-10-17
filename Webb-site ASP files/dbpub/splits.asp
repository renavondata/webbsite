<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,issue,title,adjust,newshs,t,e,eStr,p,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
t=Request("t")
e=Request("e")
Select Case sort
	Case "stckup" ob="Name1,announced DESC"
	Case "stckdn" ob="Name1 DESC,announced DESC"
	Case "exdtdn" ob="exDate DESC,stockCode"
	Case "exdtup" ob="exDate,stockCode"
	Case "adjudn" ob="adjust DESC,announced DESC"
	Case "adjuup" ob="adjust,announced DESC"
	Case "codeup" ob="stockCode,exDate DESC"
	Case "codedn" ob="stockCode DESC,exDate DESC"
	Case Else
		ob="exDate DESC,name1"
		sort="extdn"
End Select
Select Case e
	Case "m" eStr="=1" :title="Main Board primary-listed"
	Case "g" eStr="=20": title="Growth Enterprise Market"
	Case "s" eStr="=22": title="Secondary-listed"
	Case "r" eStr="=23": title="Real Estate Investment Trust"
	Case "c" eStr="=38": title="Collective Investment Scheme"
	Case Else
		e="a"
		eStr=" IN (1,20,22)"
		title="Main Board, GEM and secondary"
End Select
Select Case t
	Case "s" sql="=4":title=title&" splits and consolidations"
	Case "b" sql="=5":title=title&" bonus issues"
	Case Else
		t="a"
		sql=" IN(4,5)"
		title=title&" splits, consolidations and bonus issues"
End Select
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;"
URL=URL&"?e="&e&"&amp;t="&t%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,s,a,r,c","Main Board,GEM,Secondary,All HK,REIT,CIS",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"s,b,a","Splits & consols,Bonus shares,Both",p&"e="&e&"&amp;t=")%>
<%rs.Open "SELECT eventID,`change`,exDate,Name1,typeShort,events.issueID,new,old,adjust,stockCode "&_
	"FROM events JOIN (issue, organisations, capchangetypes,sectypes,stocklistings) ON eventType=CapChangeType AND events.issueID=ID1 "&_
	"AND issuer=PersonID AND issue.typeID=sectypes.typeID AND issue.ID1=stocklistings.issueID "&_
	"WHERE isNull(cancelDate) AND stockExID"&eStr&" AND (isNull(firstTradeDate) OR firstTradeDate<=exDate) AND (isNull(delistDate) OR delistDate>exDate) "&_
	"AND eventType"&sql&" ORDER BY "&ob,con%>
	<p>Please <a href="../contact">report</a> errors or missing data. S=split or consolidation, B=bonus issue.</p>
	<%=mobile(3)%>
	<table class="numtable yscroll">
	<tr>
		<th><%SL "Stock<br/>code","codeup","codedn"%></th>
		<th class="left"><%SL "Stock","stckup","stckdn"%></th>
		<th></th>
		<th class="colHide3">New</th>
		<th class="colHide3">Old</th>
		<th><%SL "Adj.<br/>factor","adjudn","adjuup"%></th>
		<th><%SL "ex/eff<br>date","exdtup","exdtdn"%></th>
	</tr>
	<%Do Until rs.EOF
		adjust=rs("adjust")
		If Not isNull(adjust) then adjust=FormatNumber(adjust,3)
		newshs=rs("new")
		If Not isNull(newshs) Then
			If Int(newshs)<>newshs then newshs=FormatNumber(newshs,3)
		End If
		%>
		<tr>
			<td><%=rs("stockCode")%></td>
			<td class="left"><a href="events.asp?i=<%=rs("issueID")%>"><%=rs("Name1")&":"&rs("typeShort")%></a></td>
			<td class="left"><a href="eventdets.asp?e=<%=rs("eventID")%>"><%=Left(rs("Change"),1)%></a></td>
			<td class="colHide3"><%=newshs%></td>
			<td class="colHide3"><%=rs("old")%></td>
			<td><%=adjust%></td>
			<td><%=MSdate(rs("exDate"))%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>