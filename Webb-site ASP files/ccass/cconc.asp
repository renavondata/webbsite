<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%
Dim sort,URL,issueID,ob,title,d,cnt,etf,sqletf,con,rs
Call openEnigmaRS(con,rs)
sort=Request("sort")

'whether to include unit ETFs. default no
etf=getBool("etf")
If Not etf Then sqletf=" AND orgType<>4"

d=getMSdateRange("d","2007-06-26",GetLog("CCASSdateDone"))
d=MSdate(con.Execute("SELECT Max(settleDate) FROM ccass.calendar WHERE settleDate<='"&d&"'").Fields(0))
Select Case sort
	Case "nameup" ob="Name1"
	Case "namedn" ob="Name1 DESC"
	Case "cp5up" ob="cp5"
	Case "cp5dn" ob="cp5 DESC"
	Case "cp10up" ob="cp10"
	Case "cp10dn" ob="cp10 DESC"
	Case "cp10ipdn" ob="cp10ip DESC"
	Case "cp10ipup" ob="cp10ip"
	Case "stakdn" ob="stake DESC"
	Case "stakup" ob="stake"
	Case "scup" ob="stockCode"
	Case "scdn" ob="stockCode DESC"
	Case Else
		sort="cp5dn"
		ob="cp5 DESC"
End Select
'set div_precision_increment server variable in config file! Default is 4 (significant figs).
rs.Open "SELECT d.issueID,name1,typeShort,c5/(CIPhldg+intermedhldg) AS cp5,c10/(CIPhldg+intermedhldg) AS cp10,lastCode(d.issueID) AS stockCode,"&_
	"(c10+NCIPhldg)/(CIPhldg+IntermedHldg+NCIPHldg) AS cp10ip,"&_
	"(CIPhldg+IntermedHldg+NCIPHldg)/iss.outstanding AS stake"&_
	" FROM ccass.dailylog d JOIN (issue i, organisations o,issuedshares iss,sectypes st,"&_
	"(SELECT issueID,max(atDate) AS maxDate from issuedshares WHERE atDate<='"&d&"' GROUP BY issueID) as t3)"&_
	" ON d.issueID=i.ID1"&_
	" AND i.issuer=o.personID"&_
	" AND d.issueID=t3.issueID"&_
	" AND t3.issueID=iss.issueID"&_
	" AND t3.maxDate=iss.atDate"&_
	" AND i.typeID=st.typeID"&_
	" WHERE d.atDate='"&d&"'"&sqletf&" AND c5>0 AND CIPhldg+intermedHldg>0 ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?d="&d
title="CCASS concentration on "&MSdate(d)%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call ccassallbar(d,2)%>
<form method="get" action="cconc.asp">
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
<p>This table ranks HK-listed shares and subscription warrants by the 
concentration of their holdings amongst CCASS participants, including banks, 
brokers, custodians and investor participants. The denominator for the first two 
columns is all holdings in CCASS except unnamed (or &quot;Non-Consenting&quot;) Investor 
Participants. The numerator and denominator in the third column includes the 
aggregate holdings of unnamed Investor Participants. The last column gives you 
the percentage of the listed shares which are in CCASS, based on the number of 
issued shares published by HKEx.</p>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Stock<br>code","scup","scdn"%></th>
		<th class="left"><%SL "Issue","nameup","namedn"%></th>
		<th><%SL "Top 5<br>%","cp5dn","cp5up"%></th>
		<th class="colHide3"><%SL "Top 10<br>%","cp10dn","cp10up"%></th>
		<th class="nowrap"><%SL "Top<br>10+<br>NCIP<br>%","cp10ipdn","cp10ipup"%></th>
		<th class="colHide3"><%SL "Stake in<br>CCASS %","stakup","stakdn"%></th>
		<th class="colHide3"></th>
	</tr>
	<%cnt=0
	Do Until rs.EOF
		cnt=cnt+1
		issueID=rs("issueID")
		%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td><%=rs("stockCode")%></td>
			<td class="left"><a href="choldings.asp?i=<%=issueID%>&amp;d=<%=d%>"><%=rs("Name1")&":"&rs("typeShort")%></a></td>
			<td><%=FormatNumber(cdbl(rs("cp5"))*100,2)%></td>
			<td class="colHide3"><%=FormatNumber(cdbl(rs("cp10"))*100,2)%></td>
			<td><%=FormatNumber(cdbl(rs("cp10ip"))*100,2)%></td>
			<td class="colHide3"><%=FormatNumber(cdbl(rs("stake"))*100,2)%></td>
			<td class="colHide3"><a href="cconchist.asp?i=<%=issueID%>">history</a></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%
Call CloseConRs(con,rs)
If cnt=0 Then%>
	<p>None found.</p>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>