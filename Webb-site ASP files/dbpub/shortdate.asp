<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim atDate,value,sumVal,ob,title,d,dateList,sort,URL,x,mcap,sumCap,prevDate,diff,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
d=Request("d")
dateList=con.Execute("SELECT DATE_FORMAT(atDate,'%Y-%m-%d'),DATE_FORMAT(atDate,'%Y-%m-%d') FROM sfcshort GROUP BY atDate ORDER BY atDate DESC").getRows
If isDate(d) Then d=MSdate(d) Else d=dateList(0,0)
atDate=MSdate(d)
prevDate=con.Execute("SELECT IFNULL((SELECT Max(atDate) FROM sfcshort WHERE atDate<'"&atDate&"'),'2012-08-31')").Fields(0)
Select Case sort
	Case "nameup" ob="name1"
	Case "namedn" ob="name1 DESC"
	Case "stakdn" ob="stake DESC,name1"
	Case "stakup" ob="stake,name1"
	Case "valudn" ob="value DESC,name1"
	Case "valuup" ob="value,name1"
	Case "codeup" ob="stockCode"
	Case "codedn" ob="stockCode DESC"
	Case "mcapdn" ob="mcap DESC"
	Case "mcapup" ob="mcap"
	Case "typeup" ob="typeShort,stake DESC"
	Case "typedn" ob="typeShort DESC,stake DESC"
	Case "diffdn" ob="diff DESC,name1"
	Case "diffup" ob="diff,name1"
	Case Else
		ob="stake DESC,name1"
		sort="stakdn"
End Select
rs.Open "SELECT stockCode,t1.issueID,shares,value,shares/os stake,name1,typeshort,typelong,shares/os-prevStake diff,"&_
	"lastquote(t1.issueID,'"&atDate&"')*os AS mcap FROM "&_
	"(SELECT stockCode,issueID, shares,value,outstanding(issueID,'"&atDate&"') os FROM sfcshort WHERE atDate='"&atDate&"') t1 "&_
    "JOIN (issue i,organisations o,sectypes s) ON t1.issueID=i.ID1 AND i.issuer=o.personID AND i.typeID=s.typeID "&_
    "LEFT JOIN (SELECT issueID,shares/outstanding(issueID,'"&prevDate&"') prevStake FROM sfcshort WHERE atDate='"&prevDate&"') t2 "&_
    "ON t1.issueID=t2.issueID ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?d="&d
title="Short positions disclosed to SFC at "&atDate%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li class="livebutton">Short postions</li>
	<li><a href="shortsum.asp">Weekly summary</a></li>
	<li><a href="shortnotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<form name="myform" method="get" action="shortdate.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		<%=arrSelect("d",Msdate(d),dateList,true)%>
	</div>
	<div class="clear"></div>
</form>
<%=mobile(1)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th class="left"><%SL "Stock<br/>Code","codeup","codedn"%></th>
		<th class="left colHide2"><%SL "Type","typeup","typedn"%></th>
		<th class="left"><%SL "Issuer","nameup","namedn"%></th>
		<th class="colHide1">Shares</th>
		<th class="colHide3"><%SL "Value HK$m","valudn","valuup"%></th>
		<th><%SL "Stake %","stakdn","stakup"%></th>
		<th><%SL "Market<br>cap HK$m","mcapdn","mcapup"%></th>
		<th class="colHide2"><%SL "Stake<br>change","diffdn","diffup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		value=rs("value")/1000000
		sumVal=sumVal+value
		mcap=rs("mcap")/1000000
		diff=rs("diff")
		If Not isNull(mcap) Then sumCap=sumCap+mcap
		%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td class="left"><%=right("0000"&rs("stockCode"),5)%></td>
			<td class="left colHide2"><span class="info"><%=rs("typeShort")%><span><%=rs("typeLong")%></span></span></td>
			<td class="left"><a href="short.asp?i=<%=rs("issueID")%>"><%=rs("Name1")%></a></td>
			<td class="colHide1"><%=FormatNumber(rs("shares"),0)%></td>
			<td class="colHide3"><%=FormatNumber(value,2)%></td>
			<td><%=FormatNumber(rs("stake")*100,3)%></td>
			<td><%If isNull(mcap) Then Response.Write "-" Else Response.Write (FormatNumber(mcap,0))%></td>
			<td class="colHide2"><%If isNull(diff) Then Response.Write "NA" Else Response.Write FormatNumber(diff*100,3)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
	<tr class="total">
		<td class="colHide1"></td>
		<td></td>
		<td class="colHide2"></td>
		<td class="left">Total/average</td>
		<td class="colHide1"></td>
		<td class="colHide3"><%=FormatNumber(sumVal,0)%></td>
		<td><%=FormatPercent(sumVal/sumCap,3)%></td>
		<td><%=FormatNumber(sumCap,0)%></td>
	</tr>
</table>
<%If x=0 Then%>
	<p>None found.</p>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>