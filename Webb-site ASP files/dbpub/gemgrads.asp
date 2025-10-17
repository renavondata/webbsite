<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,x,title,CAGret,CAGrel,totRet,d,p,delisted,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
d=getMSdateRange("d","2002-01-14",MSdate(Date))
Select case sort
	Case "nameup" ob="Name1,stockCode"
	Case "namedn" ob="Name1 DESC"
	Case "codeup" ob="StockCode"
	Case "codedn" ob="StockCode DESC"
	Case "typeup" ob="typeShort,Name1"
	Case "typedn" ob="typeShort DESC,Name1"
	Case "datedn" ob="finalTradeDate DESC,Name1"
	Case "dateup" ob="finalTradeDate,Name1"
	Case "cagretdn" ob="CAGret DESC,finalTradeDate"
	Case "cagretup" ob="CAGret,finalTradeDate DESC"
	Case "cagreldn" ob="CAGrel DESC,finalTradeDate"
	Case "cagrelup" ob="CAGrel,finalTradeDate DESC"
	Case "totrdn" ob="totRet DESC,finalTradeDate"
	Case "totrup" ob="totRet,finalTradeDate DESC"
	Case "dldn" ob="delistDate DESC,Name1"
	Case "dlup" ob="delistDate,Name1"
	Case Else
		sort="cagreldn"
		ob="CAGrel DESC,StockCode"
End Select
sql="SELECT m.stockCode,m.issueID,typeShort,typeLong,Name1,PersonID,g.finalTradeDate,m.delistDate,"&_
	"totRet(m.issueID,g.finalTradeDate,'"&d&"')-1 as totRet,"&_
	"CAGRet(m.issueID,g.finalTradeDate,'"&d&"')-1 AS CAGret, "&_
	"CAGRel(m.issueID,g.finalTradeDate,'"&d&"')-1 AS CAGrel FROM stocklistings g JOIN "&_
	"(issue i,stocklistings m,organisations o,sectypes st) ON g.issueID=i.ID1 AND i.issuer=o.personID AND i.typeID=st.typeID "&_
	"AND g.issueID=m.issueID WHERE g.stockExID=20 AND m.stockExID=1 AND g.deListDate<='"&d&"' AND g.reasonID=2 AND i.typeID NOT IN(1,2,40,41,46) ORDER BY "&ob
rs.Open sql, con
URL=Request.ServerVariables("URL")&"?d="&d
title="Performance since transfer from GEM to Main Board up to "&d
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="TRnotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<p>Current company names are shown but may have been different on the snapshot date. 
Total returns are measured from the last closing price on the GEM before 
transfer, to the snapshot date or delisting date if earlier. CAGR is the annualised return and is not shown for 
periods under 180 days. Relative returns are to the
<a href="orgdata.asp?p=51819">Tracker Fund of 
HK</a> (2800) over the same periods.</p>
<form method="get" action="gemgrads.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else%>
	<%=mobile(2)%>
	<table class="numtable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th><%SL "Stock<br>Code","codeup","codedn"%></th>
			<th class="left colHide3"><%SL "Sec.<br>type","typeup","typedn"%></th>
			<th class="left"><%SL "Issuer","nameup","namedn"%></th>
			<th class="colHide3"><%SL "Last trade<br>on GEM","datedn","dateup"%></th>
			<th class="colHide2"><%SL "Total<br>return<br>%","totrdn","totrup"%></th>
			<th class="colHide2"><%SL "CAGR<br>total<br>return<br>%","cagretdn","cagretup"%></th>
			<th><%SL "CAGR<br>relative<br>return<br>%","cagreldn","cagrelup"%></th>		
			<th class="colHide1"><%SL "Delisted","dldn","dlup"%></th>
		</tr>
		<%Do while not rs.EOF
			x=x+1
			CAGret=rs("CAGret")
			If isNull(CAGret) Then CAGret="" Else CAGret=FormatNumber(CAGret*100,2)
			totRet=rs("totRet")
			If isNull(totRet) Then totRet="" Else totRet=FormatNumber(totRet*100,2)
			CAGrel=rs("CAGrel")
			If isNull(CAGrel) Then CAGrel="" Else CAGrel=FormatNumber(CAGrel*100,2)
			delisted=rs("delistDate")
			%>
			<tr>
				<td class="colHide1"><%=x%></td>
				<td><%=rs("StockCode")%></td>
				<td class="left colHide3"><span class="info"><%=rs("typeShort")%><span><%=rs("typeLong")%></span></span></td>
				<td class="left"><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name1")%></a></td>
				<td class="colHide3 nowrap"><%=MSdate(rs("finalTradeDate"))%></td>
				<td class="colHide2"><a href="str.asp?i=<%=rs("issueID")%>"><%=totRet%></a></td>
				<td class="colHide2"><%=CAGret%></td>
				<td><%=CAGrel%></td>
				<td class="colHide1"><%=MSdate(delisted)%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>