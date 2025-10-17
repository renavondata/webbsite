<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,exch,cnt,title,e,t,eStr,tStr,p,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
e=Request("e")
t=Request("t")
Select case sort
	Case "namedn" ob="Name1 DESC"
	Case "codeup" ob="StockCode"
	Case "codedn" ob="StockCode DESC"
	Case "typeup" ob="typeShort,Name1"
	Case "typedn" ob="typeShort DESC,Name1"
	Case "fdatedn" ob="FirstTradeDate DESC,Name1"
	Case "fdateup" ob="FirstTradeDate,Name1"
	Case "ldatedn" ob="FinalTradeDate DESC,Name1"
	Case "ldateup" ob="FinalTradeDate,Name1"
	Case "ddatedn" ob="DelistDate DESC,Name1"
	Case "ddateup" ob="DelistDate,Name1"
	Case "lifeup" ob="TradeLife,Name1"
	Case "lifedn" ob="TradeLife DESC,Name1"
	Case "rsnup" ob="Reason,Name1"
	Case "rsndn" ob="Reason DESC,Name1"
	Case Else
	sort="nameup"
	ob="Name1,StockCode"
End Select
Select Case e
	Case "m" eStr="=1" :title="Main Board primary-listed"
	Case "g" eStr="=20": title="Growth Enterprise Market"
	Case "s" eStr="=22": title="Secondary-listed"
	Case "r" eStr="=23": title="Real Estate Investment Trust"
	Case "c" eStr="=38": title="Collective Investment Scheme"
	Case Else
		e="a"
		eStr="IN (1,20,22)"
		title="Main Board, GEM and secondary"
End Select
Select Case t
	Case "r" tStr="=2" : title=title&" rights"
	Case "w" tStr="=1" : title=title&" subscription warrants"
	Case "h" tStr="=6" : title=title&" H-shares"
	Case Else
		t="s"
		tStr="NOT IN(1,2,40,41,46)"
		If e="r" Or e="c" Then title=title&" units" Else title=title&" shares"
End Select
sql="SELECT StockCode,typeShort,typeLong,issueID,Name1,PersonID,FirstTradeDate,FinalTradeDate,DelistDate,Reason,"&_
	"If(isnull(FirstTradeDate) or isnull(FinalTradeDate),NULL,((to_days(FinalTradeDate)-to_days(FirstTradeDate))+1)/365.2425) "&_
	"AS TradeLife from (stocklistings JOIN "&_
	"(issue,organisations,sectypes) ON issue.issuer=organisations.personID AND issue.typeID=sectypes.typeID "&_
	"AND stocklistings.issueID=issue.ID1) LEFT JOIN dlreasons ON stocklistings.reasonID=dlreasons.reasonID "&_
	"WHERE DelistDate<=Now() AND StockExID "&eStr&" AND issue.typeID "&tStr&" ORDER BY "&ob
rs.Open sql, con
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;"
%>
<title>Delisted <%=title%></title>
<link rel="stylesheet" type="text/css" href="/templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Delisted <%=title%></h2>
<ul class="navlist">
	<li><a href="listed.asp?e=<%=e%>&amp;t=<%=t%>&amp;sort=<%=sort%>">Listed</a></li>
	<li class="livebutton">Delisted</li>
</ul>
<%=writeNav(e,"m,g,s,a,r,c","Main Board,GEM,Secondary,All HK,REIT,CIS",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"s,r,w,h","Shares/units,Rights,Warrants,H-shares",p&"e="&e&"&amp;t=")%>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else
	URL=URL&"?e="&e&"&amp;t="&t%>
	<%=mobile(3)%>
	<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th class="colHide3"><%SL "Stock Code","codeup","codedn"%></th>
		<th class="left colHide3"><%SL "Sec.<br>type","typeup","typedn"%></th>
		<th class="left"><%SL "Issuer","nameup","namedn"%></th>
		<th class="colHide3"><%SL "First trade","fdateup","fdatedn"%></th>
		<th class="colHide3"><%SL "Last trade","ldatedn","ldateup"%></th>
		<th><%SL "Delisted","ddatedn","ddateup"%></th>
		<th><%SL "Trading<br>life,<br>years","lifeup","lifedn"%></th>
		<th class="left colHide3"><%SL "Reason","rsnup","rsndn"%></th>
	</tr>
	<%Do while not rs.EOF
		cnt=cnt+1%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td class="colHide3"><a href="str.asp?i=<%=rs("issueID")%>"><%=rs("StockCode")%></a></td>
			<td class="left colHide3"><span class="info"><%=rs("typeShort")%><span><%=rs("typeLong")%></span></span></td>
			<td class="left"><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name1")%></a></td>
			<td class="colHide3"><%=MSdate(rs("FirstTradeDate"))%></td>
			<td class="colHide3"><%=MSdate(rs("FinalTradeDate"))%></td>
			<td><%=MSdate(rs("DelistDate"))%></td>
			<td><%If rs("TradeLife")<>"" then Response.Write FormatNumber(rs("TradeLife"),3)%></td>
			<td class="left colHide3"><%=rs("Reason")%></td>
		</tr>
		<%rs.MoveNext
	Loop
End If
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>