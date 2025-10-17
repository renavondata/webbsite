Imports System.Net
Imports ScraperKit
Imports JSONkit
Module CCASS
    Sub Main()
        'Call MakeSettle(CDate("2022-01-01"), CDate("2025-12-31"))
        'Call RebuildHist(33358, CDate("2024-10-30"), CDate("2024-10-30"))
        'Call GetParticipants(CDate("2022-05-16"))
        'Console.ReadKey()
        Call GetCCASS()
    End Sub
    Sub GetCCASS(Optional resumeAt As String = "")
        '1-Apr-2019
        'automatic routine to bring CCASS up to date with one or more days of runs
        'in case of outage, it will pick up the next night and run 2 days worth
        'if resumeAt (a stock code) is specified, then on the first day, it will start at that point in the stocklist
        On Error GoTo RepErr
        Dim atDate As Date
        atDate = CDate(GetLog("CCASSdateDone")).AddDays(1)
        Do Until atDate = Today 'don't go beyond yesterday's CCASS data
            If NotHol(atDate) Then
                'must do quotes first to get temporary stock codes
                If atDate > CDate(GetLog("MBquotesDate")) Or atDate > CDate(GetLog("GEMquotesDate")) Then
                    Console.WriteLine("Aborting, quotes Not ready.")
                    Call SendMail("CCASS didn't update: missing quotes for " & MSdate(atDate), "")
                    Exit Do
                End If
                Call PutLog("CCASSstarted", CStr(Now()))
                Call GetAllHoldingsAtDate(atDate, resumeAt)
                resumeAt = ""
                Call BigChange(atDate)
                Call PutLog("CCASSended", CStr(Now()))
                Call PutLog("CCASSdateDone", MSdate(atDate))
            End If
            atDate = atDate.AddDays(1)
        Loop
        Console.WriteLine("CCASS update done!")
        Exit Sub
