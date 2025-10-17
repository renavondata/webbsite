<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim ob,sort,URL,vol,arr,rcnt,x,tradeDate,secType,ccassOn,wd,d,d1,f,i,n,p,tb,con,rs
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
Const c=4 'closing price column
Const ac=8 'adjusted closing price column
wd=getIntRange("wd",6,2,6)
f=Request("f")
If f="y" Or f="m" Then wd="" Else f="w"
sort=Request("sort")
Select Case sort
	Case "acup" ob="adjClose,atDate"
	Case "acdn" ob="adjClose DESC,atDate"
	Case "dateup" ob="atDate"
	Case "turndn" ob="turn DESC,atDate"
	Case "turnup" ob="turn,atDate"
	Case "voldn" ob="adjVol DESC,atDate DESC"
	Case "volup" ob="adjVol,atDate"
	Case "vwdn" ob="adjVWAP DESC,atDate DESC"
	Case "vwup" ob="adjVWAP,atDate"
	Case Else
		ob="atDate DESC"
		sort="datedn"
End Select
If i>0 Then
	If f="w" Then
		rs.Open "Call ccass.weekq("&i&","&wd&",'"&ob&"')",con
	ElseIf f="m" Then
		rs.Open "Call ccass.monthq("&i&",'"&ob&"')",con
	Else
		rs.Open "Call ccass.yearq("&i&",'"&ob&"')",con		
	End If
	If Not rs.EOF Then
		arr=rs.getrows()
		rcnt=CInt(Ubound(arr,2))
	Else
		n="No such stock"
		i=0
	End If
	rs.Close
End If
URL=Request.ServerVariables("URL")&"?i="&i&"&amp;f="&f&"&amp;wd="&wd%>
<title>Prices and Webb-site Total Returns:</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Historic prices</h2>
	<p><b><%=n%></b></p>
<%Else
	ccassOn=(secType<>"Rights" And secType<>"CBond" and secType<>"Notes" AND (sort="datedn" or sort="dateup"))
	Call orgBar(n,p,0)
	Select Case f
		Case "y":tb=4
		Case "m":tb=3
		Case Else:tb=2
	End Select
	Call pricesBar(i,sort,tb)
End If%>
<form method="get">		
	<input type="hidden" name="i" value="<%=i%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="f" value="<%=f%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
	</div>
	<%If f="w" Then%>
		<div class="inputs">
			Weekly on <%=MakeSelect("wd",wd,"2,Monday,3,Tuesday,4,Wednesday,5,Thursday,6,Friday",True)%>
		</div>
	<%End If%>
	<div class="inputs">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>Historic prices</h3>
	<%If not isEmpty(arr) Then%>
		<p>Note: Hit the &quot;total return&quot; button above for 
		a graph. If the market was closed on the last day of the period then the 
		last closing price before that is used. S is the number of days on which the stock 
		was suspended during the period. D is the number of trading days in the 
		period. Adj are adjusted prices and volume used in <em>Webb-site Total 
		Returns</em>. VWAP is Volume-Weighted Average Price. When sorted by 
		date, period total returns are shown, and you can hit the trade date to see CCASS movements for the period, based on settlement dates.</p>
		<p><a href="pricesCSV.asp?i=<%=i%>&amp;f=<%=f%>&amp;wd=<%=wd%>">Download CSV</a> (beta)</p>
		<%=mobile(1)%>
		<table class="numtable yscroll">
		<tr>
			<th><%SL "Trade date","datedn","dateup"%></th>
			<th>S</th>
			<th>D</th>
			<th class="colHide1">Close</th>
			<th class="colHide1">Bid</th>
			<th class="colHide1">Ask</th>
			<th><%SL "Turnover $","turndn","turnup"%></th>
			<th><%SL "Adj<br>Close","acdn","acup"%></th>
			<th class="colHide1">Adj<br>Bid</th>
			<th class="colHide1">Adj<br>Ask</th>
			<th class="colHide3">Adj<br>Low</th>
			<th class="colHide3">Adj<br>High</th>
			<th class="colHide3"><%SL "Adj<br>Volume","voldn","volup"%></th>
			<th class="colHide3"><%SL "Adj<br>VWAP","vwdn","vwup"%></th>
			<th>Total<br>Return</th>
		</tr>
		<%For x=0 to rcnt
			vol=Cdbl(arr(13,x))
			%>
			<tr>
				<td>
				<%tradeDate=arr(0,x)
				d=arr(1,x)
				If tradeDate>=#25-Jun-2007# and d+1.2<Now And ccassOn Then 'data arrives 0.2 days after settlement date
					If sort="datedn" Then
						If x=rcnt Then d1="2007-06-25" Else d1=arr(1,x+1)
					ElseIf sort="dateup" Then
						If x=0 Then d1="2007-06-25" Else d1=arr(1,x-1)
					Else
						d1=""
					End If%>
					<a href="/ccass/chldchg.asp?d=<%=MSdate(d)%>&amp;d1=<%=MSdate(d1)%>&amp;i=<%=i%>">
					<%=MSdate(tradeDate)%></a>
				<%Else%>
					<%=MSdate(tradeDate)%>
				<%End If%>
				</td>
				<td><%=arr(2,x)%></td>
				<td><%=arr(3,x)%></td>
				<td class="colHide1"><%=sig(arr(4,x))%></td>
				<td class="colHide1"><%=sig(arr(5,x))%></td>
				<td class="colHide1"><%=sig(arr(6,x))%></td>
				<td><%=FormatNumber(CDbl(arr(7,x)),0)%></td>
				<td><%=sig(arr(8,x))%></td>
				<td class="colHide1"><%=sig(arr(9,x))%></td>
				<td class="colHide1"><%=sig(arr(10,x))%></td>
				<td class="colHide3"><%=sig(arr(11,x))%></td>
				<td class="colHide3"><%=sig(arr(12,x))%></td>
				<td class="colHide3"><%=FormatNumber(vol,0)%></td>
				<td class="colHide3">
					<%If vol=0 Then
						Response.Write "-"
					Else
						Response.Write sig2(CDbl(arr(14,x)))
					End If%>
				</td>
				<td>
					<%If x<rcnt And sort="datedn" Then
						If arr(ac,x+1)<>0 And arr(ac,x)<>0 Then Response.Write FormatPercent(arr(ac,x)/arr(ac,x+1)-1)
					ElseIf x>0 and sort="dateup" Then
						If arr(ac,x-1)<>0 And arr(ac,x)<>0 Then Response.Write FormatPercent(arr(ac,x)/arr(ac,x-1)-1)
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