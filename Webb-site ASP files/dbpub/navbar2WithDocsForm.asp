<%Sub stockBar(i,t)
	't is the target button
	Dim con,rs,HKlisted,stockCode,delistDate,secType,ccassOn,stockExID
	Set con=Server.CreateObject("ADODB.Connection")
	con.Open "DSN=enigmaMySQL;"
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT typeID FROM issue WHERE ID1="&i,con
	If Not rs.EOF Then secType=rs("typeID")
	rs.Close
	rs.Open "SELECT stockCode,delistDate,stockExID FROM stocklistings WHERE stockExID IN(1,20,22,23,38,71) AND issueID="&i&" ORDER BY delistDate LIMIT 1",con
	If Not rs.EOF Then
		'get latest listing of this issue
		HKlisted=True
		delistDate=rs("delistDate")
		stockExID=rs("stockExID")
		StockCode=right("0000"&rs("stockCode"),5)
		'no CCASS for rights, convertible bonds or notes
		If (isNull(delistDate) or delistDate>=#26-Jun-2007#) And secType<>2 And secType<>40 and secType<>41 Then ccassOn=True
	End If
	rs.Close%>
	<ul class="navlist">
		<%If HKlisted and secType<>2 and secType<>41 Then Response.Write writeBtn(1,"/dbpub/buybacks.asp?i="&i,"Buybacks")
		rs.Open "SELECT * FROM issuedshares WHERE issueID="&i&" LIMIT 1",con
		If not rs.EOF Then Response.Write writeBtn(2,"/dbpub/outstanding.asp?i="&i,"Outstanding")
		rs.Close
		rs.Open "SELECT * FROM sfcshort WHERE issueID="&i&" LIMIT 1",con
		If Not rs.EOF Then Response.Write writeBtn (3,"/dbpub/short.asp?i="&i,"Short")
		rs.Close	
		If ccassOn Then Response.Write writeBtn(4,"/ccass/choldings.asp?i="&i,"CCASS")
		If HKlisted Then%>
			<%=btn(5,"/dbpub/str.asp?i="&i,"Total return",t)%>
			<%=btn(6,"/dbpub/ctr.asp?i1="&i,"Compare returns",t)%>
			<%=btn(7,"/dbpub/hpu.asp?i="&i,"Prices",t)%>
			<%=btn(8,"/dbpub/events.asp?i="&i,"Events",t)%>
		<%End If
		rs.Open "SELECT * FROM sdi WHERE issueID="&i&" LIMIT 1",con
		If Not rs.EOF Then Response.Write btn(9,"/dbpub/sdiissue.asp?i="&i,"Dealings",t)
		rs.Close
		If HKlisted And (isNull(delistDate) Or delistDate>Date()) Then
			If secType<>46 and secType<>40 and secType<>41 and stockExID<>23 And stockExID<>38 Then%>
				<li><a target="_blank" href="http://www.hkex.com.hk/Market-Data/Securities-Prices/Equities/Equities-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%ElseIf stockExID=38 Then%>
				<li><a target="_blank" href="https://www.hkex.com.hk/Market-Data/Securities-Prices/Exchange-Traded-Products/Exchange-Traded-Products-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%ElseIf stockExID=23 Then%>
				<li><a target="_blank" href="https://www.hkex.com.hk/Market-Data/Securities-Prices/Real-Estate-Investment-Trusts/Real-Estate-Investment-Trusts-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>			
			<%Else%>
				<li><a target="_blank" href="http://www.hkex.com.hk/Market-Data/Securities-Prices/Debt-Securities/Debt-Securities-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%End If		
		End If
		'no HKEx documents for subscription warrants or rights
		If HKlisted And (IsNull(delistDate) Or delistDate>DateValue("1-Apr-1999")) and secType<>1 and secType<>2 Then
			If IsNull(DelistDate) Or delistDate>Date() Then%>
				<li><a href="#" onclick="document.getElementById('getDocs<%=stockCode%>').submit();">Docs</a></li>
			<%Else%>
				<li><a href="http://www.hkexnews.hk/listedco/listconews/advancedsearch/search_delisted_main.aspx" target="_blank">Docs</a></li>
			<%End If
		End If%>
	</ul>
	<%'hidden form for POST to hkexnews
	If HKlisted And (IsNull(delistDate) Or (delistDate>DateValue("1-Apr-1999") And delistDate>Date())) and secType<>1 and secType<>2 Then%>
		<form method="post" action="https://www1.hkexnews.hk/search/titlesearch.xhtml?lang=en" target="_blank" id="getDocs<%=stockCode%>">
			<input type="hidden" name="txt_stock_code" value="<%=stockCode%>">
			<input type="hidden" name="sel_DateOfReleaseFrom_d" value="01">
			<input type="hidden" name="sel_DateOfReleaseFrom_m" value="04">
			<input type="hidden" name="sel_DateOfReleaseFrom_y" value="1999">
			<input type="hidden" name="sel_DateOfReleaseTo_d" value="30">
			<input type="hidden" name="sel_DateOfReleaseTo_m" value="12">
			<input type="hidden" name="sel_DateOfReleaseTo_y" value="9999">
		</form>
	<%End If%>
	<div class="clear"></div>
<%Call closeConRs(con,rs)
End Sub%>