Option Compare Text
Option Explicit On

Imports ScraperKit
Imports JSONkit
Module GetFinancialReports
    Public Sub Main()
        Call ListingApps()
        Call SFCDoDAll()
        Call HKEXDoDupdate()
        Call Autoresults()
        Call Autoreports()
    End Sub
    Sub ListingApps()
        'download the listing application proofs and Pre-Hearing Information Packs (PHIPs)
        'if the application lapses then these documents will disappear, even if the company subsequently re-applies and lists
        On Error GoTo repErr
        Dim board, r, URL, apps(), app, ls(), co, s, nF, d, file, folder As String,
            y As Integer,
            fetch As Boolean
        folder = GetLog("ListingAppsFolder") 'where to put the downloads
        'check the current and previous year for each board
        For y = Year(Now()) - 1 To Year(Now())
            For Each board In {"sehk", "gem"}
                Console.WriteLine("Year: " & y)
                Console.WriteLine("Board: " & board)
                URL = "https://www1.hkexnews.hk/ncms/json/eds/app_" & y & "_" & board & "_e.json"
                r = GetWeb(URL)
                apps = ReadArray(GetVal(r, "app"))
                For Each app In apps
                    'latest submissions
                    ls = ReadArray(GetVal(app, "ls"))
                    For Each s In ls
                        file = ""
                        nF = GetVal(s, "nF")
                        fetch = False
                        If InStr(nF, "Application Proof") > 0 Then
                            file = "app"
                            fetch = True
                        ElseIf InStr(nF, "PHIP") > 0 Then
                            file = "phip"
                            fetch = True
                        End If
                        URL = GetVal(s, "u1")
                        If fetch And URL <> "#" Then
                            co = NormName(GetVal(app, "a"))
                            d = GetVal(s, "d")
                            'convert to our filename format YYMMDD<app/phip>.pdf
                            file = Right(d, 2) & Mid(d, 4, 2) & Left(d, 2) & file & ".pdf"
                            Console.WriteLine(co)
                            Call Download("https://www1.hkexnews.hk/app/" & URL, folder & co & "\" & file)
                            Console.WriteLine("file:" & file & vbTab & URL)
                        End If
                    Next
                Next
            Next
        Next
        Exit Sub
repErr:
        Call ErrMail("ListingApps failed for co: " & co, Err)

    End Sub
    Function NormName(s As String) As String
        'convert a company name into a shorter form
        Dim t As String
        'order is important so that it extracts long-form matches with commas before short-form
        For Each t In {" Company", " Corporation", "Corp.,", "Corp.", " Group", " (Group)", " Holdings", " (Holdings)",
            " Holding", " (Holding)", "Inc.,", "Inc.", " Inc", " International", " Investment", " Limited", " Pte.", "Co.,", "Co.", "Ltd.", " Ltd"}
            s = Replace(s, t, "")
        Next
        s = Replace(s, " )", ")")
        s = Replace(s, "),", ")")
        s = Trim(s)
        If Right(s, 1) = "," Then s = Trim(Left(s, Len(s) - 1))
        Return StripSpace(s)
    End Function
    Sub SFCDoDAll()
        'download all the current SFC documents on display
        On Error GoTo repErr
        Dim r, c, rows(), cols(), URL As String,
            x As Integer
        r = GetWeb("https://www.sfc.hk/en/Regulatory-functions/Corporates/Takeovers-And-mergers/DoDmain")
        r = Mid(r, InStr(r, "dod-table"))
        c = ""
        Call TagCont(1, r, "tbody", c)
        rows = ReadWebRows(r)
        'skip header
        For x = 1 To UBound(rows)
            cols = ReadWebCols(rows(x))
            URL = GetAttrib(cols(2), "href")
            Call SFCDoD(URL)
        Next
        Exit Sub
repErr:
        Call ErrMail("SFCDoD failed for URL " & URL, Err)
    End Sub
    Sub SFCDoD(URL As String)
        'fetch a page of documents on display under The takeovers Code
        Dim r, c, s, tr, rows(), cols(), des, part, path, dets(3), lastDoc As String,
            x, y As Integer,
            buffer() As Byte
        r = GetWeb(URL,, False)
        x = InStr(r, "document-details-container")
        r = Mid(r, x)
        s = "<html><head><meta charset='utf-8'></head><body style='font-family:Verdana, Geneva, Tahoma, sans-serif'><table style='border:thin black solid;'>"
        'get the document details
        For Each c In Split("Offeree,Offeror,Document type,Document date", ",")
            x = InStr(r, c)
            Call TagCont(x, r, "span", dets(y))
            If dets(y) = "-" Then dets(y) = ""
            s &= Chr(13) & "<tr><td>" & c & ": </td><td>" & dets(y) & "</td></tr>"
            Console.WriteLine(c & ": " & dets(y))
            y += 1
        Next
        s &= Chr(13) & "</table>"
        dets(3) = MSdate(CDate(dets(3)))
        path = GetLog("DoDfolder")
        y = InStr(dets(0), "Stock code")
        If y > 0 Then
            'use the stock code as the folder
            c = FindInt(Mid(dets(0), y + 10))
        Else
            'use the offeree as the folder
            c = Trim(Replace(dets(0), "Limited", ""))
        End If
        'use a sub-folder with date of document, in case multiple docs
        path &= c & "\" & dets(3)
        x = InStr(r, "inner-document-download")
        c = ""
        Call TagCont(x, r, "tbody", c)
        rows = ReadWebRows(c)
        lastDoc = ""
        For Each tr In rows
            cols = ReadWebCols(tr)
            des = cols(0)
            part = Mid(cols(1), 6) 'strip off part number, if any
            If des = "" Then
                'multi-part document
                des = lastDoc & " - " & Right("00" & part, 3)
            Else
                If part = "1" Then
                    If Right(des, 3) = "001" Then
                        lastDoc = Trim(Left(des, InStrRev(des, "-") - 1))
                    Else
                        lastDoc = des
                        des &= " - 001"
                    End If
                End If
            End If
            des = Trim(des)
            'skip annual/interim reports are these are already in HKEX site
            If InStr(des, "Annual Report") + InStr(des, "Interim Report") + InStr(des, "Annual Results") + InStr(des, "Interim Results") +
                InStr(des, "Quarterly Results") = 0 Then
                URL = "https://sfc.hk" & GetAttrib(cols(2), "href")
                Call Download(URL, path & "\" & Replace(des, "&amp;", "&") & ".pdf",,, False)
                Console.WriteLine(des)
                s &= Chr(13) & "<p><a href='" & Apos(des) & ".pdf'>" & des & "</a></p>"
            Else
                s &= Chr(13) & "<p>" & des & "</p>"
            End If
        Next
        s &= Chr(13) & "</body></html>"
        buffer = System.Text.Encoding.UTF8.GetBytes(s)
        Call WriteFile(path & "\" & dets(3) & ".htm", buffer, True)
    End Sub
    Sub HKEXDoDupdate()
        'download HKEX documents on display before they disappear!
        On Error GoTo repErr
        Dim d As Date
        d = CDate(GetLog("LastDoD"))
        Do Until d >= Today.AddDays(-1)
            d = d.AddDays(1)
            Console.WriteLine("Downloading Documents on Display on " & MSdate(d))
            Call GetHKEXDoD(d)
            Call PutLog("LastDoD", MSdate(d))
        Loop
        Exit Sub
repErr:
        Call ErrMail("HKEXDoD failed for " & MSdate(d), Err)
    End Sub
    Sub GetHKEXDoD(d As Date)
        Dim URL, r, rows(), tr(), d1, d2, docLoc, filed, fsize, codes(0), names(0), c, e, s, title, coName, docName, file,
            DoDfolder, target, webfile As String,
            row, newsID, repID, x, y As Integer,
            buffer() As Byte,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        DoDfolder = GetLog("DoDfolder")
        URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&t1code=56000" &
            "&fromDate=" & Format(d, "yyyyMMdd") & "&toDate=" & Format(d, "yyyyMMdd") & "&category=0&rowRange="
        r = GetFilings(URL)
        If r = "" Then Exit Sub
        rows = ReadArray(r)
        Call OpenEnigma(con)
        For row = 0 To UBound(rows)
            filed = "" : d1 = "" : d2 = "" : docLoc = "" : fsize = ""
            ReDim codes(0), names(0)
            Call ProcNewsRow(rows(row), newsID, filed, codes, names, d1, d2, docLoc, fsize)
            If Right(docLoc, 11) = "dod/en.html" Then
                'too late, the files have gone
            Else
                rs.Open("Select * FROM repfilings WHERE newsID=" & newsID, con)
                If rs.EOF Then
                    con.Execute("INSERT INTO repfilings(newsID, repfiled, docType, URL, fsize, descrip, descrip2)" &
                        Valsql({newsID, filed, 12, docLoc, fsize, d1, d2}))
                    repID = LastID(con)
                Else
                    repID = CInt(rs("ID").Value)
                End If
                rs.Close()
                For x = 0 To UBound(codes)
                    If codes(x) <> "" Then con.Execute("INSERT IGNORE INTO filingcodes(repID,sc)" & Valsql({repID, codes(x)}))
                Next
                URL = "https://www1.hkexnews.hk/listedco/listconews/" & docLoc
                webfile = Mid(docLoc, InStrRev(docLoc, "/") + 1)
                e = ""
                If Right(docLoc, 4) = ".htm" And InStr(d2, "An announcement has just been published") = 0 Then
                    'read the web page for multi-files, unless it is just a Chinese-only thing
                    r = GetWeb(URL,, False)
                    'trim back the URL to folder
                    URL = Left(URL, InStrRev(URL, "/"))
                    r = StripTag(GetBody(r), "font")
                    r = StripTag(r, "u")
                    r = StripTag(r, "b")
                    x = 1
                    c = ""
                    docName = ""
                    Call TagCont(x, r, "table", c)
                    title = CleanStr(ReadWebCell(c, 1, 1))
                    Console.WriteLine(title)
                    Call TagCont(x, r, "table", c)
                    coName = CleanStr(ReadWebCell(c, 2, 2))
                    Console.WriteLine(coName)
                    'get the inner table with document list
                    Call TagCont(x, r, "table", c)
                    Call TagCont(1, c, "table", c)
                    tr = ReadWebRows(c)
                    s = "<html><head><meta charset='utf-8'><title>" & title & "</title></head><body>"
                    s &= "<h1>" & coName & "<h1><h2>" & title & "</h2>"
                    'ignore first row
                    For x = 1 To UBound(tr)
                        'column layout can vary, so hunt the href to find the correct column
                        y = InStr(tr(x), "href=")
                        y = InStrRev(tr(x), "<td", y)
                        Call TagCont(y, tr(x), "td", c)
                        'get the folder/file location
                        docLoc = GetAttrib(c, "href")
                        file = Mid(docLoc, InStr(docLoc, "/") + 1)
                        Call TagCont(1, c, "a", docName)
                        docName = HTMLtext(docName)
                        Console.WriteLine(file & vbTab & docName)
                        con.Execute("INSERT IGNORE INTO repdocs(repID,file,docName)" & Valsql({repID, file, docName}))
                        s &= "<p><a href='" & docLoc & "'>" & docName & "</a></p>"
                        e = ""
                        target = DoDfolder & codes(0) & "\" & Replace(docLoc, "/", "\")
                        Call Download(URL & docLoc, target, e, False, False)
                    Next
                    s &= "</body></html>"
                    buffer = System.Text.Encoding.UTF8.GetBytes(s)
                    target = DoDfolder & codes(0) & "\" & webfile
                    Console.WriteLine(target)
                    Call WriteFile(target, buffer, True)
                Else
                    target = DoDfolder & codes(0) & "\" & webfile
                    Console.WriteLine(target)
                    Call Download(URL, target, e, False, False)
                End If
            End If
        Next
        con.Close()
        con = Nothing
    End Sub
    Sub TestReports()
        'used to debug when autoreports crashed
        Dim cat As Byte, URL As String, docType As Integer, fDate, tDate As Date
        fDate = #2020-10-23#
        tDate = fDate
        cat = 0
        docType = 0
        URL = "40100"
        URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&searchType=1&t1code=40000&t2code=" &
                URL & "&fromDate=" & Format(fDate, "yyyyMMdd") & "&toDate=" & Format(tDate, "yyyyMMdd") & "&category=" & cat & "&rowRange="
        Call RepsCore(URL, fDate, docType)
    End Sub
    Sub TestResults()
        Dim cat As Byte, URL, r As String, docType As Integer, fDate, tDate As Date
        fDate = #2020-10-28#
        tDate = fDate
        cat = 0
        docType = 11
        URL = "13600" 'Quarterly
        URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&t2code=" &
                URL & "&fromDate=" & Format(fDate, "yyyyMMdd") & "&toDate=" & Format(tDate, "yyyyMMdd") & "&category=" & cat & "&rowRange="
        r = GetFilings(URL)
        Console.WriteLine(r)
        Call ResultsCore(URL, fDate, docType)
    End Sub
    Sub Autoreports()
        On Error GoTo repErr
        'run at 02:00 Mon-Sat to fetch previous day's reports (including Sunday night's)
        Dim d As Date
        d = CDate(GetLog("LastReports"))
        Do Until d >= Today.AddDays(-1)
            d = d.AddDays(1)
            Console.WriteLine("Fetching reports for listed cos on " & MSdate(d))
            Call GetReports(d,, False)
            Console.WriteLine("Fetching reports for delisted cos on " & MSdate(d))
            Call GetReports(d,, True)
            Call PutLog("LastReports", MSdate(d))
        Loop
        Exit Sub
repErr:
        Call ErrMail("Autoreports failed for " & MSdate(d), Err)
    End Sub
    Sub Autoresults()
        On Error GoTo repErr
        'run at 02:00 Mon-Sat to fetch previous day's results (including Sunday night's)
        Dim d As Date
        d = CDate(GetLog("LastResults"))
        Do Until d >= Today.AddDays(-1)
            d = d.AddDays(1)
            Console.WriteLine("Fetching results for listed cos on " & MSdate(d))
            Call GetResults(d,, False)
            Console.WriteLine("Fetching results for delisted cos on " & MSdate(d))
            Call GetResults(d,, True)
            Call PutLog("LastResults", MSdate(d))
        Loop
        Exit Sub
repErr:
        Call ErrMail("Autoresults failed for " & MSdate(d), Err)
    End Sub

    Function GetFilings(URL As String) As String
        Dim r As String, recordCnt As Integer
        'first fetch up to 1 record, to obtain the record count
        r = GetWeb(URL & "1")
        recordCnt = CInt(GetVal(r, "recordCnt"))
        If recordCnt = 0 Then Return ""
        'now get the full set of records
        r = GetWeb(URL & recordCnt)
        r = GetVal(r, "result")
        r = Replace(r, "\""", """")
        r = Replace(r, "\\", "\")
        r = Replace(r, "\n", " ")
        r = Replace(r, "\r", " ")
        r = StripSpace(r)
        r = Replace(r, "\u0026", "&")
        r = Replace(r, "\u0027", "'")
        r = Replace(r, "\u003c", "<")
        r = Replace(r, "\u003e", ">")
        Return r
    End Function
    Sub ProcNewsRow(tr As String, ByRef newsID As Integer, ByRef filed As String, ByRef codes() As String, ByRef names() As String,
                   ByRef d1 As String, ByRef d2 As String, ByRef docLoc As String, ByRef fsize As String)
        newsID = CInt(GetVal(tr, "NEWS_ID"))
        filed = GetVal(tr, "DATE_TIME")
        filed = MSdateDMY(Left(filed, 10)) & " " & Right(filed, 5)
        codes = Split(GetVal(tr, "STOCK_CODE"), "<br/>")
        names = Split(GetVal(tr, "STOCK_NAME"), "<br/>")
        d1 = HTMLtext(GetVal(tr, "LONG_TEXT"))
        d2 = HTMLtext(GetVal(tr, "TITLE"))
        docLoc = GetVal(tr, "FILE_LINK")
        docLoc = Mid(docLoc, InStr(docLoc, "conews/") + 7)
        fsize = GetVal(tr, "FILE_INFO")
        If fsize = "Multi-Files" Then
            fsize = ""
        ElseIf Right(fsize, 2) = "MB" Then
            fsize = CStr(CInt(Left(fsize, Len(fsize) - 2)) * 1024)
        Else
            fsize = Left(fsize, Len(fsize) - 2)
        End If
    End Sub
    Sub ProcRow(tr As String, ByVal fdate As Date, ByRef newsID As Integer, ByRef filed As String, ByRef fileDate As String, ByRef lunch As Boolean,
                ByRef codes() As String, ByRef names() As String, ByRef d1 As String, ByRef d2 As String, ByRef docLoc As String, ByRef fsize As String)
        Dim fileTime As String
        newsID = CInt(GetVal(tr, "NEWS_ID"))
        filed = GetVal(tr, "DATE_TIME")
        'process the filing date-time based on HKEX trading hours. Return filed and fileDate in MySQL format, and lunch
        'lunchtime has varied, so anything between 12:00 and 13:30 is treated as lunch
        'any results announced pre-morning market are treated as previous market day
        fileTime = Right(filed, 5)
        lunch = fileTime > "11:59" And fileTime < "13:31"
        fileDate = MSdateDMY(Left(filed, 10))
        filed = fileDate & " " & fileTime
        If fileTime < "09:30" Then fileDate = MSdate(PrevTradingDay(CDate(fileDate)))
        codes = Split(GetVal(tr, "STOCK_CODE"), "<br/>")
        names = Split(GetVal(tr, "STOCK_NAME"), "<br/>")
        If fdate < #6/25/2007# Then
            d1 = HTMLtext(GetVal(tr, "TITLE"))
            d2 = ""
        Else
            d1 = HTMLtext(GetVal(tr, "LONG_TEXT"))
            d2 = HTMLtext(GetVal(tr, "TITLE"))
        End If
        docLoc = GetVal(tr, "FILE_LINK")
        'foward if docloc is a web page with a single PDF link
        docLoc = URLfwd("https://www.hkexnews.hk" & docLoc)
        'trim it back for storage
        docLoc = Mid(docLoc, InStr(docLoc, "conews/") + 7)
        fsize = GetVal(tr, "FILE_INFO")
        If fsize = "Multi-Files" Then
            fsize = "NULL"
        ElseIf Right(fsize, 2) = "MB" Then
            fsize = CStr(CInt(Left(fsize, Len(fsize) - 2)) * 1024)
        Else
            fsize = Left(fsize, Len(fsize) - 2)
        End If
        Console.WriteLine()
        Console.WriteLine(filed & vbTab & fsize & "KB" & vbTab & docLoc)
        For x = 0 To UBound(codes)
            Console.WriteLine(codes(x) & vbTab & names(x))
        Next
        Console.WriteLine(d1)
        Console.WriteLine(d2)
    End Sub
    Sub GetReports(fDate As Date, Optional tDate As Date = #12/30/1899#, Optional delisted As Boolean = False)
        If tDate = #12/30/1899# Then tDate = fDate
        If fDate < #6/25/2007# Then
            If tDate < #6/25/2007# Then
                Call GetReports1(fDate, tDate, delisted)
            Else
                'split into two periods
                Call GetReports1(fDate, #06/24/2007#, delisted)
                Call GetReports2(#06/25/2007#, tDate, delisted)
            End If
        Else
            Call GetReports2(fDate, tDate, delisted)
        End If
    End Sub
    Sub GetReports1(fDate As Date, Optional tDate As Date = #12/30/1899#, Optional delisted As Boolean = False)
        'for filings before 2007-06-25
        'fetch a list of reports from HKEX for a date or range
        If fDate >= #6/25/2007# Then Exit Sub
        If tDate = #12/30/1899# Then tDate = fDate
        If tDate >= #6/25/2007# Then tDate = #6/24/2007#
        Dim cat As Byte, URL As String
        If delisted Then cat = 1 Else cat = 0
        'Search for Document Type/Financial Statements
        'sortDir 0=reverse chron, 1=chron
        URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&searchType=2&documentType=11500&fromDate=" &
            Format(fDate, "yyyyMMdd") & "&toDate=" & Format(tDate, "yyyyMMdd") & "&category=" & cat & "&rowRange="
        Call RepsCore(URL, fDate)
        Console.WriteLine("Done!")
    End Sub
    Sub GetReports2(fDate As Date, Optional tDate As Date = #12/30/1899#, Optional delisted As Boolean = False)
        'For reports filed on or after 2007-06-25 we can specify report type in search
        'fetch lists annual, interim and quarterly reports from HKEX for a date or range
        If fDate < #6/25/2007# Then Exit Sub
        If tDate = #12/30/1899# Then tDate = fDate
        Dim cat As Byte, URL As String, docType As Integer
        If delisted Then cat = 1 Else cat = 0
        For Each docType In {0, 1, 6} 'annual, interim, quarterly
            Console.WriteLine("docType:" & docType)
            URL = ""
            Select Case docType
                Case 0
                    URL = "40100"
                Case 1
                    URL = "40200"
                Case 6
                    URL = "40300"
            End Select
            URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&searchType=1&t1code=40000&t2code=" &
                URL & "&fromDate=" & Format(fDate, "yyyyMMdd") & "&toDate=" & Format(tDate, "yyyyMMdd") & "&category=" & cat & "&rowRange="
            Call RepsCore(URL, fDate, docType)
        Next
        Console.WriteLine("Done!")
    End Sub
    Sub GetResults(fDate As Date, Optional tDate As Date = #12/30/1899#, Optional delisted As Boolean = False)
        If fDate < #6/25/2007# Then Exit Sub 'the descriptions before then were not precise enough to use
        If tDate = #12/30/1899# Then tDate = fDate
        Dim cat As Byte, URL As String, docType As Integer
        If delisted Then cat = 1 Else cat = 0
        For docType = 9 To 11
            Console.WriteLine("docType:" & docType)
            URL = ""
            Select Case docType
                Case 9
                    URL = "13300" 'Annual
                Case 10
                    URL = "13400" 'Interim
                Case 11
                    URL = "13600" 'Quarterly
            End Select
            URL = "https://www1.hkexnews.hk/search/titleSearchServlet.do?sortDir=0&sortByOptions=DateTime&market=SEHK&lang=E&searchType=1&t1code=10000&t2code=" &
                URL & "&fromDate=" & Format(fDate, "yyyyMMdd") & "&toDate=" & Format(tDate, "yyyyMMdd") & "&category=" & cat & "&rowRange="
            Call ResultsCore(URL, fDate, docType)
        Next
        Console.WriteLine("Done!")
    End Sub
    Sub ResultsCore(URL As String, fDate As Date, docType As Integer)
        'core part of results processor
        'URL is the HKEX URL for this search
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            d1, d2, d2Date, docLoc, r, sc, tr, filed, fileDate, fsize, recordDate, codes(0), names(0), rows(), docTypeStr, resName As String,
            orgID, filingID, row, targm, targy, x, y, yem, yed, newsID, repType As Integer, thisDocType As Integer,
            insert, overwrite, twoyears, update, lunch As Boolean
        r = GetFilings(URL)
        If r = "" Then Exit Sub
        rows = ReadArray(r)
        Call OpenEnigma(con)
        For row = 0 To UBound(rows)
            tr = rows(row)
            filed = ""
            fileDate = ""
            d1 = ""
            d2 = ""
            docLoc = ""
            fsize = ""
            Call ProcRow(tr, fDate, newsID, filed, fileDate, lunch, codes, names, d1, d2, docLoc, fsize)
            If docType = 11 And InStr(d2, "second quarter") + InStr(d2, "2nd quarter") + InStr(d2, "six months") > 0 And
                        InStr(d2, "3 months") + InStr(d2, "three months") + InStr(d2, "9 months") + InStr(d2, "nine months") = 0 Then
                thisDocType = 10 'second quarter should be interim
                'See stock code 1475 which has confusing headlines due to different year-end of controlling shareholder
            Else
                thisDocType = docType
            End If
            'report types are for documents table, thisDocType is for the repfilings table
            resName = ""
            Select Case thisDocType
                Case 9
                    repType = 0
                    resName = "annual"
                Case 10
                    repType = 1
                    resName = "interim"
                Case 11
                    repType = 6
                    resName = "quarterly"
            End Select
            If (thisDocType <> 9 Or InStr(d2, "unaudited") = 0) And InStr(d2, "supplemental") + InStr(d2, "clarification") + InStr(d2, "waiver") +
                InStr(d2, "postpone") + InStr(d2, "updated") + InStr(d2, "further") + InStr(d2, "delay") + InStr(d2, "Addendum") + InStr(d2, "Separate") +
                InStr(d2, "subsidiary") + InStr(d2, "BR GAAP") + InStr(d1, "(Headlines Revised") + InStr(d2, "extension") +
                InStr(d1, "Date of Board Meeting") = 0 Then
                overwrite = (InStr(d2, "Revised")) > 0
                rs.Open("Select * FROM repfilings WHERE newsID=" & newsID, con)
                If rs.EOF Then
                    If thisDocType < 0 Then docTypeStr = "NULL" Else docTypeStr = thisDocType.ToString
                    con.Execute("INSERT INTO repfilings(newsID, repfiled, docType, URL, fsize, descrip, descrip2) VALUES (" & newsID & ",'" &
                                filed & "'," & docTypeStr & ",'" & docLoc & "'," & fsize & ",'" & Apos(d1) & "','" & Apos(d2) & "')")
                    filingID = LastID(con)
                Else
                    filingID = CInt(rs("ID").Value)
                End If
                rs.Close()
                Call FindYear(d2, y, twoyears)
                d2Date = ""
                If y > 0 Then d2Date = FindDateTxt(d2, y) 'try to find record date in description
                'Some reports are just labelled "Interim Report" or "Annual Report" or "First Quarterly Report" or "Third Quarterly Report"
                'so we'll guess the year from filing date and then test it - could be for the previous year, depending on the org if it covers multiple ETFs
                For x = 0 To UBound(codes)
                    sc = codes(x)
                    If sc = "" Then
                        SendMail("Missing stock codes for filing", filed & vbCrLf & d1 & vbCrLf & d2)
                    Else
                        con.Execute("INSERT IGNORE INTO filingcodes(repID,sc) VALUES (" & filingID & "," & sc & ")")
                        'try to record the resID in documents table for each issuer
                        rs.Open("SELECT getOrgID(" & sc & ",'" & fileDate & "') AS orgID", con)
                        If IsDBNull(rs("OrgID").Value) Then
                            Console.WriteLine("Results found but Org not found for stock code: " & sc)
                            SendMail("Results found but Org not found for stock code: " & sc, d1 & Chr(10) & d2 & Chr(10) & "Repfilings ID:" & filingID)
                        Else
                            orgID = CInt(rs("OrgID").Value)
                            rs.Close()
                            rs.Open("SELECT * FROM documents WHERE orgID=" & orgID & " AND resID=" & filingID, con)
                            If rs.EOF Then
                                'org not yet associated with results
                                update = False
                                insert = False
                                recordDate = d2Date
                                If recordDate <> "" Then
                                    'look for a matching record
                                    rs.Close()
                                    rs.Open("SELECT * FROM documents WHERE orgID=" & orgID & " AND docTypeID=" & repType & " AND recordDate='" & recordDate & "'", con)
                                    If rs.EOF Then
                                        insert = True
                                    ElseIf IsDBNull(rs("resID").Value) Or overwrite Then
                                        update = True
                                    End If
                                Else
                                    'no exact date was specified in description
                                    rs.Close()
                                    rs.Open("SELECT YearEndMonth AS yem,YearEndDate AS yed FROM orgdata WHERE personID=" & orgID, con)
                                    If Not rs.EOF Then
                                        yem = DBint(rs("yem"))
                                        yed = DBint(rs("yed"))
                                    Else
                                        yem = 0
                                        yed = 0
                                    End If
                                    'now try to match the filing with known documents
                                    'don't overwrite previous resID unless this is marked as a revision
                                    If thisDocType = 9 Then
                                        'annual results.
                                        rs.Close()
                                        If y = 0 Then
                                            targy = Year(CDate(fileDate))
                                            'no year specified - try to find the last year-end before filing date, but not earlier than the previous year
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)+1 >=" & targy & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC", con)
                                            If Not rs.EOF Then
                                                If IsDBNull(rs("resID").Value) Or overwrite Then update = True
                                            End If
                                        Else
                                            targy = y
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)=" & y & " AND recordDate<'" & fileDate & "' ORDER BY recordDate", con)
                                            If Not rs.EOF Then
                                                'found a match
                                                If IsDBNull(rs("resID").Value) Or overwrite Then
                                                    update = True
                                                Else
                                                    'look for a second annual report in the year, in case of change of year-end
                                                    rs.MoveNext()
                                                    If Not rs.EOF Then
                                                        If IsDBNull(rs("resID").Value) Then update = True
                                                    End If
                                                End If
                                            End If
                                        End If
                                        If (Not update) And yem > 0 And yed > 0 Then
                                            'some ETFs don't announce results and just produce reports
                                            recordDate = MSdate(DateSerial(targy, CInt(yem), CInt(yed)))
                                            If recordDate > fileDate Then targy -= 1
                                            rs.Close()
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND month(recordDate)=" & yem, con)
                                            If rs.EOF Then
                                                insert = True
                                                If yem = 2 And yed = 28 And Int(targy / 4) = targy / 4 Then yed = 29
                                                recordDate = MSdate(DateSerial(targy, CInt(yem), CInt(yed)))
                                            ElseIf IsDBNull(rs("resID").Value) Or overwrite Then
                                                update = True
                                            End If
                                        End If
                                    ElseIf thisDocType = 10 Then
                                        'interim results. If year-end is <July, then sometimes report is labelled with the next year, sometimes the current year
                                        'and sometimes both years
                                        'find the month of the last year-end before this report, if any. Otherwise use yem from orgdata
                                        rs.Close()
                                        'get the last year-end and add 6
                                        rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC LIMIT 1", con)
                                        If Not rs.EOF Then yem = Month(CDate(rs("RecordDate").Value))
                                        targm = yem + 6
                                        If targm > 12 Then targm -= 12
                                        If y = 0 Then targy = Year(CDate(fileDate)) Else targy = y
                                        If MSdate(DateSerial(targy, targm + 1, 0)) > fileDate Then targy -= 1
                                        rs.Close()
                                        rs.Open("SELECT * FROM documents WHERE docTypeID=1 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND recordDate<'" & fileDate & "' ORDER BY recordDate", con)
                                        If Not rs.EOF Then
                                            If IsDBNull(rs("resID").Value) Or overwrite Then
                                                update = True
                                            Else
                                                rs.MoveNext()
                                                If Not rs.EOF Then
                                                    'a second interim report in the year, due to change of year-end
                                                    If IsDBNull(rs("resID").Value) Then update = True
                                                End If
                                            End If
                                        ElseIf yem > 0 Then
                                            recordDate = MSdate(DateSerial(targy, targm + 1, 0))
                                            insert = True
                                        End If
                                    ElseIf thisDocType = 11 And yem > 0 Then
                                        'quarterly results. NB there is a risk that an interim results is incorrectly tagged as quarterly by HKEX (2nd quarterly)
                                        'which report is it, 3 months or 9?
                                        If InStr(d2, "Third") + InStr(d2, "3rd") + InStr(d2, "nine month") + InStr(d2, "nine-month") + InStr(d2, "9 month") +
                                            InStr(d2, "9-month") + InStr(d2, "Q3") + InStr(d2, "3Q") > 0 Then targm = 9 Else targm = 3
                                        'find the month of the last year-end before this results, if any. Otherwise use yem from orgdata
                                        rs.Close()
                                        rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC LIMIT 1", con)
                                        If Not rs.EOF Then yem = Month(CDate(rs("RecordDate").Value))
                                        targm = yem + targm
                                        If y = 0 Then targy = Year(CDate(fileDate)) Else targy = y
                                        If targy > Year(CDate(fileDate)) Or (twoyears And targm < 13) Then targy -= 1
                                        If targm > 12 Then targm -= 12
                                        If MSdate(DateSerial(targy, targm + 1, 0)) > fileDate Then targy -= 1
                                        rs.Close()
                                        rs.Open("SELECT * FROM documents WHERE docTypeID=6 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND month(recordDate)=" & targm, con)
                                        If rs.EOF Then
                                            recordDate = MSdate(DateSerial(targy, targm + 1, 0))
                                            insert = True
                                        ElseIf IsDBNull(rs("resID").Value) Or overwrite Then
                                            update = True
                                        End If
                                    End If
                                End If
                                If update Then
                                    con.Execute("UPDATE documents SET reportDate='" & fileDate & "',resID=" & filingID & ",MidDay=" & lunch & " WHERE ID=" & rs("ID").Value.ToString)
                                    Console.WriteLine("Updated " & resName & " results for:" & CStr(rs("RecordDate").Value) & " lunch:" & lunch & " " & filed)
                                ElseIf insert Then
                                    con.Execute("INSERT INTO documents(orgID,docTypeID,recordDate,MidDay,reportDate,resID) VALUES (" &
                                        orgID & "," & repType & ",'" & recordDate & "'," & lunch & ",'" & fileDate & "'," & filingID & ")")
                                    Console.WriteLine("Inserted orgID:" & orgID & " " & resName & " results for:" & recordDate & " lunch:" & lunch &
                                              " filed:" & filed & " deemed fileDate:" & fileDate)
                                End If
                            End If
                        End If
                        rs.Close()
                    End If
                Next
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("ResultsCore failed with date:" & fDate & " docType:" & docType, Err)
    End Sub
    Sub RepsCore(URL As String, fDate As Date, Optional docType As Integer = -1)
        'core part of reports processor
        'URL is the HKEX URL for this search
        'if date is on or after 2007-06-25 then docType will have value, otherwise we derive it from the filing
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            d1, d2, d2Date, docLoc, r, sc, tr, filed, fileDate, fsize, recordDate, codes(0), names(0), rows(), docTypeStr As String,
            orgID, repID, row, targm, targy, x, y, yem, yed, newsID As Integer,
            insert, overwrite, twoyears, update, lunch As Boolean, thisDocType As Integer
        r = GetFilings(URL)
        If r = "" Then Exit Sub
        rows = ReadArray(r)
        Call OpenEnigma(con)
        For row = 0 To UBound(rows)
            thisDocType = docType 'default
            tr = rows(row)
            filed = "" : fileDate = "" : d1 = "" : d2 = "" : docLoc = "" : fsize = ""
            Call ProcRow(tr, fDate, newsID, filed, fileDate, lunch, codes, names, d1, d2, docLoc, fsize)
            If fDate < #06/25/2007# Then
                Select Case Left(d1, 4)
                    Case "Annu" : thisDocType = 0
                    Case "Inte" : thisDocType = 1
                    Case "Quar" : thisDocType = 6
                    Case "Envi" : thisDocType = 8 'environmental etc
                    Case Else
                        If InStr(d1, "annual") > 0 Then
                            thisDocType = 0
                        ElseIf InStr(d1, "interim") + InStr(d1, "2nd Quarterly") > 0 Then
                            thisDocType = 1
                        ElseIf InStr(d1, "quarterly") > 0 Then
                            thisDocType = 6
                        Else
                            thisDocType = -1 'unknown
                        End If
                End Select
            Else
                If docType = 6 And InStr(d2, "second quarter") + InStr(d2, "2nd quarter") + InStr(d2, "six months") > 0 And
                        InStr(d2, "3 months") + InStr(d2, "three months") + InStr(d2, "9 months") + InStr(d2, "nine months") = 0 Then
                    thisDocType = 1 'second quarter should be interim
                    'See stock code 1475 which has confusing headlines due to different year-end of controlling shareholder
                End If
            End If
            If Left(d1, 7) = "(Cancel" Then
                        rs.Open("SELECT * FROM repfilings WHERE newsID=" & newsID, con)
                        If Not rs.EOF Then
                            repID = CInt(rs("ID").Value)
                            con.Execute("UPDATE repfilings SET descrip='" & Apos(d1) & "' WHERE ID=" & repID)
                            con.Execute("UPDATE documents SET repID=NULL WHERE repID=" & repID)
                            Console.WriteLine("Cancel for newsID:" & newsID)
                        End If
                        rs.Close()
                    ElseIf InStr(d2, "supplemental") + InStr(d2, "clarification") + InStr(d2, "waiver") + InStr(d2, "postpone") +
                        InStr(d2, "updated") + InStr(d2, "further") + InStr(d2, "delay") + InStr(d2, "Addendum") + InStr(d2, "Separate") + InStr(d2, "subsidiary") +
                        InStr(d2, "BR GAAP") + InStr(d2, "Discussion") + InStr(d2, "Consolidated") + InStr(d2, "extension") = 0 Then
                        overwrite = (InStr(d1, "Revised") + InStr(d2, "Revised")) > 0
                rs.Open("SELECT * FROM repfilings WHERE newsID=" & newsID, con)
                If rs.EOF Then
                    If thisDocType < 0 Then docTypeStr = "NULL" Else docTypeStr = CStr(thisDocType)
                    con.Execute("INSERT INTO repfilings(newsID,repfiled,docType,URL,fsize,descrip,descrip2) VALUES (" & newsID & ",'" &
                    filed & "'," & docTypeStr & ",'" & docLoc & "'," & fsize & ",'" & Apos(d1) & "','" & Apos(d2) & "')")
                    repID = LastID(con)
                Else
                    repID = CInt(rs("ID").Value)
                End If
                rs.Close()
                Call FindYear(d2, y, twoyears)
                d2Date = ""
                If y > 0 Then d2Date = FindDateTxt(d2, y) 'try to find record date in description
                'Some reports are just labelled "Interim Report" or "Annual Report" or "First Quarterly Report" or "Third Quarterly Report"
                'so we'll guess the year from filing date and then test it - could be for the previous year, depending on the org if it covers multiple ETFs
                For x = 0 To UBound(codes)
                    sc = codes(x)
                    If sc = "" Then
                        SendMail("Missing stock codes for filing", filed & vbCrLf & d1 & vbCrLf & d2)
                    Else
                        con.Execute("INSERT IGNORE INTO filingcodes(repID,sc) VALUES (" & repID & "," & sc & ")")
                        If docType <> -1 And docType <> 8 Then
                            'try to record the repID in documents table for each issuer, excluding ESG reports
                            rs.Open("SELECT getOrgID(" & sc & ",'" & fileDate & "') AS orgID", con)
                            If IsDBNull(rs("OrgID").Value) Then
                                Console.WriteLine("Report found but Org not found for stock code: " & sc)
                                SendMail("Report found but Org not found for stock code: " & sc, d1 & vbCrLf & d2)
                            Else
                                orgID = CInt(rs("OrgID").Value)
                                rs.Close()
                                rs.Open("SELECT * FROM documents WHERE orgID=" & orgID & " AND repID=" & repID, con)
                                If rs.EOF Then
                                    'org not yet associated with report
                                    update = False
                                    insert = False
                                    recordDate = d2Date
                                    If recordDate <> "" Then
                                        rs.Close()
                                        rs.Open("SELECT * FROM documents WHERE orgID=" & orgID & " AND docTypeID=" & thisDocType & " AND recordDate='" & recordDate & "'", con)
                                        If rs.EOF Then
                                            insert = True
                                        ElseIf IsDBNull(rs("repID").Value) Or overwrite Then
                                            update = True
                                        End If
                                    Else
                                        'no exact date was specified in description
                                        rs.Close()
                                        rs.Open("SELECT YearEndMonth AS yem,YearEndDate AS yed FROM orgdata WHERE personID=" & orgID, con)
                                        If Not rs.EOF Then
                                            yem = DBint(rs("yem"))
                                            yed = DBint(rs("yed"))
                                        Else
                                            yem = 0
                                            yed = 0
                                        End If
                                        'now try to match the filing with known documents
                                        'don't overwrite previous repID unless this is marked as a revision
                                        If thisDocType = 0 Then
                                            'annual report.
                                            rs.Close()
                                            If y = 0 Then
                                                targy = Year(CDate(fileDate))
                                                'no year specified - try to find the last year-end before filing date, but not earlier than the previous year
                                                rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)+1 >=" & targy & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC", con)
                                                If Not rs.EOF Then
                                                    If IsDBNull(rs("repID").Value) Or overwrite Then update = True
                                                End If
                                            Else
                                                targy = y
                                                rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)=" & y & " AND recordDate<'" & fileDate & "' ORDER BY recordDate", con)
                                                If Not rs.EOF Then
                                                    'found a match
                                                    If IsDBNull(rs("repID").Value) Or overwrite Then
                                                        update = True
                                                    Else
                                                        'look for a second annual report in the year, in case of change of year-end
                                                        rs.MoveNext()
                                                        If Not rs.EOF Then
                                                            If IsDBNull(rs("repID").Value) Then update = True
                                                        End If
                                                    End If
                                                End If
                                            End If
                                            If (Not update) And yem > 0 And yed > 0 Then
                                                'some ETFs don't announce results and just produce reports
                                                recordDate = MSdate(DateSerial(targy, CInt(yem), CInt(yed)))
                                                If recordDate > fileDate Then targy -= 1
                                                rs.Close()
                                                rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND month(recordDate)=" & yem, con)
                                                If rs.EOF Then
                                                    insert = True
                                                    If yem = 2 And yed = 28 And Int(targy / 4) = targy / 4 Then yed = 29
                                                    recordDate = MSdate(DateSerial(targy, CInt(yem), CInt(yed)))
                                                ElseIf IsDBNull(rs("repID").Value) Or overwrite Then
                                                    update = True
                                                End If
                                            End If
                                        ElseIf thisDocType = 1 Then
                                            'interim report. If year-end is <July, then sometimes report is labelled with the next year, sometimes the current year
                                            'and sometimes both years
                                            'find the month of the last year-end before this report, if any. Otherwise use yem from orgdata
                                            rs.Close()
                                            'get the last year-end and add 6
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC LIMIT 1", con)
                                            If Not rs.EOF Then yem = Month(CDate(rs("RecordDate").Value))
                                            targm = yem + 6
                                            If targm > 12 Then targm -= 12
                                            If y = 0 Then targy = Year(CDate(fileDate)) Else targy = y
                                            If MSdate(DateSerial(targy, targm + 1, 0)) > fileDate Then targy -= 1
                                            rs.Close()
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=1 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND recordDate<'" & fileDate & "' ORDER BY recordDate", con)
                                            If Not rs.EOF Then
                                                If IsDBNull(rs("repID").Value) Or overwrite Then
                                                    update = True
                                                Else
                                                    rs.MoveNext()
                                                    If Not rs.EOF Then
                                                        'a second interim report in the year, due to change of year-end
                                                        If IsDBNull(rs("repID").Value) Then update = True
                                                    End If
                                                End If
                                            ElseIf yem > 0 Then
                                                recordDate = MSdate(DateSerial(targy, targm + 1, 0))
                                                insert = True
                                            End If
                                        ElseIf thisDocType = 6 And yem > 0 Then
                                            'quarterly report. NB there is a risk that an interim report is incorrectly tagged as quarterly by HKEX (2nd quarterly)
                                            'which report is it, 3 months or 9?
                                            'find the month of the last year-end before this report, if any. Otherwise use yem from orgdata
                                            If InStr(d2, "Third") + InStr(d2, "3rd") + InStr(d2, "nine month") + InStr(d2, "nine-month") + InStr(d2, "9 month") +
                                                InStr(d2, "9-month") + InStr(d2, "Q3") + InStr(d2, "3Q") > 0 Then targm = 9 Else targm = 3
                                            rs.Close()
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=0 AND orgID=" & orgID & " AND recordDate<'" & fileDate & "' ORDER BY recordDate DESC LIMIT 1", con)
                                            If Not rs.EOF Then yem = Month(CDate(rs("RecordDate").Value))
                                            targm = yem + targm
                                            If y = 0 Then targy = Year(CDate(fileDate)) Else targy = y
                                            If targy > Year(CDate(fileDate)) Or (twoyears And targm < 13) Then targy -= 1
                                            If targm > 12 Then targm -= 12
                                            If MSdate(DateSerial(targy, targm + 1, 0)) > fileDate Then targy -= 1
                                            rs.Close()
                                            rs.Open("SELECT * FROM documents WHERE docTypeID=6 AND orgID=" & orgID & " AND year(recordDate)=" & targy & " AND month(recordDate)=" & targm, con)
                                            If rs.EOF Then
                                                recordDate = MSdate(DateSerial(targy, targm + 1, 0))
                                                insert = True
                                            ElseIf IsDBNull(rs("repID").Value) Or overwrite Then
                                                update = True
                                            End If
                                        End If
                                    End If
                                    If update Then
                                        con.Execute("UPDATE documents SET repID=" & CStr(repID) & " WHERE ID=" & CStr(rs("ID").Value))
                                        Console.WriteLine("Updated docType:" & thisDocType & vbTab & CStr(rs("RecordDate").Value) & vbTab & filed & vbTab & sc & vbTab & names(x))
                                    ElseIf insert Then
                                        con.Execute("INSERT INTO documents(orgID,docTypeID,recordDate,reportDate,repID) VALUES (" &
                                            orgID & "," & thisDocType & ",'" & recordDate & "','" & fileDate & "'," & repID & ")")
                                        Console.WriteLine("Inserted orgID:" & orgID & vbTab & " docType:" & thisDocType & " recDate:" & recordDate & " filed:" & filed & " " & sc & vbTab & names(x))
                                    End If
                                End If
                            End If
                            rs.Close()
                        End If
                    End If
                Next
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("RepsCore failed with date:" & fDate & " docType:" & docType, Err)
    End Sub

    Function FindDateTxt(ByVal s As String, y As Integer) As String
        'find date text in a string after the whole word "ended" and a year y
        'e.g. "31st May 2005"
        'overcomes problem that isDate and cDate don't recognise dates with ordinals like 1st, 2nd etc.
        Dim x As Integer
        x = InStr(s, " ended ")
        If x > 0 Then
            s = Right(s, Len(s) - x - 6)
            s = Replace(s, "1st", "1")
            s = Replace(s, "2nd", "2")
            s = Replace(s, "3rd", "3")
            s = Replace(s, "4th", "4")
            s = Replace(s, "5th", "5")
            s = Replace(s, "6th", "6")
            s = Replace(s, "7th", "7")
            s = Replace(s, "8th", "8")
            s = Replace(s, "9th", "9")
            s = Replace(s, "0th", "0")
            x = InStr(s, CStr(y)) + 3
            s = Left(s, x)
        End If
        If IsDate(s) Then Return MSdate(CDate(s))
        'Alibaba uses format "THE SEPTEMBER QUARTER 2020" etc
        If InStr(s, "January") > 0 Then
            If InStr(s, "December") > 0 Then Return MSdate(DateSerial(y, 12, 31)) 'CLP mentions the start month and the end month, so we need the latter
            Return MSdate(DateSerial(y, 1, 31))
        End If
        If InStr(s, "February") > 0 Then
            If Int(y / 4) = y / 4 Then Return MSdate(DateSerial(y, 2, 29)) Else Return MSdate(DateSerial(y, 2, 28))
        End If
        If InStr(s, "March") > 0 Then Return MSdate(DateSerial(y, 3, 31))
        If InStr(s, "April") > 0 Then Return MSdate(DateSerial(y, 4, 30))
        If InStr(s, "May") > 0 Then Return MSdate(DateSerial(y, 5, 31))
        If InStr(s, "June") > 0 Then Return MSdate(DateSerial(y, 6, 30))
        If InStr(s, "July") > 0 Then Return MSdate(DateSerial(y, 7, 31))
        If InStr(s, "August") > 0 Then Return MSdate(DateSerial(y, 8, 31))
        If InStr(s, "September") > 0 Then Return MSdate(DateSerial(y, 9, 30))
        If InStr(s, "October") > 0 Then Return MSdate(DateSerial(y, 10, 31))
        If InStr(s, "November") > 0 Then Return MSdate(DateSerial(y, 11, 30))
        If InStr(s, "December") > 0 Then Return MSdate(DateSerial(y, 12, 31))
        Return ""
    End Function
    Sub TestYear(s As String)
        Dim y As Integer, twoYears As Boolean
        Call FindYear(s, y, twoYears)
        Console.WriteLine(y & vbTab & twoYears)
        Console.WriteLine(FindDateTxt(s, y))
    End Sub
    Sub FindYear(ByVal s As String, ByRef y As Integer, ByRef twoYears As Boolean)
        'extract the year of the year-end
        'if the string s contains 2 years, e.g. 2016/2017, 2016-2017, 2016/17, 2016-17, then twoYears is True, else False
        Dim y2 As String
        y = Year(Today) + 2 'allow for possible 18-month year
        twoYears = False
        s &= " " ' add padding to look for /YY and -YY at end of s
        For y = y To 2000 Step -1
            y2 = Right(CStr(y), 2)
            If InStr(s, "-" & y) <> 0 Or InStr(s, "/" & y) <> 0 Or InStr(s, "/" & y2 & " ") <> 0 Or InStr(s, "-" & y2 & " ") <> 0 Then
                twoYears = True
                Exit For
            ElseIf InStr(s, CStr(y)) <> 0 Then
                Exit For
            End If
        Next
        If y = 1999 Then y = 0
    End Sub
    Function URLfwd(ByVal URL As String) As String
        Dim r, u As String
        'if the URL is an htm, and if that web page only has one href on it, and it is to a PDF, then substitute it as the URL
        URLfwd = URL
        If Right(URL, 4) = ".htm" Or Right(URL, 5) = ".html" Then
            r = GetBody(GetWeb(URL))
            If MatchCnt(r, "<a href") = 1 Then
                u = GetAttrib(GetTag(1, r, "a"), "href")
                If Right(u, 4) = ".pdf" Then
                    'we will forward
                    If Left(u, 1) = "/" Then
                        'address relative to root
                        u = Left(URL, InStr(InStr(URL, "//") + 2, URL, "/")) & Mid(u, 2)
                    Else
                        URL = Left(URL, InStrRev(URL, "/"))
                        Do Until Left(u, 2) <> "./" And Left(u, 3) <> "../"
                            If Left(u, 2) = "./" Then
                                'same virtual folder
                                u = Mid(u, 3)
                            Else
                                'up one folder
                                URL = Left(URL, Len(URL) - 1)
                                URL = Left(URL, InStrRev(URL, "/"))
                                u = Mid(u, 4)
                            End If
                        Loop
                        u = URL & u
                    End If
                    URLfwd = u
                End If
            End If
        End If
    End Function

End Module
