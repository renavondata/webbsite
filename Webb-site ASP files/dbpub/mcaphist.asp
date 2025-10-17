<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,count,title,e,t,eStr,tStr,p,mcap,closing,cumMcap,os,cumos,issueID,d,ds,curr,rs2,lastmday,oss,exPend,con,rs
Call openEnigmaRs(con,rs)
Set rs2=Server.CreateObject("ADODB.Recordset")
e=Request("e")
sort=Request("sort")
t=Request("t")
exPend=getBool("p")
d=getMSdateRange("d","2008-12-31",MSdate(Date))
ds="'"&d&"'"
If dateSerial(Year(d),Month(d)+1,0)=d Then
	'target is month-end, so need to use outstanding shares at month-end with prices from last market day, unless stock didn't trade that day
	lastmday=con.Execute("SELECT tradeDate FROM ccass.calendar WHERE tradeDate<=LAST_DAY("&ds&") order by tradeDate DESC Limit 1").Fields(0)
	oss="IF(td='"&MSdate(lastmday)&"',outstanding(i,"&ds&"),outstanding(i,td))"
Else
	oss="outstanding(i,td)"
End If
d=MSdate(d)
Select case sort
	Case "namedn" ob="name DESC"
	Case "nameup" ob="name"
	Case "codeup" ob="sc"
	Case "codedn" ob="sc DESC"
	Case "typeup" ob="typeShort,name"
	Case "typedn" ob="typeShort DESC,name"
	Case "datedn" ob="td DESC,name"
	Case "dateup" ob="td,name"
	Case "lotup" ob="lot,Name"
	Case "lotdn" ob="lot DESC,Name"
	Case "ltvup" ob="lotVal,Name"
	Case "ltvdn" ob="lotVal DESC,Name"
	Case "prcdn" ob="closing DESC,name"
	Case "prcup" ob="closing,name"
	Case "issdn" If exPend Then ob="os DESC,name" Else ob="totsh DESC,name"
	Case "issup" If exPend Then ob="os,name" Else ob="totsh,name"
	Case "mcpup" If expEnd Then ob="mcap,name" Else ob="pendMcap,name"
	Case Else
		sort="mcpdn"
		If exPend Then ob="mcap DESC,Name" Else ob="pendMcap DESC,name"
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
	Case "w" tStr="=1" : title=title&" subscription warrants"
	Case "h" tStr="=6" : title=title&" H-shares"
	Case Else
		t="s"
		tStr="NOT IN(1,2,5,40,41,46)"
		If e="r" Or e="c" Then title=title&" units" Else title=title&" shares"
End Select
title="Historic market values of "&title
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;d="&d&"&amp;p="&exPend&"&amp;"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,s,a,r,c","Main Board,GEM,Secondary,All HK,REIT,CIS",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"s,w,h","Shares/units,Warrants,H-shares",p&"e="&e&"&amp;t=")%>
<%URL=URL&"?e="&e&"&amp;t="&t&"&amp;d="&d&"&amp;p="&exPend%>
<ul class="navlist">
	<li><a href="mcaphistnotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<form method="get" action="mcaphist.asp">
	<input type="hidden" name="e" value="<%=e%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="t" value="<%=t%>">
	<div class="inputs">
		<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
		<%=checkbox("p",exPend,True)%> Exclude pending shares
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';document.getElementById('p').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(1)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Stock<br>Code","codeup","codedn"%></th>
		<th class="left colHide3"><%SL "Sec.<br>type","typeup","typedn"%></th>
		<th class="left"><%SL "Issuer","nameup","namedn"%></th>
		<th class="colHide1"><%SL "Issued shares","issdn","issup"%></th>
		<th class="colHide1"><%SL "Date","dateup","datedn"%></th>			
		<th class="colHide2"><%SL "Price","prcdn","prcup"%></th>
		<th><%SL "Market<br>cap m.","mcpdn","mcpup"%></th>
		<th class="colHide2">Cumul-<br>ative<br>Mcap m.</th>
		<th class="colHide1"><%SL "Board<br>lot","lotup","lotdn"%></th>
		<th class="colHide1"><%SL "Lot<br>value","ltvup","ltvdn"%></th>
	</tr>
