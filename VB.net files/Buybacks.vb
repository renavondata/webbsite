Option Compare Text
Option Explicit On
Imports ScraperKit
Imports System.IO

Module Buybacks
    Sub Main()
        'Call CheckFiles()
        'Exit Sub

        'This app requires installation of accessdatabaseengine_X64.exe on the host computer,
        'in order to use ACE.OLEDB to read spreadsheets as a Scheduled Task whether or not the user is logged on.
        'UPDATE 2020-08-26: this still only works if the user is logged on.
        Call GetBuybackSheets()
        'Console.ReadKey()
    End Sub
    Sub CheckFiles(board As String, f As Date, t As Date)
        'board is either GEM or MB
        'one-time procedure 2024-06 to go over old files - probably don't use again because errors are sucked in
        On Error GoTo repErr
        Dim dest, file, files(), dStr As String,
            targetDate As Date
        dest = GetLog(board & "BBdestin")
        files = IO.Directory.GetFiles(dest, If(board = "MB", "SRRPT", "SRGemRpt") & "*.xls")
        System.Array.Sort(files)
        For x = UBound(files) To 0 Step -1
            file = files(x)
            dStr = Left(Right(file, 12), 8)
            targetDate = CDate(Left(dStr, 4) & "-" & Mid(dStr, 5, 2) & "-" & Right(dStr, 2))
            If targetDate >= f And targetDate <= t Then Call ProcBuybacks2(file, targetDate)
        Next
        Exit Sub
repErr:
        Call ErrMail("Checkfiles failed at file " & dStr, Err)
    End Sub
    Sub GetBuybackSheets()
        On Error GoTo repErr
        Dim target, destin, fileName, e As String,
            targetDate As Date
        targetDate = CDate(GetLog("MBbuybackDate")).AddDays(1)
        Do Until targetDate > Today
            If NotHol(targetDate) Then
                fileName = "SRRPT" & Format(targetDate, "yyyyMMdd") & ".xls"
                target = GetLog("MBBBsource") & fileName
                destin = GetLog("MBBBdestin") & fileName
                e = ""
                Console.WriteLine("Trying to download: " & target)
                Call Download(target, destin, e)
                If e = "" Then
                    Console.WriteLine("File found: " & fileName)
                    Call ProcBuybacks2(destin, targetDate)
                    Call PutLog("MBbuybackDate", MSdate(targetDate))
                End If
                Call WaitNSec(1)
            Else
                Console.WriteLine("Holiday:" & targetDate)
            End If
            targetDate = targetDate.AddDays(1)
        Loop
        targetDate = CDate(GetLog("GEMbuybackdate")).AddDays(1)
        'GEM files are published 1 working day after their filename date
        Do Until targetDate = Today
            If NotHol(targetDate) Then
                fileName = "SRGemRpt" & Format(targetDate, "yyyyMMdd") & ".xls"
                target = GetLog("GEMBBsource") & fileName
                destin = GetLog("GEMBBdestin") & fileName
                e = ""
                Console.WriteLine("Trying to download: " & target)
                Call Download(target, destin, e)
                If e = "" Then
                    Console.WriteLine("File found: " & fileName)
                    Call ProcBuybacks2(destin, targetDate)
                    Call PutLog("GEMbuybackDate", MSdate(targetDate))
                End If
                Call WaitNSec(1)
            Else
                Console.WriteLine("Holiday:" & targetDate)
            End If
            targetDate = targetDate.AddDays(1)
        Loop
        Call PutLog("LastBuybackRun", MSdateTime(Now()))
        Exit Sub
