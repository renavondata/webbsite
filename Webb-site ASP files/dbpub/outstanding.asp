<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim outstanding,atDate,closing,maxDate,mcap,change,pendsh,totmcap,i,n,p,con,rs
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)%>
<title>Outstanding shares: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Outstanding securities</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call stockBar(i,2)
End If%>
<form method="get" action="outstanding.asp">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>Outstanding securities</h3>
	<%rs.Open "Call mcapHist("&i&")",con
	If not rs.EOF Then%>
		<p>Note: we do not adjust the history for stock splits, consolidations or bonus issues. 
		Pending securities are those not yet issued for bonus issues, rights 
		issues, open offers and scrip-only dividends (which are bonus issues in 
		disguise). The pending market capitalisation includes these securities.</p>
		<%=mobile(1)%>
		<table class="numtable">
		<tr>
			<th>Date</th>
			<th>Securities</th>
			<th>Change</th>
			<th class="colHide3">Price</th>
			<th class="colHide3">Price date</th>
			<th class="colHide3">Market<br>cap m.</th>	
			<th class="colHide1">Pending<br>securities</th>
			<th class="colHide2">Pending<br>mcap</th>			
		</tr>
		<%Do Until rs.EOF
			outstanding=rs("outstanding")
			atDate=rs("atDate")
			closing=rs("closing")
			maxDate=rs("maxDate")
			pendsh=rs("pendsh")
			If isNull(closing) or isNull(outstanding) Then
				mcap="" 
				totmcap=""
			Else
				mcap=closing*outstanding/1000000
				totmcap=FormatNumber(mcap+pendsh*closing/1000000,2)
				mcap=FormatNumber(mcap,2)
			End If
			If isNull(closing) Then closing="" Else closing=FormatNumber(closing,3)
			rs.MoveNext
			If rs.EOF Then
				change=""
			ElseIf Not isNull(rs("outstanding")) And not isNull(outstanding) Then
				change=FormatNumber(outstanding-rs("outstanding"),0)
			Else
				change=""
			End If%>
			<tr>
				<td style="white-space:nowrap"><%=MSdate(atDate)%></td>
				<td><%If not isNull(outstanding) Then Response.Write FormatNumber(outstanding,0)%></td>
				<td><%=change%></td>
				<td class="colHide3"><%=closing%></td>
				<td class="colHide3" style="white-space:nowrap"><%=MSdate(maxDate)%></td>
				<td class="colHide3"><%=mcap%></td>
				<td class="colHide1"><%=FormatNumber(pendsh,0)%></td>
				<td class="colHide2"><%=totmcap%></td>			
			</tr>
		<%Loop%>
		</table>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>