<%rs2.Open "SELECT sehkcurr,currency FROM (SELECT DISTINCT sehkcurr FROM stocklistings sl JOIN issue i ON sl.issueID=i.ID1 "&_
	"WHERE (isNull(FirstTradeDate) OR FirstTradeDate<="&ds&") AND (isNull(DelistDate) OR DelistDate>"&ds&") "&_
	"AND stockExID "&eStr&" AND typeID "&tStr&" AND NOT 2ndCtr) AS t1 JOIN currencies ON SEHKcurr=ID ORDER BY sehkcurr",con
Do Until rs2.EOF
	If rs2("sehkcurr")=0 Then curr="(SEHKcurr=0 OR isnull(SEHKcurr))" Else curr="SEHKcurr="&rs2("sehkcurr")
	rs.Open "SELECT sc,i,typeShort,p,closing,td,os,IFNULL(closing*os/1000000,0) mcap,IFNULL(os+pendsh,0) totsh,IFNULL(closing*(os+pendsh)/1000000,0) pendMcap,"&_
		"name1 name,IFNULL(lot,0) lot,IFNULL(closing*lot,0) lotVal FROM "&_
		"(SELECT sc,i,typeID,p,td,IFNULL("&oss&",0) os,pendsh(i,td) pendsh,boardLot(i,td) lot,"&_
			"IFNULL((SELECT closing FROM ccass.quotes WHERE issueID=i AND atDate=td),0) closing FROM "&_
			"(SELECT stockCode sc,issueID i,typeID,issuer p,lastQuoteDate(issueID,"&ds&") td FROM stocklistings sl JOIN issue i ON sl.issueID=i.ID1 "&_
			"WHERE (isNull(FirstTradeDate) OR FirstTradeDate<="&ds&") AND (isNull(DelistDate) OR DelistDate>"&ds&") AND NOT 2ndCtr AND "&curr&_
			" AND stockExID "&eStr&" AND typeID "&tStr&") AS t1) "&_
			"AS t2 JOIN (organisations o,sectypes st) ON p=o.personID AND t2.typeID=st.typeID ORDER BY "&ob,con
	cumMcap=0
	cumos=0
	Do Until rs.EOF
		count=count+1
		If exPend Then mcap=rs("mcap") Else mcap=rs("pendMcap")
		closing=rs("closing")
		If exPend Then os=rs("os") Else os=rs("totsh")
		issueID=rs("i")
		cumMcap=cumMcap+mcap
		cumos=cumos+os%>
		<tr>
			<td class="colHide1"><%=count%></td>
			<td><a href="str.asp?i=<%=issueID%>"><%=rs("sc")%></a></td>
			<td class="left colHide3"><%=rs("typeShort")%></td>
			<td class="left"><a href='orgdata.asp?p=<%=rs("p")%>'><%=rs("name")%></a></td>
			<td class="colHide1"><a href="outstanding.asp?i=<%=issueID%>"><%=FormatNumber(os,0)%></a></td>
			<td class="colHide1 nowrap"><%=MSdate(rs("td"))%></td>
			<td class="colHide2"><%=FormatNumber(closing,3)%></td>
			<td><%=FormatNumber(mcap,0)%></td>
			<td class="colHide2"><%=FormatNumber(cumMcap,0)%></td>
			<td class="colHide1"><%=FormatNumber(rs("lot"),0)%></td>
			<td class="colHide1"><%=FormatNumber(rs("lotVal"),0)%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td class="colHide1"></td>
		<td><%=rs2("currency")%></td>
		<td class="colHide3"></td>
		<td class="left">Total/average</td>
		<td class="colHide1" colspan="2"></td>
		<td class="colHide2"><%=FormatNumber(cumMcap*1000000/cumos,3)%></td>
		<td><%=FormatNumber(cumMcap,0)%></td>
		<td class="colHide2"></td>
		<td class="colHide1"></td>
		<td class="colHide1"></td>
	</tr>
	<%rs.Close
	rs2.MoveNext
Loop%>
</table>
<%rs2.Close
Set rs2=Nothing
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
