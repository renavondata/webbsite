Option Compare Text
Option Explicit On

Imports System.Net
Imports JSONkit
Imports ScraperKit

Module GetJudgments
    Sub Main()
        '2025-08-07: improved GetAllNewJudgments. Added new entry to Log2
        '2025-07-30: I have completely rewritten this module to build a table of past and new judgments.
        'GetAllJudgments will collect or update all available Judgments on the Judiciary web page
        'GetAllReasons collect Reasons for Verdict or Sentencing in criminal cases
        'so run those to build your tables, or just download ours in the next weekly data dump
        'you need 2 related tables: courts and casetypes. Download those from the dump.
        'we found that some judgments appear in the full list but not in the "Newly Added Judgments" page, so it is worth running these daily
        Call GetAllJudgments()
        Call GetAllReasons()
        'GetAllNewJudgments collects from the "Newly Added Judgments" page, including the upload date
        Call GetAllNewJudgments()
        Call PutLog("JudgmentsEnded", MSdateTime(Now))
    End Sub
    Sub TestJudgments(d As Date)
        'read out a New Judgments page but don't store it
        Dim r, URL, j(,) As String,
            cookies As New CookieCollection
        URL = "https://legalref.judiciary.hk/lrs/common/ju/newjudgments.jsp?datesel=" & d.ToString("ddMMyyyy")
        r = GetBody(GetWeb3(URL, cookies))
        If r > "" Then
            Call TagContID(1, r, "table", r)
            Call TagCont(1, r, "tbody", r)
            j = ReadNJ(r)
        End If
    End Sub
    Sub GetAllNewJudgments()
        '2025-08-07 new version no longer records last date done, just reads the available list from page
        'stores the judgment details in a table rather than saving MHT files which can no longer be opened by most modern browsers
        'This allows users to know when a judgment was uploaded - a fact which disappears after a week on the "Newly Added Judgments" page
        On Error GoTo repErr
        Dim d As Date,
            URL, r, c As String,
            x, y As Integer,
            dates(0) As Date,
            cookies As New CookieCollection
        URL = "https://legalref.judiciary.hk/lrs/common/index.jsp?target=newjudgments&lan=en"
        'URL = "https://legalref.judiciary.hk/lrs/common/ju/newjudgments.jsp"
        r = GetWeb3(URL, cookies)
        'find the list of Upload dates
        x = InStr(r, "Upload date")
        Call TagCont(x, r, "select", r)
        x = 1
        c = ""
        Do
            Call TagCont(x, r, "option", c)
            If c = "" Then Exit Do
            ReDim Preserve dates(y)
            dates(y) = ReadDMY(Left(c, 10))
            Console.WriteLine(c & vbTab & dates(y))
            y += 1
        Loop
        'skip the latest 2 dates because they usually have Word files, not DIS numbers
        For y = 2 To UBound(dates)
            Console.WriteLine("Fetching judgments for " & dates(y))
            Call GetNewJudgmentsDate(dates(y), cookies)
        Next
        Exit Sub
