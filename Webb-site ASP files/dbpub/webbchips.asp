<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,count,title,t,p,value,cumVal,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select case sort
	Case "datedn" ob="atDate DESC,Name"
	Case "dateup" ob="atDate, Name"
	Case "namedn" ob="Name DESC"
	Case "nameup" ob="Name"
	Case "codeup" ob="sc"
	Case "codedn" ob="sc DESC"
	Case "stkup" ob="stake,Name"
	Case "stkdn" ob="stake DESC,Name DESC"
	Case "qddn" ob="qDate DESC,value DESC"
	Case "qdup" ob="qDate,value DESC" 
	Case "mvup" ob="value,Name"
	Case Else
		sort="mvdn"
		ob="value DESC,Name"
End Select
URL=Request.ServerVariables("URL")
title="Webb-chips: current disclosed holdings"
rs.Open "select lastcode(issueID) AS sc,issueID,issuer,os,name1 AS name,shares,atDate,stake,price,price*shares/1000000 AS value,lastQuoteDate(issueID,CURDATE()) AS qDate,filing FROM "&_
	"(SELECT *,outstanding(issueID,CURDATE()) AS os,round(lastQuote(issueID,CURDATE()),3) AS price from webbhold) AS t "&_
	"JOIN (issue i,organisations o) ON t.issueID=ID1 AND i.issuer=o.personID ORDER BY "&ob,con%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>In the interest of disclosure and by popular request, these are the 
holdings of our founder David Webb of 5% or more in HK-listed stocks, based on the 
latest published statutory filing in each stock. With certain <em>de minimis</em> 
exceptions, substantial shareholders must disclose when their stake increases or 
decreases through a whole 1% boundary. We will endeavour to update this table whenever 
a filing is published, but the filings published by HKEX are authoritative and 
can be
<a href="https://di.hkex.com.hk/di/NSSrchPerson.aspx?src=MAIN&amp;lang=EN" target="_blank">
searched by shareholder name here</a>. Prices are not live; they are normally 
updated after the end of each market day.</p>
<p>Mr Webb does of course have undisclosed holdings which are less than 5% of a 
stock, and 
may have previously-disclosed holdings which have fallen below 5%, either by 
disposal or dilution. Holdings are removed from this table when the last filing 
falls below the 5% disclosure threshold.</p>
<p>Click on the stock code to see total return charts and other stock data. Click on 
the company name to see corporate data. Click on the date to see the raw filing.</p>
<p><strong>Investment alert</strong>: Mr Webb does not give stock 
recommendations. If you receive any tips using his name on messaging apps, these 
are fake.</p>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else%>
	<%=mobile(1)%>
	<table class="numtable">
		<tr>
			<th class="colHide1">Row</th>
			<th><%SL "Stock<br>Code","codeup","codedn"%></th>
			<th class="left"><%SL "Issuer","nameup","namedn"%></th>
			<th class="colHide2"><%SL "Event<br>date","datedn","dateup"%></th>
			<th class="colHide3">Shares<br>filed</th>
			<th><%SL "Stake<br>filed<br>%","stkdn","stkup"%></th>
			<th class="colHide3">Price</th>		
			<th class="colHide2"><%SL "Price<br>date","qddn","qdup"%></th>
			<th><%SL "Market<br>value<br>HK$m","mvdn","mvup"%></th>
		</tr>
	<%Do Until rs.EOF
		count=count+1
		value=rs("value")
		cumVal=cumVal+value%>
		<tr>
			<td class="colHide1"><%=count%></td>
			<td><a href="str.asp?i=<%=rs("issueID")%>"><%=rs("sc")%></a></td>
			<td class="left"><a href='orgdata.asp?p=<%=rs("issuer")%>'><%=rs("name")%></a></td>
			<td class="colHide2"><a target="_blank" href="https://di.hkex.com.hk/di/NSForm1.aspx?fn=<%=rs("filing")%>"><%=MSdate(rs("atDate"))%></a></td>
			<td class="colHide3"><%=FormatNumber(rs("shares"),0)%></td>
			<td><%=FormatNumber(rs("stake"),2)%></td>
			<td class="colHide3"><%=FormatNumber(rs("price"),3)%></td>
			<td class="colHide2"><%=MSdate(rs("qDate"))%></td>
			<td><%=FormatNumber(rs("value"),1)%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
		<tr class="total">
			<td class="colHide1"></td>
			<td></td>
			<td class="left">Total</td>
			<td class="colHide2"></td>
			<td class="colHide3"></td>
			<td></td>
			<td class="colHide3"></td>
			<td class="colHide2"></td>			
			<td><%=FormatNumber(cumVal,1)%></td>
		</tr>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
