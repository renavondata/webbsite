<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim ob,sort,URL,vwap,i,n,p,con,rs,sql
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
sort=Request("sort")
Select Case sort
	Case "turndn" ob="turn DESC,atDate"
	Case "turnup" ob="turn,atDate"
	Case "dateup" ob="atDate"
	Case Else
		ob="atDate DESC"
		sort="datedn"
End Select
URL=Request.ServerVariables("URL")&"?i="&i
%>	
<title>Parallel trading: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call pricesBar(i,sort,5)%>
	<p>Note: There figures are from the counter used for &quot;parallel trading&quot; of 
	shares represented by old certificates, in parallel with trading on the main 
	counter (or stock code) after a split, consolidation or change of board lot 
	size. It's an archaic practice because we have had electronic settlement 
	with a central counterparty by book-entry since 1993, so in reality no 
	certificates change hands. It was due to be
	<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080422news.htm">
	abolished</a> on 3-Nov-08, but abolition has been
	<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080723news.htm">
	delayed</a> indefinitely. S=1 if suspended.</p>
	<%sql="SELECT atDate,susp,closing,bid,ask,high,low,vol,turn,IF(vol=0,0,turn/vol) AS vwap"&_
		" FROM ccass.pquotes WHERE issueID="&i&" ORDER BY "&ob
	rs.Open sql, con
	If not rs.EOF Then%>
		<table class="numtable yscroll">
		<tr>
			<th><%SL "Trade date","datedn","dateup"%></th>
			<th>S</th>
			<th>Close</th>
			<th>Bid</th>
			<th>Ask</th>
			<th>Low</th>
			<th>High</th>
			<th>Volume</th>
			<th><%SL "Turnover $","turndn","turnup"%></th>
			<th>VWAP</th>
		</tr>
		<%Do Until rs.EOF
			vwap=Cdbl(rs("vwap"))
			%>
			<tr>
			<td style="text-align:right"><%=MSdate(rs("atDate"))%></td>
			<td><%=-rs("susp")*1%></td>
			<td><%=sig(rs("closing"))%></td>
			<td><%=sig(rs("bid"))%></td>
			<td><%=sig(rs("ask"))%></td>
			<td><%=sig(rs("low"))%></td>
			<td><%=sig(rs("high"))%></td>
			<td><%=FormatNumber(rs("vol"),0)%></td>
			<td><%=FormatNumber(rs("turn"),0)%></td>
			<td>
				<%If vwap=0 Then
					Response.Write "-"
				Else
					Response.Write sig2(vwap)
				End If%>
			</td>
			</tr>
			<%
			rs.MoveNext
		Loop%>
		</table>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>