Option Explicit On
Option Compare Text
Imports ScraperKit
Module Quarantine

    Sub Main()
        Call GetJails()
        Call GetVax()
        'quarantine centres now closed!
        'Call GetQT()
        'Call QTbyType()
    End Sub
    Sub GetJails()
        On Error GoTo RepErr
        Dim dest, d, e, c(), r(), jailfolder As String,
            con As New ADODB.Connection
        Call OpenEnigma(con)
        jailfolder = GetLog("jailfolder")
        dest = jailfolder & "prisoners.csv"
        e = ""
        'this files only changes every 3 months. When we find a change, we will rename the download and process it.
        Call Download("https://www.csd.gov.hk/datagovhk/Stat_T1-3_ADN_by_institution_en.csv", dest, e, True, True)
        If e = "" Then
            c = ReadCSVfile(dest)
            'Get the last date in the file
            r = ReadCSVrow(c(UBound(c)))
            d = MSdateDMY(Trim(r(3)))
            If d <= MSdate(CDate(con.Execute("SELECT IFNULL((SELECT Max(d) FROM prisoners),'1000-01-01')").Fields(0).Value)) Then
                Console.WriteLine("No new prisoner data")
            Else
                My.Computer.FileSystem.RenameFile(dest, "prisoners" & d & ".csv")
                Call ProcJails(c)
                Call SendMail("New prisoners-by-institution file found " & d)
            End If
        End If
        dest = jailfolder & "origin.csv"
        Call Download("https://www.csd.gov.hk/datagovhk/Stat_T1-2_ADN_by_Loal_non_local_en.csv", dest, e, True, True)
        If e = "" Then
            c = ReadCSVfile(dest)
            'Get the last date in the file
            r = ReadCSVrow(c(UBound(c)))
            d = MSdateDMY(Trim(r(2)))
            If d <= MSdate(CDate(con.Execute("SELECT IFNULL((SELECT Max(d) FROM prisorigin),'1000-01-01')").Fields(0).Value)) Then
                Console.WriteLine("No new prisoner origin data")
            Else
                My.Computer.FileSystem.RenameFile(dest, "origin" & d & ".csv")
                Call ProcOrigin(c)
                Call SendMail("New prisoners-by-origin file found " & d)
            End If
        End If
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetJails failed", Err)
    End Sub
    Sub ProcJailFile(f As String)
        'f is the name of a jail file in the jails folder
        Dim c(), r(), dest, d As String
        dest = GetLog("jailFolder") & f
        c = ReadCSVfile(dest)
        'conform the filename while we are here
        r = ReadCSVrow(c(UBound(c)))
        d = MSdateDMY(Trim(r(3)))
        If f <> "prisoners" & d & ".csv" Then My.Computer.FileSystem.RenameFile(dest, "prisoners" & d & ".csv")
        Call ProcJails(c)
    End Sub
    Sub ProcOriginFile(f As String)
        'f is the name of a prison origin file in the jails folder
        Dim c(), r(), dest, d As String
        dest = GetLog("jailFolder") & f
        c = ReadCSVfile(dest)
        'conform the filename while we are here
        r = ReadCSVrow(c(UBound(c)))
        d = MSdateDMY(Trim(r(2)))
        If f <> "origin" & d & ".csv" Then My.Computer.FileSystem.RenameFile(dest, "origin" & d & ".csv")
        Call ProcOrigin(c)
    End Sub

    Sub ProcOrigin(c() As String)
        'new CSV file format from 2022-09-30
        On Error GoTo RepErr
        Dim d, o, r() As String,
            x, p, local, MTM, foreign As Integer,
            con As New ADODB.Connection
        Call OpenEnigma(con)
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            o = Trim(r(1))
            p = CInt(r(3))
            Select Case o
                Case "Hong Kong residents"
                    local = p
                Case "Chinese nationality-Residents of Mainland, Taiwan and Macao"
                    MTM = p
                Case "Other nationalities"
                    foreign = p
                Case "Total"
                    d = MSdateDMY(Trim(r(2)))
                    con.Execute("INSERT IGNORE INTO prisorigin(d,local,MTM,nonlocal)" & Valsql({d, local, MTM, foreign}))
                    Console.WriteLine(d & vbTab & vbTab & local & vbTab & MTM & vbTab & foreign & vbTab)
                    local = 0
                    MTM = 0
                    foreign = 0
            End Select
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("ProcPrisOrigin failed", Err)
    End Sub
    Sub ProcOriginOLD(c() As String)
        On Error GoTo RepErr
        Dim d, o, r() As String,
            x, p, local, MTM, foreign As Integer,
            con As New ADODB.Connection
        Call OpenEnigma(con)
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            o = Trim(r(0))
            p = CInt(r(2))
            Select Case o
                Case "Local persons"
                    local = p
                Case "Persons from Mainland, Taiwan or Macao"
                    MTM = p
                Case "Persons from other countries"
                    foreign = p
                Case "Total"
                    d = MSdateDMY(Trim(r(1)))
                    con.Execute("INSERT IGNORE INTO prisorigin(d,local,MTM,nonlocal) VALUES('" &
                            d & "'," & local & "," & MTM & "," & foreign & ")")
                    Console.WriteLine(d & vbTab & vbTab & local & vbTab & MTM & vbTab & foreign & vbTab)
                    local = 0
                    MTM = 0
                    foreign = 0
            End Select
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("ProcPrisOrigin failed", Err)
    End Sub
    Sub ProcJails(c() As String)
        On Error GoTo RepErr
        Dim d, jail, lastjail, r(), s As String,
            x, y, j, type, convict, remand, detain, p As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        lastjail = ""
        For x = 1 To UBound(c)
            r = ReadCSVrow(c(x))
            jail = Trim(r(0))
            If jail <> lastjail And jail <> "Total" Then
                'get the jail ID
                rs.Open("SELECT ID FROM jails WHERE name='" & Apos(jail) & "'", con)
                If rs.EOF Then
                    'New jail. Get the jailtype ID
                    type = CInt(con.Execute("SELECT ID FROM jailtypes WHERE txt='" & Apos(Trim(r(1))) & "'").Fields(0).Value)
                    'add the new jail
                    con.Execute("INSERT INTO jails (name,type) VALUES ('" & Apos(jail) & "'," & type & ")")
                    j = LastID(con)
                Else
                    j = CInt(rs("ID").Value)
                End If
                rs.Close()
                lastjail = jail
            End If
            If jail <> "Total" Then
                If r(4) = "-" Or r(4) = "N.A." Then p = 0 Else p = CInt(r(4))
                Select Case Trim(r(2))
                    Case "Convicted persons"
                        convict = p
                    Case "Persons on remand"
                        remand = p
                    Case "Detainees"
                        detain = p
                    Case "Sub-total"
                        'grab the date
                        d = MSdateDMY(Trim(r(3)))
                        'detainees are buried in the notes field of sub-totals
                        s = r(5)
                        If Left(s, 9) = "Including" Then
                            For y = 10 To Len(s)
                                If Mid(s, y, 1) <> " " And Not IsNumeric(Mid(s, y, 1)) Then Exit For
                            Next
                            detain += CInt(Trim(Mid(s, 10, y - 10)))
                        End If
                        con.Execute("REPLACE INTO prisoners(jail,d,convict,remand,detain) VALUES(" &
                            j & ",'" & d & "'," & convict & "," & remand & "," & detain & ")")
                        Console.WriteLine(j & vbTab & d & vbTab & vbTab & convict & vbTab & remand & vbTab & detain & vbTab & jail)
                        convict = 0
                        remand = 0
                        detain = 0
                End Select
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("ProcJails failed", Err)
    End Sub
    Sub GetVax()
        'NEW version, 2024-07-22 as the daily data have long since been discontinued on 2023-08-22
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            dest, c(), e, r(), male, cohort, d, vaxtypes(), header, sql, sqlbase, cohIDs(), govtxt As String,
            x, y, vaxes, doses, vaxdoses, numCoh As Integer
        Call OpenEnigma(con)
        'fetch a string array of cohort IDs ordered by minAge
        cohIDs = GetRow(con.Execute("SELECT ID FROM vaxcohorts ORDER BY minAge"))
        numCoh = UBound(cohIDs) + 1
        'if new doses or vaxtypes are added, just change the next 2 lines and the rest should work, unless column order is changed
        doses = 10
        vaxtypes = Split("sino bion") 'csv is now inactivated and mRNA but we won't rename fields
        vaxes = UBound(vaxtypes) + 1
        vaxdoses = vaxes * doses
        e = ""
        header = ""
        dest = GetLog("QTfolder") & "\vax.csv"
        Call Download(GetLog("VaxAge"), dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            sql = ""
            For x = 0 To vaxes - 1
                For y = 1 To doses
                    sql = sql & "," & vaxtypes(x) & y
                    header = header & vbTab & vaxtypes(x) & y
                Next
            Next
            header = "Date" & vbTab & vbTab & "Cohort" & vbTab & "Sex" & header
            sqlbase = "REPLACE INTO vax(d,cohort,male" & sql & ") VALUES ('"
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                govtxt = r(1)
                If Left(govtxt, 1) = "'" Then govtxt = Mid(govtxt, 2)
                cohort = con.Execute("SELECT ID FROM vaxcohorts WHERE govtxt='" & govtxt & "'").Fields(0).Value.ToString
                If r(2) = "M" Then male = "TRUE" Else male = "FALSE"
                Console.WriteLine(header)
                sql = ""
                Console.Write(r(0) & vbTab & cohort & vbTab & r(2))
                For y = 3 To vaxdoses + 2
                    sql = sql & "," & r(y)
                    Console.Write(vbTab & r(y))
                Next
                '2025-03-27 they changed the date format to D/M/YYYY from DD/MM/YYYY
                '2025-05-08 they changed the date format from DD/MM/YYYY to YYYY-MM-DD. ISO 8601 at last!
                '2025-05-23 back to D/M/YYYY
                '2025-05-30 back to ISO
                If InStr(r(0), "/") > 0 Then r(0) = MSdate(ReadDMY(r(0)))
                sql = sqlbase & r(0) & "'," & cohort & "," & male & sql & ")"
                con.Execute(sql)
                Console.WriteLine()
            Next
        End If
        'some dates are missing some cohorts if zero vaccinations (4 dates as of 2020-01-09). Fill them to create time series
        rs.Open("SELECT d,COUNT(*) c FROM vax WHERE NOT prov GROUP BY d HAVING c<" & 2 * numCoh, con)
        Do Until rs.EOF
            d = MSdate(CDate(rs("d").Value))
            For x = 1 To numCoh
                For Each male In Split("TRUE FALSE")
                    con.Execute("INSERT IGNORE INTO vax (d,cohort,male,prov) VALUES ('" & d & "'," & x & "," & male & ",FALSE)")
                    Console.WriteLine(d & vbTab & x & vbTab & male & vbTab)
                Next
            Next
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetVax failed", Err)
    End Sub

    Sub GetVaxOLD2()
        'NEW version, 2022-02-19 due to unreliability of 3-11 cohort data - we have not captured as many as there should be
        'collect data from weekly CSV of daily vaccinations by gender and cohort
        'the running totals are held in vaxcohorts table, so if new vaxtypes or doses are added (e.g. Moderna, or a 4th dose) then we must add to those
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            dest, c(), e, r(), r1(), r2(), male, cohort, d, maxd, maleRatios(,), vaxtypes(), header, sql, sqlbase, newData(,), cohData(,,), cohIDs() As String,
            w, x, y, z, oldSum, newSum, inc, days, incday, newTotal(), vaxes, doses, vaxdoses, numCoh As Integer
        Call OpenEnigma(con)
        'fetch a string array of cohort IDs ordered by minAge
        cohIDs = GetRow(con.Execute("SELECT ID FROM vaxcohorts ORDER BY minAge"))
        numCoh = UBound(cohIDs) + 1
        'if new doses or vaxtypes are added, just change the next 2 lines and the rest should work, unless column order is changed
        doses = 7
        vaxtypes = Split("sino bion")
        vaxes = UBound(vaxtypes) + 1
        vaxdoses = vaxes * doses
        e = ""
        header = ""
        For x = 1 To doses
            For y = 1 To vaxes
                header = header & vbTab & vaxtypes(y - 1) & x
            Next
        Next
        header = vbCrLf & "Date" & vbTab & header
        dest = GetLog("QTfolder") & "\vax.csv"
        Call Download(GetLog("VaxAge"), dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            sql = ""
            For x = 0 To vaxes - 1
                For y = 1 To doses
                    sql = sql & "," & vaxtypes(x) & y
                Next
            Next
            sqlbase = "REPLACE INTO vax(d,cohort,male" & sql & ") VALUES ('"
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                cohort = con.Execute("SELECT ID FROM vaxcohorts WHERE govtxt='" & r(1) & "'").Fields(0).Value.ToString
                If r(2) = "M" Then male = "TRUE" Else male = "FALSE"
                sql = ""
                For y = 3 To vaxdoses + 2
                    sql = sql & "," & r(y)
                Next
                con.Execute(sqlbase & r(0) & "'," & cohort & "," & male & sql & ")")
                Console.Write(r(0) & vbTab & cohort)
                For y = 3 To vaxdoses + 2
                    Console.Write(vbTab & r(y))
                Next
                Console.WriteLine()
            Next
        End If
        'some dates are missing some cohorts if zero vaccinations (4 dates as of 2020-01-09). Fill them to create time series
        rs.Open("SELECT d,COUNT(*) c FROM vax WHERE NOT prov GROUP BY d HAVING c<" & 2 * numCoh, con)
        Do Until rs.EOF
            d = MSdate(CDate(rs("d").Value))
            For x = 1 To numCoh
                For Each male In Split("TRUE FALSE")
                    con.Execute("INSERT IGNORE INTO vax (d,cohort,male,prov) VALUES ('" & d & "'," & x & "," & male & ",FALSE)")
                    Console.WriteLine(d & vbTab & x & vbTab & male & vbTab)
                Next
            Next
            rs.MoveNext()
        Loop
        rs.Close()
        'now add approximate data from the daily site. This still only covers 3 doses
        doses = 3
        vaxdoses = vaxes * doses
        ReDim newTotal(vaxdoses - 1)
        dest = GetLog("QTfolder") & "\barVaxDate.csv"
        Call Download("https://static.data.gov.hk/covid-vaccine/bar_vaccination_date.csv", dest, e, True, True)
        Console.WriteLine("e=" & e)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            'find latest date, including provisional data
            maxd = MSdate(CDate(con.Execute("SELECT MAX(d) FROM vax").Fields(0).Value))
            'find the first new date
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                If r(0) > maxd Then Exit For
            Next
            days = UBound(c) - x + 1
            If days > 0 Then
                'found new data. Put daily vaxes by type and dose in an array
                ReDim newData(vaxdoses, days - 1) 'column 0 holds date
                For y = 0 To days - 1
                    r = ReadCSVrow(c(x))
                    newData(0, y) = r(0) 'date
                    For z = 1 To doses
                        For w = 1 To vaxes
                            newData((z - 1) * vaxes + w, y) = r((z - 1) * (2 * vaxes + 2) + w)
                        Next
                    Next
                    x += 1
                Next
                Console.WriteLine(header)
                For x = 0 To UBound(newData, 2)
                    For y = 0 To UBound(newData, 1)
                        Console.Write(newData(y, x) & vbTab)
                    Next
                    Console.WriteLine()
                Next
                'sum the columns for new dates (usually only one date)
                For x = 0 To days - 1
                    For y = 0 To UBound(newTotal)
                        newTotal(y) = newTotal(y) + CInt(newData(y + 1, x))
                    Next
                Next
                'TESTING - did this work?
                Console.Write(days & "-day total" & vbTab)
                For y = 0 To UBound(newTotal)
                    Console.Write(newTotal(y) & vbTab)
                Next
                Console.WriteLine()
                'make an array, one row per day, share of new doses in N days per day
                Dim newRatio(vaxdoses - 1, days - 1) As Double
                For x = 0 To days - 1
                    For y = 0 To UBound(newTotal)
                        If newTotal(y) > 0 Then newRatio(y, x) = CDbl(newData(y + 1, x)) / newTotal(y) Else newRatio(y, x) = 0
                    Next
                Next
                'TESTING - did this work?
                Console.WriteLine(vbCrLf & "Ratios for days:")
                For x = 0 To days - 1
                    Console.Write(newData(0, x) & vbTab)
                    For y = 0 To vaxdoses - 1
                        Console.Write(Math.Round(newRatio(y, x), 5) & vbTab)
                    Next
                    Console.WriteLine()
                Next
                'Now get the cumulative cohort data and assume same date
                dest = GetLog("QTfolder") & "\barAge" & ".csv"
                Call Download("https://static.data.gov.hk/covid-vaccine/bar_age.csv", dest, e, True, True)
                If e = "" Then
                    'Got the file
                    c = ReadCSVfile(dest)
                    'get ratio of males by cohort and jab-round over last 7 confirmed days
                    d = MSdate(CDate(con.Execute("SELECT DATE_SUB(MAX(d),INTERVAL 7 DAY) FROM vax WHERE NOT prov").Fields(0).Value))
                    sql = ""
                    For x = 1 To doses
                        For y = 0 To vaxes - 1
                            sql = sql & "," & "IFNULL(SUM(male*v." & vaxtypes(y) & x & ")/SUM(v." & vaxtypes(y) & x & "),0.5)"
                        Next
                    Next
                    rs.Open("SELECT " & Mid(sql, 2) & " FROM vax v JOIN vaxcohorts ON v.cohort=ID WHERE d>'" & d & "' AND NOT prov GROUP BY cohort ORDER BY minAge", con)
                    maleRatios = GetRows(rs)
                    rs.Close()
                    'Output male ratios
                    Console.Write("Male proportion" & vbTab)
                    For y = 0 To vaxdoses - 1
                        Console.Write(Math.Round(CDbl(maleRatios(y, x - 1)), 5) & vbTab)
                    Next
                    Console.WriteLine()
                    Console.WriteLine(header & vbTab & "Sex")
                    sql = ""
                    For x = 1 To doses
                        'sino1,bion1,sino2,bion2....
                        For y = 0 To vaxes - 1
                            sql = sql & ",SUM(v." & vaxtypes(y) & x & ")" & vaxtypes(y) & x 'SUM(sino1)sino1,SUM(bion1)bion1,...
                        Next
                    Next
                    'get total of jabs by cohort
                    rs.Open("Select ID" & sql & " FROM vax v JOIN vaxcohorts On cohort=ID GROUP BY cohort ORDER BY minAge", con)
                    'c is 1 row per cohort in ascending age. Columns 2,3,5,6,8,9 have sino1,bion1 etc data. Don't need totals in columns 4,7,10
                    ReDim cohData(vaxdoses - 1, days - 1, numCoh - 1)
                    'aggregate ages 0-3 and 3-11 until HB breaks down the data
                    r1 = ReadCSVrow(c(1))
                    r2 = ReadCSVrow(c(2))
                    sql = ""
                    x = 1
                    For y = 0 To doses - 1
                        For z = 0 To vaxes - 1
                            oldSum = CInt(rs(vaxtypes(z) & y + 1).Value)
                            newSum = CInt(r1(2 + (vaxes + 1) * y + z)) + CInt(r2(2 + (vaxes + 1) * y + z))
                            sql = sql & "," & vaxtypes(z) & y + 1 & "=" & newSum
                            inc = newSum - oldSum
                            'allocate the change over the missing days, pro rata to activity in that vax-dose (e.g. sino1)
                            For w = 0 To days - 1
                                'preparing for insertion, sino1, bion1,...
                                incday = CInt(inc * newRatio(y * vaxes + z, w))
                                cohData(y * vaxes + z, w, x - 1) = incday.ToString
                            Next
                        Next
                    Next
                    'update the provisional totals - although we don't use them anymore
                    con.Execute("UPDATE vaxcohorts Set " & Mid(sql, 2) & " WHERE ID=" & cohIDs(x - 1))
                    rs.MoveNext()
                    For x = 3 To UBound(c) 'for each remaining cohort
                        sql = ""
                        r = ReadCSVrow(c(x))
                        For y = 0 To doses - 1
                            For z = 0 To vaxes - 1
                                oldSum = CInt(rs(vaxtypes(z) & y + 1).Value)
                                newSum = CInt(r(2 + (vaxes + 1) * y + z))
                                sql = sql & "," & vaxtypes(z) & y + 1 & "=" & newSum
                                inc = newSum - oldSum
                                'allocate the change over the missing days, pro rata to activity in that vax-dose (e.g. sino1)
                                For w = 0 To days - 1
                                    'preparing for insertion, sino1, bion1,...
                                    incday = CInt(inc * newRatio(y * vaxes + z, w))
                                    'changed to x-2 because of aggregation of cohorts 0-3 and 3-11
                                    cohData(y * vaxes + z, w, x - 2) = incday.ToString
                                Next
                            Next
                        Next
                        'update the provisional totals - although we don't use them anymore
                        'changed to x-2 because of aggregation of cohorts 0-3 and 3-11
                        con.Execute("UPDATE vaxcohorts Set " & Mid(sql, 2) & " WHERE ID=" & cohIDs(x - 2))
                        rs.MoveNext()
                    Next
                    'TEST - did this work?
                    Console.WriteLine("New data To allocate by gender")
                    Console.WriteLine(header)
                    For x = 0 To numCoh - 1
                        Console.WriteLine("Cohort: " & cohIDs(x))
                        For y = 0 To days - 1
                            Console.Write(newData(0, y))
                            For z = 0 To vaxdoses - 1
                                Console.Write(vbTab & cohData(z, y, x))
                            Next
                            Console.WriteLine()
                        Next
                    Next
                    rs.Close()
                    sql = ""
                    For x = 1 To doses
                        'sino1,bion1,sino2,bion2....
                        For y = 0 To vaxes - 1
                            sql = sql & "," & vaxtypes(y) & x  'sino1,bion1,sino2,...
                        Next
                    Next
                    'now we have a 3-D array of cohData. dim1 is vaxdose, dim2 is day, dim3 is cohort
                    sqlbase = "INSERT IGNORE INTO vax(prov,d,cohort,male" & sql & ") VALUES (TRUE,'"
                    For x = 0 To numCoh - 1
                        Console.WriteLine("Cohort " & cohIDs(x))
                        For y = 0 To days - 1
                            Console.Write(newData(0, y))
                            'do Males
                            sql = ""
                            For z = 0 To vaxdoses - 1
                                newTotal(z) = CInt(CDbl(maleRatios(z, x)) * CDbl(cohData(z, y, x)))
                                sql = sql & "," & newTotal(z)
                                Console.Write(vbTab & newTotal(z))
                            Next
                            Console.WriteLine(vbTab & "Male")
                            con.Execute(sqlbase & newData(0, y) & "'," & cohIDs(x) & ",TRUE" & sql & ")")
                            Console.Write(newData(0, y))
                            'do Females
                            sql = ""
                            For z = 0 To vaxdoses - 1
                                'calculate female allocation
                                newTotal(z) = CInt(cohData(z, y, x)) - newTotal(z)
                                sql = sql & "," & newTotal(z)
                                Console.Write(vbTab & newTotal(z))
                            Next
                            Console.WriteLine(vbTab & "Female")
                            con.Execute(sqlbase & newData(0, y) & "'," & cohIDs(x) & ",FALSE" & sql & ")")
                        Next
                    Next
                End If
            End If
        End If
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetVax failed", Err)
    End Sub
    Sub GetVaxOLD()
        'OLD version, abandoned 2022-02-19 due to unreliability of 3-11 cohort data - we have not captured as many as there should be
        'collect data from weekly CSV of daily vaccinations by gender and cohort
        'supplement with estimation from the daily CSVs on dashboard, which do not have gender
        'the running totals are held in vaxcohorts table, so if new vaxtypes or doses are added (e.g. Moderna, or a 4th dose) then we must add to those
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            dest, c(), e, r(), s, male, cohort, d, maxd, maleRatios(,), vaxtypes(), header, sql, sqlbase, newData(,) As String,
            w, x, y, z, oldSum, newSum, inc, days, incday, newTotal(), vaxes, doses, vaxdoses, cohorts As Integer
        Call OpenEnigma(con)
        cohorts = CInt(con.Execute("Select COUNT(*) FROM vaxcohorts").Fields(0).Value)
        'if new doses or vaxtypes are added, just change the next 2 lines and the rest should work, unless column order is changed
        doses = 3
        vaxtypes = Split("sino bion")
        vaxes = UBound(vaxtypes) + 1
        vaxdoses = vaxes * doses
        ReDim newTotal(vaxdoses - 1)
        e = ""
        header = ""
        For x = 1 To doses
            For y = 1 To vaxes
                header = header & vbTab & vaxtypes(y - 1) & x
            Next
        Next
        header = vbCrLf & "Date" & vbTab & header
        dest = GetLog("QTfolder") & "\vax.csv"
        Call Download("https://www.fhb.gov.hk/download/opendata/COVID19/vaccination-rates-over-time-by-age.csv", dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            sql = ""
            sqlbase = ""
            For x = 0 To vaxes - 1
                For y = 1 To doses
                    sql = sql & "," & vaxtypes(x) & y
                Next
            Next
            sqlbase = "REPLACE INTO vax(d,cohort,male" & sql & ") VALUES ('"
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                cohort = con.Execute("SELECT ID FROM vaxcohorts WHERE govtxt='" & r(1) & "'").Fields(0).Value.ToString
                If r(2) = "M" Then male = "TRUE" Else male = "FALSE"
                sql = ""
                For y = 3 To vaxdoses + 2
                    sql = sql & "," & r(y)
                Next
                con.Execute(sqlbase & r(0) & "'," & cohort & "," & male & sql & ")")
                Console.Write(r(0) & vbTab & cohort)
                For y = 3 To vaxdoses + 2
                    Console.Write(vbTab & r(y))
                Next
                Console.WriteLine()
            Next
        End If
        'some dates are missing some cohorts if zero vaccinations (4 dates as of 2020-01-09). Fill them to create time series
        rs.Open("SELECT d,COUNT(*) c FROM vax GROUP BY d HAVING c<" & 2 * cohorts, con)
        Do Until rs.EOF
            d = MSdate(CDate(rs("d").Value))
            For x = 1 To cohorts
                For Each male In Split("TRUE FALSE")
                    con.Execute("INSERT IGNORE INTO vax (d,cohort,male) VALUES ('" & d & "'," & x & "," & male & ")")
                    Console.WriteLine(d & vbTab & x & vbTab & male & vbTab)
                Next
            Next
            rs.MoveNext()
        Loop
        rs.Close()
        'now add approximate data from the daily site
        dest = GetLog("QTfolder") & "\barVaxDate.csv"
        Call Download("https://static.data.gov.hk/covid-vaccine/bar_vaccination_date.csv", dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            'find latest date, including provisional data
            maxd = MSdate(CDate(con.Execute("SELECT MAX(d) FROM vax").Fields(0).Value))
            'find the first new date
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                If r(0) > maxd Then Exit For
            Next
            days = UBound(c) - x + 1
            If days > 0 Then
                'found new data. Put daily vaxes by type and dose in an array
                ReDim newData(doses * vaxes, days - 1) 'column 0 holds date
                For y = 0 To days - 1
                    r = ReadCSVrow(c(x))
                    newData(0, y) = r(0) 'date
                    For z = 1 To doses 'doses
                        For w = 1 To vaxes
                            newData((z - 1) * vaxes + w, y) = r((z - 1) * (2 * vaxes + 2) + w)
                        Next
                    Next
                    x += 1
                Next
                Console.WriteLine(header)
                For x = 0 To UBound(newData, 2)
                    For y = 0 To UBound(newData, 1)
                        Console.Write(newData(y, x) & vbTab)
                    Next
                    Console.WriteLine()
                Next
                'sum the columns for new dates (usually only one date)
                For x = 0 To days - 1
                    For y = 0 To UBound(newTotal)
                        newTotal(y) = newTotal(y) + CInt(newData(y + 1, x))
                    Next
                Next
                'TESTING - did this work?
                Console.Write(days & "-day total" & vbTab)
                For y = 0 To UBound(newTotal)
                    Console.Write(newTotal(y) & vbTab)
                Next
                Console.WriteLine()
                'make an array, one row per day, share of new doses in N days per day
                Dim newRatio(vaxdoses - 1, days - 1) As Double
                For x = 0 To days - 1
                    For y = 0 To UBound(newTotal)
                        If newTotal(y) > 0 Then newRatio(y, x) = CDbl(newData(y + 1, x)) / newTotal(y) Else newRatio(y, x) = 0
                    Next
                Next
                'TESTING - did this work?
                Console.WriteLine(vbCrLf & "Ratios for days:")
                For x = 0 To days - 1
                    Console.Write(newData(0, x) & vbTab)
                    For y = 0 To vaxdoses - 1
                        Console.Write(Math.Round(newRatio(y, x), 5) & vbTab)
                    Next
                    Console.WriteLine()
                Next
                'Now get the cumulative cohort data and assume same date
                dest = GetLog("QTfolder") & "\barAge" & ".csv"
                Call Download("https://static.data.gov.hk/covid-vaccine/bar_age.csv", dest, e, True, True)
                If e = "" Then
                    'Got the file
                    c = ReadCSVfile(dest)
                    'get ratio of males by cohort and jab-round over last 7 days
                    d = MSdate(CDate(con.Execute("SELECT DATE_SUB(MAX(d),INTERVAL 7 DAY) FROM vax WHERE NOT prov").Fields(0).Value))
                    sql = ""
                    For x = 1 To doses
                        For y = 0 To vaxes - 1
                            sql = sql & "," & "IFNULL(SUM(male*v." & vaxtypes(y) & x & ")/SUM(v." & vaxtypes(y) & x & "),0.5)"
                        Next
                    Next
                    rs.Open("SELECT " & Mid(sql, 2) & " FROM vax v JOIN vaxcohorts ON v.cohort=ID WHERE d>'" & d & "' AND NOT prov GROUP BY cohort ORDER BY minAge", con)
                    maleRatios = GetRows(rs)
                    rs.Close()
                    sql = ""
                    For x = 1 To doses
                        'sino1,bion1,sino2,bion2....
                        For y = 0 To vaxes - 1
                            sql = sql & "," & vaxtypes(y) & x
                        Next
                    Next
                    rs.Open("SELECT ID" & sql & " FROM vaxcohorts ORDER BY minAge", con)
                    sqlbase = "INSERT IGNORE INTO vax(prov,d,cohort,male" & sql & ") VALUES (TRUE,'"
                    For x = 1 To UBound(c) 'for each cohort
                        Console.WriteLine("Cohort " & x)
                        sql = ""
                        'c is 1 row per cohort in ascending age. Columns 2,3,5,6,8,9 have sino1,bion1 etc data. Don't need totals in columns 4,7,10
                        r = ReadCSVrow(c(x))
                        For y = 1 To doses
                            For z = 0 To vaxes - 1
                                oldSum = CInt(rs(vaxtypes(z) & y).Value)
                                newSum = CInt(r(doses * y - 1 + z))
                                sql = sql & "," & vaxtypes(z) & y & "=" & newSum
                                inc = newSum - oldSum
                                'allocate the change over the missing days, pro rata to activity in that vax-dose (e.g. sino1)
                                For w = 0 To days - 1
                                    'reUse newData, preparing for insertion, sino1, bion1,...
                                    incday = CInt(inc * newRatio(y * 2 - 2 + z, w))
                                    'reusing newData to store result
                                    newData(y * vaxes - 1 + z, w) = incday.ToString
                                Next
                            Next
                        Next
                        'update the provisional totals
                        con.Execute("UPDATE vaxcohorts SET " & Mid(sql, 2) & " WHERE ID=" & rs("ID").Value.ToString)

                        'TEST - did this work?
                        Console.WriteLine(header)
                        For y = 0 To days - 1
                            For z = 0 To vaxdoses
                                Console.Write(newData(z, y) & vbTab)
                            Next
                            Console.WriteLine()
                        Next

                        'Output male ratios
                        Console.Write("Male proportion" & vbTab)
                        For y = 0 To vaxdoses - 1
                            Console.Write(Math.Round(CDbl(maleRatios(y, x - 1)), 5) & vbTab)
                        Next
                        Console.WriteLine()
                        Console.WriteLine(header & vbTab & "Sex")
                        For y = 0 To days - 1
                            Console.Write(newData(0, y))
                            sql = ""
                            For z = 0 To vaxdoses - 1
                                newTotal(z) = CInt(CDbl(maleRatios(z, x - 1)) * CDbl(newData(z + 1, y)))
                                sql = sql & "," & newTotal(z)
                                Console.Write(vbTab & newTotal(z))
                            Next
                            Console.WriteLine(vbTab & "Male")
                            con.Execute(sqlbase & newData(0, y) & "'," & x & ",TRUE" & sql & ")")
                            Console.Write(newData(0, y))
                            sql = ""
                            For z = 0 To vaxdoses - 1
                                'calculate female allocation
                                newTotal(z) = CInt(newData(z + 1, y)) - newTotal(z)
                                sql = sql & "," & newTotal(z)
                                Console.Write(vbTab & newTotal(z))
                            Next
                            Console.WriteLine(vbTab & "Female")
                            con.Execute(sqlbase & newData(0, y) & "'," & x & ",FALSE" & sql & ")")
                        Next
                        rs.MoveNext()
                    Next
                    rs.Close()
                End If
            End If
        End If
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetVax failed", Err)
    End Sub
    Sub QTbyType()
        On Error GoTo RepErr
        'Get the daily data by type close (CC) or non-close contact (NCC)
        Dim con As New ADODB.Connection,
            dest, d, c(), e, r(), s, cumCC, cumNCC, CC, NCC As String,
            x As Integer
        e = ""
        Call OpenEnigma(con)
        dest = GetLog("QTfolder") & "\byType.csv"
        Call Download("http://www.chp.gov.hk/files/misc/no_of_confines_by_types_in_quarantine_centres_eng.csv", dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                If UBound(r) > 0 Then
                    'sometimes blank rows at end
                    d = MSdate(ReadDMY(r(0))) 'ignore the time part - 2020-07-11 has 2 times and we took 09:00, rest are 09:00
                    cumCC = r(2)
                    cumNCC = r(3)
                    CC = r(4)
                    NCC = r(5)
                    con.Execute("INSERT IGNORE INTO qtByType (d,cumCC,cumNCC,CC,NCC) VALUES ('" & d & "'," &
                            cumCC & "," & cumNCC & "," & CC & "," & NCC & ")")
                    Console.WriteLine(d & vbTab & cumCC & vbTab & cumNCC & vbTab & CC & vbTab & NCC)
                End If
            Next
        End If
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetQTbyType failed", Err)
    End Sub
    Sub GetQT()
        'process the daily quarantine data per centre.
        On Error GoTo RepErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            dest, d, c(), e, name, address, r(), s, capUnit, useUnit, pax, availUnit, qtID As String,
            x As Integer
        e = ""
        Call OpenEnigma(con)
        dest = GetLog("QTfolder") & "\occupancy.csv"
        Call Download("http://www.chp.gov.hk/files/misc/occupancy_of_quarantine_centres_eng.csv", dest, e, True, True)
        If e = "" Then
            'Got the file
            c = ReadCSVfile(dest)
            For x = 1 To UBound(c)
                r = ReadCSVrow(c(x))
                If r(0) = "" Then Exit For 'sometimes double CrLF at end of file
                d = MSdate(ReadDMY(r(0))) 'ignore the time part - 2020-07-11 has 2 times and we took 09:00, rest are 09:00
                name = StripSpace(r(2))
                name = Replace(name, "’", "'") 'found variants of Penny's Bay                
                address = StripSpace(Replace(Replace(r(3), "No. ", ""), ",", ", ")) 'normalise space after comma
                address = Replace(address, "’", "'")
                'inconsistent names and addresses for the same place are used, so match either and update
                rs.Open("SELECT * FROM qtcentres WHERE address='" & Apos(address) & "' OR name='" & Apos(name) & "'", con)
                If rs.EOF Then
                    con.Execute("INSERT INTO qtcentres (name,address) VALUES ('" & Apos(name) & "','" & Apos(address) & "')")
                    qtID = LastID(con).ToString
                Else
                    qtID = rs("ID").Value.ToString
                    If name <> rs("name").Value.ToString Then
                        con.Execute("UPDATE qtcentres SET name='" & Apos(name) & "' WHERE ID=" & qtID)
                    ElseIf address <> rs("address").Value.ToString Then
                        con.Execute("UPDATE qtcentres SET address='" & Apos(address) & "' WHERE ID=" & qtID)
                    End If
                End If
                rs.Close()
                capUnit = r(4)
                If capUnit = "" Then capUnit = "NULL"
                useUnit = r(5)
                pax = r(6)
                availUnit = r(7)
                If availUnit = "" Then availUnit = "NULL"
                con.Execute("INSERT IGNORE INTO qt (qtID,d,capUnit,useUnit,pax,availUnit) VALUES (" &
                            qtID & ",'" & d & "'," & capUnit & "," & useUnit & "," & pax & "," & availUnit & ")")
                Console.WriteLine(d & vbTab & capUnit & vbTab & useUnit & vbTab & pax & vbTab & availUnit & vbTab & name)
            Next
        End If
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetQT failed", Err)
    End Sub
End Module
