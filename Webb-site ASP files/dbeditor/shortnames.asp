<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Call requireRoleExec

Function HKEXtoken()
	'fetch the token string from HKEX to use with JSON calls
	Dim x, y, r, hint
	Call GetWeb("http://www.hkex.com.hk/Market-Data/Securities-Prices/Equities/Equities-Quote?sc_lang=en&sym=1",r,hint)
	x = InStr(r, "Base64")
	x = InStr(x, r, "return") + 8
	y = InStr(x, r, """")
	HKEXtoken = Mid(r, x, y - x)
End Function

Function getHKEXjson(ByVal token, ByVal sc)
	Dim x,URL,r,hint
	URL = "https://www1.hkex.com.hk/hkexwidget/data/getequityquote?lang=eng&callback=j&qid=1&token=" & token & "&sym=" & CLng(sc)
	Call GetWeb(URL,r,hint)
	getHKEXjson=Mid(r,2) 
End Function

Sub GetBond(ByVal slID)
	'adapted from VBA
	'get the details on one bond with issueID i and stock code sc
	'set the accurate maturity date for any bonds with an approximate date, from HKEX web site
	'set the trading currency if we have the incorrect currency
	'record the outstanding amount and "last update" if it has changed
	Dim con,rs,r,matDate,currID,listDate,s,os,token
	token=HKEXtoken()
	Const adOpenKeyset=1
	Const adLockOptimistic=3
	Call prepMasterRs(con,rs)
	r = getHKEXjson(token, sc)
	r = GetVal(GetVal(r, "data"), "quote")
	rs.Open "SELECT issueID,stockCode FROM stocklistings WHERE ID=" & slID,con
	i=rs("issueID")
	sc=rs("stockCode")
	rs.Close
    rs.Open "SELECT * FROM issue WHERE ID1=" & i, con, adOpenKeyset, adLockOptimistic
    s = GetVal(r, "expiry_date")
    If s > "" Then
        matDate = CDate(s)
        hint=hint&"Maturity: "&MSdate(matDate)&"<br>"
        If (Not IsNull(rs("expAcc"))) Or matDate <> rs("expmat") Or IsNull(rs("expAcc")) Then
            rs("expmat") = matDate
            rs("expAcc") = Null
        End If
    End If
    s = GetVal(r, "ccy")
    If s = "RMB" Then s = "CNY" 'this may not be a problem anymore
    hint=hint&"Currency: "&s&"<br>"
    If s > "" Then
    	currID=CInt(con.Execute("SELECT IFNULL((SELECT ID FROM currencies WHERE currency=" & apq(s) & "),-1)").Fields(0))
    	If currID=-1 Then
            hint=hint&"Currency not found: "&s&"<br>"
    	Else
            If (rs("SEHKcurr") <> currID) Or IsNull(rs("SEHKcurr")) Then rs("SEHKcurr") = currID
    	End If    	
    End If
    s = GetVal(r, "coupon")
    If s = "" Then s = "0"
    hint=hint&"Coupon: "&s&"%<br>"
    rs("coupon") = s
    s = GetVal(r, "floating_flag")
    If s <> "null" And s > "" Then rs("floating") = s
    rs.Update
    rs.Close
    'get listing date from DB or from page
    rs.Open "SELECT * FROM stockListings WHERE ID=" & slID, con, adOpenKeyset, adLockOptimistic
    If IsNull(rs("FirstTradeDate")) Then
        s = GetVal(r, "listing_date")
        If s <> "" Then
            listDate = CDate(s)
            rs("FirstTradeDate") = listDate
            hint=hint&"Listing date: "&MSdate(listDate)&"<br>"
        End If
    Else
        listDate = rs("FirstTradeDate")
    End If
    If IsNull(rs("sedol")) Then
        s = GetVal(r, "sedol")
        If s <> "null" And s > "" Then
            rs("sedol") = s
            hint=hint&"SEDOL: " & s & "<br>"
        End If
    End If
    If IsNull(rs("isin")) Then
        s = GetVal(r, "isin")
        If s <> "null" And s <> "" Then
            rs("isin") = s
            hint=hint&"ISIN: " & s & "<br>"
        End If
    End If
    rs.Update
    rs.Close
    s = GetVal(r, "amt_os")
    If s <> "" Then
        os = CDbl(s)
        rs.Open "SELECT * FROM issuedshares WHERE issueID=" & i & " ORDER BY atDate DESC LIMIT 1", con, adOpenKeyset, adLockOptimistic
        If rs.EOF Then
            'no initial outstanding amount. Use the listing date for initial issue
            rs.addNew
            rs("IssueID") = i
            rs("atDate") = listDate
            rs("Outstanding") = os
        Else
            If rs("Outstanding") <> os Then
                con.Execute "REPLACE INTO issuedshares (issueID,atDate,outstanding) VALUES (" & i & ",CURDATE()," & os & ")"
            End If
        End If
        rs.Update
        rs.Close
    End If
    Call CloseConRs(con,rs)
End Sub

Sub GetHKEXoneStock(ByVal slID)
	'process a single equity. Adpated from VBA version
	Dim con,rs,rs2,r,sc,y,os,Amount,rights,blnFound,blnAdj,atDate,domStr,BoardLot,s,z,price,priceDate,typeID,i,wvr,issue2,token
	token=HKEXtoken()
	Const adOpenKeyset=1
	Const adLockOptimistic=3
    Call prepMasterRs(con,rs)
	Set rs2=Server.CreateObject("ADODB.Recordset")
    rs.Open "SELECT stockCode,issueID,typeID,issuer,sedol,isin FROM stocklistings s JOIN issue i ON s.issueID=i.ID1 WHERE s.ID=" & slID, con
    If Not rs.EOF Then
        wvr = False
        sc = rs("stockCode")
        typeID = rs("typeID")
        i = rs("IssueID")
        blnFound = False
        blnAdj = False
        r = getHKEXjson(token, sc)
        r = getItem(r, "data.quote")
        If IsNull(rs("sedol")) Then
            s = GetVal(r, "sedol")
            If s <> "null" And s <> "" Then
                con.Execute ("UPDATE stocklistings SET sedol='" & s & "' WHERE ID=" & slID)
                hint=hint&"SEDOL: " & s & "<br>"
            End If
        End If
        'ISIN is different for dual-counter stocks, e.g. 0737 and 80737 (HKD/CNY), so this is a field in the stocklistings table
        If IsNull(rs("isin")) Then
            s = GetVal(r, "isin")
            If s <> "null" And s <> "" Then
                con.Execute ("UPDATE stocklistings SET isin='" & s & "' WHERE ID=" & slID)
                hint=hint&"ISIN:" & s & "<br>"
            End If
        End If
        If typeID = 1 Then 'warrant
            'value of "ew_amt_os" should return $ amount outstanding
            'value of "strike_price" contains exercise price
            s = GetVal(r, "ew_amt_os")
            If s <> "" Then
                Amount = CDbl(s)
                s = GetVal(r, "strike_price")
                If s <> "" Then
                    rights = CDbl(s)
                    os = Round(Amount / rights, 0)
                    blnFound = True
                    atDate = CDate(GetVal(r, "ew_amt_os_dat"))
                End If
            End If
        Else
            If typeID = 7 Then
                'A-share, but could be Swire A, not treated as WVR by HKEX
                s = GetVal(r, "issued_shares_class_A")
                If s = "null" Then
                    s = GetVal(r, "amt_os")
                Else
                    wvr = True
                End If
            ElseIf typeID = 8 Then
                'B-share, but could be Swire B, not treated as WVR by HKEX
                s = GetVal(r, "issued_shares_class_B")
                If s = "null" Then
                    s = GetVal(r, "amt_os")
                Else
                    wvr = True
                End If
            Else
                s = GetVal(r, "amt_os")
            End If
            If s <> "" Then
                os = CDbl(s)
                atDate = CDate(GetVal(r, "shares_issued_date"))
                blnFound = True
                s = GetVal(r, "issued_shares_note")
                If s <> "null" Then
                    'get the actual shares from the note, ignore adjusted shares
                    blnAdj = True
                    y = InStr(s, "before the adjustment")
                    If y > 0 Then
                        os = CDbl(findNum(Mid(s, y)))
                        y = InStr(y, s, "as at") + 5
                        z = Len(s)
                        'due to risk of typos in the note, this shortens the text until it is a date
                        s = Replace(cleanStr(Mid(s, y, z - y + 1)), ".", "")
                        Do Until IsDate(s) Or s = ""
                            s = Left(s, Len(s) - 1)
                        Loop
                        atDate = CDate(s)
                    End If
                End If
            End If
        End If
        If blnFound Then
            With rs2
                .Open "SELECT * FROM issuedshares WHERE issueID=" & i & " AND atDate='" & MSdate(atDate) & "'", con, adOpenKeyset, adLockOptimistic
                If .EOF Then
                    .addNew
                    rs2("IssueID") = i
                    rs2("atDate") = atDate
                    rs2("Outstanding") = os
                    .Update
                ElseIf rs2("Outstanding") <> os Then
                    rs2("Outstanding") = os
                    .Update
                End If
                .Close
                If wvr Then
                    If typeID = 7 Then
                        s = GetVal(r, "issued_shares_class_B")
                    Else
                        s = GetVal(r, "issued_shares_class_A")
                    End If
                    typeID = 15 - typeID 'swap 7 and 8
                    os = CDbl(s)
                    .Open "SELECT * FROM issue WHERE issuer=" & rs("issuer") & " AND typeID=" & typeID, con
                    If Not .EOF Then
                        'update the other class
                        issue2 = rs2("ID1").Value
                        .Close
                        .Open "Select * FROM issuedshares WHERE issueID= " & issue2 & " And atDate ='" & MSdate(atDate) & "'", con, adOpenKeyset, adLockOptimistic
                        If .EOF Then
                            .addNew
                            rs2("IssueID") = issue2
                            rs2("atDate") = atDate
                            rs2("Outstanding") = os
                            .Update
                        ElseIf CDbl(rs2("Outstanding")) <> os Then
                            rs2("Outstanding") = os
                            .Update
                        End If
                        hint=hint&"Heavy class: " & issue2 & vbTab & "Outstanding:" & os & "<br>"
                    End If
                    .Close
                End If
            End With
        End If
        With rs2
            .Open "SELECT * FROM HKExData WHERE issueID=" & i, con, adOpenKeyset, adLockOptimistic
            If .EOF Then
                .addNew
                rs2("IssueID") = i
            End If
            rs2("stockCode") = sc
            domStr = GetVal(r, "incorpin")
            If domStr <> "" Then rs2("Domicile") = domStr
            s = GetVal(r, "lot")
            If s <> "" Then
                BoardLot = CLng(s)
                If rs2("BoardLot") = 0 Then
                    rs2("BoardLot") = BoardLot
                ElseIf rs2("BoardLot") <> BoardLot Then
                    'NB this will not capture the lot size of the temporary counter in consolidations, so we will have to do that manually
                    con.Execute "INSERT IGNORE INTO oldlots (issueID,until,lot)" & valsql(Array(i,Date(),rs2("BoardLot")))
                    rs2("BoardLot") = BoardLot
                End If
            End If
            s = GetVal(r, "updatetime") 'may be empty for suspended stocks
            If s <> "" Then
                priceDate = CDate(s)
                s = GetVal(r, "ls")
                If s <> "" Then
                    Price = CDbl(s)
                    If Price > 0 Then
                        rs2("nomPrice") = Price
                        rs2("priceDate") = priceDate
                    End If
                End If
            End If
            .Update
            .Close
        End With
        s = GetVal(r, "ccy")
        If s <> "" Then
        	y=CInt(con.Execute("SELECT IFNULL((SELECT ID FROM currencies WHERE HKEXcurr=" & apq(s) & "),-1)").Fields(0))
        	If y>-1 Then con.Execute "UPDATE issue" & setsql("SEHKcurr",Array(y)) & "ID1=" & i
        End If
        hint=hint&"Stock code: "&sc&"<br>"
        hint=hint&"issueID: "&i&"<br>"
        hint=hint&"atDate: "&MSdate(atDate)&"<br>"
        hint=hint&"Outstanding: "&FormatNumber(os,0)&"<br>"
    End If
    Set rs2=Nothing
    Call closeConRs(con,rs)
End Sub

Function findNum(ByVal s)
	'returns the first number in the string s, or if none is found, an empty string
	'does not handle negative numbers
	Dim x,txt
	s = Replace(s, ",", "")
	For x = 1 To Len(s)
	    If IsNumeric(Mid(s, x, 1)) Then Exit For
	Next
	s = Mid(s,x)
	For x = 1 To Len(s)
	    txt = Mid(s, x, 1)
	    If (Not (IsNumeric(txt)) And txt <> ".") Then Exit For
	Next
	findNum = Left(s, x - 1)
End Function

Function cleanStr(s)
	'remove line feed,tab and carriage returns and leading/trailing space
	s = Replace(s, chr(9), "")
	s = Replace(s, chr(10), "")
	s = Replace(s, chr(13), "")
	cleanStr = Trim(s)
End Function

Sub missingQuotes(sc,i)
	'transfers any quotes from unquotes table to quotes, replacing stockCode sc with issueID i, then delete them in unquotes
	Dim con
	Call prepMaster(con)
	con.Execute "INSERT INTO ccass.quotes(issueID,atDate,prevClose,closing,ask,bid,high,low,vol,turn,susp,newsusp,noclose) "&_
		"SELECT " & i & ",atDate,prevClose,closing,ask,bid,high,low,vol,turn,susp,newsusp,noclose FROM ccass.unquotes "&_
		"WHERE stockCode="&sc
	con.Execute "DELETE FROM ccass.unquotes WHERE stockCode="&sc
	Call CloseCon(con)
End Sub

Function getStockId(sc,sn)
	'sc=stock code, sn=shortName
	Dim r,status,s,arr
	'get the stockId for SEHK documents link
	Call GetWeb("https://www1.hkexnews.hk/search/prefix.do?callback=callback&market=SEHK&lang=EN&type=A&name=" & Replace(sn,"&","%26"),r,status)
	r = Mid(r, InStr(r, "{"))
	r = Left(r, InStrRev(r, "}"))
	r = GetVal(r,"stockInfo")
    arr = ReadArray(r)
    For Each s In arr
        If CLng(GetVal(s, "code")) = CLng(sc) And sn=Replace(Replace(GetVal(s, "name"), "\u0027", "'"), "\u0026", "&") Then
            getStockId = CLng(GetVal(s, "stockId"))
            Exit For
        End If
    Next
End Function

'MAIN PROC
Dim ID,con,rs,sc,typeID,typeStr,firstTrade,finalTrade,delist,exch,i,p,SEHKcurr,ordID,slID,shortName,orgName,submit,title,hint,stockId
Call prepMasterRs(con,rs)
sc=getLng("sc",0)
If sc>0 Then p=SCorg(sc) 'another stock code was entered to find issuer
stockID=Request("stockId")
submit=Request("submitSN")
ID=getLng("ID",0) 'primary key of shortnames table
typeID=getLng("typeID",41) 'security type
If p=0 Then p=getLng("p",0)
If ID=0 And p>0 Then
	'returned from finding the issuer
	ID=Session("shortnameID")
	stockId=Session("stockId")
End If
If ID>0 Then
	rs.Open "SELECT stockCode,stockExID,shortName,fromDate,toDate,useDate FROM ccass.shortnames WHERE isNull(issueID) AND ID="&ID,con
	If rs.EOF Then
		'prevent resubmit adding a duplicate issue
		hint=hint&"The issue has already been added"
		ID=0
	Else
		sc=rs("stockCode")
		shortName=rs("shortName")
		If right(shortName,4)=" RTS" Then typeID=2 
	    exch = rs("stockExID")
	    firstTrade = rs("fromDate")
	    delist = rs("toDate")
	    If IsNull(delist) Then finalTrade=Null Else finalTrade=rs("useDate")		
	End If
	rs.Close
End If

If ID>0 And p=0 Then stockId=GetStockId(sc,shortName) 'for documents

If ID>0 And p>0 Then
	orgName=fnameOrg(p)
    If submit="Add" Then
	    typeStr = con.Execute("SELECT typeLong FROM secTypes WHERE typeID=" & typeID).Fields(0)
	    hint=hint&"Are you sure you want to add stock code: " & sc & " with security type " & typeStr & " to issuer "&orgName&"?"
	ElseIf submit="CONFIRM ADD" Then
        con.Execute "INSERT INTO issue(issuer,typeID)" & valsql(Array(p,typeID))
        i = lastID(con)
        hint=hint&"Issue added. "
        con.Execute "INSERT INTO stocklistings(issueID,stockCode,stockExID,FirstTradeDate,FinalTradeDate,DelistDate)" &_
        	valsql(Array(i,sc,exch,firstTrade,finalTrade,delist))
        slID = lastID(con)
        con.Execute "UPDATE ccass.shortnames" & setsql("issueID",Array(i)) & "ID=" & ID
        hint=hint&"Listing added. "
        If typeID = 2 Then
            'rights issue
            'find the issueID of the listed ord
            rs.Open "SELECT * FROM HKlistedOrdsNow WHERE issuer=" & p, con
            If rs.EOF Then
                hint=hint & "Cannot find the ordinary share. Please enter the acceptance deadline as the expiry date, " & _
                    "and the trading currency of the rights issue."
            Else
                'find the currency of ordinary share trading
                ordID = rs("IssueID")
                rs.Close
                rs.Open "SELECT * FROM issue WHERE ID1=" & ordID, con
                If IsNull(rs("SEHKcurr")) Then SEHKcurr = 0 Else SEHKcurr = rs("SEHKcurr")
                con.Execute "UPDATE issue" & setsql("SEHKcurr",Array(SEHKcurr)) & "ID1=" & i
                'find the rights issue event
                rs.Close
                rs.Open "SELECT * FROM events WHERE eventType=2 AND issueID=" & ordID & _
                    " AND acceptDate>'" & MSdate(firstTrade) & "' LIMIT 1", con
                If rs.EOF Then
                    hint=hint & "Can't find the rights issue event. Please enter the acceptance deadline as the expiry date of the rights issue. "
                Else
                    con.Execute "UPDATE issue" & setsql("expmat",Array(rs("acceptDate"))) & "ID1=" & i
                End If
            End If
            rs.Close
        Else
            If typeID = 5 Then
                'preference share
                Call GetHKEXoneStock(slID)
            Else
                Call GetBond(slID)
            End If
            If stockId<>"" Then con.Execute "UPDATE stocklistings" & setsql("stockId",Array(stockId)) & "ID=" & slID
        End If
		con.Execute "INSERT INTO ccass.quotes(issueID,atDate,prevClose,closing,ask,bid,high,low,vol,turn,susp,newsusp,noclose) "&_
			"SELECT " & i & ",atDate,prevClose,closing,ask,bid,high,low,vol,turn,susp,newsusp,noclose FROM ccass.unquotes "&_
			"WHERE stockCode="&sc
		con.Execute "DELETE FROM ccass.unquotes WHERE stockCode="&sc
		hint=hint&"Quotes added. "
    End If
End If
Session("shortnameID")=ID
Session("stockId")=stockId
title="SEHK stocks without an issueID"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If ID>0 Then%>
	<h3>Record details</h3>
	<p>Find the correct issuer, check the security type, then add to listings. Price history will be inserted. </p>
	<form method="post" action="shortnames.asp">
		<input type="hidden" name="ID" value="<%=ID%>">
		<input type="hidden" name="stockId" value="<%=stockId%>">
		<table class="txtable">
			<tr>
				<td>Stock code</td>
				<td><%=sc%></td>
			</tr>
			<tr>
				<td>Short name</td>
				<td><%=shortName%></td>
			</tr>
			<tr>
				<td>Documents on HKEX:</td>
				<td><%If stockId="" Then
					Response.Write "Not found"
				Else%>
					<a target="_blank" href="https://www1.hkexnews.hk/search/titlesearch.xhtml?category=0&lang=EN&market=SEHK&stockId=<%=stockId%>">Click here</a>
				<%End If%>
				</td>
			</tr>
			<tr>
				<td>Listed</td>
				<td><%=MSdate(firstTrade)%></td>
			</tr>
			<tr>
				<td>Final trading</td>
				<td><%=MSdate(finalTrade)%></td>
			</tr>
			<tr>
				<td>Delisted</td>
				<td><%=MSdate(delist)%></td>
			</tr>	
			<tr>
				<td><a href="searchorgs.asp?tv=p">Find issuer</a></td>
				<td>
					<%If p>0 Then%>
						<input type="hidden" name="p" value="<%=p%>">
						<%=orgName%>
					<%End If%>
				</td>
			</tr>
			<tr>
				<td>Security type</td>
				<td><%=ArrSelect("typeID",typeID,con.Execute("SELECT typeID,typeLong FROM sectypes WHERE typeID IN(2,5,40,41,46)").GetRows,False)%></td>
			</tr>
		</table>
		<%If p>0 And i=0 Then%>
			<%If submit="Add" Then%>
				<input type="submit" name="submitSN" style="color:red" value="CONFIRM ADD">
			<%Else%>
				<input type="submit" name="submitSN" value="Add">
			<%End If%>
		<%End If%>
	</form>
	<form method="post" action="shortnames.asp">
		<input type="hidden" name="ID" value="<%=ID%>">
		<input type="hidden" name="stockId" value="<%=stockId%>">
		Find issuer using stock code of existing listing:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
	</form>	
	<p><b><%=hint%></b></p>
	<%If slID>0 Then
		'we just added the issue and listing%>
		<p><a target="_blank" href="issue.asp?i=<%=i%>">See the issue</a></p>
		<p><a target="_blank" href="listing.asp?ID=<%=slID%>">See the listing</a></p>
		<p><a target="_blank" href="https://webb-site.com/dbpub/hpu.asp?i=<%=i%>">See the quotes</a></p>
	<%End If%>
<%End If%>
<h3><%=title%></h3>
<%rs.Open "SELECT ID,stockCode,shortName,fromDate,toDate,useDate FROM ccass.shortnames WHERE fromDate>'2014-05-02' AND isNull(issueID) AND shortName NOT LIKE 'EFN%'",con
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<table class="txtable">
		<tr>
			<th>Stock<br>code</th>
			<th>Short name</th>
			<th>From date</th>
			<th>Last used</th>
			<th>To date</th>
			<th></th>
		</tr>
	<%Do Until rs.EOF%>
		<tr>
			<td><%=rs("stockCode")%></td>
			<td><%=rs("shortName")%></td>
			<td><%=MSdate(rs("fromDate"))%></td>
			<td><%=MSdate(rs("useDate"))%></td>
			<td><%=MSdate(rs("toDate"))%></td>
			<td><a href="shortnames.asp?ID=<%=rs("ID")%>">Select</a></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
