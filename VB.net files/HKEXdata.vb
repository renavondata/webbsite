Option Compare Text
Option Explicit On
Imports System.Net
Imports JSONkit
Imports ScraperKit

Public Module HKEXdata
    Sub Main()
        Call GetStockIds(False) 'listed stocks
        Call GetStockIds(True) 'delisted stocks
        Call GetHKEXequities()
        Call GetHKEXbonds()
    End Sub
    Sub GetStockIds(delisted As Boolean)
        'collect the internal stockId of each stock, used by HKEX to link to the issuer news page
        'new version 2025-07-21 uses issue.typeID to exclude rights/warrants rather than looking for shortname extensions -RTS -Wyymm
        'because sometimes the shortname excludes a leading hyphen when the shortname would be too long
        On Error GoTo repErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            r, s, sc, sn, sql, URL, fname, arr() As String,
            x, stockId As Integer,
            cookies As New CookieCollection
        Call OpenEnigma(con)
        'Fetch the cookies
        r = GetWeb3("https://www.hkexnews.hk/index.htm", cookies)
        sql = "SELECT sl.ID,sl.issueID,sl.stockCode sc,shortName sn FROM stocklistings sl JOIN (ccass.shortNames sn,issue i)" &
            "ON sl.issueID=sn.issueID AND sl.issueID=i.ID1 AND (sl.stockExID=sn.stockExID OR sl.stockExID IN(22,23,38,71))"
        URL = "https://www1.hkexnews.hk/search/prefix.do?callback=callback&lang=EN&market=SEHK&type="
        If delisted Then
            URL &= "I"
            'omitting 2 stocks delisted by 2009-04-16 which never had any news announcement
            sql &= " AND sl.DelistDate=sn.toDate WHERE sn.toDate>'2009-04-16'"
        Else
            URL &= "A"
            sql &= " WHERE (isNull(sl.DelistDate) OR sl.DelistDate>CURDATE()) AND isNull(sn.toDate)"
        End If
        'exclude subscription warrants and rights issues
        rs.Open(sql & " AND i.typeID NOT IN(1,2) AND ISNULL(stockId) ORDER BY sc", con)
        Do Until rs.EOF
            sc = Right("0000" & rs("sc").Value.ToString, 5)
            sn = rs("sn").Value.ToString
            Console.WriteLine("Fetching:" & sc & vbTab & sn)
            Do
                r = GetWeb3(URL & "&name=" & Replace(sn, "&", "%26") & "&_=" & Unixmillis(), cookies)
                If r <> "" Then Exit Do
                Call WaitNSec(120) 'possible block
            Loop
            'strip out the JSON package
            r = Mid(r, InStr(r, "{"))
            r = Left(r, InStrRev(r, "}"))
            'get the array of returned listings
            r = GetVal(r, "stockInfo")
            arr = ReadArray(r)
            For Each s In arr
                fname = Replace(Replace(GetVal(s, "name"), "\u0027", "'"), "\u0026", "&")
                If GetVal(s, "code") = sc And fname = sn Then
                    stockId = CInt(GetVal(s, "stockId"))
                    Console.WriteLine("stockId:" & stockId)
                    con.Execute("UPDATE stocklistings SET stockId=" & stockId & " WHERE ID=" & rs("ID").Value.ToString)
                    Exit For
                End If
            Next
            'throttle to avoid block
            Call WaitNSec(0.25)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetStockIds failed at stock code " & sc & " " & sn, Err, "delisted: " & delisted)
    End Sub
    Function GetHKEXjson(ByRef token As String, ByRef cookies As CookieCollection, sc As String, Optional lang As String = "eng") As String
        'specify lang="chi" to get Chinese names etc.
        Dim x As Integer,
            r, URL As String
        URL = "https://www1.hkex.com.hk/hkexwidget/data/getequityquote?lang=" & lang & "&callback=j&qid=1&token="
        Do
            r = GetWeb3(URL & token & "&sym=" & CInt(sc) & "&_=" & UnixTimestamp(), cookies)
            If r <> "" Then Exit Do
            x += 1
            Call WaitNSec(5)
            cookies = New CookieCollection
            token = HKEXtoken(cookies)
        Loop
        If r <> "" Then r = Mid(r, 2)
        Return r
    End Function
    Sub GetHKEXoneStock(slID As Integer)
        'update the database for a single non-debt security using HKEX JSON data
        Dim token As String, cookies As New CookieCollection
        token = HKEXtoken(cookies)
        Call GetHKEXequityCore(slID, token, cookies)
    End Sub
    Sub GetHKEXequityCore(slID As Integer, ByRef token As String, ByRef cookies As CookieCollection)
        'update details for one equity stock using HKEX JSON data. slID is the ID from stocklistings table
        On Error GoTo RepErr
        'gets pre-adjusted shares during bonus issues, open offers and rights issues
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            r, s, t, sc, domStr As String,
            issuer, issueID, issue2, BoardLot, y, z, typeID As Integer,
            amount, os, WVRos, price, rights As Double,
            blnFound, blnAdj, wvr As Boolean,
            atDate, priceDate As Date
        Call OpenEnigma(con)
        rs.Open("SELECT stockCode,issueID,typeID,issuer,sedol,isin FROM stocklistings s JOIN issue i ON s.issueID=i.ID1 WHERE s.ID=" & slID, con)
        issuer = CInt(rs("issuer").Value)
        wvr = False
        sc = CStr(rs("stockCode").Value)
        typeID = CByte(rs("typeID").Value)
        issueID = CInt(rs("IssueID").Value)
        blnFound = False
        blnAdj = False
        r = GetHKEXjson(token, cookies, sc)
        r = GetItem(r, "data.quote")
        If IsDBNull(rs("sedol").Value) Then
            s = GetVal(r, "sedol")
            If s <> "null" And s <> "" Then
                con.Execute("UPDATE stocklistings Set sedol='" & s & "' WHERE ID=" & slID)
                Console.WriteLine("SEDOL: " & s)
            End If
        End If
        'ISIN is different for dual-counter stocks, e.g. 0737 and 80737 (HKD/CNY), so this is a field in the stocklistings table
        If IsDBNull(rs("isin").Value) Then
            s = GetVal(r, "isin")
            If s <> "null" And s <> "" Then
                con.Execute("UPDATE stocklistings SET isin='" & s & "' WHERE ID=" & slID)
                Console.WriteLine("ISIN:" & s)
            End If
        End If
        If typeID = 1 Then 'warrant
            'value of "ew_amt_os" should return $ amount outstanding
            'value of "strike_price" contains exercise price
            s = GetVal(r, "ew_amt_os")
            If s <> "" Then
                amount = CDbl(s)
                s = GetVal(r, "strike_price")
                If s <> "" Then
                    rights = CDbl(s)
                    os = Int(0.5 + amount / rights)
                    blnFound = True
                    atDate = CDate(GetVal(r, "ew_amt_os_dat"))
                End If
            End If
        Else
            s = GetVal(r, "class_A_description")
            If s = "null" Then
                'not a WVR issuer, or this is Swire Pacific A/B which HKEX doesn't count as a WVR issuer
                'or this is a -W-H issuer where HKEX does not disclose the unlisted class
                s = GetVal(r, "amt_os")
                If s = "null" Or s = "" Then os = 0 Else os = CDbl(s)
            Else
                wvr = True
                If InStr(s, "weighted") = 0 Then
                    s = GetVal(r, "issued_shares_class_A")
                    If s = "null" Or s = "" Then os = 0 Else os = CDbl(s)
                    s = GetVal(r, "issued_shares_class_B")
                    If s = "null" Or s = "" Then WVRos = 0 Else WVRos = CDbl(s)
                Else
                    'we've got the unlisted class with higher votes
                    s = GetVal(r, "issued_shares_class_A")
                    If s = "null" Or s = "" Then WVRos = 0 Else WVRos = CDbl(s)
                    s = GetVal(r, "issued_shares_class_B")
                    If s = "null" Or s = "" Then os = 0 Else os = CDbl(s)
                End If
            End If
            If os > 0 Then
                atDate = CDate(GetVal(r, "shares_issued_date"))
                blnFound = True
                s = GetVal(r, "issued_shares_note")
                If s <> "null" Then
                    'get the actual shares from the note, ignore adjusted shares
                    blnAdj = True
                    y = InStr(s, "before the adjustment")
                    If y > 0 Then
                        t = FindNum(Mid(s, y))
                        If t <> "" Then
                            os = CDbl(t)
                            y = InStr(y, s, "As at") + 5
                            z = Len(s)
                            'due to risk of typos in the note, this shortens the text until it is a date
                            s = Replace(CleanStr(Mid(s, y, z - y + 1)), ".", "")
                            Do Until IsDate(s) Or s = ""
                                s = Left(s, Len(s) - 1)
                            Loop
                            If s <> "" Then atDate = CDate(s) Else atDate = Today
                        End If
                    End If
                End If
            End If
        End If
        If blnFound Then
            With rs2
                .Open("Select * FROM issuedshares WHERE issueID=" & issueID & " AND atDate=" & Sqv(atDate), con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If .EOF Then
                    .AddNew()
                    rs2("IssueID").Value = issueID
                    rs2("atDate").Value = atDate
                    rs2("Outstanding").Value = os
                    .Update()
                ElseIf CDbl(.Fields("Outstanding").Value) <> os Then
                    rs2("Outstanding").Value = os
                    .Update()
                End If
                .Close()
                If wvr Then
                    'update the WVR class if we can find it - should be tagged in issue table as HKEXwvr
                    issue2 = CInt(con.Execute("SELECT IFNULL((SELECT ID1 FROM issue WHERE issuer=" & issuer & " AND HKEXwvr),0)").Fields(0).Value)
                    If issue2 > 0 Then
                        .Open("Select * FROM issuedshares WHERE issueID=" & issue2 & " AND atDate=" & Sqv(atDate), con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If .EOF Then
                            .AddNew()
                            rs2("IssueID").Value = issue2
                            rs2("atDate").Value = atDate
                            rs2("Outstanding").Value = WVRos
                            .Update()
                        ElseIf CDbl(rs2("Outstanding").Value) <> WVRos Then
                            rs2("Outstanding").Value = WVRos
                            .Update()
                        End If
                        .Close()
                    End If
                End If
            End With
        End If
        With rs2
            .Open("SELECT * FROM HKExData WHERE issueID=" & issueID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If .EOF Then
                .AddNew()
                rs2("IssueID").Value = issueID
            End If
            rs2("stockCode").Value = sc
            domStr = GetVal(r, "incorpin")
            If domStr = "null" Or domStr = "" Then domStr = GetVal(r, "domicile_country")
            If domStr <> "null" And domStr <> "" Then rs2("Domicile").Value = domStr
            s = GetVal(r, "lot")
            If s <> "" Then
                BoardLot = CInt(s)
                If IsDBNull(rs2("BoardLot").Value) Then
                    rs2("BoardLot").Value = BoardLot
                ElseIf CInt(rs2("BoardLot").Value) = 0 Then
                    rs2("BoardLot").Value = BoardLot
                ElseIf CInt(rs2("BoardLot").Value) <> BoardLot Then
                    'NB this will not capture the lot size of the temporary counter in consolidations, so we will have to do that manually
                    con.Execute("INSERT IGNORE INTO oldlots (issueID,until,lot)" & Valsql({issueID, Today, rs2("BoardLot").Value}))
                    rs2("BoardLot").Value = BoardLot
                End If
            End If
            s = GetVal(r, "updatetime") 'may be empty for suspended stocks
            If s <> "" Then
                priceDate = CDate(s)
                s = GetVal(r, "ls")
                If s <> "" Then
                    price = CDbl(s)
                    If price > 0 Then
                        rs2("nomPrice").Value = price
                        rs2("priceDate").Value = priceDate
                    End If
                End If
            End If
            .Update()
            .Close()
        End With
        Console.WriteLine(sc & vbTab & issueID & vbTab & atDate & vbTab & os & vbTab & BoardLot & vbTab & priceDate & vbTab & price & vbTab & domStr)
        rs.Close()
        con.Close()
        rs = Nothing
        rs2 = Nothing
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetHKEXequityCore failed at stock code " & sc, Err)
    End Sub
    Sub GetHKEXequities()
        'New version to properly handle the mess caused by second-class shares
        'gets pre-adjusted shares during bonus issues, open offers and rights issues
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, cookies As New CookieCollection,
            token As String,
            ID As Integer
        Call OpenEnigma(con)
        rs.Open("SELECT s.ID FROM stocklistings s JOIN issue i " &
            "ON s.issueID=i.ID1 " &
            "WHERE stockExID IN (1, 20, 22, 23, 38, 71) " &
            "And typeID Not In (2,40,41,46) " &
            "And (isNull(firstTradeDate) Or firstTradeDate<=NOW()) " &
            "And (isNull(deListDate) Or delistDate>NOW()) " &
            "ORDER BY stockCode", con)
        token = HKEXtoken(cookies)
        Do Until rs.EOF
            ID = CInt(rs("ID").Value)
            Call GetHKEXequityCore(ID, token, cookies)
            rs.MoveNext()
            Call WaitNSec(0.25)
        Loop
        rs.Close()
        'set orgType of companies with primary or secondary HK-listed shares (not just bonds) to listed
        con.Execute("UPDATE stocklistings s JOIN (issue i, organisations o) ON s.issueID=i.ID1 AND i.issuer=o.personID SET orgType=22 WHERE " &
            "(isNull(FirstTradeDate) OR FirstTradeDate>=CURDATE()) AND (isNull(delistDate) Or delistDate>CURDATE()) " &
            "AND stockExID IN(1,20,22) AND i.typeID NOT IN(1,2,40,41,46) AND orgType<>22;")
        con.Close()
        con = Nothing
        Console.WriteLine("HKEX stock data done")
        Exit Sub
    End Sub
    Sub GetHKEXequitiesOLD()
        'OBSOLETE 2025-07-13
        On Error GoTo RepErr
        'gets pre-adjusted shares during bonus issues, open offers and rights issues
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            cookies As New CookieCollection,
            r, s, t, sc, token, domStr As String,
            ID, issueID, issue2, BoardLot, y, z, typeID As Integer,
            amount, os, price, rights As Double,
            blnFound, blnAdj, wvr As Boolean,
            atDate, priceDate As Date
        Call OpenEnigma(con)
        rs.Open("SELECT ID,stockCode,issueID,typeID,issuer,sedol,isin FROM stocklistings JOIN issue " &
            "ON stocklistings.issueID=issue.ID1 " &
            "WHERE stockExID IN (1, 20, 22, 23, 38, 71) " &
            "And typeID Not In (2,40,41,46) " &
            "And (isNull(firstTradeDate) Or firstTradeDate<=NOW()) " &
            "And (isNull(deListDate) Or delistDate>NOW()) " &
            "ORDER BY stockCode", con)
        token = HKEXtoken(cookies)
        Do Until rs.EOF
            ID = CInt(rs("ID").Value)
            wvr = False
            sc = CStr(rs("stockCode").Value)
            typeID = CByte(rs("typeID").Value)
            issueID = CInt(rs("IssueID").Value)
            blnFound = False
            blnAdj = False
            r = GetHKEXjson(token, cookies, sc)
            r = GetItem(r, "data.quote")
            If IsDBNull(rs("sedol").Value) Then
                s = GetVal(r, "sedol")
                If s <> "null" And s <> "" Then
                    con.Execute("UPDATE stocklistings" & Setsql("sedol", {s}) & "ID=" & ID)
                    Console.WriteLine("SEDOL: " & s)
                End If
            End If
            'ISIN is different for dual-counter stocks, e.g. 0737 and 80737 (HKD/CNY), so this is a field in the stocklistings table
            If IsDBNull(rs("isin").Value) Then
                s = GetVal(r, "isin")
                If s <> "null" And s <> "" Then
                    con.Execute("UPDATE stocklistings" & Setsql("isin=", {s}) & "ID=" & ID)
                    Console.WriteLine("ISIN:" & s)
                End If
            End If
            If typeID = 1 Then 'warrant
                'value of "ew_amt_os" should return $ amount outstanding
                'value of "strike_price" contains exercise price
                s = GetVal(r, "ew_amt_os")
                If s <> "" Then
                    amount = CDbl(s)
                    s = GetVal(r, "strike_price")
                    If s <> "" Then
                        rights = CDbl(s)
                        os = Int(0.5 + amount / rights)
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
                            t = FindNum(Mid(s, y))
                            If t <> "" Then
                                os = CDbl(t)
                                y = InStr(y, s, "As at") + 5
                                z = Len(s)
                                'due to risk of typos in the note, this shortens the text until it is a date
                                s = Replace(CleanStr(Mid(s, y, z - y + 1)), ".", "")
                                Do Until IsDate(s) Or s = ""
                                    s = Left(s, Len(s) - 1)
                                Loop
                                If s <> "" Then atDate = CDate(s) Else atDate = Today
                            End If
                        End If
                    End If
                End If
            End If
            If blnFound Then
                With rs2
                    .Open("Select * FROM issuedshares WHERE issueID= " & issueID & " And atDate ='" & MSdate(atDate) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If .EOF Then
                        .AddNew()
                        rs2("IssueID").Value = issueID
                        rs2("atDate").Value = atDate
                        rs2("Outstanding").Value = os
                        .Update()
                    ElseIf CDbl(.Fields("Outstanding").Value) <> os Then
                        rs2("Outstanding").Value = os
                        .Update()
                    End If
                    .Close()
                    If wvr Then
                        If typeID = 7 Then
                            s = GetVal(r, "issued_shares_class_B")
                        Else
                            s = GetVal(r, "issued_shares_class_A")
                        End If
                        typeID = 15 - typeID 'swap 7 and 8
                        os = CDbl(s)
                        .Open("SELECT * FROM issue WHERE issuer=" & rs("issuer").Value.ToString & " AND typeID=" & typeID, con)
                        If Not .EOF Then
                            'update the other class
                            issue2 = CInt(rs2("ID1").Value)
                            .Close()
                            .Open("Select * FROM issuedshares WHERE issueID= " & issue2 & " AND atDate=" & Sqv(atDate), con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                            If .EOF Then
                                .AddNew()
                                rs2("IssueID").Value = issue2
                                rs2("atDate").Value = atDate
                                rs2("Outstanding").Value = os
                                .Update()
                            ElseIf CDbl(.Fields("Outstanding").Value) <> os Then
                                rs2("Outstanding").Value = os
                                .Update()
                            End If
                            Console.WriteLine("Heavy class:" & issue2 & vbTab & "Outstanding:" & os)
                        End If
                        .Close()
                    End If
                End With
            End If
            With rs2
                .Open("SELECT * FROM HKExData WHERE issueID=" & issueID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If .EOF Then
                    .AddNew()
                    rs2("IssueID").Value = issueID
                End If
                rs2("stockCode").Value = sc
                domStr = GetVal(r, "incorpin")
                If domStr = "null" Then domStr = GetVal(r, "domicile_country")
                If domStr <> "null" Then rs2("Domicile").Value = domStr
                s = GetVal(r, "lot")
                If s <> "" Then
                    BoardLot = CInt(s)
                    If IsDBNull(rs2("BoardLot").Value) Then
                        rs2("BoardLot").Value = BoardLot
                    ElseIf CInt(rs2("BoardLot").Value) = 0 Then
                        rs2("BoardLot").Value = BoardLot
                    ElseIf CInt(rs2("BoardLot").Value) <> BoardLot Then
                        'NB this will not capture the lot size of the temporary counter in consolidations, so we will have to do that manually
                        con.Execute("INSERT IGNORE INTO oldlots (issueID,until,lot)" & Valsql({issueID, Today, rs2("BoardLot").Value}))
                        rs2("BoardLot").Value = BoardLot
                    End If
                End If
                s = GetVal(r, "updatetime") 'may be empty for suspended stocks
                If s <> "" Then
                    priceDate = CDate(s)
                    s = GetVal(r, "ls")
                    If s <> "" Then
                        price = CDbl(s)
                        If price > 0 Then
                            rs2("nomPrice").Value = price
                            rs2("priceDate").Value = priceDate
                        End If
                    End If
                End If
                .Update()
                .Close()
            End With
            Console.WriteLine(sc & vbTab & issueID & vbTab & atDate & vbTab & os & vbTab & BoardLot & vbTab & priceDate & vbTab & price & vbTab & domStr)
            rs.MoveNext()
            Call WaitNSec(0.25)
        Loop
        rs.Close()
        'set orgType of companies with primary or secondary HK-listed shares (not just bonds) to listed
        con.Execute("UPDATE stocklistings s JOIN (issue i, organisations o) ON s.issueID=i.ID1 AND i.issuer=o.personID SET orgType=22 WHERE " &
            "(isNull(FirstTradeDate) OR FirstTradeDate>=CURDATE()) AND (isNull(delistDate) Or delistDate>CURDATE()) " &
            "AND stockExID IN(1,20,22) AND i.typeID NOT IN(1,2,40,41,46) AND orgType<>22;")
        con.Close()
        rs = Nothing
        rs2 = Nothing
        con = Nothing
        Console.WriteLine("HKEX stock data done")
        Exit Sub
RepErr:
        Call ErrMail("GetHKEXequities failed at stock code " & sc, Err)
    End Sub
    Function FindNum(s As String) As String
        'returns the first number in the string, or if none is found, an empty string
        Dim x As Integer, txt As String
        s = Replace(s, ",", "")
        For x = 1 To Len(s)
            If IsNumeric(Mid(s, x, 1)) Then Exit For
        Next
        If x > Len(s) Then
            'no numbers found
            FindNum = ""
        Else
            s = Mid(s, x)
            For x = 1 To Len(s)
                txt = Mid(s, x, 1)
                If (Not (IsNumeric(txt)) And txt <> ".") Then Exit For
            Next
            FindNum = Left(s, x - 1)
        End If
    End Function
    Sub GetHKEXbonds()
        On Error GoTo repErr
        'update all listed bonds from HKEX web site
        Dim token As String, slID As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset,
            cookies As New CookieCollection
        Call OpenEnigma(con)
        rs.Open("SELECT sl.ID FROM " &
            "stockListings sl JOIN issue i ON sl.issueID=i.ID1 " &
            "WHERE ((FirstTradeDate <= Now()) Or (FirstTradeDate Is Null)) " &
            "AND ((delistDate>Now()) OR (delistDate Is Null)) " &
            "AND typeID IN(40,41,46) AND stockExID IN(1,20) ORDER BY stockCode", con)
        token = HKEXtoken(cookies)
        Do Until rs.EOF
            slID = CInt(rs("ID").Value)
            Call FetchBond(slID, token, cookies)
            rs.MoveNext()
            Console.WriteLine()
            Call WaitNSec(0.25)
        Loop
        rs.Close()
        con.Close()
        con = Nothing
        Console.WriteLine("Bonds done!")
        Exit Sub
repErr:
        Call ErrMail("HKEXbonds failed", Err, "Stocklisting ID:" & slID)
    End Sub

    Sub FetchBond(slID As Integer, ByRef token As String, ByRef cookies As CookieCollection)
        'get the details on one bond and update the database
        'slID=ID of stocklisting table
        'set the accurate maturity date for any bonds with an approximate date, from HKEX web site
        'set the trading currency if we have the incorrect currency. leave null if HKD
        'record the outstanding amount and "last update" if it has changed
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset
        Dim r As String = "",
            s, sc As String,
            listDate, matDate As Date,
            currID, issueID As Integer,
            os As Double
        Call OpenEnigma(con)
        With rs
            .Open("SELECT issueID,stockCode FROM stocklistings WHERE ID=" & slID, con)
            issueID = CInt(rs("issueID").Value)
            sc = rs("stockCode").Value.ToString
            Console.WriteLine("Stock code: " & sc)
            Console.WriteLine("issueID: " & issueID)
            .Close()
            r = GetHKEXjson(token, cookies, sc)
            r = GetVal(GetVal(r, "data"), "quote")
            .Open("SELECT * FROM issue WHERE ID1=" & issueID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            s = GetVal(r, "expiry_date")
            If s <> "" Then
                matDate = CDate(s)
                If (Not IsDBNull(rs("expAcc").Value)) Or matDate <> DBdate(rs("expmat")) Then
                    rs("expmat").Value = matDate
                    rs("expAcc").Value = DBNull.Value
                End If
                Console.WriteLine("Expiry: " & matDate)
            End If
            s = GetVal(r, "ccy")
            If s = "RMB" Then s = "CNY" 'this may not be a problem anymore
            Console.WriteLine("Currency: " & s)
            If s <> "" Then
                rs2.Open("SELECT ID FROM currencies WHERE currency='" & s & "'", con)
                If rs2.EOF Then
                    Console.WriteLine("Currency not found: " & s)
                Else
                    currID = CInt(rs2("ID").Value)
                    rs("SEHKcurr").Value = currID
                    Console.WriteLine("Currency ID: " & currID)
                End If
                rs2.Close()
            End If
            s = GetVal(r, "coupon")
            If s = "" Then s = "0"
            rs("coupon").Value = s
            s = GetVal(r, "nm")
            If InStr(r, " FR ") > 0 Then
                'sometimes HKEX doesn't set the floating_flag correctly, so check the name first
                rs("floating").Value = True
            Else
                s = GetVal(r, "floating_flag")
                If s <> "null" And s <> "" Then rs("floating").Value = s
            End If
            .Update()
            .Close()
            'get listing date from DB or from page
            .Open("SELECT * FROM stockListings WHERE ID=" & slID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If IsDBNull(rs("FirstTradeDate").Value) Then
                s = GetVal(r, "listing_date")
                If s <> "" Then
                    listDate = CDate(s)
                    rs("FirstTradeDate").Value = listDate
                    Console.WriteLine("Added listing date: " & listDate)
                End If
            Else
                listDate = CDate(rs("FirstTradeDate").Value)
            End If
            If IsDBNull(rs("sedol").Value) Then
                s = GetVal(r, "sedol")
                If s <> "null" And s <> "" Then
                    rs("sedol").Value = s
                    Console.WriteLine("SEDOL: " & s)
                End If
            End If
            If IsDBNull(rs("isin").Value) Then
                s = GetVal(r, "isin")
                If s <> "null" And s <> "" Then
                    rs("isin").Value = s
                    Console.WriteLine("ISIN:" & s)
                End If
            End If
            .Update()
            Console.WriteLine("Listing date: " & listDate)
            .Close()
            s = GetVal(r, "amt_os")
            If s <> "" Then
                os = CDbl(s)
                .Open("SELECT * FROM issuedshares WHERE issueID=" & issueID & " ORDER BY atDate DESC LIMIT 1", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If .EOF Then
                    'no initial outstanding amount. Use the listing date for initial issue
                    .AddNew()
                    rs("IssueID").Value = issueID
                    rs("atDate").Value = listDate
                    rs("Outstanding").Value = os
                    Console.WriteLine("Outstanding at listing: " & os & vbTab & listDate)
                Else
                    If CDbl(rs("Outstanding").Value) <> os Then
                        's = GetVal(r, "shares_issued_date")
                        'that date is bogus - it is the day before the listing date
                        con.Execute("REPLACE INTO issuedshares (issueID,atDate,outstanding) VALUES (" & issueID & ",CURDATE()," & os & ")")
                        Console.WriteLine("Changed outstanding: " & os)
                    End If
                End If
                .Update()
                .Close()
            End If
        End With
        rs = Nothing
        rs2 = Nothing
        con.Close()
        con = Nothing
    End Sub

End Module
