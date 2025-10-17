<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,count,title,e,t,eStr,tStr,p,mcap,cumMcap,maxPriceDate,outstanding,issueID,x,currStr,currs,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
e=Request("e")
t=Request("t")
Select case sort
	Case "namedn" ob="Name DESC"
	Case "nameup" ob="Name"
	Case "codeup" ob="StockCode"
	Case "codedn" ob="StockCode DESC"
	Case "typeup" ob="typeShort,Name"
	Case "typedn" ob="typeShort DESC,Name"
	Case "datedn" ob="FirstTradeDate DESC,Name"
	Case "dateup" ob="FirstTradeDate,Name"
	Case "lotup" ob="lot,Name"
	Case "lotdn" ob="lot DESC,Name"
	Case "ltvup" ob="lotVal,Name"
	Case "ltvdn" ob="lotVal DESC,Name"
	Case "prcdn" ob="closing DESC,Name"
	Case "prcup" ob="closing,Name"
	Case "issdn" ob="Outstanding DESC,Name"
	Case "issup" ob="Outstanding,Name"
	Case "mcpup" ob="mcap,Name"
	Case Else
		sort="mcpdn"
		ob="mcap DESC,Name"
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
title="Market values of "&title
URL=Request.ServerVariables("URL")
p=URL&"?sort="&sort&"&amp;"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%=writeNav(e,"m,g,s,a,r,c","Main Board,GEM,Secondary,All HK,REIT,CIS",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"s,w,h","Shares/units,Warrants,H-shares",p&"e="&e&"&amp;t=")%>
<ul class="navlist">
	<li><a href="mcaphist.asp?e=<%=e%>&amp;t=<%=t%>&amp;sort=<%=sort%>">History</a></li>
</ul>
<div class="clear"></div>
<p>Warning: <strong>these prices are not live</strong>. We usually update them 
at the end of each trading day. The number of issued shares may be outdated, as 
companies only disclose them monthly and on certain events to the Stock Exchange which eventually publishes the 
figure. While a stock is on a temporary &quot;parallel trading&quot; stock code, then we 
don't update it. 
Note that the market caps are for the class of shares, so they exclude any other 
shares of the issuer, such as mainland-listed shares and unlisted shares. We 
also exclude preference shares.</p>
<%=mobile(1)%>
<%currs=split("HKD CNY USD")
For x=0 to 2
	cumMcap=0
	If x=0 Then currStr="(isnull(SEHKcurr) or SEHKcurr=0)" Else currStr="SEHKcurr="&x
	rs.Open "SELECT IFNULL(nomprice,0) closing,priceDate,name1 AS name,issuer,sl.issueID,typeShort,IFNULL(boardlot,0) lot,"&_
		"RIGHT(CONCAT('0000',sl.stockCode),5)stockCode,"&_
		"IFNULL(outstanding(sl.issueID,CURDATE()),0) as outstanding,IFNULL(nomprice*outstanding(sl.issueID,CURDATE()),0) as mcap,IFNULL(nomprice*boardlot,0) lotVal "&_
		"FROM stocklistings sl JOIN (issue i,organisations o,sectypes st) ON sl.issueID=i.ID1 AND "&_ 
		"sl.issueID=i.ID1 AND i.issuer=o.personID AND i.typeID=st.typeID LEFT JOIN hkexdata h ON sl.issueID=h.issueID "&_ 
		"WHERE (isNull(FirstTradeDate) OR FirstTradeDate<=CURDATE()) AND (isNull(DelistDate) OR DelistDate>CURDATE()) AND NOT 2ndCtr AND "&_
		"StockExID "&eStr&" AND i.typeID "&tStr&" AND "&currStr&" ORDER BY "&ob,con
	If Not rs.EOF Then
		URL=URL&"?e="&e&"&amp;t="&t%>
		<h4>Quoted in <%=currs(x)%></h4>
		<table class="numtable yscroll">
			<tr>
				<th class="colHide1">Row</th>
				<th><%SL "Stock<br>Code","codeup","codedn"%></th>
				<th class="left colHide3"><%SL "Sec.<br>type","typeup","typedn"%></th>
				<th class="left"><%SL "Issuer","nameup","namedn"%></th>
				<th class="colHide1"><%SL "Issued shares","issdn","issup"%></th>
				<th class="colHide3"><%SL "Price","prcdn","prcup"%></th>
				<th><%SL "Market<br>cap m.","mcpdn","mcpup"%></th>
				<th class="colHide3">Cumul-<br>ative<br>Mcap m.</th>
				<th class="colHide1"><%SL "Board<br>lot","lotup","lotdn"%></th>
				<th class="colHide1"><%SL "Lot<br>value","ltvup","ltvdn"%></th>
			</tr>
		<%Do Until rs.EOF
			count=count+1
			mcap=rs("mcap")
			issueID=rs("issueID")
			If rs("PriceDate")>maxPriceDate then maxPriceDate=rs("PriceDate")
			CumMcap=CumMcap+mcap/1000000
			%>
			<tr>
				<td class="colHide1"><%=count%></td>
				<td><a href="str.asp?i=<%=issueID%>"><%=rs("StockCode")%></a></td>
				<td class="left colHide3"><%=rs("typeShort")%></td>
				<td class="left"><a href='orgdata.asp?p=<%=rs("Issuer")%>'><%=rs("name")%></a></td>
				<td class="colHide1"><a href="outstanding.asp?i=<%=issueID%>"><%=FormatNumber(rs("outstanding"),0)%></a></td>
				<td class="colHide3"><%=FormatNumber(rs("closing"),3)%></td>
				<td><%=FormatNumber(mcap/1000000,0)%></td>
				<td class="colHide3"><%=FormatNumber(cumMcap,0)%></td>
				<td class="colHide1"><%=FormatNumber(rs("lot"),0)%></td>
				<td class="colHide1"><%=FormatNumber(rs("lotVal"),0)%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
Next
Call CloseConRs(con,rs)
If count=0 Then%>
	<p><b>None found.</b></p>
<%Else%>
	<p>Last price captured at <%=MSdateTime(maxPriceDate)%>.</p>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
