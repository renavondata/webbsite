<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim BoardLot,Stocks,McapM,MeanPrice,LotValue,Lots,shares,stockSum,mcapSum,shareSum,lotSum,con,rs
Call openEnigmaRs(con,rs)%>
<title>Distribution of stocks by board lot</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Distribution of HK stocks by board lot</h2>
<p>A board lot is the minimum tradable quantity of shares in a particular stock 
on SEHK. The HKEx monopoly charges a "scrip fee" of $1.50 per board lot on the net increase in a 
CCASS Participant's holdings between successive book closures for dividends or 
other distributions. HKEX also charges, to both buyer and seller, a minimum 
settlement fee of $2 on each trade of $100,000 or less and a "trading fee" of 0.00565%. When a buy order matches more 
than one sell order or vice versa, each match is a separate "trade". So on a 
single-lot trade, HKEX collects $4 plus 0.0113% trading fee, plus the $1.50 
scrip fee if the 
buyer keeps it till the next book closure.</p>
<p>This table summarises the distribution of board lots for ordinary shares of 
all HK-listed companies quoted in HK$.  
To see a complete list of stocks sorted by board lot value,
<a href="mcap.asp?sort=ltvup">click here</a>.</p>
<%=mobile(2)%>
<table class="numtable yscroll">
	<tr>
		<th>Board lot</th>
		<th>No. of stocks</th>
		<th class="colHide3">Combined market cap $m</th>
		<th>Mean share price $</th>
		<th>Mean lot value $</th>
		<th class="colHide2">Number of lots</th>
		<th>Mean market cap</th>
	</tr>
	<%
	rs.Open "SELECT * FROM HKStocksByBoardLot WHERE not isNull(BoardLot)",con
	Do Until rs.EOF
		BoardLot=rs("BoardLot")
		Stocks=CInt(rs("Stocks"))
		McapM=rs("McapM")
		shares=rs("shares")
		If isNull(BoardLot) then BoardLot=0
		If isNull(McapM) then McapM=0
		lots=shares/boardLot
		MeanPrice=McapM/shares*1000000
		LotValue=MeanPrice*BoardLot
		lotSum=lotSum+Lots
		stockSum=stockSum+Stocks
		mcapSum=mcapSum+McapM
		shareSum=shareSum+shares
		%>
		<tr>
			<td><%=FormatNumber(BoardLot,0)%></td>
			<td><%=FormatNumber(Stocks,0)%></td>
			<td class="colHide3"><%=FormatNumber(McapM,0)%></td>
			<td><%=FormatNumber(MeanPrice,3)%></td>
			<td><%=FormatNumber(LotValue,0)%></td>
			<td class="colHide2"><%=FormatNumber(lots,0)%></td>
			<td><%=FormatNumber(McapM/Stocks,0)%></td>
		</tr>
		<%
		rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
	<tr class="total">
		<td><%=FormatNumber(shareSum/lotSum,0)%></td>
		<td><%=FormatNumber(stockSum,0)%></td>
		<td class="colHide3"><%=FormatNumber(mcapSum,0)%></td>
		<td><%=FormatNumber(mcapSum/shareSum*1000000,3)%></td>
		<td><%=FormatNumber(mcapSum/lotSum*1000000,0)%></td>
		<td class="colHide2"><%=FormatNumber(lotSum,0)%></td>
		<td><%=FormatNumber(mcapSum/stockSum,0)%></td>
	</tr>
</table>
<p>Note: the mean (average) share price is weighted by the number of outstanding shares in each stock.
 There are a total of <%=FormatNumber(shareSum/1000000,0)%>m shares outstanding.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
