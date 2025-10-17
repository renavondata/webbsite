Option Explicit On
Option Compare Text
Imports ScraperKit
'need Reference System.IO.Compression.FileSystem
Imports System.IO.Compression.ZipFile
Module Treasury

    Sub Main()
        'Const y = 2024
        Dim h As Integer

        'Call ReadExpPDFCSV("2011expSub.csv") 'heads/subheads of expenditure converted from PDF pre 2014-15
        'Call ConvertLines("100")
        'Call ProcExpDet(2004)
        'Call ProcOldCWRF(2008, "708", True)

        'THE 2023-24 UPDATE
        'REVENUE
        'Call ProcRev(y)
        'Call ProcBondFreceipts(y)
        'Call ProcCIFreceipts(y)
        'Call ProcCWRFreceipts(y)
        'Call ProcCSPRFreceipts(y)
        'Call ProcDRFreceipts(y)
        'Call ProcITFreceipts(y)
        'Call ProcLandfReceipts(y)
        'Call ProcLoanfReceipts(y)
        'Call ProcLotReceipts(y)
        'Call UpdateTotals(1196) 'Revenue

        'EXPENDITURE
        'Call ProcExpHead(y)
        'Call ProcBondFpayments(y)
        'Call ProcCIFpayments(y)
        'Call ProcCWRFpayments(y)
        'Call ProcDRFpayments(y)
        'Call ProcITFpayments(y)
        'Call ProcLandfPayments(y)
        'Call ProcLoanfPayments(y)
        'Call ProcLotPayments(y)
        'Call UpdateTotals(1197) 'Expenditure

        'OTHERS (require manual checks)
        'Call ProcCIFinv(y) 'adjusted Housing Authority (non-cash) items 6039,6040 to zero
        'Call ProcITFgrants(y)
        For h = 701 To 711
            'REGROUP SUB-ITEMS AFTERWARDS, e.g. Drainage
            'Call ProcCWRFhead(y, h.ToString)
            'Console.ReadKey()
        Next
        'EXCHANGE FUND
        'Manually enter the surplus/deficit from the Exchange Fund Consolidated Accounts, in govitem 1982
        'FUTURE FUND, HOUSING FUND
        'These are updated manually from disclosures in govt accounts and HKMA AR

        'GDP (item 6060) must be updated or system will fail. See GDPnominal.xlsx in Treasury folder

        'BETTING DUTY - await data from IRD Annual Report Schedule 11 then update the CSV (don't disturb weird year format) and import
        'Call ProcBettingDuty()
        'Earnings & profits tax - IRD Annual Report schedule 2
        'Call ProcEPtax()
        'Call ProcStampDuty()

        'Expenditure details on personnel etc, from the Budget Estimates
        'Call ProcExpDet(2025)

        Console.ReadKey()
    End Sub
    Function Govfile(f As String, y As Integer) As String
        'generate the full filename based on the year
        'y is a 4-digit year
        Return "ece_cbac" & Right((y - 1).ToString, 2) & Right(y.ToString, 2) & "_" & f & ".csv"
    End Function
    Sub ProcBondFpayments(yyyy As Integer)
        'process the Bond Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("bondf_payments", yyyy, 2037)
    End Sub
    Sub ProcBondFreceipts(yyyy As Integer)
        'process the Bond Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("bondf_receipts", yyyy, 2028)
    End Sub
    Sub ProcCIFreceipts(yyyy As Integer)
        'process the Capital Investment Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("cif_receipts", yyyy, 1237)
    End Sub
    Sub ProcCIFpayments(yyyy As Integer)
        'process the Capital Investment Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("cif_payments", yyyy, 1245)
    End Sub
    Sub ProcCSPRFreceipts(yyyy As Integer)
        'process the Civil Service Pension Reserve Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("csprf_receipts", yyyy, 1198)
    End Sub
    Sub ProcCWRFreceipts(yyyy As Integer)
        'process the Capital Works Reserve Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("cwrf_receipts", yyyy, 1091)
    End Sub
    Sub ProcCWRFpayments(yyyy As Integer)
        'process the Capital Works Reserve Fund payments for 1 year ending yyyy-03-31
        Call ProcCSVyear("cwrf_payments", yyyy, 1169)
    End Sub
    Sub ProcDRFreceipts(yyyy As Integer)
        'process the Disaster Relief Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("drf_receipts", yyyy, 1117)
    End Sub
    Sub ProcDRFpayments(yyyy As Integer)
        'process the Disaster Relief Fund payments for 1 year ending yyyy-03-31
        'DRF only has one line of expenditure ("Relief programmes For") so put that under Consolidated Expenditure line 1197
        Call ProcCSVyear("drf_payments", yyyy, 1197)
    End Sub
    Sub ProcITFgrants(yyyy As Integer)
        'process the ITF grants for 1 year ending yyyy-03-31
        Call ProcCSVyear("itf_statement_of_grant_payments", yyyy, 1209)
    End Sub
    Sub ProcITFreceipts(yyyy As Integer)
        'process the ITF receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("itf_receipts", yyyy, 1202)
    End Sub
    Sub ProcITFpayments(yyyy As Integer)
        'process the ITF payments (grants) for 1 year ending yyyy-03-31
        Call ProcCSVyear("itf_payments", yyyy, 1973)
    End Sub
    Sub ProcLandfReceipts(yyyy As Integer)
        'process the Land Fund receipts (investment income) for 1 year ending yyyy-03-31
        Call ProcCSVyear("landf_receipts", yyyy, 1210)
    End Sub
    Sub ProcLandfPayments(yyyy As Integer)
        'process the Land Fund receipts (investment income) for 1 year ending yyyy-03-31
        'NB so far (checked since 2010-11) this file only exists for 2020-21, when expenses were incurred on the Cathay Pacific investment
        Call ProcCSVyear("landf_payments", yyyy, 1213)
    End Sub
    Sub ProcLoanfReceipts(yyyy As Integer)
        'process the Loan Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("loanf_receipts", yyyy, 1215)
    End Sub
    Sub ProcLoanfPayments(yyyy As Integer)
        'process the Loan Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("loanf_payments", yyyy, 1230)
    End Sub

    Sub ProcLotReceipts(yyyy As Integer)
        'process the Lotteries Fund receipts for 1 year ending yyyy-03-31
        Call ProcCSVyear("lotf_receipts", yyyy, 1108)
    End Sub
    Sub ProcLotPayments(yyyy As Integer)
        'process the Lotteries Fund payments for 1 year ending yyyy-03-31
        Call ProcCSVyear("lotf_payments", yyyy, 1193)
    End Sub

    Sub ProcBettingDuty(Optional overwrite As Boolean = False)
        Call ProcCSV("BettingDutySch11.csv", "9, 1020", overwrite)
    End Sub
    Sub ProcProfitsTax(Optional overwrite As Boolean = False)
        'update components of profits tax (incorporated, unincorporated)
        Call ProcCSV("IRDcollectionsSch02.csv", "11", overwrite)
    End Sub
    Sub ProcEPtax(Optional overwrite As Boolean = False)
        'update Earnings & Profits Tax
        Call ProcCSV("IRDcollectionsSch02.csv", "10, 11", overwrite)
    End Sub
    Sub ProcStampDuty(Optional overwrite As Boolean = False)
        'NB values are in HK$m to nearest HK$0.1m so use multiplier
        Call ProcCSV("stamp_sch09.csv", "16, 725", overwrite, 1000)
    End Sub
    Sub ConvertLines(h1target As String)
        'One-off script to move expense lines that were under heads of expenditure
        'Carry over their h1 and h2 values, and move them down 2 levels under the 4 components of Opex
        'Then recalculate component total
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            heads(,), h1, h2, opSubID, opSubIDs(), items(,) As String,
            x, y, headID, opexID, oldItem, newItem As Integer
        Call OpenEnigma(con)
        heads = GetRows(con.Execute("Select DISTINCT ID, h1, govtxt FROM govitems WHERE Not rev And Not isNull(h1) And isNull(h2)"))
        For x = 0 To UBound(heads, 2)
            headID = CInt(heads(0, x))
            h1 = heads(1, x)
            'for testing
            If h1 = h1target Then

                Console.WriteLine("Head " & h1 & vbTab & heads(2, x))
                'Find Operational Expenses line
                rs.Open("Select ID FROM govitems WHERE Not rev And h1=" & h1 & " And h2=0", con)
                If Not rs.EOF Then
                    opexID = CInt(rs("ID").Value)
                    'get the 4 subheads
                    opSubIDs = GetRow(con.Execute("Select ID FROM govitems WHERE parentID=" & opexID))
                    For Each opSubID In opSubIDs
                        'get the items underneath
                        items = GetRows(con.Execute("Select ID,txt FROM govitems WHERE parentID=" & opSubID))
                        For y = 0 To UBound(items, 2)
                            rs.Close()
                            rs.Open("Select ID,h2 FROM govitems JOIN govac On ID=govitem WHERE d='2003-03-31' AND govtxt='" &
                                Apos(items(1, y)) & "' AND parentID=" & headID & " ORDER BY CAST(h2 AS unsigned)", con)
                            If Not rs.EOF Then
                                oldItem = CInt(rs("ID").Value)
                                newItem = CInt(items(0, y))
                                h2 = rs("h2").Value.ToString
                                Console.WriteLine("Change govitem " & oldItem & " to " & newItem & vbTab & "h2:" & h2 & vbTab & items(1, y))
                                'transfer h1,h2 in case we ever use this to insert accounts pre-2003
                                If h2 <> "" Then con.Execute("UPDATE govitems SET h1=" & h1 & ",h2=" & h2 & " WHERE ID=" & newItem)
                                con.Execute("UPDATE govac SET govitem=" & newItem & " WHERE govitem=" & oldItem)
                                con.Execute("UPDATE govitems SET firstd=(SELECT Min(d) FROM govac WHERE govitem=" & newItem & ") WHERE ID=" & newItem)
                                con.Execute("DELETE FROM govitems WHERE ID=" & oldItem)
                            End If
                        Next
                        Call UpdateTotals(CInt(opSubID))
                    Next
                    Call UpdateTotals(opexID)
                End If
                rs.Close()
            End If

        Next
        con.Close()
        con = Nothing
    End Sub
    Sub UpdateTotals(i As Integer, Optional overwrite As Boolean = False)
        'NB 2022-02-20 - if we ever use the estimates, might need to run totals over the whole dataset, as we have only just amended this to cover them.
        'Update a line of govitems by summing items beneath
        'Use overwrite with care if items below are incomplete or do not tally
        'only call this if we are sure that the items below are complete
        'in particular, for access speed, we have changed the following to be non-heads with hard-wired totals:
        '68 Fees & Charges
        '722 GRA revenue
        '723 GRA expenditure
        '1196 Revenue
        '1197 Expenditure
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            mind, periods(), d As String,
            res(,), numPer, est, act As Integer,
            head As Boolean
        Call OpenEnigma(con)
        rs.Open("Select DATE_FORMAT(Min(firstd),'%Y-%m-%d')mind FROM govitems WHERE parentID=" & i, con)
        If IsDBNull(rs("mind").Value) Then
            rs.Close()
        Else
            'this item is a parent
            mind = rs("mind").Value.ToString
            rs.Close()
            rs.Open("SELECT txt,head FROM govitems WHERE ID=" & i, con)
            head = CBool(rs("head").Value)
            Console.WriteLine("Updating govitem: " & i & " " & rs("txt").Value.ToString)
            Console.WriteLine("Earliest complete date:" & mind)
            rs.Close()
            If Not head Then
                'don't add or creat govac items if the line is a header, as this would lead to double-counting
                rs.Open("SELECT DISTINCT DATE_FORMAT(d,'%Y-%m-%d')d FROM govac WHERE ann=True AND d>='" & mind & "' ORDER BY d", con)
                periods = GetRow(rs)
                rs.Close()
                numPer = UBound(periods)
                ReDim res(1, numPer)
                'generate the totals by drill-down
                Call GenSum(i, res, periods, False)
                For x = 0 To numPer
                    d = periods(x)
                    est = res(0, x)
                    act = res(1, x)
                    rs.Open("SELECT * FROM govac WHERE ann=True AND d='" & d & "' AND govitem=" & i, con)
                    If rs.EOF And (est > 0 Or act > 0) Then
                        Console.WriteLine("Inserting " & d & vbTab & est & vbTab & act)
                        con.Execute("INSERT INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & i & ",TRUE," & est & "," & act & ")")
                    ElseIf overwrite Then
                        Console.WriteLine("Updating " & periods(x) & vbTab & est & vbTab & act)
                        con.Execute("UPDATE govac SET est=" & est & ",act=" & act & " WHERE ann=TRUE AND d='" & d & "' AND govitem=" & i)
                    End If
                    rs.Close()
                Next
            End If
            con.Execute("UPDATE govitems SET firstd='" & mind & "' WHERE ID=" & i)
        End If
        con.Close()
        con = Nothing
    End Sub

    Sub AddToRow(ByRef res(,) As Integer, ByRef rs As ADODB.Recordset, periods() As String, replace As Boolean)
        'add a row of values to the results row, or replace
        Dim x As Integer
        'skip rs values outside our period range
        Do Until rs.EOF
            If rs("d").Value.ToString >= periods(0) Then Exit Do
            rs.MoveNext()
        Loop
        'for any matching periods, add or copy dates from rs
        Do Until rs.EOF Or x > UBound(periods)
            If rs("d").Value.ToString = periods(x) Then
                If replace Then
                    res(0, x) = CInt(rs("est").Value)
                    res(1, x) = CInt(rs("act").Value)
                Else
                    res(0, x) = res(0, x) + CInt(rs("est").Value)
                    res(1, x) = res(1, x) + CInt(rs("act").Value)
                End If
                rs.MoveNext()
            End If
            x += 1
        Loop
        rs.Close()
    End Sub

    Sub GenSum(i As Integer, ByRef res(,) As Integer, periods() As String, subhead As Boolean)
        'sum all items under i
        'if this is a subhead then use any stored values in govac, don't recompute
        'res is a 2-d results array across periods, col0 is Estimate, col1 is Actual
        'periods are the date range. res and periods have the same number of rows
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            numPer, ID, resline(,) As Integer,
            where As String
        numPer = UBound(periods)
        'resline stores the running totals, which we may overrde if the called line is a subhead
        ReDim resline(1, numPer)
        where = " WHERE (NOT transfer) AND (NOT reimb) "
        Call OpenEnigma(con)
        'sum the non-headings
        rs.Open("SELECT DATE_FORMAT(d,'%Y-%m-%d')d,SUM(est)est,SUM(act)act FROM govac JOIN govitems g ON govitem=g.ID " &
                "LEFT JOIN govadopt a ON g.ID=a.govitem AND tree=0" & where & "AND NOT head AND IFNULL(a.parentID,g.parentID)=" & i &
                " GROUP BY d ORDER BY d", con)
        Call AddToRow(resline, rs, periods, False)
        'check for subheads
        rs.Open("SELECT ID FROM govitems g LEFT JOIN govadopt a ON g.ID=a.govitem AND tree=0" & where &
                "AND head AND IFNULL(a.parentID,g.parentID)=" & i, con)
        Do Until rs.EOF
            ID = CInt(rs("ID").Value)
            Call GenSum(ID, resline, periods, True) 'recursion
            rs.MoveNext()
        Loop
        rs.Close()
        If subhead Then
            'stored values override subtotals
            rs.Open("SELECT DATE_FORMAT(d,'%Y-%m-%d')d,est,act FROM govac WHERE govitem=" & i & " ORDER BY d", con)
            Call AddToRow(resline, rs, periods, True)
        End If
        'Now add resline back to running totals
        For x = 0 To numPer
            res(0, x) = res(0, x) + resline(0, x)
            res(1, x) = res(1, x) + resline(1, x)
        Next
        con.Close()
        con = Nothing
    End Sub
    Sub ProcCSV(f As String, parents As String, Optional overwrite As Boolean = False, Optional m As Double = 1)
        'insert data from CSV file f in the Treasury folder
        'parents is a CSV string of the govitems.ID which are parents to these data, to narrow the search for column names
        'e.g. "9,1020" for betting duty
        'f is the filename in the Treasury folder
        'm is the multiplier if the values are not in HK$1000 (e.g. 1000 if they are in HK$m)
        Dim a(,), d, e, act, firstd As String,
            x, y, i, rows As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        a = ReadCSVfile2D(GetLog("treasFolder") & f)
        'put dates into ISO format. Entered as 2010-11 etc
        rows = UBound(a, 2)
        firstd = MSdate(Now())
        For y = 1 To rows
            d = (CInt(Left(a(0, y), 4)) + 1).ToString & "-03-31"
            'find earliest date
            If d < firstd Then firstd = d
            a(0, y) = d
        Next
        Console.WriteLine("Earliest date: " & firstd)
        For x = 1 To UBound(a, 1)
            'find the columns we want
            e = a(x, 0)
            i = CInt(con.Execute("SELECT IFNULL((SELECT ID FROM govitems WHERE parentID IN(" & parents & ") And govtxt='" & Apos(e) & "'),0)").Fields(0).Value)
            If i > 0 Then
                'found the govitem
                Console.WriteLine(i & vbTab & e)
                For y = 1 To rows
                    d = a(0, y)
                    act = Replace(Trim(a(x, y)), ",", "")
                    If act <> "" Then
                        'some columns are short, e.g. in Betting Duty there are blanks before 2003-04
                        act = CInt((CDbl(act) * m)).ToString
                        rs.Open("SELECT * FROM govac WHERE ann=True AND d='" & d & "' AND govitem=" & i, con)
                        If rs.EOF Then
                            Console.WriteLine("Inserting " & d & vbTab & act & vbTab & e)
                            con.Execute("INSERT INTO govac(d,govItem,ann,act) VALUES('" & d & "'," & i & ",TRUE," & act & ")")
                        ElseIf overwrite Then
                            Console.WriteLine("Updating " & d & vbTab & act & vbTab & e)
                            con.Execute("UPDATE govac SET act=" & act & " WHERE ann=True AND d='" & d & "' AND govitem=" & i)
                        End If
                        rs.Close()
                    End If
                Next
                con.Execute("UPDATE govitems SET firstd='" & firstd & "' WHERE ID=" & i)
                Console.WriteLine("Earliest date: " & firstd)
            End If
        Next
        For Each e In Split(parents, ",")
            'update the parents totals or firstd
            Call UpdateTotals(CInt(e))
        Next
        con.Close()
        con = Nothing
    End Sub
    Sub ProcCSVyear(f As String, yyyy As Integer, parentID As Integer, Optional overwrite As Boolean = False, Optional m As Double = 1)
        'process a CSV file for a year to 31-Mar (no date in the file)
        'f Is the part name of this type of file in the Treasury folder
        'yyyy is the 4-digit year
        'parentID is where all the first-column heads are
        'm is the multiplier if the values are not in HK$1000 (e.g. 1000 if they are in HK$m)
        Dim a(,), d, est, act, txt1, txt2, h1, h2, sql As String,
            x, y, i, lastparent, col1, estcol, actcol As Integer,
            rev, head As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        If overwrite Then sql = "REPLACE" Else sql = "INSERT IGNORE"
        d = yyyy & "-03-31"
        Call OpenEnigma(con)
        rev = CBool(con.Execute("SELECT rev FROM govitems WHERE ID=" & parentID).Fields(0).Value)
        a = ReadCSVfile2D(GetLog("treasFolder") & f & "/" & Govfile(f, yyyy))
        If Left(a(0, 1), 7) = "Subhead" Then col1 = 1 Else col1 = 0 'ITF project lists
        'Find Original Estimate and Actual columns
        For x = 0 To UBound(a, 1)
            If Left(a(x, 0), 8) = "Original" Then estcol = x
            If Left(a(x, 0), 6) = "Actual" Then
                actcol = x
                Exit For
            End If
        Next
        If estcol * actcol = 0 Then Exit Sub 'one of the columns not found
        'some sheets only have one column for headings, then data (original estimate, actual), so shift columns
        For y = 1 To UBound(a, 2)
            If y = UBound(a, 2) And a(0, y) = "Total" Then Exit For 'end of ITF Project list, not a category
            txt1 = Apos(Trim(a(col1, y)))
            If estcol > 1 Then txt2 = Apos(Trim(a(col1 + 1, y))) Else txt2 = ""
            'get values
            est = Replace(Trim(a(estcol, y)), ",", "")
            act = Replace(Trim(a(actcol, y)), ",", "")
            est = CInt((CDbl(est) * m)).ToString
            act = CInt((CDbl(act) * m)).ToString
            'adjustment for files where (Total) appears in col1 rather than col2:
            If InStr(txt1, "(Total)") > 0 Then
                txt2 = txt1
                txt1 = Trim(Replace(txt1, "(Total)", ""))
            End If
            Console.WriteLine(txt1 & vbTab & txt2)
            head = txt2 > "" And InStr(txt2, "Total") = 0
            If col1 = 1 And a(0, y) > "" Then 'There were no subheads in PDFs before 2014
                h2 = "'" & Trim(Mid(a(0, y), 8)) & "'" 'ITF numeric project subhead. This method allows for namechanges of entity.
                h1 = "111" '(Innovation & Technology - see 2011-12 budget estimates)
                rs.Open("SELECT * FROM govitems WHERE rev=" & rev & " AND h1=" & h1 & " AND h2=" & h2 & " AND parentID=" & parentID, con)
            Else
                h1 = "NULL"
                h2 = "NULL"
                rs.Open("SELECT * FROM govitems WHERE rev=" & rev & " AND govtxt='" & txt1 & "' AND parentID=" & parentID, con)
            End If
            If rs.EOF Then
                con.Execute("INSERT INTO govitems(h1,h2,head,parentID,govtxt,txt,firstd,rev) VALUES(" & h1 & "," & h2 & "," &
                            head & "," & parentID & "," & Qjoin({txt1, txt1, d}) & "," & rev & ")")
                i = LastID(con)
            Else
                i = CInt(rs("ID").Value)
                If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & i)
                'if there's a total line then record that because it includes estimates for which there's no breakdown, so it's not a head
                If Not head And CBool(rs("head").Value) = True Then con.Execute("UPDATE govitems SET head=FALSE WHERE ID=" & i)
            End If
            rs.Close()
            If lastparent = 0 Then lastparent = i 'for first row
            If lastparent <> i Then
                'first column has changed on this row
                Call UpdateTotals(lastparent)
                lastparent = i
            End If
            'now do subhead, if any
            If head Then
                rs.Open("SELECT * FROM govitems WHERE govtxt='" & txt2 & "' AND parentID=" & i, con)
                If rs.EOF Then
                    con.Execute("INSERT INTO govitems(parentID,govtxt,txt,firstd,rev) VALUES(" & i & ",'" & txt2 & "','" & txt2 & "','" & d & "'," & rev & ")")
                    i = LastID(con)
                Else
                    i = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & i)
                End If
                rs.Close()
            End If
            con.Execute(sql & " INTO govac(ann,d,govItem,est,act) VALUES(TRUE,'" & d & "'," & i & "," & est & "," & act & ")")
            Console.WriteLine(i & vbTab & est & vbTab & act)
        Next
        'update totals for final first column
        Call UpdateTotals(lastparent)
        'update totals for parent of this CSV
        Call UpdateTotals(parentID)
        con.Close()
        con = Nothing
    End Sub
    Sub GetAccounts(d As String)
        'get the annual accounts for a given year and put all the files in the top Treasury folder
        'd = 20-21, etc
        Dim URL, dest, e, folder, path, fileName As String
        URL = "https://www.try.gov.hk/internet/trycash/20" & d & "_ca_eng_csv.zip"
        folder = GetLog("treasFolder")
        'download to overwrite a temporary zip, because ZipFile cannot handle URL sources
        dest = folder & "temp.zip"
        e = ""
        Call Download(URL, dest, e, True, True)
        If e = "" Then
            'Found the file
            'extract to the temp folder. Output must not exist already or it will crash
            ExtractToDirectory(dest, folder & "temp", Text.Encoding.UTF8)
            For Each path In System.IO.Directory.GetFiles(folder & "temp", "*.*", IO.SearchOption.AllDirectories)
                fileName = Mid(path, InStrRev(path, "\") + 1)
                Console.WriteLine(fileName)
                System.IO.File.Move(path, folder & fileName)
            Next
            'so delete temp folder and subfolders/files
            System.IO.Directory.Delete(folder & "temp", True)
        End If
    End Sub
    Sub ProcRev(y As Integer)
        'read revenue by subhead, itemCode (if any)
        'this uses h1,h2,h3 for index, so is independent of our parentIDs except for new h1.
        'hence no need to use govadopt to shift departments under bureaux
        'y is 4-digit year
        Dim c(), r(), h1, h2, h3, txt, sql, est, act, d As String,
            x, ID, p As Integer,
            head As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        d = y & "-03-31"
        c = ReadCSVfile(GetLog("treasFolder") & "statement_of_revenue_analysis/" & Govfile("grac_statement_of_revenue_analysis_by_head_and_subhead", y))
        sql = "SELECT * FROM govitems WHERE rev AND "
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            'head, sub-head, itemCode
            h1 = Strip0(Trim(r(0)))
            h2 = Strip0(Trim(r(2)))
            h3 = Strip0(Trim(r(4)))
            head = (h2 <> "")
            rs.Open(sql & "h1='" & h1 & "' And isNull(h2)", con)
            If rs.EOF Then
                'rare, but new heading or item in h1
                txt = r(1)
                If Left(txt, 5) = "Other" Then p = -1 Else p = 0
                '722=Revenue/General Revenue Account
                con.Execute("INSERT INTO govitems (rev,parentID,priority,head,firstd,h1,govtxt,txt) VALUES (TRUE,722," &
                            p & "," & head & "," & Qjoin({d, h1, txt, txt}) & ")")
                ID = LastID(con)
            Else
                ID = CInt(rs("ID").Value)
                If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
            End If
            rs.Close()
            rs.Open(sql & "h1='" & h1 & "' And h2='" & h2 & "' And isNull(h3)", con)
            head = (h3 <> "")
            If rs.EOF Then
                'new subhead
                txt = Apos(r(3))
                If Left(txt, 5) = "Other" Then p = -1 Else p = 0
                con.Execute("INSERT INTO govitems (rev,parentID,priority,head,firstd,h1,h2,govtxt,txt) VALUES (TRUE," &
                            ID & "," & p & "," & head & "," & Qjoin({d, h1, h2, txt, txt}) & ")")
                ID = LastID(con)
            Else
                ID = CInt(rs("ID").Value)
                If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
            End If
            rs.Close()
            If head Then
                'we have an itemCode
                rs.Open(sql & "h1='" & h1 & "' AND h2='" & h2 & "' AND h3='" & h3 & "'", con)
                If rs.EOF Then
                    'new itemCode
                    txt = Apos(r(5))
                    If Left(txt, 5) = "Other" Then p = -1 Else p = 0
                    con.Execute("INSERT INTO govitems (rev,parentID,priority,firstd,h1,h2,h3,govtxt,txt) VALUES (TRUE," &
                                ID & "," & p & "," & Qjoin({d, h1, h2, h3, txt, txt}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                End If
                rs.Close()
            End If
            'now enter the item.
            'up to 2018-19, they used commas in the numbers
            est = Replace(r(6), ",", "")
            act = Replace(r(7), ",", "")
            con.Execute("INSERT IGNORE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
            Console.WriteLine(ID & vbTab & est & vbTab & act)
        Next
        con.Close()
        con = Nothing
        Call UpdateTotals(68) 'fees & charges
        Call UpdateTotals(722) 'GRA revenue
    End Sub

    Sub ProcExpDet(yyyy As Integer)
        'process the file "des.csv" from the estimates, which we rename desYYYY.csv where YY is the start of the budget year
        'NB the CSV file header row may be corrupted with line-breaks, so check!
        'For year 21-22, first amount is actual breakdown for 19-20
        'the next 3 columns are original estimate for 20-21, revised estimate 20-21, and budget for 21-22
        'this is more detailed than ProcExpComp - each of 4 components is broken down
        'NB file may be malformed with headers broken, so check first
        Dim c(), r(), s, t, txt(), sht(), est, act, dEst, dAct As String,
            x, y, ID, parentID, subID, sum As Integer,
            head As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'arrays for fields txt & short
        txt = Split("Personnel expenses,Departmental expenses,Other charges,Recurrent subventions", ",")
        sht = Split("Personnel,Departmental,Other,Subventions", ",")
        dEst = yyyy & "-03-31"
        dAct = yyyy - 1 & "-03-31"
        Console.WriteLine("Orignal Estimate date:" & dEst)
        Console.WriteLine("Actual result date:" & dAct)
        c = ReadCSVfile(GetLog("treasFolder") & "des/des" & yyyy & ".csv")
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            Console.WriteLine("Head " & r(0) & " " & r(1))
            'find the ID of "operational expenses" for this head
            rs.Open("SELECT * FROM govitems WHERE Not rev And h2=0 And h1=" & r(0), con)
            If rs.EOF Then
                'This head has no Operational Expenses line, so no breakdown required
                'That's the case for Pensions (Head 120) and Civil Service general expenses (Head 46)
                Call SendMail("ProcExpDet error: Head " & r(0) & " Operational Expenses line not found")
            Else
                parentID = CInt(rs("ID").Value)
                If dAct < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & dAct & "' WHERE ID=" & parentID)
                Select Case r(1)
                    Case "Personal Emoluments", "Personnel Related Expenses"
                        y = 0
                    Case "Departmental Expenses"
                        y = 1
                    Case "Other Charges"
                        y = 2
                    Case "Subventions"
                        y = 3
                End Select
                rs.Close()
                rs.Open("SELECT * FROM govitems WHERE parentID=" & parentID & " AND govtxt='" & txt(y) & "'", con)
                If rs.EOF Then
                    'Not seen this subhead before
                    con.Execute("INSERT INTO govitems(parentID,govtxt,txt,short,firstd,head) VALUES(" &
                                    parentID & "," & Qjoin({txt(y), txt(y), sht(y), dAct}) & ",TRUE)")
                    subID = LastID(con)
                    head = True
                Else
                    subID = CInt(rs("ID").Value)
                    head = CBool(rs("head").Value)
                    If dAct < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & dAct & "' WHERE ID=" & subID)
                End If
                rs.Close()
                'now look for the item, if it exists
                s = Replace(r(2), "¡¦", "'") 'quirky apostrophe
                t = Replace(s, "Mandatory Provident Fund", "MPF")
                t = Replace(t, "Civil Service Provident Fund", "CSPF")
                t = Replace(t, " departmental expenses", "")
                rs.Open("SELECT * FROM govitems WHERE parentID=" & subID & " AND govtxt='" & Apos(s) & "'", con)
                If rs.EOF Then
                    con.Execute("INSERT INTO govitems(parentID,govtxt,txt,short,firstd) VALUES (" & subID & "," & Qjoin({s, s, t, dAct}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    If dAct < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & dAct & "' WHERE ID=" & ID)
                End If
                rs.Close()
                'now we have the item ID
                est = Trim(Replace(r(4), ",", "")) 'current year original estimate
                If est = "-" Or est = "" Then est = "0"
                act = Trim(Replace(r(3), ",", "")) 'previous year actual
                If act = "-" Or act = "" Then act = "0"
                'We will not enter zero values as these are the default, avoids accidentally overwriting good data.
                'update or enter the estimate value if non-zero
                If est <> "0" Then
                    If CBool(con.Execute("SELECT EXISTS(SELECT * FROM govac WHERE ann=True AND govitem=" & ID & " AND d='" & dEst & "')").Fields(0).Value) Then
                        con.Execute("UPDATE govac SET est=" & est & " WHERE ann=TRUE and d='" & dEst & "' AND govitem=" & ID)
                    Else
                        con.Execute("INSERT INTO govac(d,govItem,ann,est) VALUES('" & dEst & "'," & ID & ",TRUE," & est & ")")
                    End If
                    If Not head Then
                        'update the parent total. Don't use UpdateTotals for this, as it will overwrite values in dates with no breakdown (e.g. merged departments)
                        sum = CInt(con.Execute("SELECT SUM(est) FROM govac JOIN govitems ON govitem=ID WHERE ann=True AND parentID=" & subID & " AND d='" & dEst & "'").Fields(0).Value)
                        If CBool(con.Execute("SELECT EXISTS(SELECT * FROM govac WHERE ann=True AND govitem=" & subID & " AND d='" & dEst & "')").Fields(0).Value) Then
                            con.Execute("UPDATE govac SET est=" & sum & " WHERE ann=TRUE and d='" & dEst & "' AND govitem=" & subID)
                        Else
                            con.Execute("INSERT INTO govac(d,govItem,ann,est) VALUES('" & dEst & "'," & subID & ",TRUE," & sum & ")")
                        End If
                    End If
                End If
                'update or enter the actual value if non-zero
                If act <> "0" Then
                    If CBool(con.Execute("SELECT EXISTS(SELECT * FROM govac WHERE ann=True AND govitem=" & ID & " AND d='" & dAct & "')").Fields(0).Value) Then
                        con.Execute("UPDATE govac SET act=" & act & " WHERE ann=TRUE and d='" & dAct & "' AND govitem=" & ID)
                    Else
                        con.Execute("INSERT INTO govac(d,govItem,ann,act) VALUES ('" & dAct & "'," & ID & ",TRUE," & act & ")")
                    End If
                    If Not head Then
                        sum = CInt(con.Execute("SELECT SUM(act) FROM govac JOIN govitems ON govitem=ID WHERE ann=True AND parentID=" & subID & " AND d='" & dAct & "'").Fields(0).Value)
                        If CBool(con.Execute("SELECT EXISTS(SELECT * FROM govac WHERE ann=True AND govitem=" & subID & " AND d='" & dAct & "')").Fields(0).Value) Then
                            con.Execute("UPDATE govac SET act=" & sum & " WHERE ann=TRUE and d='" & dAct & "' AND govitem=" & subID)
                        Else
                            con.Execute("INSERT INTO govac(d,govItem,ann,act) VALUES('" & dAct & "'," & subID & ",TRUE," & sum & ")")
                        End If
                    End If
                End If
                Console.WriteLine(r(0) & vbTab & parentID & vbTab & ID & vbTab & s & vbTab & est & vbTab & act)
            End If
        Next
        con.Close()
        con = Nothing
        Console.WriteLine("Done operational expenses components items for " & dAct & " and estimates for " & dEst)
    End Sub
    Sub ProcExpComp(yyyy As Integer)
        'OBSOLETE - the 4 components can summate to more than the Operational Expenses and just cause problems.
        'year is 4-digit year
        'read the 4 components of "Operational expenses" (subhead 000) from component CSVs.
        Dim c(), r(), s(), txt(), sht(), est, act, d As String,
            x, y, ID, parentID As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'arrays for fields txt & short
        txt = Split("Personnel expenses,Departmental expenses,Other charges,Recurrent subventions", ",")
        sht = Split("Personnel,Departmental,Other,Subventions", ",")
        d = yyyy & "-03-31"
        c = ReadCSVfile(GetLog("treasFolder") & Govfile("grac_statement_of_expenditure_analysis_by_head_and_component", yyyy))
        For x = 1 To UBound(c) Step 2
            'lines are in pairs, with original estimate first, then actual expenditure
            r = ReadCSVrow(c(x))
            s = ReadCSVrow(c(x + 1))
            Console.WriteLine(r(1))
            'find the parent ID of "operational expenses" for this head
            rs.Open("SELECT ID FROM govitems WHERE Not rev And h2=0 And h1=" & r(0), con)
            If rs.EOF Then
                'This head has no Operational Expenses line, so no breakdown required
                'That's the case for Pensions (Head 120) and Civil Service general expenses (Head 46)
                Console.WriteLine("Skipping Head " & r(0))
            Else
                parentID = CInt(rs("ID").Value)
                For y = 0 To 3
                    'now look for the subsidiary ID, if it exists
                    rs.Close()
                    rs.Open("SELECT * FROM govitems WHERE txt='" & txt(y) & "' AND parentID=" & parentID, con)
                    If rs.EOF Then
                        con.Execute("INSERT INTO govitems(parentID,txt,short,firstd) VALUES(" &
                                    parentID & "," & Qjoin({txt(y), sht(y), d}) & ")")
                        ID = LastID(con)
                    Else
                        ID = CInt(rs("ID").Value)
                        If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                    End If
                    est = Trim(Replace(r(y + 3), ",", ""))
                    act = Trim(Replace(s(y + 3), ",", ""))
                    con.Execute("INSERT IGNORE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
                    Console.WriteLine(r(0) & vbTab & parentID & vbTab & ID & vbTab & d & vbTab & est & vbTab & act)
                Next
            End If
            rs.Close()
        Next
        con.Close()
        con = Nothing
        Console.WriteLine("Done operational expenses components for " & d)
    End Sub
    Sub ProcExpPDFCSV(f As String)
        'Read expenditure by subhead from files named YYYYexpSub.csv (in fact any name is OK as long as it starts with 4-digit year).
        'The files are created from pde_seasubXX.xlsx which we store in the "working files" folder.
        'If there are any new Heads (rare, a new Department) then we assign parentID=723, "Expenditure" and allocate manually later. Otherwise parentIDs are not used in this script.
        'For data 2007-08 to 2014-15 we convert PDFs to a usable CSV and then interpret it without too much tidying.
        'For 2002-03 to 2006-07, the PDF was bilingual, so messy that we converted it to xls and then copied data to the next year's pde_seasubXX.xlsx as template.
        'Similar issue with the Budget Estimates PDFs, which took our "Actual" values back to 98-99 and estimates back to 99-00.
        'For those, we hand-collected the numbers into the pde_seasubYY and desYYYY spreadsheets, conforming them to the modern presentation,
        'i.e. most recurrent items are in the desYYYY but some, such as Airport Insurance, appear in the main accounts.
        'for 2002-03, there are additional subheads for personnel, administration that we pushed below "Operational Expense" after importing
        'col 0 contains head or subhead or text
        'col 2=reimbursement, col3=Original Estimate (not available for 98-99),col4=Amended estimate (ignored),col5=Actual
        'NB some expenditure on salaries is reimbursed, creating 2 line items for the same subhead.
        'We avoid that by creating a reimb flag in the DB.
        Dim c(), r(), h1, h2, txt, sql, est, act, d, s As String,
            x, y, ID, parentID, rows As Integer,
            reimb As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        d = Left(f, 4) & "-03-31"
        c = ReadCSVfile(GetLog("treasfolder") & "expenditure_sh/" & f)
        rows = UBound(c)
        sql = "Select * FROM govitems WHERE rev=False And "
        h1 = ""
        For x = 1 To rows
            r = ReadCSVrow(c(x))
            s = Trim(r(0))
            If Left(s, 5) = "Head " Then
                y = 1
                h1 = FindInt(s, y)
                rs.Open(sql & "h1='" & h1 & "' And isNull(h2)", con)
                If rs.EOF Then
                    'rare, but new heading
                    txt = Trim(Replace(Mid(s, y), "—", ""))
                    con.Execute("INSERT INTO govitems (parentID,head,firstd,h1,govtxt,txt) VALUES (723,TRUE," & Qjoin({d, h1, txt, txt}) & ")")
                    parentID = LastID(con)
                    Console.WriteLine("New Head ID:" & parentID & " h1:" & h1 & " " & txt)
                Else
                    parentID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & parentID)
                    Console.WriteLine("Head ID:" & parentID & " h1:" & h1 & " " & rs("txt").Value.ToString)
                End If
                rs.Close()
            ElseIf IsNumeric(Left(s, 2)) Then
                'Found a subhead
                'some of the subheads are alphanumeric - 85A,88B,88C,88F,88H,88J
                If IsNumeric(s) Then s = CInt(s).ToString 'remove any leading zeroes
                h2 = s
                reimb = (r(2) <> "")
                rs.Open(sql & "h1='" & h1 & "' AND h2='" & h2 & "'", con)
                If rs.EOF Then
                    'new subhead
                    txt = r(1)
                    Console.WriteLine("New subhead h1:" & h1 & " h2:" & h2 & " " & txt)
                    con.Execute("INSERT INTO govitems (parentID,reimb,firstd,h1,h2,govtxt,txt) VALUES (" &
                                parentID & "," & reimb & "," & Qjoin({d, h1, h2, txt, txt}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                End If
                rs.Close()
                'now enter the item.
                'up to 2018-19, they used commas in the numbers
                If reimb Then est = r(2) Else est = r(3)
                est = Replace(est, ",", "")
                est = Trim(Replace(est, Chr(160), "")) 'non-breaking space
                If est = "-" Or est = "" Then est = "0"
                'skip the amended estimate
                act = Replace(r(5), ",", "")
                act = Trim(Replace(act, Chr(160), ""))
                If act = "-" Then act = "0"
                con.Execute("REPLACE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
                Console.WriteLine(ID & vbTab & h1 & vbTab & h2 & vbTab & reimb & vbTab & est & vbTab & vbTab & act)
            End If
        Next
        con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=723 or parentID=723")
        con.Close()
        con = Nothing
        'Call UpdateTotals(723)
    End Sub
    Sub ProcExpHead(y As Integer)
        'y is 4-digit year
        'read expenditure by head and subhead. Independent of parentID except for new h1 headings under 723
        'NB some expenditure on salaries is reimbursed, creating 2 line items for the same subhead.
        'We avoid that by using a reimb flag in the DB.
        Dim c(), r(), h1, h2, txt, sql, est, act, d As String,
            x, ID, p As Integer,
            reimb As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        d = y & "-03-31"
        c = ReadCSVfile(GetLog("treasFolder") & "expenditure_sh/" & Govfile("grac_statement_of_expenditure_analysis_by_head_and_subhead", y))
        sql = "Select * FROM govitems WHERE rev=False And "
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            h1 = Strip0(Trim(r(0))) 'head
            h2 = Strip0(Trim(r(2))) 'subhead
            If h1 = "" And InStr(r(1), "NATIONAL SECURITY") > 0 Then
                '20-21 has a line item for National Security with no numbers, so we assign pseudo-heads
                h1 = "255"
                h2 = "1800"
            End If
            reimb = (r(4) <> "")
            If Left(r(4), 1) <> "-" Then
                'not a reimbursement line
                rs.Open(sql & "h1='" & h1 & "' And isNull(h2)", con)
                If rs.EOF Then
                    txt = (r(1))
                    If Left(txt, 5) = "Other" Then p = -1 Else p = 0
                    'rare, but new heading
                    '723=Expenditure/General Revenue Account
                    con.Execute("INSERT INTO govitems (parentID,head,priority,firstd,h1,govtxt,txt) VALUES (723,TRUE," &
                                p & "," & Qjoin({d, h1, txt, txt}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                End If
                rs.Close()
                rs.Open(sql & "h1='" & h1 & "' AND h2='" & h2 & "'", con)
                If rs.EOF Then
                    'new subhead
                    txt = r(3)
                    If Left(txt, 5) = "Other" Then p = -1 Else p = 0
                    con.Execute("INSERT INTO govitems (parentID,reimb,priority,firstd,h1,h2,govtxt,txt) VALUES (" &
                                ID & "," & reimb & "," & p & "," & Qjoin({d, h1, h2, txt, txt}) & ")")
                    ID = LastID(con)
                Else
                    con.Execute("UPDATE govitems SET parentID=" & ID & " WHERE ID=" & CInt(rs("ID").Value))
                    ID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                End If
                rs.Close()
                'now enter the item.
                'up to 2018-19, they used commas in the numbers
                If reimb Then est = Replace(r(4), ",", "") Else est = Replace(r(5), ",", "")
                'skip the amended estimate
                act = Replace(r(7), ",", "")
                con.Execute("INSERT IGNORE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
                Console.WriteLine(ID & vbTab & h1 & vbTab & h2 & vbTab & reimb & vbTab & est & vbTab & vbTab & act)
            End If
        Next
        con.Close()
        con = Nothing
        Call UpdateTotals(723) 'bring the firstd of 723 up to date
    End Sub
    Function ReadCSVweird(d As String) As String()
        'customised version of ReadCSVfile for the accounting files with wierd bytes
        'I couldn't figure out how to use ReadAllText to read the file with the correct encoding (not UTF8, UTF32 etc)
        'so use ReadAllBytes instead.
        'Using powershell format-hex <filename> I found:
        'A1 A6 = apostrophe
        'E2 80 93 long dash, convert to hyphen
        'EF BC 8D shorter dash with space, convert to " - "
        'd is the fully-specified file location, usually on Webbserver2
        'returns a 1D array of strings representing the rows of the file
        Dim s As String, b As Byte(), x As Integer
        b = My.Computer.FileSystem.ReadAllBytes(d)
        s = ""
        'skip the initial Byte Order Mark EF BB BF
        For x = 3 To UBound(b) - 2
            If b(x) = 161 And b(x + 1) = 166 Then
                'A1 A6
                s &= "'"
                x += 1
            ElseIf b(x) = 226 And b(x + 1) = 128 And b(x + 2) = 153 Then
                'E2 80 99
                s &= "'"
                x += 2
            ElseIf b(x) = 161 And b(x + 1) = 208 Then
                'A1 D0, a big 5 " - " as in "Transport - Roads" in CWRF files
                s &= ": "
                x += 1
            ElseIf b(x) = 161 And b(x + 1) = 86 Then
                s &= "-"
                x += 1
            ElseIf (b(x) = 226 And b(x + 1) = 128 And b(x + 2) = 147) Then
                'E2 80 93, as in Hong Kong-Zhuhai-Macao Bridge before 2018-19
                s &= "-"
                x += 2
            ElseIf (b(x) = 226 And b(x + 1) = 128 And b(x + 2) = 148) Then
                'E2 80 94, as in Civil Engineering - Land acquisition in CWRF Head 701 2011-12
                s &= ":"
                x += 2
            ElseIf (b(x) = 239 And b(x + 1) = 188 And b(x + 2) = 141) Then
                'EF BC 8D
                s &= ": "
                x += 2
            Else
                s &= Chr(b(x))
            End If
        Next
        For x = x To UBound(b)
            s &= Chr(b(x))
        Next
        'remove newline characters inside quotes
        s = RemCSVbreaks(s)
        Return Split(s, Chr(10))
    End Function

    Sub ProcCWRFhead(y As Integer, h1 As String)
        'process heads under CWRF: h1: 701=Land,702=Port & Airport,703=Buildings,704=drainage,
        '705=Civil Engineering,706=Highways,707=New Towns & Urban Area Dev,708=Capital Subventions/Major Systems And Equipment,
        '709=Waterworks,710=computerisation,711=Housing
        'y is 4-digit year
        Dim c(), r(), h3, txt, sql, d, f As String,
            x, z, ID, colApp, colCat, colDep, app, colEst, colAct, colHead, colSub, topID, est, act As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'not sure if this helps, but there are some weird UTF-8 like characters in the files
        con.Execute("SET character_set_client=utf8mb4, character_set_connection=utf8mb4,character_set_results=utf8mb4;")
        d = y & "-03-31"
        f = "cwrf_head_" & h1
        c = ReadCSVweird(GetLog("treasFolder") & "cwrf_head/" & Govfile(f, y))
        r = ReadCSVrow(c(0))
        For x = 0 To UBound(r)
            Select Case Trim(r(x))
                Case "Department", "Head Sub-type"
                    colDep = x
                Case "Head Type"
                    colHead = x
                Case "Subhead"
                    colSub = x
                Case "Category" 'used in Head 708
                    colCat = x
                Case "Approved Project Estimate Amount"
                    colApp = x
            End Select
            If InStr(r(x), "Original Estimate Amount") > 0 Then colEst = x
            If InStr(r(x), "Actual Amount") > 0 Then colAct = x
        Next
        'TESTING
        'For x = 0 To UBound(c)
        'r = ReadCSVrow(c(x))
        'Console.WriteLine(r(colDep))
        'Next
        'Console.ReadKey()
        'Exit Sub

        'Get the head ID for this file
        r = ReadCSVrow(c(1))
        txt = Trim(r(1)) 'Computerisation, Highways etc
        sql = "SELECT * FROM govitems WHERE NOT rev AND h1='" & h1 & "' AND "
        'get the top line without specifying parentID
        topID = CInt(con.Execute(sql & "REPLACE(govtxt,' ','')='" & Apos(Replace(txt, " ", "")) & "'").Fields(0).Value)
        Console.WriteLine("h1:" & h1 & vbTab & "ID:" & topID & vbTab & txt)
        For x = 1 To UBound(c)
            Console.WriteLine("Row:" & x)
            ID = topID
            r = ReadCSVrow(c(x))
            'for 708, this will find 1 of 2 category heads
            If h1 = "708" Then
                txt = Trim(r(colCat))
                If txt = "Block allocations" Then txt = "CAPITAL SUBVENTIONS" 'these seem to be under that subtotal
                ID = CInt(con.Execute("SELECT ID FROM govitems WHERE parentID=" & ID &
                                                        " AND govtxt='" & txt & "'").Fields(0).Value)
                'now use Head Type. This field is not used in other heads
                txt = r(colHead)
                If Right(txt, 11) = "Subventions" Then txt = Trim(Replace(txt, "Subventions", ""))
                If Left(txt, 12) = "Subventions:" Then txt = Trim(Mid(txt, 13))
                If Trim(r(colDep)) > "" Then
                    'there's a subtype, so get first level
                    ID = GetHead(d, h1, txt, ID)
                    txt = Trim(r(colDep))
                    If Left(txt, 13) = "Miscellaneous" Then txt = "Miscellaneous" 'avoid repetition of parent text
                End If
            Else
                txt = Trim(r(colDep))
            End If
            If h1 = "701" And Right(txt, 16) = "Land acquisition" Then
                txt = Trim(Replace(txt, "Land acquisition", ""))
                If Right(txt, 1) = ":" Then txt = Trim(Left(txt, Len(txt) - 1))
            End If
            txt = Replace(txt, " :", ":")
            If txt = "Block allocation" Then txt = "Block allocations" 'prevent repeat head
            If h1 = "705" And Left(txt, 18) = "Civil engineering:" Then txt = Trim(Mid(txt, 19))
            If h1 = "706" And Left(txt, 10) = "Transport:" Then txt = Trim(Mid(txt, 11))
            If h1 = "709" And Left(txt, 15) = "Water Supplies:" Then txt = Trim(Mid(txt, 16))
            If txt = "" Then txt = Trim(r(colDep - 1)) 'normally "Block allocations"
            If txt = "" Then txt = Trim(r(colDep - 2)) 'Some CWRF heads need this
            z = InStr(txt, ":")
            If Left(txt, 11) <> "Secretariat" And z > 0 Then
                'split into nested heads
                ID = GetHead(d, h1, Trim(Left(txt, z - 1)), ID)
                txt = Trim(Mid(txt, z + 1))
            End If
            ID = GetHead(d, h1, txt, ID)

            'now process project item
            h3 = Trim(r(colSub)) 'subhead
            app = StrInt(r(colApp)) 'approved amount
            rs.Open(sql & "h3='" & h3 & "'", con) 'search independent of parent ID, so item can have moved
            If rs.EOF Then
                'assume project name is in next column
                txt = StripSpace(r(colSub + 1))
                z = InStr(txt, ":")
                If z > 0 Then
                    'split the item and create head for it
                    ID = GetHead(d, h1, Trim(Left(txt, z - 1)), ID)
                    txt = Trim(Mid(txt, z + 1))
                    txt = UCase(Left(txt, 1)) & Mid(txt, 2)
                End If
                'create project item
                con.Execute("INSERT INTO govitems (parentID,approved,firstd,h1,h3,govtxt,txt) VALUES (" &
                            ID & "," & app & "," & Qjoin({d, h1, h3, txt, txt}) & ")")
                ID = LastID(con)
            Else
                ID = CInt(rs("ID").Value)
                txt = rs("govtxt").Value.ToString
                If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                'update budgeted amount if larger
                If app > CInt(rs("approved").Value) Then con.Execute("UPDATE govitems SET approved=" & app & " WHERE ID=" & ID)
                'might be below a sub-head
                Call UpdateTotals(CInt(rs("parentID").Value))
            End If
            rs.Close()
            Console.WriteLine(h3 & vbTab & "ID:" & ID & vbTab & "Approved:" & app & vbTab & txt)
            'now enter the item
            'found a negative number in brackets (27) in 2021 primary schools - so convert string to integer to avoid insertion as positive
            est = StrInt(r(colEst))
            act = StrInt(r(colAct))
            con.Execute("INSERT IGNORE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
            Console.WriteLine("Est:" & est & vbTab & "Act:" & act)
        Next
        con.Close()
        con = Nothing
        Console.WriteLine("Done year to " & d & " for head " & h1)
    End Sub
    Function GetHead(d As String, h1 As String, govtxt As String, parentID As Integer, Optional live As Boolean = True) As Integer
        Dim h2, txt, shrt, sql As String, ID As Integer, con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        If Left(govtxt, 4) = "The " Then govtxt = Trim(Mid(govtxt, 5))
        'Find h2 if the govtxt matches a department name in Heads of Expenditure. Happens in heads 708 and 710
        'Remove spaces to make it easier
        rs.Open("SELECT * FROM govitems WHERE NOT isNull(h1) AND isNull(h2) AND isNull(h3) AND CAST(h1 AS unsigned)<700 AND " &
                "NOT rev And REPLACE(govtxt,' ','')='" & Apos(Replace(govtxt, " ", "")) & "'", con)
        If rs.EOF Then
            h2 = "NULL"
            txt = govtxt
            shrt = "NULL"
        Else
            h2 = rs("h1").Value.ToString
            txt = rs("txt").Value.ToString
            If txt = "" Then txt = govtxt 'in case we didn't add a shorter description
            shrt = rs("short").Value.ToString
            If shrt = "" Then shrt = "NULL"
            'Console.WriteLine("h2:" & h2 & vbTab & "Short:" & shrt & vbTab & "govtxt:" & govtxt)
        End If
        rs.Close()

        sql = "SELECT * FROM govitems WHERE NOT rev AND h1='" & h1 & "' AND REPLACE(govtxt,' ','')='" & Apos(Replace(govtxt, " ", "")) & "' AND parentID=" & parentID & " AND "
        rs.Open(sql & "head", con)
        If rs.EOF Then
            con.Execute("INSERT INTO govitems (head,parentID,firstd,h1,h2,govtxt,txt,short) VALUES (TRUE," & parentID & "," & Qjoin({d, h1, h2, govtxt, txt, shrt}) & ")")
            ID = LastID(con)
            If Left(govtxt, 13) = "Miscellaneous" Or Left(govtxt, 5) = "Other" Then con.Execute("UPDATE govitems SET priority=-1 WHERE ID=" & ID)
        Else
            ID = CInt(rs("ID").Value)
            If live And d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
        End If
        rs.Close()
        Console.WriteLine("ID:" & ID & vbTab & txt)
        If live Then
            'check for a non-head with same name and move it down below the new head. Needed for projects with multiple lines,
            'where one line has no colon so is not split
            rs.Open(sql & "NOT head", con)
            If Not rs.EOF Then con.Execute("UPDATE govitems SET parentID=" & ID & " WHERE ID=" & rs("ID").Value.ToString)
            rs.Close()
        End If
        con.Close()
        con = Nothing
        Return ID
    End Function
    Sub ProcOldCWRF(y As Integer, h1 As String, live As Boolean)
        'if not live then no change to govac but will still add govitems
        'for years up to 2013-14, we have to create our own CSV files from PDFs
        'process heads under CWRF: h1: 701=Land,702=Port & Airport,703=Buildings,704=drainage,
        '705=Civil Engineering,706=Highways,707=New Towns & Urban Area Dev,708=Capital Subventions/Major Systems And Equipment,
        '709=Waterworks,710=computerisation
        'y is 4-digit year
        Dim c(), r(), s(), h3, txt, sql, d, f As String,
            x, z, ID, colApp, colEst, colAct, colTxt, topID, headID, subheadID, topSub1, topSub2, est, act, app As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        If h1 = "708" Then
            colTxt = 3
            colApp = 4
            colEst = 5
            colAct = 6
        Else
            colTxt = 1
            colApp = 2
            colEst = 3
            colAct = 4
        End If
        'not sure if this helps, but there are some weird UTF-8 like characters in the files
        con.Execute("SET character_set_client=utf8mb4, character_set_connection=utf8mb4,character_set_results=utf8mb4;")
        d = y & "-03-31"
        f = "cwrf_" & h1 & "_" & Right(y.ToString, 2) & ".csv" 'e.g. pde_701_14.csv
        c = ReadCSVweird(GetLog("treasFolder") & "cwrf_head/" & f)
        sql = "SELECT * FROM govitems WHERE NOT rev AND h1='" & h1 & "' AND "
        'get the top line
        topID = CInt(con.Execute(sql & "parentID IN(1169,1171)").Fields(0).Value)
        If h1 = "708" Then
            'this head is split. Capital Subventions always come first
            topSub1 = CInt(con.Execute("SELECT ID from govitems WHERE govtxt='CAPITAL SUBVENTIONS' AND parentID=" & topID).Fields(0).Value)
            topSub2 = CInt(con.Execute("SELECT ID from govitems WHERE govtxt='MAJOR SYSTEMS AND EQUIPMENT' AND parentID=" & topID).Fields(0).Value)
            topID = topSub1
        End If
        Console.WriteLine("h1:" & h1 & vbTab & "ID:" & topID)
        headID = topID
        x = 0
        Do Until x > UBound(c)
            r = ReadCSVrow(c(x))
            h3 = Trim(r(0))
            If h3 = "" Then
                'we've reached new headers
                If h1 = "708" Then
                    'this heading has nested headers in r(1),r(2),r(3)
                    txt = StripSpace(r(1))
                    If txt > "" Then
                        If txt = "CAPITAL SUBVENTIONS" Then
                            topID = topSub1
                        ElseIf r(1) = "MAJOR SYSTEMS AND EQUIPMENT" Then
                            topID = topSub2 'switch heads
                        Else
                            Console.WriteLine("Unrecognised top category")
                            Console.ReadKey()
                        End If
                        headID = topID
                        x += 1
                        r = ReadCSVrow(c(x))
                    End If
                    txt = StripSpace(r(2))
                    If txt > "" Then
                        'this 2nd level only present under Capital Subventions (topSub1)
                        txt = Replace(txt, " :", ":")
                        If Right(txt, 11) = "Subventions" Then txt = Trim(Replace(txt, "Subventions", ""))
                        If Left(txt, 12) = "Subventions:" Then txt = Trim(Mid(txt, 13))
                        headID = GetHead(d, h1, txt, topID, live)
                        r = ReadCSVrow(c(x + 1))
                        h3 = Trim(r(0))
                        If h3 = "" Then x += 1
                    End If
                    If h3 = "" Then
                        'there's a third-level heading
                        txt = StripSpace(r(3))
                        If Left(txt, 16) = "Block allocation" Then 'may be singular or plural
                            'switch heads back. This always comes at the end of the 708 list
                            topID = topSub1
                            headID = topID
                        End If
                    End If
                End If
                If h3 = "" Then
                    'now 3rd level for 708 (if any), or 1st level for others
                    txt = StripSpace(r(colTxt))
                    txt = Replace(txt, " :", ":")
                    If txt = "Block allocation" Then txt = "Block allocations" 'prevent repeat head
                    If Left(txt, 13) = "Miscellaneous" Then txt = "Miscellaneous" 'avoid repetition of parent text
                    If h1 = "701" And Right(txt, 16) = "Land acquisition" Then
                        txt = Trim(Replace(txt, "Land acquisition", ""))
                        If Right(txt, 1) = ":" Then txt = Trim(Left(txt, Len(txt) - 1))
                    End If
                    If h1 = "705" And Left(txt, 18) = "Civil engineering:" Then txt = Trim(Mid(txt, 19))
                    If h1 = "706" And Left(txt, 10) = "Transport:" Then txt = Trim(Mid(txt, 11))
                    If h1 = "709" And Left(txt, 15) = "Water Supplies:" Then txt = Trim(Mid(txt, 16))
                    If txt = "" Then
                        Console.WriteLine("Heading not found - blank line?")
                        Console.ReadKey()
                    Else
                        z = InStr(txt, ":")
                        If Left(txt, 11) <> "Secretariat" And z > 0 Then
                            'split into nested heads
                            ID = GetHead(d, h1, Trim(Left(txt, z - 1)), headID, live)
                            txt = Trim(Mid(txt, z + 1))
                            subheadID = GetHead(d, h1, txt, ID, live)
                        Else
                            subheadID = GetHead(d, h1, txt, headID, live)
                        End If
                        Console.WriteLine("subHead:" & subheadID & vbTab & txt)
                    End If
                Else
                    subheadID = headID
                End If
            Else
                If h3 = "DELETE FROM CSV" Then Exit Do 'end of data, we left the checksums in
                'process project item
                app = StrInt(r(colApp))
                x += 1
                s = ReadCSVrow(c(x))
                rs.Open(sql & "h3='" & h3 & "'", con) 'search independent of parent ID, so item can have moved
                If rs.EOF Then
                    'description uses up to 2 lines
                    txt = StripSpace(r(colTxt))
                    If Right(txt, 1) <> "-" Then txt &= " "
                    txt = Trim(txt & StripSpace(s(colTxt)))
                    z = InStr(txt, ":")
                    If z > 0 Then
                        'split the item and create head for it
                        ID = GetHead(d, h1, Trim(Left(txt, z - 1)), subheadID, live)
                        txt = Trim(Mid(txt, z + 1))
                        txt = UCase(Left(txt, 1)) & Mid(txt, 2)
                    Else
                        ID = subheadID
                    End If
                    'create project item
                    con.Execute("INSERT INTO govitems (parentID,approved,firstd,h1,h3,govtxt,txt) VALUES (" &
                                ID & "," & app & "," & Qjoin({d, h1, h3, txt, txt}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    txt = rs("govtxt").Value.ToString
                    If live Then
                        If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                        'update budgeted amount if larger
                        If CInt(app) > CInt(rs("approved").Value) Then con.Execute("UPDATE govitems SET approved=" & app & " WHERE ID=" & ID)
                        'might be below a sub-head
                        Call UpdateTotals(CInt(rs("parentID").Value))
                    End If
                End If
                rs.Close()
                Console.WriteLine("ID:" & ID & vbTab & txt)
                est = StrInt(r(colEst))
                act = StrInt(s(colAct))
                'now enter the item
                If live Then _
                        con.Execute("INSERT IGNORE INTO govac(d,govItem,ann,est,act) VALUES('" & d & "'," & ID & ",TRUE," & est & "," & act & ")")
                Console.WriteLine(h3 & vbTab & "Approved:" & app & vbTab & "Est:" & est & vbTab & "Act:" & act)
            End If
            x += 1
        Loop
        con.Close()
        con = Nothing
        Console.WriteLine("Done year to " & d & " for head " & h1)
    End Sub
    Sub ProcCIFinv(y As Integer)
        'process the Capital Investment Fund statement of investments for investments made
        'NB some is non-cash (land injections to Housing Authority, MTR scrip-divs etc), so after running, we have to set the non-cash items to zero
        'we've done that manually in the pre-2015 files
        'y is 4-digit year
        Dim c(), r(), d, type, firm, cat, act, f As String,
            x, p, ID As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        d = y & "-03-31"
        f = "cif_statement_of_investments"
        c = ReadCSVfile(GetLog("treasFolder") & f & "/" & Govfile(f, y))
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            type = Trim(r(0))
            cat = Trim(r(2))
            act = Trim(r(5))
            If Not IsNumeric(act) Then act = "0"
            If type = "Equity Holdings" Then p = 1247 Else p = 1907 'Equity or other
            firm = Trim(r(1))
            rs.Open("SELECT * FROM govitems WHERE parentID=" & p & " AND govtxt='" & firm & "'", con)
            If rs.EOF Then
                'new investee or name changed
                con.Execute("INSERT INTO govitems(parentID,head,firstd,govtxt,txt) VALUES(" & p & "," & (cat > "") & "," & Qjoin({d, firm, firm}) & ")")
                ID = LastID(con)
            Else
                ID = CInt(rs("ID").Value)
                If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
            End If
            rs.Close()
            Console.WriteLine("Firm ID:" & ID & "amount: " & act & vbTab & firm)
            If cat > "" Then 'category under firm
                con.Execute("UPDATE govitems SET head=TRUE WHERE ID=" & ID)
                rs.Open("SELECT * FROM govitems WHERE parentID=" & ID & " AND govtxt='" & cat & "'", con)
                If rs.EOF Then
                    'new category
                    con.Execute("INSERT INTO govitems(parentID,firstd,govtxt,txt) VALUES(" & ID & "," & Qjoin({d, cat, cat}) & ")")
                    ID = LastID(con)
                Else
                    ID = CInt(rs("ID").Value)
                    If d < MSdate(CDate(rs("firstd").Value)) Then con.Execute("UPDATE govitems SET firstd='" & d & "' WHERE ID=" & ID)
                End If
                rs.Close()
                Console.WriteLine("Category ID:" & ID & "amount: " & act & vbTab & cat)
            End If
            con.Execute("INSERT IGNORE INTO govac(d,govItem,act) VALUES('" & d & "'," & ID & "," & act & ")")
        Next
        con.Close()
        con = Nothing
    End Sub
End Module