repErr:
        Call ErrMail("GetBuybackSheets failed", Err)
    End Sub
    Sub ProcBuybacks(ByVal path As String, ByVal targetDate As Date)
        'OBSOLETE 2024-06-10
        If Not FileIO.FileSystem.FileExists(path) Then Exit Sub
        On Error GoTo repErr
        'process an XLS buybacks sheet without using Excel
        'don't send a non-existent file reference otherwise it will create a bad .xls file
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, xlrs As New ADODB.Recordset, xlcon As New ADODB.Connection,
            cat As New ADOX.Catalog, tbl As New ADOX.Table,
            dateCol, numCol, methodCol, stockCol, valueCol, highestCol, endCol, capChangeType, shares, col, issueID As Integer,
            value As Double,
            c, tblName, stockCode, curr, dateStr, sharesStr As String,
            EffDate As Date
        Call OpenEnigma(con)
        xlcon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & path & ";Extended Properties='Excel 8.0;HDR=NO'")
        cat.ActiveConnection = xlcon
        tblName = ""
        'Find the name Of the spreadsheet, which ends in either $ or $' if it contains spaces
        'before 4-Aug-2008 there are 2 sheets in the workbook. The catalog returns them in alphabetic order, and luckily our target comes first
        For Each tbl In cat.Tables
            tblName = tbl.Name
            If Right(tblName, 2) = "$'" Or Right(tblName, 1) = "$" Then Exit For
        Next
        If tblName <> "" Then
            'select the entire spreadsheet
            xlrs.Open("SELECT * FROM [" & tblName & "]", xlcon)
            'the columns in the sheets moved around over time. First column is zero in recordset
            'before 2-Jan-2013, the column headings weren't even in the same row, so discovering them is not viable
            'before 16-Sep-2013, the column headings weren't all in the same columns as their value lists due to values in merged cells
            If targetDate < #8/4/2008# Then
                'before 4-Aug-2008, the spreadsheets were not a mess!
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 5
                valueCol = 7
                methodCol = 8
                endCol = 6
            ElseIf targetDate < #11/7/2011# Then
                stockCol = 1
                dateCol = 4
                numCol = 5
                highestCol = 7
                valueCol = 11
                methodCol = 15
                endCol = 8
            ElseIf targetDate < #1/2/2013# Then
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 6
                valueCol = 11
                methodCol = 12
                endCol = 5
            ElseIf targetDate < #9/16/2013# Then
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 5
                valueCol = 9
                methodCol = 10
                endCol = 4
            Else
                endCol = 4
                'find the columns headings assuming 'Company' is in column 1 (field 0)
                Do Until xlrs.EOF
                    If InStr(xlrs(0).Value.ToString, "Company") > 0 Then Exit Do
                    xlrs.MoveNext()
                Loop
                For col = 0 To xlrs.Fields.Count - 1
                    c = Replace(xlrs(col).Value.ToString, Chr(10), " ")
                    'Console.WriteLine(col & " " & c)
                    If InStr(c, "Stock") > 0 And stockCol = 0 Then stockCol = col
                    If InStr(c, "Trading date") > 0 And dateCol = 0 Then dateCol = col
                    If InStr(c, "purchased") > 0 And numCol = 0 Then numCol = col
                    If InStr(c, "highest") > 0 And highestCol = 0 Then highestCol = col
                    If InStr(c, "Total paid") > 0 And valueCol = 0 Then valueCol = col
                    If InStr(c, "Method") > 0 And methodCol = 0 Then methodCol = col
                Next
                xlrs.MoveNext()
            End If
            'find the first stockcode
            Do Until xlrs.EOF
                If IsNumeric(xlrs(stockCol).Value) Then Exit Do
                xlrs.MoveNext()
            Loop
            Do Until xlrs.EOF
                stockCode = xlrs(stockCol).Value.ToString
                sharesStr = Replace(xlrs(numCol).Value.ToString, ",", "")
                If stockCode <> "" And IsNumeric(stockCode) And IsNumeric(sharesStr) Then
                    'read the data
                    shares = CInt(sharesStr)
                    EffDate = CDate(xlrs(dateCol).Value)
                    dateStr = MSdate(EffDate)
                    Select Case xlrs(methodCol).Value.ToString
                        Case "Exchange" : capChangeType = 1
                        Case "Nasdaq" : capChangeType = 23
                        Case "Euroclear" : capChangeType = 24
                        Case "On Singapore Exchange" : capChangeType = 41
                        Case "Toronto Stock Exchange" : capChangeType = 53
                        Case Else : capChangeType = 6 'off-market buyback
                    End Select
                    rs.Open("SELECT StockCode, IssueID FROM StockListings WHERE StockCode=" & stockCode & " AND StockExID IN(1,20,22,23,38) AND (FirstTradeDate is Null OR FirstTradeDate<='" &
                        dateStr & "') AND(DelistDate is Null OR DelistDate>'" & dateStr & "')", con)
                    If rs.EOF Then
                        Console.WriteLine("No listing found for stock code " & Str(stockCode) & " in file " & path)
                    Else
                        issueID = CInt(rs("IssueID").Value)
                        rs.Close()
                        rs.Open("SELECT * FROM CapChanges WHERE IssueID=" & issueID & " AND CapChangeType=" & capChangeType & " AND EffDate='" & dateStr & "'",
                            con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If rs.EOF Then
                            rs.AddNew()
                            rs("IssueID").Value = issueID
                            rs("EffDate").Value = dateStr
                            rs("CapChangeType").Value = capChangeType
                        End If
                        rs("shares").Value = -shares
                        c = xlrs(valueCol).Value.ToString
                        If Len(c) > 3 Then
                            value = CDbl(Mid(c, 4))
                        Else
                            'some fund buybacks don't give total value, but do give a "highest price" which is actually the average
                            c = xlrs(highestCol).Value.ToString
                            If Len(c) > 3 Then
                                value = CDbl(Mid(c, 4))
                                value *= shares
                            Else
                                value = 0
                            End If
                        End If
                        If IsNumeric(value) Then rs("Value").Value = value
                        curr = Left(c, 3)
                        If curr <> "" And curr <> "-" Then rs("Currency").Value = con.Execute("SELECT ID FROM currencies WHERE HKEXcurr='" & curr & "'").Fields(0).Value
                        rs.Update()
                        Console.WriteLine(stockCode & vbTab & issueID & vbTab & dateStr & vbTab & capChangeType & vbTab & -shares & vbTab & curr & value)
                    End If
                    rs.Close()
                End If
                c = xlrs(endCol).Value.ToString & xlrs(6).Value.ToString
                'in older sheets, on days with no filings, the terminator appears in column G(6)
                If InStr(c, "End of Report") > 0 Then Exit Do
                xlrs.MoveNext()
            Loop
        End If
        xlrs.Close()
        xlrs = Nothing
        xlcon.Close()
        xlcon = Nothing
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ProcBuybacks failed", Err)
    End Sub
    Sub ProcBuybacks2(ByVal path As String, ByVal targetDate As Date)
        On Error GoTo repErr
        'NEW VERSION 2024-06-12 after treasury shares rearranged stuff
        'process an XLS buybacks sheet without using Excel directly
        'don't send a non-existent file reference otherwise it will create a bad .xls file
        If Not FileIO.FileSystem.FileExists(path) Then Exit Sub
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, xlrs As New ADODB.Recordset, xlcon As New ADODB.Connection,
            cat As New ADOX.Catalog, tbl As New ADOX.Table,
            dateCol, numCol, methodCol, stockCol, valueCol, highestCol, endCol, shares, col, issueID, methodID, CCID As Integer,
            value As Double,
            c, tblName, stockCode, curr, dateStr, sharesStr, method As String,
            EffDate As Date
        Call OpenEnigma(con)
        xlcon.Open("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & path & ";Extended Properties='Excel 8.0;HDR=NO'")
        cat.ActiveConnection = xlcon
        tblName = ""
        'Find the name Of the spreadsheet, which ends in either $ or $' if it contains spaces
        'before 4-Aug-2008 there are 2 sheets in the workbook. The catalog returns them in alphabetic order, and luckily our target comes first
        For Each tbl In cat.Tables
            tblName = tbl.Name
            If Right(tblName, 2) = "$'" Or Right(tblName, 1) = "$" Then Exit For
        Next
        If tblName <> "" Then
            'select the entire spreadsheet
            xlrs.Open("SELECT * FROM [" & tblName & "]", xlcon)
            'the columns in the sheets moved around over time. First column is zero in recordset
            'before 2-Jan-2013, the column headings weren't even in the same row, so discovering them is not viable
            'before 16-Sep-2013, the column headings weren't all in the same columns as their value lists due to values in merged cells
            If targetDate < #8/4/2008# Then
                'before 4-Aug-2008, the spreadsheets were not a mess!
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 5
                valueCol = 7
                methodCol = 8
                endCol = 6
            ElseIf targetDate < #11/7/2011# Then
                stockCol = 1
                dateCol = 4
                numCol = 5
                highestCol = 7
                valueCol = 11
                methodCol = 15
                endCol = 8
            ElseIf targetDate < #1/2/2013# Then
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 6
                valueCol = 11
                methodCol = 12
                endCol = 5
            ElseIf targetDate < #9/16/2013# Then
                stockCol = 1
                dateCol = 3
                numCol = 4
                highestCol = 5
                valueCol = 9
                methodCol = 10
                endCol = 4
            Else
                endCol = 4
                'find the columns headings assuming 'Company' is in column 1 (field 0)
                Do Until xlrs.EOF
                    If InStr(xlrs(0).Value.ToString, "Company") > 0 Then Exit Do
                    xlrs.MoveNext()
                Loop
                For col = 0 To xlrs.Fields.Count - 1
                    c = Replace(xlrs(col).Value.ToString, Chr(10), " ")
                    If InStr(c, "Stock") > 0 And stockCol = 0 Then stockCol = col
                    If InStr(c, "Trading date") > 0 And dateCol = 0 Then dateCol = col
                    If InStr(c, "purchased") > 0 And numCol = 0 Then numCol = col
                    If InStr(c, "highest") > 0 And highestCol = 0 Then highestCol = col
                    If InStr(c, "Total paid") > 0 And valueCol = 0 Then
                        valueCol = col
                    ElseIf InStr(c, "Aggregate price") > 0 And valueCol = 0 Then
                        'treatment for sheets named 20240611 onwards
                        valueCol = col
                    End If
                    If InStr(c, "Method") > 0 And methodCol = 0 Then methodCol = col
                Next
                xlrs.MoveNext()
            End If
            'find the first stockcode
            Do Until xlrs.EOF
                If IsNumeric(xlrs(stockCol).Value) Then Exit Do
                xlrs.MoveNext()
            Loop
            Do Until xlrs.EOF
                stockCode = xlrs(stockCol).Value.ToString
                sharesStr = Replace(xlrs(numCol).Value.ToString, ",", "")
                If stockCode <> "" And IsNumeric(stockCode) And IsNumeric(sharesStr) Then
                    'read the data
                    shares = CInt(sharesStr)
                    EffDate = CDate(xlrs(dateCol).Value)
                    dateStr = MSdate(EffDate)
                    issueID = CInt(con.Execute("SELECT IFNULL((SELECT getIssueID(" & stockCode & ",'" & dateStr & "')),0)").Fields(0).Value)
                    If issueID = 0 Then
                        Console.WriteLine("No listing found for stock code " & Str(stockCode) & " in file " & path)
                    Else
                        method = StripSpace(xlrs(methodCol).Value.ToString)
                        If Right(method, 1) = ")" Then method = Trim(Left(method, InStrRev(method, "(") - 1))
                        If Right(method, 7) = "Exchang" Then method &= "e"
                        If InStr(method, "Note") > 0 Then method = Trim(Left(method, InStr(method, "Note") - 1))
                        If Left(method, 4) = "The " Then method = Mid(method, 5)
                        method = Left(method, 127)
                        If method <> "-" And method <> "" Then
                            rs.Open("SELECT IFNULL(mapTo,ID)ID FROM bbexch WHERE des='" & Apos(method) & "'", con)
                            If rs.EOF Then
                                con.Execute("INSERT INTO bbexch (des,name,fileDate)" & Valsql({method, method, targetDate}))
                                methodID = LastID(con)
                                Console.WriteLine("New method:" & method)
                            Else
                                methodID = CInt(rs("ID").Value)
                            End If
                            rs.Close()
                        Else
                            methodID = 31 'Off-market
                        End If
                        c = xlrs(valueCol).Value.ToString
                        If Len(c) > 3 Then
                            value = CDbl(Mid(c, 4))
                        Else
                            'some fund buybacks don't give total value, but do give a "highest price" which is actually the average
                            c = xlrs(highestCol).Value.ToString
                            If Len(c) > 3 Then
                                value = CDbl(Mid(c, 4))
                                value *= shares
                            Else
                                value = 0
                            End If
                        End If
                        curr = Left(c, 3)
                        If curr <> "" And curr <> "-" Then
                            curr = con.Execute("SELECT ID FROM currencies WHERE HKEXcurr='" & curr & "'").Fields(0).Value.ToString
                        Else
                            curr = ""
                        End If
                        CCID = CInt(con.Execute("SELECT IFNULL((SELECT CCID FROM CapChanges WHERE capchangeType=1 And issueID=" & issueID &
                                           " AND EffDate='" & dateStr & "'" & " AND exchID=" & methodID & "),0)").Fields(0).Value)
                        If CCID = 0 Then
                            con.Execute("INSERT INTO capChanges(issueID,effDate,capChangeType,exchID,shares,Value,currency,fileDate)" &
                                        Valsql({issueID, dateStr, 1, methodID, -shares, value, curr, targetDate}))
                        Else
                            con.Execute("UPDATE capChanges" & Setsql("shares,value,currency,fileDate", {-shares, value, curr, targetDate}) & "CCID=" & CCID)
                        End If
                        Console.WriteLine(stockCode & vbTab & issueID & vbTab & dateStr & vbTab & methodID & vbTab & curr & vbTab & -shares & vbTab & value)
                    End If
                End If
                c = xlrs(endCol).Value.ToString & xlrs(6).Value.ToString
                'in older sheets, on days with no filings, the terminator appears in column G(6)
                If InStr(c, "End of Report") > 0 Then Exit Do
                xlrs.MoveNext()
            Loop
        End If
        xlrs.Close()
        xlrs = Nothing
        xlcon.Close()
        xlcon = Nothing
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ProcBuybacks failed", Err)
    End Sub
    Sub BuybacksR(fromDate As Date, Optional toDate As Date = #12/31/1899#, Optional board As String = "MB")
        'process a range of existing buyback spreadsheets
        'board is either GEM or MB
        If toDate = #12/31/1899# Then toDate = fromDate
        Dim targetDate As Date,
            fileName, folder, stem As String
        Select Case board
            Case "GEM" : stem = "SRGemRpt" : folder = "GEM"
            Case Else : stem = "SRRPT" : folder = "MainBoard"
        End Select
        targetDate = fromDate
        Do Until targetDate > toDate
            If NotHol(targetDate) Then
                fileName = stem & Format(targetDate, "yyyyMMdd") & ".xls"
                Call ProcBuybacks(GetLog("storage") & "\BuybackList\" & folder & "\" & fileName, targetDate)
            End If
            Console.WriteLine(targetDate)
            targetDate = targetDate.AddDays(1)
        Loop
    End Sub
End Module
