<%Option Explicit
'Response.Buffer=False
'allow a page to run for 5 minutes, not the 90 seconds default
Server.ScriptTimeout=300%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim ob,sort,URL,vol,arr,rcnt,x,tradeDate,settleDate,secType,ccassOn,i,n,p,con,rs
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
sort=Request("sort")
Select Case sort
	Case "acup" ob="adjClose,atDate"
	Case "acdn" ob="adjClose DESC,atDate"
	Case "dateup" ob="atDate"
	Case "turndn" ob="turn DESC,atDate"
	Case "turnup" ob="turn,atDate"
	Case "voldn" ob="adjVol DESC"
	Case "volup" ob="adjVol"
	Case "vwdn" ob="adjVWAP DESC,atDate DESC"
	Case "vwup" ob="adjVWAP,atDate"
	Case Else
		ob="atDate DESC"
		sort="datedn"
End Select
If i>0 Then
	rs.Open "Call ccass.dailyq("&i&",'"&ob&"')",con
	If not rs.EOF Then
		arr=rs.getrows()
		rcnt=CInt(Ubound(arr,2))
		'fill the gaps in adjusted closing price
		If sort="datedn" Then
			For x=rcnt-1 to 0 step -1
				If arr(3,x)=0 Then arr(11,x)=arr(11,x+1)
			Next
		ElseIf sort="dateup" Then
			For x=1 to rcnt
				If arr(3,x)=0 Then arr(11,x)=arr(11,x-1)
			Next
		End If
	Else
		n="No such stock"
		i=0
	End If
	rs.Close
End If
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>Prices and Webb-site Total Returns</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Historic prices</h2>
	<p><b><%=n%></b></p>
<%Else
	ccassOn=(secType<>"Rights" And secType<>"CBond" and secType<>"Notes")
	Call orgBar(n,p,0)
	Call pricesBar(i,sort,1)
End If%>
<form method="get" action="hpu.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i<>0 Then%>
	<h3>Historic prices</h3>
	<%If not isEmpty(arr) Then%>
		<p>Note: Hit the &quot;total return&quot; button above for 
		a graph. Adj are adjusted prices and volume used in <em>Webb-site Total 
		Returns</em>. VWAP is Volume-Weighted Average Price, which in thinly-traded stocks is probably a better guide to 
		achievable prices on the day than the closing price, which is sometimes rigged. 
		S=1 if suspended. 
		Hit the trade date to see CCASS movements on the settlement date.</p>
		<p><a href="pricesCSV.asp?i=<%=i%>">Download CSV</a></p>
		<%=mobile(1)%>
		<table class="numtable yscroll">
			<tr>
				<th><%SL "Trade date","datedn","dateup"%></th>
				<th>S</th>
				<th class="colHide1">Close</th>
				<th class="colHide1">Bid</th>
				<th class="colHide1">Ask</th>
				<th class="colHide1">Low</th>
				<th class="colHide1">High</th>
				<th class="colHide1">Volume</th>		
				<th><%SL "Turnover $","turndn","turnup"%></th>
				<th class="colHide1">VWAP</th>
				<th><%SL "Adj<br>Close","acdn","acup"%></th>
				<th class="colHide2">Adj<br>Bid</th>
				<th class="colHide2">Adj<br>Ask</th>
				<th class="colHide3">Adj<br>Low</th>
				<th class="colHide3">Adj<br>High</th>
				<th class="colHide3"><%SL "Adj<br>Volume","voldn","volup"%></th>
				<th class="colHide3"><%SL "Adj<br>VWAP","vwdn","vwup"%></th>
				<th>Total<br>Return</th>
			</tr>
		<%For x=0 to rcnt
			vol=Cdbl(arr(8,x))
			tradeDate=arr(0,x)
			settleDate=arr(1,x)%>
			<tr>
				<td>
				<%If tradeDate>=#25-Jun-2007# and settleDate+1.2<Now And ccassOn Then 'data arrives 0.2 days after settlement date%> 
					<a href="/ccass/chldchg.asp?d=<%=MSdate(settleDate)%>&i=<%=i%>">
					<%=MSdate(tradeDate)%></a>
				<%Else%>
					<%=MSdate(tradeDate)%>
				<%End If%>
				</td>
				<td><%=arr(2,x)%></td>
				<td class="colHide1"><%=sig(arr(3,x))%></td>
				<td class="colHide1"><%=sig(arr(4,x))%></td>
				<td class="colHide1"><%=sig(arr(5,x))%></td>
				<td class="colHide1"><%=sig(arr(6,x))%></td>
				<td class="colHide1"><%=sig(arr(7,x))%></td>			
				<td class="colHide1"><%=FormatNumber(vol,0)%></td>
				<td><%=FormatNumber(CDbl(arr(9,x)),0)%></td>		
				<td class="colHide1">
					<%If vol=0 Then
						Response.Write "-"
					Else
						Response.Write sig2(CDbl(arr(10,x)))
					End If%>
				</td>
				<td><%=sig(arr(11,x))%></td>
				<td class="colHide2"><%=sig(arr(12,x))%></td>
				<td class="colHide2"><%=sig(arr(13,x))%></td>
				<td class="colHide3"><%=sig(arr(14,x))%></td>
				<td class="colHide3"><%=sig(arr(15,x))%></td>
				<td class="colHide3"><%=FormatNumber(arr(16,x),0)%></td>
				<td class="colHide3">
					<%If vol=0 Then
						Response.Write "-"
					Else
						Response.Write sig2(arr(17,x))
					End If%>
				</td>
				<td>
					<%If x<rcnt And sort="datedn" Then
						If arr(11,x+1)<>0 And arr(11,x)<>0 Then Response.Write FormatPercent(arr(11,x)/arr(11,x+1)-1)
					ElseIf x>0 and sort="dateup" Then
						If arr(11,x-1)<>0 And arr(11,x)<>0 Then Response.Write FormatPercent(arr(11,x)/arr(11,x-1)-1)
					End If%>
				</td>
			</tr>
		<%Next%>
		</table>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>