repErr:
        Call ErrMail("GetAllNewJudgments failed with date:" & dates(y), Err)
    End Sub
    Sub GetNewJudgmentsDate(d As Date, cookies As CookieCollection)
        'fetch the new judgments for one date
        On Error GoTo repErr
        Dim URL, r, j(,), c, sql As String,
            x, y, ct, ID As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        URL = "https://legalref.judiciary.hk/lrs/common/ju/newjudgments.jsp?I_SORT=s_court&I_SORT_ORDER=0&datesel=" & d.ToString("ddMMyyyy")
        r = GetBody(GetWeb3(URL, cookies))
        If r > "" Then
            Call TagContID(1, r, "table", r)
            Call TagCont(1, r, "tbody", r)
            j = ReadNJ(r)
            If j(0, 0) > "" Then
                For x = 0 To UBound(j, 2)
                    If j(1, x) = "0" Then
                        Call SendMail("Judgment " & j(3, x) & " issued on " & d & " still in Word format, not added to our table.")
                    Else
                        'get the caseType
                        c = j(2, x) 'caseNum
                        ct = 0
                        For y = 1 To Len(c)
                            If IsNumeric(Mid(c, y, 1)) Then
                                'found the first number
                                sql = "SELECT ID FROM casetypes WHERE prefix=" & Sqv(Left(c, y - 1))
                                ct = CInt(con.Execute(sql).Fields(0).Value)
                                Exit For
                            End If
                        Next
                        If ct = 0 Then
                            Call SendMail("New judgments case type " & c & " not recognised. Judgment not added.")
                        ElseIf Not IsNumeric(j(1, x)) Then
                            Call SendMail("GetNewJudgmentsDate Missing DIS from case " & c & " DIS=" & j(1, x))
                        Else
                            sql = "SELECT * FROM judgments WHERE DIS=" & j(1, x)
                            rs.Open(sql, con)
                            If rs.EOF Then
                                sql = "INSERT IGNORE INTO judgments(uploaded,DIS,caseNum,jDate,neutCit,parties,lang,caseType)" &
                                Valsql({j(0, x), j(1, x), j(2, x), j(3, x), j(4, x), j(5, x), j(6, x), ct})
                                con.Execute(sql)
                            Else
                                'judgment already in DB, perhaps from GetAllJudgments
                                ID = CInt(rs("ID").Value)
                                If IsDBNull(rs("uploaded").Value) Then
                                    sql = "UPDATE judgments" & Setsql("uploaded", {j(0, x)}) & "ID=" & ID
                                    con.Execute(sql)
                                    Console.WriteLine("Added uploaded date to existing judgment ID=" & ID)
                                End If
                                If IsDBNull(rs("caseType").Value) Then
                                    sql = "UPDATE judgments" & Setsql("caseType", {ct}) & "ID=" & ID
                                    con.Execute(sql)
                                    Console.WriteLine("Added caseType to existing judgment ID=" & ID)
                                End If
                            End If
                            rs.Close()
                        End If
                    End If
                Next
            End If
        Else
            Call SendMail("No judgments found for date:" & d)
        End If
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetNewJudgmentsDate failed with date:" & d, Err, sql)
    End Sub
    Sub GetAllJudgments()
        'download the entire list of judgments on the judgment page, using its JSON back-end
        Dim r, s, t, L0(), L1(), pref As String,
            x As Integer
        r = GetWeb("https://legalref.judiciary.hk/lrs/common/ju/judgment.jsp")
        x = InStr(r, "var courtsLv0")
        s = FindArray(r, x)
        L0 = ReadIDs(s)
        x = InStr(r, "var courtsLv1")
        r = Mid(r, x)
        For Each s In L0
            Console.WriteLine("Court:" & s)
            x = InStr(r, s & ":")
            t = FindArray(r, x)
            L1 = ReadIDs(t)
            For Each pref In L1
                Console.WriteLine("Fetching judgments for prefix:" & UCase(pref))
                Call ParseJudgments(UCase(pref), False, False)
            Next
        Next
    End Sub
    Sub GetAllReasons()
        'Get Reasons for Verdict and Reasons for Sentence from each court
        Dim s As String
        For Each s In {"HC", "DC", "ES", "FL", "KC", "KT", "ST", "TM", "WK"}
            'Get Reasons for Verdict
            Call ParseJudgments(s, True, False)
            'Get Reasons for Sentence
            Call ParseJudgments(s, False, True)
        Next
    End Sub
    Function ReadIDs(s As String) As String()
        Dim t, a(), b() As String,
            x, y, z As Integer
        a = ReadArray(s)
        ReDim b(UBound(a))
        For x = 0 To UBound(a)
            t = a(x)
            y = InStr(t, """") + 1
            z = InStr(Mid(t, y), """")
            b(x) = Mid(t, y, z - 1)
        Next
        Return b
    End Function
    Sub ParseJudgments(pref As String, RV As Boolean, RSen As Boolean)
        'parse all the online judgments for one kind of court case
        'RV = Reasons for Verdict
        'RS = Reasons for Sentence
        On Error GoTo repErr
        Dim j, r, s, y, stem, years(), cases(), dis, caseNum, neutCit, parties, rep, jDate, ID, lang, URL As String,
            star, misc, RVRS As Boolean,
            ct As Integer,
            cookies As New CookieCollection,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        pref = UCase(pref) 'in case we forgot to capitalise it
        RVRS = RV Or RSen
        Call OpenEnigma(con)
        If {"MISMC", "LB", "SC", "OA", "CC"}.Contains(pref) Or RVRS Then
            'For miscellaneous courts, we will look up the case type for each case
            misc = True
        Else
            'get the caseType using the prefix
            ct = CInt(con.Execute("SELECT ID FROM casetypes WHERE prefix=" & Sqv(pref)).Fields(0).Value)
        End If
        stem = "https://legalref.judiciary.hk/lrs/common/data/"
        'get list of years with cases
        URL = If(RV, "rv", If(RSen, "rs", "ju"))
        r = GetWeb3(stem & URL & "-year-" & pref & "L2.json", cookies)
        r = GetVal(r, "rows")
        Console.WriteLine(r)
        years = ReadArray(r)
        For Each s In years
            y = GetVal(s, "year")
            Console.WriteLine(y)
            If RVRS Then
                r = GetWeb3(stem & URL & "-judg-" & pref & "L3_" & y & ".json", cookies)
            ElseIf pref = "MISMC" Then
                r = GetWeb3(stem & "ju-judg-MISMC" & y & "L3.json", cookies)
            Else
                r = GetWeb3(stem & "ju-caselist-" & pref & y & "_L4_.json", cookies)
            End If
            r = GetVal(r, "rows")
            If r <> "" And r <> "[]" Then
                cases = ReadArray(r)
                For Each j In cases
                    jDate = MSdateDMY(GetVal(j, "date"))
                    dis = GetVal(j, "dis")
                    caseNum = GetVal(j, "caseno")
                    neutCit = GetVal(j, "ncn")
                    parties = HTMLtext(CleanParties(GetVal(j, "title")))
                    rep = GetVal(j, "reportage")
                    lang = GetVal(j, "lang")
                    'some judgments have 2 versions under one link, Chinese and Simplified Chinese, e.g. CACV112/1998 15/02/1999
                    'then lang is 4 characters, C_SC
                    'star is rare, e.g. CAAR2/2023. Means "English translation of Chinese Judgment...of jurisprudential value"
                    star = (GetVal(j, "star") = "Y")
                    'some old judgments, e.g. CACV48/1983, has no date, so this column can be null
                    Console.WriteLine("Judgment date:" & jDate)
                    Console.WriteLine("DIS:" & dis)
                    'a few cases, e.g. dis=140621,NCN [2021] HKCA 1789, have no case number: it was expunged "to maintain the anonymity of the defendant"
                    Console.WriteLine("Case number:" & caseNum)
                    Console.WriteLine("Neutral Citation:" & neutCit)
                    Console.WriteLine("Parties:" & parties)
                    Console.WriteLine("Reportage:" & rep)
                    Console.WriteLine("Lang:" & lang)
                    Console.WriteLine("Star:" & star)
                    If caseNum > "" And misc Then
                        ct = 0
                        'get the case type for magistrates and other miscellaneous courts
                        For x = 1 To Len(caseNum)
                            If IsNumeric(Mid(caseNum, x, 1)) Then
                                'found the first number
                                ct = CInt(con.Execute("SELECT ID FROM casetypes WHERE prefix=" & Sqv(Left(caseNum, x - 1))).Fields(0).Value)
                                Exit For
                            End If
                        Next
                    End If
                    'We can have 2 judgments on same date in same case if it is published in both languages
                    'each of them has lang="BI" e.g. FACV5/2018.
                    'We can have 2 judgments showing the same date if one of them was actually a follow-up:
                    'example CAAR5/1997, both shown as 16/05/1997 but the second was actually 18-Jun-1997 and parties are different
                    'example CACV26/2024: same date, same parties, different judgments (one on costs)
                    'So the only way to differentiate is to use DIS. So if the judgment is updated with a new DIS then
                    'we will have to add it as a new judgment.
                    rs.Open("SELECT * FROM judgments WHERE dis=" & dis, con)
                    If rs.EOF Then
                        'didn't find a match
                        con.Execute("INSERT INTO judgments(jDate, dis, caseNum,caseType, neutCit, parties, rep, lang, star,RV,RS)" &
                                Valsql({jDate, dis, caseNum, ct, neutCit, parties, rep, lang, star, RV, RSen}))
                    Else
                        ID = rs("ID").Value.ToString
                        If IsDBNull(rs("rep").Value) And rep <> "" Then
                            'reportage added
                            Console.WriteLine("Added reportage To existing judgment")
                            con.Execute("UPDATE judgments" & Setsql("rep", {rep}) & "ID= " & ID)
                        End If
                        If IsDBNull(rs("lang").Value) Then
                            con.Execute("UPDATE judgments" & Setsql("lang", {lang}) & "ID=" & ID)
                        End If
                        If IsDBNull(rs("caseType").Value) Then
                            con.Execute("UPDATE judgments" & Setsql("caseType", {ct}) & "ID=" & ID)
                        End If
                        If CBool(rs("star").Value) <> star Then
                            con.Execute("UPDATE judgments" & Setsql("star", {star}) & "ID=" & ID)
                        End If
                    End If
                    rs.Close()
                    Console.WriteLine()
                Next
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ParseJudgments failed with prefix:" & pref, Err, "Case number:" & caseNum & vbCrLf & "Judgment date:" & jDate)
    End Sub
    Function CleanParties(s As String) As String
        s = Replace(s, "\u201C", """")
        s = Replace(s, "\u201D", """")
        s = Replace(s, "\\'", "'") 'double-escape in JSON
        s = Replace(s, "\'", "'") 'single-escape in HTML
        Return s
    End Function
    Function ReadNJ(r As String) As String(,)
        'read the new judgments table from web page into an array
        Dim s, row, td, pages(), j(6, 0) As String,
            c, x, rowPos, tblPos As Integer
        r = StripTag(r, "font")
        r = Replace(r, "&nbsp;", "")
        c = 0
        tblPos = 1
        Do Until InStr(tblPos, r, "<tr") = 0
            ReDim Preserve j(6, c)
            row = ""
            Call TagCont(tblPos, r, "tr", row)
            rowPos = 1
            s = ""
            td = ""
            'get the Uploaded Date
            Call TagCont(rowPos, row, "td", td)
            Call TagCont(1, td, "span", s)
            j(0, c) = MSdateDMY(s)
            Console.WriteLine("Uploaded Date:" & j(0, c))
            'get the DIS number for case link
            Call TagCont(rowPos, row, "td", td)
            s = GetAttrib(td, "href")
            j(1, c) = GetParam(s, "DIS")
            Console.WriteLine("DIS:" & j(1, c))
            'get the case number
            x = 1
            Call TagCont(x, td, "a", j(2, c))
            Console.WriteLine("Case number:" & j(2, c))
            'get judgment date
            x = FindStr(td, "<BR>", x)
            j(3, c) = MSdateDMY(If(x > 0, Mid(td, x + 1, Len(td) - x - 1), ""))
            Console.WriteLine("Judgment Date:" & j(3, c))
            'get Neutral Citation
            Call TagCont(rowPos, row, "td", td)
            j(4, c) = td
            x = InStr(td, "<BR>")
            If x > 0 Then td = Left(td, x - 1)
            j(4, c) = td
            Console.WriteLine("Neutral Citation:" & j(4, c))
            'get parties
            Call TagCont(rowPos, row, "td", j(5, c))
            j(5, c) = HTMLtext(CleanParties(j(5, c)))
            Console.WriteLine("Parties:" & j(5, c))
            'get judgment language
            Call TagCont(rowPos, row, "td", s)
            'get the image source
            s = GetAttrib(s, "src")
            'get the gif name without extension
            s = Right(s, Len(s) - InStrRev(s, "/"))
            s = Left(s, InStr(s, ".") - 1)
            pages = {"Epage", "Cpage", "SCpage", "ETpage", "CTpage", "STpage", "Bpage"}
            For x = 0 To UBound(pages)
                If pages(x) = s Then
                    j(6, c) = {"EN", "CH", "SC", "ET", "CT", "ST", "BI"}(x)
                    Exit For
                End If
            Next
            c += 1
            Console.WriteLine()
        Loop
        Return j
    End Function
    Sub GetJudgmentsOLD()
        '2025-07-24 obsolete - most browsers cannt open MHT files
        Dim d As Date, URL As String, mht As String, x As Byte
        d = CDate(GetLog("LastJudgmentsDate"))
        Do Until d >= Today.AddDays(-2) 'adjusted to get HTML not Word links
            d = d.AddDays(1)
            If NotHol(d) Then
                URL = "https://legalref.judiciary.hk/lrs/common/ju/newjudgments.jsp?datesel=" & d.ToString("ddMMyyyy")
                mht = GetLog("JudgmentsFolder") & d.ToString("yyMMdd") & ".mht"
                For x = 1 To 20
                    On Error Resume Next
                    Console.WriteLine("Saving " & URL)
                    Call SaveMHT(URL, mht)
                    If Err.Number = 0 Then Exit For
                    Console.WriteLine(Err.Number & vbTab & Err.Description)
                    Call WaitNSec(30)
                Next
                If x = 21 Then
                    Call SendMail("Judgments failed", Err.Number & " " & Err.Description)
                Else
                    Call PutLog("LastJudgmentsDate", MSdate(d))
                End If
            End If
        Loop
    End Sub
End Module