RepErr:
        Call ErrMail("CCASS failed", Err)
    End Sub
    Sub RebuildHist(IssueID As Integer, startDate As Date, Optional endDate As Date = Nothing)
        'use this to regenerate an entire history of one stock from chosen startDate
        'can't go back more than 1 year due to HKEx limit
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, cookies As New CookieCollection,
        Sql, ds, vs, vsGen, today As String,
            stockCode, tempCode, counters As Integer,
            selDate, fromDate, lastDate As Date
        If endDate = Nothing Then endDate = DateAndTime.Today.AddDays(-1)
        Console.WriteLine("Rebuilding CCASS history of issueID: " & IssueID)
        Console.WriteLine("Start date: " & startDate.ToShortDateString)
        Console.WriteLine("End date: " & endDate.ToShortDateString)
        Call OpenCCASS(con)
        con.CommandTimeout = 600 'seconds, overrides default 30
        con.CursorLocation = ADODB.CursorLocationEnum.adUseClient 'for find method and recordcount
        'purge existing records
        sql = " WHERE issueID=" & IssueID & " AND atDate>='" & MSdate(startDate) & "'"
        Console.WriteLine("Deleting from holdings")
        con.Execute("DELETE FROM holdings" & sql)
        Console.WriteLine("Deleting from parthold")
        con.Execute("DELETE FROM parthold" & sql)
        Console.WriteLine("Deleting from dailylog")
        con.Execute("DELETE FROM dailylog" & sql)
        selDate = startDate
        vs = ""
        vsGen = ""
        today = ""
        Do Until selDate > endDate
            If NotHol(selDate) Then
                ds = MSdate(selDate)
                Console.Write(ds & " ")
                sql = "SELECT stockCode FROM enigma.StockListings WHERE stockExID IN(1,20,22,23,38,71) AND issueID=" & IssueID &
                    " AND (isNull(firstTradeDate) Or FirstTradeDate<='" & ds & "') AND " &
                    "(isNull(delistDate) OR delistDate>'" & ds & "')"
                rs.Open(sql, con)
                If rs.EOF Then
                    Console.WriteLine("Can't find stock code")
                Else
                    stockCode = CInt(rs("stockCode").Value)
                    rs.Close()
                    sql = "SELECT * FROM shortNames WHERE issueID=" & IssueID &
                        " AND (isNull(fromDate) OR fromDate<='" & ds & "')" &
                        " AND (isNull(toDate) OR toDate>'" & ds & "')"
                    rs.Open(sql, con)
                    counters = rs.RecordCount
                    If counters = 1 Then
                        If CInt(rs("stockCode").Value) <> stockCode Then
                            'trading on temporary counter
                            Console.Write(" temporary counter ")
                            fromDate = CDate(rs("fromDate").Value)
                            lastDate = CDate(con.Execute("SELECT settleDate FROM calendar WHERE tradeDate<'" & MSdate(fromDate) & "' ORDER BY tradeDate DESC LIMIT 1").Fields(0).Value)
                            If selDate >= lastDate Then
                                stockCode = CInt(rs("stockCode").Value) 'use parallel counter for CCASS
                                Console.WriteLine(stockCode)
                            Else
                                Console.WriteLine(rs("stockCode").Value.ToString & " but still settling old code " & stockCode)
                            End If
                        Else
                            Console.WriteLine("code " & stockCode)
                        End If
                    ElseIf counters = 2 Then
                        Console.WriteLine("Parallel trading " & stockCode)
                        'parallel trading
                        fromDate = CDate(rs("fromDate").Value)
                        tempCode = CInt(rs("stockCode").Value)
                        If tempCode = stockCode Then
                            rs.MoveNext()
                            tempCode = CInt(rs("stockCode").Value)
                        End If
                        'is this a change of board lot (which has no settlement gap) or something else?
                        If CBool(con.Execute("SELECT COUNT(*) FROM shortnames WHERE issueID=" & IssueID & " AND stockCode=" & stockCode & " AND toDate='" & ds & "'").Fields(0).Value) Then
                            'was trading until previous day on original code, so this is a board lot change
                            Console.WriteLine(" board lot change. ")
                        Else
                            lastDate = CDate(con.Execute("SELECT settleDate FROM calendar WHERE tradeDate<'" & MSdate(fromDate) & "' ORDER BY tradeDate DESC LIMIT 1").Fields(0).Value)
                            If selDate < lastDate Then
                                stockCode = tempCode
                                Console.WriteLine("but still settling temporary code " & stockCode)
                            End If
                        End If
                    End If
                    Call FillSheet2(IssueID, stockCode, selDate, vs, vsGen, today, cookies)
                    'Call FillSheet(IssueID, stockCode, selDate)
                End If
                rs.Close()
            End If
            selDate = selDate.AddDays(1)
        Loop
        Console.WriteLine("Updating parthold")
        con.Execute("INSERT INTO parthold (partID,issueID,atDate,holding) SELECT partID,issueID,atDate,holding FROM holdings" &
            " WHERE atDate>='" & MSdate(startDate) & "' AND issueID=" & IssueID & " ORDER BY partID,atDate")
        con.Close()
        con = Nothing
        Console.WriteLine("Done!")
    End Sub
    Sub GetAllHoldingsAtDate(selDate As Date, Optional resumeAt As String = "")
        On Error GoTo repErr
        'resumeAt is stock code as shown in listings if we stoppped half-way
        'don't process if requested date is a public holiday
        If Not NotHol(selDate) Then Exit Sub
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            cookies As New CookieCollection,
            fromDate, lastDate As Date,
            ds, sql, vs, vsGen, today As String,
            stockCode, IssueID, tempCode, counters As Integer,
            startTime As Double
        'must do quotes first to get temporary stock codes
        If selDate > CDate(GetLog("MBquotesDate")) Or selDate > CDate(GetLog("GEMquotesDate")) Then
            Console.WriteLine("Aborting, quotes not ready.")
            Exit Sub
        End If
        Call OpenCCASS(con)
        con.CursorLocation = ADODB.CursorLocationEnum.adUseClient 'for find method and recordcount
        Call GetParticipants(selDate)
        ds = MSdate(selDate)
        Call RemoveDelist(ds)
        sql = ""
        If resumeAt <> "" Then sql = " AND stockCode>='" & resumeAt & "'" 'sorted as strings
        'from 2025-06-30, multi-counter stocks only have CCASS records in primary counter
        sql = "SELECT issueID,stockCode FROM enigma.StockListings JOIN enigma.issue ON stocklistings.IssueID=issue.ID1 WHERE " &
            "StockExID In (1,20,22,23,38,71) AND typeID Not In (2,5,40,41,46) AND (NOT 2ndctr) AND " &
            "(FirstTradeDate Is Null Or FirstTradeDate<='" & ds & "') AND " &
            "(DelistDate Is Null Or DelistDate>'" & ds & "')" & sql & " ORDER BY stockCode"
        rs.Open(sql, con)
        vs = ""
        vsGen = ""
        today = ""
        Do Until rs.EOF
            startTime = Timer
            IssueID = CInt(rs("IssueID").Value)
            stockCode = CInt(rs("stockCode").Value)
            Console.Write(TimeString & " Code:" & rs("stockCode").Value.ToString & " Issue:" & rs("IssueID").Value.ToString & " ")
            sql = "SELECT * FROM shortNames WHERE issueID=" & IssueID &
                " AND (isNull(fromDate) OR fromDate<='" & ds & "')" &
                " AND (isNull(toDate) OR toDate>'" & ds & "')"
            rs2.Open(sql, con)
            counters = rs2.RecordCount
            If counters = 1 Then
                If CInt(rs2("stockCode").Value) <> stockCode Then
                    'trading on temporary counter
                    Console.Write(" temporary counter ")
                    fromDate = CDate(rs2("fromDate").Value)
                    lastDate = CDate(con.Execute("SELECT settleDate FROM calendar WHERE tradeDate<'" & MSdate(fromDate) & "' ORDER BY tradeDate DESC LIMIT 1").Fields(0).Value)
                    If selDate >= lastDate Then
                        stockCode = CInt(rs2("stockCode").Value) 'use parallel counter for CCASS
                        Console.WriteLine(stockCode)
                    Else
                        Console.WriteLine(rs2("stockCode").Value.ToString & " but still settling old code " & stockCode)
                    End If
                End If
            ElseIf counters = 2 Then
                Console.WriteLine("Parallel trading " & stockCode)
                'parallel trading
                fromDate = CDate(rs2("fromDate").Value)
                tempCode = CInt(rs2("stockCode").Value)
                If tempCode = stockCode Then
                    rs2.MoveNext()
                    tempCode = CInt(rs2("stockCode").Value)
                End If
                'is this a change of board lot (which has no settlement gap) or something else?
                If CBool(con.Execute("SELECT COUNT(*) FROM shortnames WHERE issueID=" & IssueID & " AND stockCode=" & stockCode & " AND toDate='" & ds & "'").Fields(0).Value) Then
                    'was trading until previous day on original code, so this is a board lot change
                    Console.WriteLine(" board lot change. ")
                Else
                    lastDate = CDate(con.Execute("SELECT settleDate FROM calendar WHERE tradeDate<'" & MSdate(fromDate) & "' ORDER BY tradeDate DESC LIMIT 1").Fields(0).Value)
                    If selDate < lastDate Then
                        stockCode = tempCode
                        Console.WriteLine("but still settling temporary code " & stockCode)
                    End If
                End If
            End If
            rs2.Close()
            'Call FillSheet(IssueID, stockCode, selDate)
            Call FillSheet2(IssueID, stockCode, selDate, vs, vsGen, today, cookies)
            Console.WriteLine("seconds: " & (Timer - startTime))
            rs.MoveNext()
        Loop
        rs.Close()
        Console.WriteLine("Inserting today's changes into PartHold")
        con.Execute("INSERT IGNORE INTO parthold (partID,issueID,atDate,holding) SELECT partID,issueID,atDate,holding FROM holdings" &
                     " WHERE atDate='" & ds & "' ORDER BY partID,issueID")
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetAllHoldingsAtDate failed", Err, "issueID:" & IssueID & vbCrLf & "stockCode:" & stockCode)
    End Sub
    Sub GetParticipants(d As Date)
        'new version 2022-05-17 using JSON
        On Error GoTo repErr
        Dim r, s(), partName, CCASSID, OldName As String,
            x, partID, personID As Integer,
            oldDate As Date,
            con As New ADODB.Connection, rs As New ADODB.Recordset,
            cookies As New CookieCollection
        Call OpenCCASS(con)
        r = GetWeb3(GetLog("CCASSpartsURL") & Format(d, "yyyymmdd"), cookies)
        'r = GetWeb(GetLog("CCASSpartsURL") & Format(d, "yyyymmdd"))
        If r = "" Or r = "[]" Then
            Call SendMail("Could not fetch Participants table for " & MSdate(d))
            Exit Sub
        End If
        s = ReadArray(r)
        For x = 0 To UBound(s)
            CCASSID = GetVal(s(x), "c")
            partName = GetVal(s(x), "n")
            Console.WriteLine(CCASSID & vbTab & partName)
            If CCASSID <> "" Then
                rs.Open("SELECT * FROM participants WHERE CCASSID='" & CCASSID & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    Console.WriteLine("New: " & CCASSID & vbTab & partName)
                    rs.AddNew()
                    rs("CCASSID").Value = CCASSID
                    rs("partName").Value = partName
                    rs("addedDate").Value = d
                    rs("atDate").Value = d
                    'try to add the personID if name matches a HK co
                    personID = OrgIDhash(partName, 1)
                    If personID > 0 Then rs("PersonID").Value = personID
                    rs.Update()
                Else
                    OldName = Trim(rs("partName").Value.ToString)
                    oldDate = CDate(rs("atDate").Value)
                    If d > oldDate And partName <> OldName Then
                        partID = CInt(rs("partID").Value)
                        rs("atDate").Value = d
                        rs("partName").Value = partName
                        rs.Update()
                        con.Execute("INSERT INTO oldnames (oldName,dateChanged,partID) VALUES ('" & Apos(OldName) & "','" & MSdate(d) & "'," & partID & ")")
                        Console.WriteLine("Changed: " & CCASSID & vbTab & OldName & vbTab & partName)
                    End If
                End If
                rs.Close()
            End If
        Next
        con.Close()
        con = Nothing
        Console.WriteLine("GetParticipants Done!")
        Exit Sub
repErr:
        Call ErrMail("GetParticipants failed", Err, "CCASSID:" & CCASSID & vbCrLf & "partName:" & partName)
    End Sub
    Sub RemoveDelist(selDate As String)
        'selDate format "YYYY-M-D" e.g. Call RemoveDelist("2008-9-8")
        'when a stock is delisted with effect from 09:30, it is removed from CCASS that day
        'so we set any remaining holdings to zero on that day
        'don't do this for GEM listings moving up to main board (reasonID=2) or code changes (reasonID=11)
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenCCASS(con)
        rs.Open("SELECT * FROM enigma.stockListings WHERE " &
            "stockExID IN(1,20,22,23,38) AND " &
            "delistDate='" & selDate & "' AND reasonID NOT IN(2,11) ORDER BY stockCode", con)
        Do Until rs.EOF
            Console.WriteLine("Delisted issue ID:" & rs("IssueID").Value.ToString & vbTab & "stock code:" & rs("stockCode").Value.ToString)
            con.Execute("Call zerostock(" & rs("IssueID").Value.ToString & ",'" & selDate & "')")
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub TestGetOneSnapshot()
        Dim stockCode, issueID As Integer,
            r, vs, vsGen, today As String,
            selDate As Date,
            cookies As New CookieCollection
        stockCode = 0
        selDate = #2025-06-20#
        vs = ""
        vsGen = ""
        today = ""
        r = ""
        For Each issueID In {44, 63, 348, 1}
            stockCode += 1
            Console.WriteLine("Stock code " & stockCode & vbTab & "issueID " & issueID)
            Call GetOneSnapshot(issueID, stockCode, selDate, vs, vsGen, today, cookies, r)
            Console.WriteLine(r)
            Console.ReadKey()
        Next
    End Sub
    Sub GetOneSnapshot(issueID As Integer, stockCode As Integer, selDate As Date, ByRef vs As String, ByRef vsGen As String,
                       ByRef today As String, ByRef cookies As CookieCollection, ByRef r As String)
        'fetch CCASS page of a single stock in a single day
        Dim con As New ADODB.Connection,
            ds, post, txtDate, URL As String
        ds = MSdate(selDate)
        txtDate = Year(selDate) & "/" & Right("0" & Month(selDate), 2) & "/" & Right("0" & Day(selDate), 2)
        URL = GetLog("CCASSurl")
        Do
            If vs = "" Then
                Console.WriteLine("Visiting landing page")
                'no current viewstate, so go to landing page
                r = GetWeb3(URL, cookies)
                vs = URLencode(GetInput(r, "__VIEWSTATE"))
                vsGen = URLencode(GetInput(r, "__VIEWSTATEGENERATOR"))
                today = GetInput(r, "today")
            End If
            post = "__EVENTTARGET=btnSearch" &
                        "&__VIEWSTATE=" & vs &
                        "&__VIEWSTATEGENERATOR=" & vsGen &
                        "&today=" & today &
                        "&sortBy=shareholding" &
                        "&sortDirection=desc" &
                        "&txtShareholdingDate=" & txtDate &
                        "&txtStockCode=" & Right("0000" & stockCode, 5)
            On Error GoTo tryAgain
            r = PostWeb2(URL, post, cookies)
            On Error GoTo 0
            If InStr(r, "No match record") > 0 Then
                Console.WriteLine("Found stock but no summary or holdings")
                con = Nothing
                r = ""
                Exit Sub
            ElseIf InStr(r, "search-result-page") = 0 Then
                Console.WriteLine("Search did not return results")
                Call OpenCCASS(con)
                con.Execute("REPLACE INTO missing(atDate,issueID,stockCode)" & Valsql({ds, issueID, stockCode}))
                con.Close()
                con = Nothing
                r = ""
                Exit Sub
            End If
            If InStr(r, "System is under maintenance") = 0 Then Exit Do
            Console.WriteLine("Under maintenance " & vbTab & Now())
tryAgain:
            If Err.Number <> 0 Then Console.WriteLine(Err.Number & vbTab & Err.Description)
            vs = ""
            cookies = New CookieCollection
            Call WaitNSec(5)
        Loop
        vs = URLencode(GetInput(r, "__VIEWSTATE"))
        vsGen = URLencode(GetInput(r, "__VIEWSTATEGENERATOR"))
        today = GetInput(r, "today")
        con = Nothing
    End Sub
    Sub FillSheet2(issueID As Integer, stockCode As Integer, selDate As Date, ByRef vs As String, ByRef vsGen As String,
                   ByRef today As String, ByRef cookies As CookieCollection)
        'Update holdings of one issue on one date
        'Must use cumulatively, adding changes 1 day after the previous
        '2025-06-22 new version to maintain viewstate and cookies on repeat visits, avoids calling landing page every time
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            ds, tblCont, rowCont, cellCont, r, sumArr(2, 0), ha(2, 0), CCASSID, partName, holding As String,
            x, c, tblPos, rowPos, cellPos, rows, hu() As Integer
        Call OpenCCASS(con)
        ds = MSdate(selDate)
        rs.Open("SELECT Max(atDate) AS Latest FROM dailylog WHERE IssueID=" & issueID, con)
        If Not IsDBNull(rs("latest").Value) Then
            If CDate(rs("latest").Value) > selDate Then
                Console.WriteLine(issueID & stockCode & selDate & " done before")
                rs.Close()
                con.Close()
                con = Nothing
                Exit Sub 'don't mess with the history
            End If
        End If
        rs.Close()
        r = ""
        Call GetOneSnapshot(issueID, stockCode, selDate, vs, vsGen, today, cookies, r)
        If r = "" Then
            con.Close()
            con = Nothing
            Exit Sub
        End If
        'get the summary table
        x = InStr(r, "pnlResultSummary")
        tblCont = ""
        Call TagCont(x, r, "div", tblCont)
        'fetch and discard the header row
        tblPos = 1
        rowCont = ""
        Call TagCont(tblPos, tblCont, "div", rowCont)
        c = 0
        Do
            Call TagCont(tblPos, tblCont, "div", rowCont)
            rowPos = 1
            cellCont = ""
            Call TagCont(rowPos, rowCont, "div", cellCont)
            'exit before the total issued shares row
            If InStr(cellCont, "Total number of Issued") > 0 Then Exit Do
            ReDim Preserve sumArr(2, c)
            sumArr(0, c) = cellCont
            Call TagCont(rowPos, rowCont, "div", cellCont)
            'Get number of shares in the second nested div
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            sumArr(1, c) = cellCont
            'Get number of participants in the second nested div
            Call TagCont(rowPos, rowCont, "div", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            sumArr(2, c) = cellCont
            c += 1
        Loop
        rs.Open("SELECT * FROM dailylog WHERE issueID=" & issueID & " AND atDate='" & ds & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        If rs.EOF Then
            rs.AddNew()
            rs("atDate").Value = selDate
            rs("IssueID").Value = issueID
        End If
        For c = 0 To UBound(sumArr, 2)
            Select Case sumArr(0, c)
                Case "Market Intermediaries"
                    rs("interMedhldg").Value = sumArr(1, c)
                    rs("intermedCnt").Value = sumArr(2, c)
                Case "Consenting Investor Participants"
                    rs("CIPhldg").Value = sumArr(1, c)
                    rs("CIPcnt").Value = sumArr(2, c)
                Case "Non-consenting Investor Participants"
                    rs("NCIPhldg").Value = sumArr(1, c)
                    rs("NCIPcnt").Value = sumArr(2, c)
            End Select
        Next
        rs.Update()
        rs.Close()
        'get the holdinglist. There is only one tbody in the results page, none in the search page
        Call TagCont(x, r, "tbody", tblCont)
        c = 0
        tblPos = 1
        Do
            rowPos = 1
            Call TagCont(tblPos, tblCont, "tr", rowCont)
            If tblPos = 0 Then Exit Do
            ReDim Preserve ha(2, c)
            'get participant ID
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(0, c) = cellCont
            'get participant name
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(1, c) = cellCont
            'skip address
            rowPos = InStr(rowPos, rowCont, "<td") + 3
            'get shareholding
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(2, c) = cellCont
            'Debug.Print ha(0, c), ha(2, c), ha(1, c)
            c += 1
        Loop
        If c = 0 Then
            Console.WriteLine("No holdings found")
        Else
            con.CursorLocation = ADODB.CursorLocationEnum.adUseClient 'otherwise the command object returns a ForwardOnly recordset
            rs.CursorType = ADODB.CursorTypeEnum.adOpenStatic 'this is the default for client-side cursor anyway
            rs.Open("Call latestHoldingsIssue(" & issueID & ")", con)
            ReDim hu(0)
            Dim partID As Integer, blnChange As Boolean
            For c = 0 To UBound(ha, 2)
                CCASSID = ha(0, c)
                partName = ha(1, c)
                If partName = "" Then Stop
                holding = ha(2, c)
                'find partID or add a new participant
                If CCASSID = "" Then
                    'remove _* from IP name (note HKSCC has no CCASSID and is not an IP)
                    If Right(partName, 1) = "*" Then partName = Trim(Left(partName, Len(partName) - 1))
                    rs2.Open("SELECT * FROM participants WHERE partName='" & Apos(partName) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs2.EOF Then
                        con.Execute("INSERT INTO participants (partName,atDate,addedDate,hadHoldings)" &
                                     Valsql({partName, selDate, selDate, True}))
                        partID = LastID(con)
                    Else
                        partID = CInt(rs2("partID").Value)
                        If Not CBool(rs2("hadHoldings").Value) Then
                            rs2("hadHoldings").Value = True
                            rs2.Update()
                        End If
                    End If
                Else
                    rs2.Open("SELECT * FROM participants WHERE CCASSID='" & CCASSID & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs2.EOF Then
                        con.Execute("INSERT INTO participants (CCASSID,partName,atDate,addedDate,hadHoldings)" &
                            Valsql({CCASSID, partName, selDate, selDate, True}))
                        partID = LastID(con)
                    Else
                        partID = CInt(rs2("partID").Value)
                        If Not CBool(rs2("hadHoldings").Value) Then
                            rs2("hadHoldings").Value = True
                            rs2.Update()
                        End If
                    End If
                End If
                rs2.Close()
                blnChange = False
                If Not (rs.EOF And rs.BOF) Then rs.MoveFirst()
                rs.Find("partID=" & partID)
                If rs.EOF Then
                    blnChange = True
                    'Console.WriteLine("Added: " & ds & " " & partID & " " & CDbl(holding) & vbTab & partName)
                Else
                    ReDim Preserve hu(UBound(hu) + 1)
                    'we don't use the zeroth element
                    hu(UBound(hu)) = CInt(rs("partID").Value)
                    If CDbl(rs("holding").Value) <> CDbl(holding) Then
                        blnChange = True
                        'Console.WriteLine("Changed: " & ds & " " & partID & " " & rs("holding").Value.ToString & vbTab & CDbl(holding) & vbTab & partName)
                    End If
                End If
                If blnChange Then
                    'we kept holding as string in case it was a bigint
                    holding = Replace(holding, ",", "")
                    'participant has no/zero previous holding or holding has changed
                    con.Execute("INSERT INTO holdings (issueID,partID,atDate,holding)" & Valsql({issueID, partID, selDate, holding}))
                End If
            Next
            If Not (rs.BOF And rs.EOF) Then rs.MoveFirst()
            'now check to see which holdings were not found in today's list, and record them at zero
            rows = UBound(hu)
            Do Until rs.EOF
                partID = CInt(rs("partID").Value)
                For c = 1 To rows
                    'zeroth element is unused
                    If hu(c) = partID Then Exit For
                Next
                If c = rows + 1 Then
                    'holding was notfound, so is zero
                    con.Execute("INSERT INTO holdings (issueID,partID,atDate,holding)" & Valsql({issueID, partID, selDate, 0}))
                End If
                rs.MoveNext()
            Loop
            rs.Close()
            'calculate top5 and top10 holdings
            con.Execute("Call topholdings(" & issueID & ",'" & ds & "')")
        End If
        con.Close()
        con = Nothing
        Call CustBrok(issueID, selDate)
    End Sub

    Sub FillSheet(issueID As Integer, stockCode As Integer, selDate As Date)
        'OBSOLETE 2025-06-22. See FillSheet2
        'Update holdings of one issue on one date
        'Must use cumulatively, adding changes 1 day after the previous
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            cookies As CookieCollection,
            ds, tblCont, rowCont, cellCont, r, vs, vsGen, today, sumArr(2, 0), ha(2, 0), CCASSID, partName, holding As String,
            x, c, tblPos, rowPos, cellPos, rows, hu() As Integer
        Call OpenCCASS(con)
        rs.Open("SELECT Max(atDate) AS Latest FROM dailylog WHERE IssueID=" & issueID, con)
        If Not IsDBNull(rs("latest").Value) Then
            If CDate(rs("latest").Value) > selDate Then
                Console.WriteLine(issueID & stockCode & selDate & " done before")
                rs.Close()
                con.Close()
                con = Nothing
                Exit Sub 'don't mess with the history
            End If
        End If
        rs.Close()
        ds = MSdate(selDate)
        'txtDate = Year(selDate) & "/" & Right("0" & Month(selDate), 2) & "/" & Right("0" & Day(selDate), 2)
        'first visit the search page to get the Viewstate etc for the apsx page
        'URL = GetLog("CCASSurl")
        '       Do
        cookies = New CookieCollection
        r = ""
        vs = ""
        vsGen = ""
        today = ""
        Call GetOneSnapshot(issueID, stockCode, selDate, vs, vsGen, today, cookies, r)
        'get the summary table
        x = InStr(r, "pnlResultSummary")

        tblCont = ""
        Call TagCont(x, r, "div", tblCont)
        'fetch and discard the header row
        tblPos = 1
        rowCont = ""
        Call TagCont(tblPos, tblCont, "div", rowCont)
        c = 0
        Do
            Call TagCont(tblPos, tblCont, "div", rowCont)
            rowPos = 1
            cellCont = ""
            Call TagCont(rowPos, rowCont, "div", cellCont)
            'exit before the total issued shares row
            If InStr(cellCont, "Total number of Issued") > 0 Then Exit Do
            ReDim Preserve sumArr(2, c)
            sumArr(0, c) = cellCont
            Call TagCont(rowPos, rowCont, "div", cellCont)
            'Get number of shares in the second nested div
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            sumArr(1, c) = cellCont
            'Get number of participants in the second nested div
            Call TagCont(rowPos, rowCont, "div", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            sumArr(2, c) = cellCont
            c += 1
        Loop
        rs.Open("SELECT * FROM dailylog WHERE issueID=" & issueID & " AND atDate='" & ds & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        If rs.EOF Then
            rs.AddNew()
            rs("atDate").Value = selDate
            rs("IssueID").Value = issueID
        End If
        For c = 0 To UBound(sumArr, 2)
            Select Case sumArr(0, c)
                Case "Market Intermediaries"
                    rs("interMedhldg").Value = sumArr(1, c)
                    rs("intermedCnt").Value = sumArr(2, c)
                Case "Consenting Investor Participants"
                    rs("CIPhldg").Value = sumArr(1, c)
                    rs("CIPcnt").Value = sumArr(2, c)
                Case "Non-consenting Investor Participants"
                    rs("NCIPhldg").Value = sumArr(1, c)
                    rs("NCIPcnt").Value = sumArr(2, c)
            End Select
        Next
        rs.Update()
        rs.Close()
        'get the holdinglist. There is only one tbody in the results page, none in the search page
        Call TagCont(x, r, "tbody", tblCont)
        c = 0
        tblPos = 1
        Do
            rowPos = 1
            Call TagCont(tblPos, tblCont, "tr", rowCont)
            If tblPos = 0 Then Exit Do
            ReDim Preserve ha(2, c)
            'get participant ID
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(0, c) = cellCont
            'get participant name
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(1, c) = cellCont
            'skip address
            rowPos = InStr(rowPos, rowCont, "<td") + 3
            'get shareholding
            Call TagCont(rowPos, rowCont, "td", cellCont)
            cellPos = InStr(cellCont, "<div") + 4
            Call TagCont(cellPos, cellCont, "div", cellCont)
            ha(2, c) = cellCont
            'Debug.Print ha(0, c), ha(2, c), ha(1, c)
            c += 1
        Loop
        If c = 0 Then
            Console.WriteLine("No holdings found")
        Else
            con.CursorLocation = ADODB.CursorLocationEnum.adUseClient 'otherwise the command object returns a ForwardOnly recordset
            rs.CursorType = ADODB.CursorTypeEnum.adOpenStatic 'this is the default for client-side cursor anyway
            rs.Open("Call latestHoldingsIssue(" & issueID & ")", con)
            ReDim hu(0)
            Dim partID As Integer, blnChange As Boolean
            For c = 0 To UBound(ha, 2)
                CCASSID = ha(0, c)
                partName = ha(1, c)
                If partName = "" Then Stop
                holding = ha(2, c)
                'find partID or add a new participant
                If CCASSID = "" Then
                    'remove _* from IP name (note HKSCC has no CCASSID and is not an IP)
                    If Right(partName, 1) = "*" Then partName = Trim(Left(partName, Len(partName) - 1))
                    rs2.Open("SELECT * FROM participants WHERE partName='" & Apos(partName) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs2.EOF Then
                        con.Execute("INSERT INTO participants (partName,atDate,addedDate,hadHoldings) VALUES ('" &
                                     Apos(partName) & "','" & MSdate(selDate) & "','" & MSdate(selDate) & "',TRUE)")
                        partID = LastID(con)
                    Else
                        partID = CInt(rs2("partID").Value)
                        If Not CBool(rs2("hadHoldings").Value) Then
                            rs2("hadHoldings").Value = True
                            rs2.Update()
                        End If
                    End If
                Else
                    rs2.Open("SELECT * FROM participants WHERE CCASSID='" & CCASSID & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs2.EOF Then
                        con.Execute("INSERT INTO participants (CCASSID,partName,atDate,addedDate,hadHoldings) VALUES ('" &
                                     CCASSID & "','" & Apos(partName) & "','" & MSdate(selDate) & "','" & MSdate(selDate) & "',TRUE)")
                        partID = LastID(con)
                    Else
                        partID = CInt(rs2("partID").Value)
                        If Not CBool(rs2("hadHoldings").Value) Then
                            rs2("hadHoldings").Value = True
                            rs2.Update()
                        End If
                    End If
                End If
                rs2.Close()
                blnChange = False
                If Not (rs.EOF And rs.BOF) Then rs.MoveFirst()
                rs.Find("partID=" & partID)
                If rs.EOF Then
                    blnChange = True
                    'Console.WriteLine("Added: " & ds & " " & partID & " " & CDbl(holding) & vbTab & partName)
                Else
                    ReDim Preserve hu(UBound(hu) + 1)
                    'we don't use the zeroth element
                    hu(UBound(hu)) = CInt(rs("partID").Value)
                    If CDbl(rs("holding").Value) <> CDbl(holding) Then
                        blnChange = True
                        'Console.WriteLine("Changed: " & ds & " " & partID & " " & rs("holding").Value.ToString & vbTab & CDbl(holding) & vbTab & partName)
                    End If
                End If
                If blnChange Then
                    'we kept holding as string in case it was a bigint
                    holding = Replace(holding, ",", "")
                    'participant has no/zero previous holding or holding has changed
                    con.Execute("INSERT INTO holdings (issueID,partID,atDate,holding) VALUES (" &
                                issueID & "," & partID & ",'" & ds & "'," & holding & ")")
                End If
            Next
            If Not (rs.BOF And rs.EOF) Then rs.MoveFirst()
            'now check to see which holdings were not found in today's list, and record them at zero
            rows = UBound(hu)
            Do Until rs.EOF
                partID = CInt(rs("partID").Value)
                For c = 1 To rows
                    'zeroth element is unused
                    If hu(c) = partID Then Exit For
                Next
                If c = rows + 1 Then
                    'holding was notfound, so is zero
                    con.Execute("INSERT INTO holdings (issueID,partID,atDate,holding) VALUES (" & issueID & "," & partID & ",'" & ds & "',0)")
                End If
                rs.MoveNext()
            Loop
            rs.Close()
            'calculate top5 and top10 holdings
            con.Execute("Call topholdings(" & issueID & ",'" & ds & "')")
        End If
        con.Close()
        con = Nothing
        Call CustBrok(issueID, selDate)
    End Sub
    Sub CustBrok(issueID As Integer, atDate As Date)
        'calculate total holdings of Broker participants and Custodian participants
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Dim BrokHldg, CustHldg As Double
        Call OpenCCASS(con)
        rs.Open("SELECT Left(CCASSID,1) as type, sum(holding) as holding FROM (holdings JOIN " &
            "(SELECT partID as MDpartID,Max(atDate) as maxDate FROM holdings WHERE issueID=" & issueID & " AND atDate<='" & MSdate(atDate) &
            "' GROUP BY MDpartID) as t2 ON (issueID=" & issueID & " AND partID=MDpartID AND atDate=maxDate))" &
            "JOIN participants ON holdings.partID=participants.partID GROUP BY Left(CCASSID,1)", con)
        Do Until rs.EOF
            If rs("type").Value.ToString = "B" Then BrokHldg = CDbl(rs("holding").Value)
            If rs("type").Value.ToString = "C" Then CustHldg = CDbl(rs("holding").Value)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Execute("UPDATE dailylog SET BrokHldg=" & BrokHldg & ", CustHldg=" & CustHldg & " WHERE issueID=" & issueID & " AND atDate='" & MSdate(atDate) & "'")
        con.Close()
        con = Nothing
    End Sub
    Sub BigChange(d As Date)
        Console.WriteLine("Finding big changes")
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, dStr As String
        dStr = "'" & MSdate(d) & "'"
        Call OpenCCASS(con)
        con.CommandTimeout = 240 'seconds, overrides default 30
        con.Execute("DELETE FROM bigchanges WHERE atDate=" & dStr)
        con.Execute("INSERT INTO bigchanges(atDate,issueID,partID,stkchg,prevdate) SELECT " & dStr & ",h.issueID,h.partID," &
                     "h.holding/enigma.outstanding(h.issueID," & dStr & ")/IFNULL(e.adjust,1)-IFNULL(t2.holding,0)/enigma.outstanding(h.issueID,t2.atDate) AS stkchg,t2.atDate " &
                     "FROM holdings h LEFT JOIN (SELECT h.issueID,h.partID,holding/IFNULL(e.adjust,1) AS holding,atDate FROM " &
                     "(SELECT issueiD,partID, max(atDate) AS maxDate FROM holdings WHERE atDate<" & dStr & " GROUP BY issueID,partID) AS t1 " &
                     "JOIN holdings h ON t1.issueID=h.issueID AND t1.partID=h.partID AND maxDate=atDate " &
                     "LEFT JOIN enigma.events e ON h.issueID=e.issueID AND atDate=e.exDate AND isnull(cancelDate) AND eventType=4) AS t2 " &
                     "ON h.issueID=t2.issueID AND h.partID=t2.partID " &
                     "LEFT JOIN enigma.events e ON h.issueID=e.issueID AND e.exDate=" & dStr & " AND isnull(cancelDate) AND eventType=4 " &
                     "WHERE h.atdate=" & dStr & " HAVING ABS(stkchg)>0.0025 ")
        rs.Open("SELECT * FROM bigchanges WHERE atDate=" & dStr & " ORDER BY issueID,stkchg", con)
        Do Until rs.EOF
            Console.WriteLine(rs("atDate").Value.ToString & vbTab & rs("IssueID").Value.ToString & vbTab & rs("partID").Value.ToString &
                              vbTab & rs("stkchg").Value.ToString & vbTab & rs("prevDate").Value.ToString)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub MakeSettle(startDate As Date, endDate As Date)
        'add/replace tradeDates and corresponding settlement dates to ccass.calendar
        'run this after we have added holidays or typhoons to ccass.specialdays table
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            t, s As Date,
            n, x As Integer,
            deferred As Boolean
        Call OpenCCASS(con)
        'delete existing entries in this range
        con.Execute("DELETE FROM calendar WHERE tradeDate>='" & MSdate(startDate) & "' AND tradeDate<='" & MSdate(endDate) & "'")
        t = startDate
        If Not NotHol(t) Then t = addDealdays(t, 1) 'jump to first dealing day
        Do Until t > endDate
            deferred = False
            rs.Open("SELECT * FROM calendar WHERE tradeDate='" & MSdate(t) & "'", con)
            If rs.EOF Then
                n = 0
                s = t
                Do Until n = 2 'find T+2 for settlement (excluding non-settlement days)
                    s = DateAdd(DateInterval.Day, 1, s)
                    If Weekday(s) = 7 Then s = DateAdd(DateInterval.Day, 2, s) 'jump from Saturday to Monday
                    rs.Close()
                    rs.Open("SELECT * FROM specialdays WHERE specialDate='" & MSdate(s) & "'", con)
                    If rs.EOF Then
                        'not a special day, so this is a settlement day
                        n += 1
                    ElseIf CBool(rs("noSettle").Value) Then
                        'no settlement today so don't advance the counter. Was there trading in either session?
                        If n = 0 And (Not CBool(rs("noAM").Value) Or Not CBool(rs("noPM").Value)) Then deferred = True 'there will be 2 trading days with the same settlement day, and the first one is "deferred"
                    Else
                        If Not CBool(rs("pubHol").Value) Then n += 1
                        'this is a settlement day
                    End If
                Loop
                con.Execute("REPLACE INTO calendar(tradeDate,settleDate,deferred)" & Valsql({t, s, deferred}))
                x += 1
                Console.WriteLine(x & vbTab & t & vbTab & s & vbTab & deferred)
            End If
            rs.Close()
            t = AddDealdays(t, 1)
        Loop
        con.Close()
        con = Nothing
    End Sub
    Function AddDealdays(startDate As Date, addDays As Integer) As Date
        'add days, excluding Saturdays, Sundays, Public Holidays and days when no trading occurred
        'don't use this for T+2, because some dealing days are not settlement days (e.g. Christmas Eve if it is a half-day)
        Dim n As Integer, t As Date
        n = 0
        t = startDate
        Do Until n = addDays
            t = DateAdd(DateInterval.Day, 1, t)
            If Weekday(t) <> 1 And Weekday(t) <> 7 And NotHol(t) Then n += 1
        Loop
        Return t
    End Function
End Module
