Option Explicit On
Option Compare Text
Imports ScraperKit
Imports JSONkit
Imports persons
Module SFC
    Sub Main()
        Call SFCupdate()
    End Sub
    Sub SFCupdate()
        On Error GoTo RepErr
        'update our DB for SFC changes. Called by script.
        Call PutLog("SFCstart", MSdateTime(Now()))
        'get new corporate licensees
        Call NewSFCcorps()
        'update current licensees of known orgs
        Call UpdSFCorgPpl(12) 'CHANGED FROM 12 to 0 for testing
        'update people who have ceased to be licensees or are licensees of new orgs
        Call UpdSFCpplHist(12)
        'update licences of orgs which are not dissolved
        Call SFCorgHistAll(True)
        Call NewSFCppl() 'fetch any new people who came and went before appearing in register
        Call UpdSFCaddresses()
        Call LicrecSum(False) 'run totals for entire history due to late-edits by SFC
        Call PutLog("SFCend", MSdateTime(Now()))
        Exit Sub
RepErr:
        Call ErrMail("SFCupdate failed", Err)
    End Sub
    Function GetSFCpage(page As String, SFCID As String, ptype As String) As String
        'return HTML source code of an SFC page
        'ptype is the type of person; ri=Registered Institution,corp=licensed Corporation,indi=individual
        GetSFCpage = GetWeb("https://apps.sfc.hk/publicregWeb/" & ptype & "/" & SFCID & "/" & page)
    End Function
    Sub LicrecSum(Optional upd As Boolean = True)
        'update the totals in licrecsum, to avoid calculating on the fly in Webb-site which is too slow
        'call it with upd=False to trigger a complete rerun
        Dim a, maxa, m, y, total, RO As Integer,
            d, sql As String,
            startDate, endDate As Date,
            nullstart, rec As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        If upd Then
            'to save time, we normally only update the latest month in the tables and a new month, if any
            startDate = CDate(con.Execute("SELECT MAX(d) FROM licrecsum").Fields(0).Value)
        End If
        endDate = Date.Now.AddDays(-1)
        'find maximum activity type, as SFC may add more
        maxa = CInt(con.Execute("SELECT MAX(ID) FROM activity").Fields(0).Value)
        For a = 0 To maxa
            If upd Then
                'does this activity have records yet?
                If a = 0 Then
                    rec = True
                Else
                    rec = CBool(con.Execute("SELECT EXISTS (SELECT ID FROM licrec WHERE actType=" & a & ")").Fields(0).Value)
                End If
            Else
                If a = 0 Then
                    'all activities
                    nullstart = True
                Else
                    nullstart = CBool(con.Execute("SELECT EXISTS(SELECT startDate FROM licrec WHERE ISNULL(startDate) AND actType=" & a & ")").Fields(0).Value)
                End If
                If nullstart Then
                    startDate = #2003-03-31#
                    rec = True
                Else
                    rec = CBool(con.Execute("SELECT EXISTS (SELECT ID FROM licrec WHERE actType=" & a & ")").Fields(0).Value)
                    If rec Then startDate = CDate(con.Execute("SELECT LAST_DAY(MIN(startDate)) FROM licrec WHERE actType=" & a).Fields(0).Value)
                End If
            End If
            'does this activity have unknown start dates, meaning licensees at 2003-03-31 when system began?
            Console.WriteLine("Acitivty:" & a & vbTab & "records? " & rec & vbTab & startDate)
            If rec Then
                'there are licence records for this activity, from the month ending with startDate
                For y = Year(startDate) To Year(endDate)
                    For m = If(y = Year(startDate), Month(startDate), 1) To If(y = Year(endDate), Month(endDate), 12)
                        d = MSdate(DateSerial(y, m, Date.DaysInMonth(y, m)))
                        sql = "SELECT COUNT(DISTINCT staffID) total,IFNULL(SUM(role=1),0) RO FROM " &
                        "(SELECT DISTINCT staffID,role FROM licrec WHERE (ISNULL(endDate) or endDate>'" & d & "') AND (isNull(startDate) OR startDate<='" & d &
                        "')" & If(a > 0, " AND actType=" & a, "") & ")t"
                        rs.Open(sql, con)
                        total = CInt(rs("total").Value)
                        RO = CInt(rs("RO").Value)
                        con.Execute("REPLACE INTO licrecsum(actType,d,total,RO)" & Valsql({a, d, total, RO}))
                        Console.WriteLine(d & vbTab & total & vbTab & RO)
                        rs.Close()
                    Next
                Next
            End If
        Next
        con.Close()
        con = Nothing
    End Sub
    Sub NewSFCcorps()
        Console.WriteLine("Searching For New SFC-licensed corporations")
        'check all active licensees in all activities to find new licensed entities
        'fetches a list first character of name ltr [A-Z,0-9] and licence type raType
        On Error GoTo repErr
        Dim cn, i, n, r, SFCID, post, items(), ltr, ptype As String,
            orgID, raType, x As Integer,
            isCorp As Boolean,
            con As New ADODB.Connection
        ltr = ""
        Call OpenEnigma(con)
        Const URL = ("https://apps.sfc.hk/publicregWeb/searchByRaJson")
        Const s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        For Each raType In Split(GetLog("SFCactivities"), ",")
            Console.WriteLine("Activity type " & raType)
            For x = 1 To Len(s)
                ltr = Mid(s, x, 1)
                Console.WriteLine("searching letter " & ltr)
                post = "licstatus=active&ratype=" & raType & "&roleType=corporation&nameStartLetter=" & ltr & "&page=1&start=0&limit=9999"
                r = PostWeb(URL, post)
                r = GetVal(r, "items")
                items = ReadArray(r)
                If items(0) > "" Then
                    For Each i In items
                        SFCID = GetVal(i, "ceref")
                        If Not CBool(con.Execute("SELECT EXISTS(SELECT * FROM organisations WHERE SFCID='" & SFCID & "')").Fields(0).Value) Then
                            n = GetVal(i, "name")
                            cn = GetVal(i, "nameChi")
                            If cn = "null" Or cn = "\u0000" Then cn = ""
                            isCorp = CBool(GetVal(i, "isCorp"))
                            If isCorp Then ptype = "corp" Else ptype = "ri"
                            Console.WriteLine("New licensee" & vbTab & SFCID & vbTab & n & vbTab & cn)
                            orgID = SFCIDorgID(SFCID, n, cn, ptype)
                            Console.WriteLine("orgID: " & orgID)
                            'get the licence history
                            Call SFCorgHist(orgID)
                            Console.WriteLine("isCorp: " & isCorp)
                            If isCorp Then
                                'get the people
                                Call SFCbothRanks(SFCID, 0)
                                con.Execute("UPDATE organisations SET SFCupd=NOW() WHERE personID=" & orgID)
                            End If
                        End If
                    Next
                End If
            Next
        Next
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("NewSFCcorps failed", Err, "Activity:" & raType & " name starting with: " & ltr)
    End Sub
    Sub NewSFCppl()
        Console.WriteLine("Searching For New SFC-licensed people")
        'check all active licensees in all activities to find new licensed entities
        'fetches a list first character of name ltr [A-Z,0-9] and licence type raType
        On Error GoTo repErr
        Dim cn, i, n, n1, n2, r, SFCID, post, items(), ltr, ptype, sql, activities As String,
            orgID, raType, x, p As Integer,
            isIndi, makeNew As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        ltr = ""
        Call OpenEnigma(con)
        Const URL = ("https://apps.sfc.hk/publicregWeb/searchByRaJson")
        Const s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        For Each raType In Split(GetLog("SFCactivities"), ",")
            Console.WriteLine("Activity type " & raType)
            For x = 1 To Len(s)
                ltr = Mid(s, x, 1)
                Console.WriteLine("searching letter " & ltr)
                post = "licstatus=all&ratype=" & raType & "&roleType=individual&nameStartLetter=" & ltr & "&page=1&start=0&limit=99999"
                r = PostWeb(URL, post)
                r = GetVal(r, "items")
                items = ReadArray(r)
                If items(0) > "" Then
                    For Each i In items
                        SFCID = GetVal(i, "ceref")
                        If CBool(GetVal(i, "isIndi")) Then
                            If Not CBool(con.Execute("SELECT EXISTS(SELECT * FROM people WHERE SFCID='" & SFCID & "')").Fields(0).Value) Then
                                n = StripSpace(GetVal(i, "name"))
                                n = Replace(n, "\u0027", "'")
                                n1 = ""
                                n2 = ""
                                Call NameSplit(n, n1, n2)
                                'we found a few names with spaces in them, not just at ends, so cannot trim
                                cn = Replace(GetVal(i, "nameChi"), " ", "")
                                If cn = "null" Or cn = "\u0000" Then cn = ""
                                Console.WriteLine("New licensee" & vbTab & SFCID & vbTab & n & vbTab & n1 & vbTab & n2 & vbTab & cn)
                                p = ExtendOthers(n1, n2, Trim(n2 & " (SFC:" & SFCID & ")"), cn, SFCID)
                                'get the licence history
                                Call SFCindHist(SFCID, True)
                            End If
                        End If
                    Next
                End If
            Next
        Next
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("NewSFCppl failed", Err, "Activity:" & raType & " name starting with: " & ltr)
    End Sub
    Sub UpdSFCaddresses()
        On Error GoTo Reperr
        Dim SFCID, addr, arr(), r, s, p, ptype, a1, a2, a3, dist, ws, sql, rows() As String,
            SFCri, overwrite As Boolean,
            lines, x As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM organisations WHERE Not isnull(SFCID)", con)
        Do Until rs.EOF
            p = rs("PersonID").Value.ToString
            a1 = ""
            a2 = ""
            a3 = ""
            dist = ""
            SFCID = rs("SFCID").Value.ToString
            Console.WriteLine(rs("name1").Value.ToString)
            Console.WriteLine(SFCID)
            SFCri = CBool(rs("SFCri").Value)
            If SFCri Then ptype = "ri" Else ptype = "corp"
            r = GetSFCpage("addresses", SFCID, ptype)
            If InStr(r, "No record found") <> 0 Then
                If SFCri Then
                    r = GetSFCpage("addresses", SFCID, "corp")
                    If r <> "" And InStr(r, "No record found") = 0 Then
                        SFCri = False
                        ptype = "corp"
                    End If
                Else
                    r = GetSFCpage("addresses", SFCID, "ri")
                    If r <> "" And InStr(r, "No record found") = 0 Then
                        SFCri = True
                        ptype = "ri"
                    End If
                End If
            End If
            If InStr(r, "System error found") = 0 Then
                'got this error for BHX543 when it was created and then deleted on 1-Dec-2016, "Global Vision Capital Limited",p=2588725
                If SFCri <> CBool(rs("SFCri").Value) Then con.Execute("UPDATE organisations SET SFCri=" & SFCri & " WHERE personID=" & p)
                x = InStr(r, "websiteData")
                s = FindArray(r, x)
                rows = ReadArray(s)
                ws = GetVal(rows(0), "website")
                'firm BBJ814 and possibly others have 2 web addresses separated by a semicolon
                'firm AAD941 and 5 others have 2 web address separated by " / "
                If InStr(ws, "\u0026") > 0 Then ws = Left(ws, InStr(ws, "\u0026") - 1)
                If InStr(ws, ";") <> 0 Then ws = Left(ws, InStr(ws, ";") - 1)
                If InStr(ws, " /") <> 0 Then ws = Left(ws, InStr(ws, " /") - 1)
                ws = Replace(ws, "http://", "")
                ws = Replace(ws, "https://", "")
                ws = Replace(ws, "No website", "")
                If ws <> "" Then
                    'update or set the SFC-designated web address
                    rs2.Open("SELECT * FROM web WHERE personID=" & p & " AND (URL Like '%" & Replace(ws, "www.", "") & "%' OR URL='" & ws & "')", con)
                    If rs2.EOF Then
                        con.Execute("INSERT INTO web (personID,URL,source)" & Valsql({p, ws, 2}))
                    Else
                        If DBint(rs2("source")) <> 2 Then con.Execute("UPDATE web SET source=2 WHERE ID=" & rs2("ID").Value.ToString)
                    End If
                    rs2.Close()
                    Console.WriteLine("Web: " & ws)
                End If
                If MatchCnt(r, """fullAddress""") > 1 Then
                    'more than one address, so use complaints officer instead
                    'this is a fallback because the CO address is often incomplete
                    r = GetSFCpage("co", SFCID, ptype)
                    x = InStr(r, "cofficerData")
                    s = FindArray(r, x)
                    rows = ReadArray(s)
                    addr = GetItem(rows(0), "address.fullAddress") 'fetch the first address
                Else
                    x = InStr(r, "addressData")
                    s = FindArray(r, x)
                    rows = ReadArray(s)
                    addr = GetVal(rows(0), "fullAddress")
                End If
                Do Until InStr(addr, ",,") = 0
                    addr = Replace(addr, ",,", ",")
                Loop
                addr = StripSpace(addr)
                addr = Replace(addr, "/F.", "/F")
                addr = Replace(addr, "/F ", "/F, ") 'put a line break after floor if there isn't one already
                addr = Replace(addr, "\u0027", "'")
                addr = Replace(addr, "\u0026", "&")
                addr = Replace(addr, "Hong Kong, Hong Kong", "Hong Kong")
                If Right(addr, 7) = "Central" Or Right(addr, 13) = "Tsim Sha Tsui" Or Right(addr, 8) = "Chai Wan" _
                            Or Right(addr, 10) = "Sheung Wan" Or Right(addr, 7) = "Wanchai" Or Right(addr, 9) = "Admiralty" _
                            Or Right(addr, 12) = "Causeway Bay" Or Right(addr, 10) = "Quarry Bay" Or Right(addr, 11) = "North Point" _
                            Or Right(addr, 6) = "Tai Po" _
                            Then addr &= ", Hong Kong"
                If Right(addr, 4) = ", HK" Then addr = Left(addr, Len(addr) - 2) & "Hong Kong"
                arr = Split(addr, ",")
                lines = UBound(arr)
                If lines > -1 Then
                    'address not empty
                    If arr(lines) = " Hong Kong" Then
                        'we only want HK addresses for licensees. One of them, ALZ367, is in USA which we ignore
                        If lines > 0 Then dist = Trim(arr(lines - 1)) 'district
                        If lines > 1 Then a1 = arr(0)
                        x = 1
                        Do Until lines < 5
                            'recombine into first line if needed
                            a1 = a1 & "," & arr(x)
                            x += 1
                            lines -= 1
                        Loop
                        If lines > 2 Then a2 = Trim(arr(x))
                        If lines > 3 Then a3 = Trim(arr(x + 1))
                        Console.WriteLine(a1)
                        If a2 > "" Then Console.WriteLine(a2)
                        If a3 > "" Then Console.WriteLine(a3)
                        If dist > "" Then Console.WriteLine(dist)
                        overwrite = (InStr(r, "loadData({})") = 0)
                        Console.WriteLine("Overwrite:" & overwrite)
                        'address is not hidden on web display (for firm no longer licensed)
                        'Call SetAddr(rs("PersonID").Value.ToString, a1, a2, a3, dist, 1, overwrite)
                        If Not CBool(con.Execute("SELECT EXISTS(SELECT * FROM orgdata WHERE personID=" & p & ")").Fields(0).Value) Then
                            con.Execute("INSERT INTO orgdata (personID,addr1,addr2,addr3,district,territory)" & Valsql({p, a1, a2, a3, dist, 1}))
                        ElseIf overwrite Then
                            con.Execute("UPDATE orgdata" & Setsql("addr1,addr2,addr3,district,territory", {a1, a2, a3, dist, 1}) & "personID=" & p)
                        End If
                    Else
                        Console.WriteLine(SFCID & vbTab & arr(lines) & vbTab & addr)
                    End If
                End If
            End If
            Console.WriteLine()
            rs.MoveNext()
        Loop
        rs.Close()
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
Reperr:
        Call ErrMail("UpdSFCaddresses failed", Err, SFCID)
    End Sub
    Sub UpdSFCorgPpl(hours As Integer)
        'update the current staff of all orgs
        Dim SFCID As String, PersonID, x As Integer, con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("Select personID,SFCID,name1 FROM organisations WHERE (Not isNull(SFCID)) And (Not SFCri) And " &
                "(isNull(SFCupd) Or TIMESTAMPDIFF(Hour, SFCupd, Now()) >=" & hours & ") ORDER BY Name1", con)
        x = 1
        Do Until rs.EOF
            SFCID = rs("SFCID").Value.ToString
            PersonID = CInt(rs("PersonID").Value)
            Console.WriteLine(x & vbTab & SFCID & vbTab & PersonID & vbTab & rs("Name1").Value.ToString)
            Call SFCbothRanks(SFCID, hours)
            con.Execute("UPDATE organisations Set SFCupd=NOW() WHERE personID= " & PersonID)
            rs.MoveNext()
            Console.WriteLine()
            x += 1
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub

    Sub UpdSFCpplHist(hours As Integer)
        'update the histories of all people with a current licence not updated in the last x hours
        Dim SFCID As String
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'temporary change 2023-08-12 to update everyone as we have missed some historic licencees who had brief appointments while system was broken
        'rs.Open("Select PersonID,SFCID,Name1,Name2 FROM people WHERE personID IN " &
        '   "(SELECT DISTINCT staffID FROM licrec where staffID not IN(SELECT DISTINCT staffID from licrec WHERE isnull(endDate)))" &
        '   " ORDER BY Name1,Name2", con)
        rs.Open("Select PersonID,SFCID,Name1,Name2 FROM people WHERE personID In(Select DISTINCT staffID FROM licrec WHERE ISNULL(endDate)) " &
                "And (isNull(SFCupd) Or TIMESTAMPDIFF(HOUR,SFCupd,NOW())>=" & hours & ") ORDER BY Name1,Name2", con)
        Do Until rs.EOF
            SFCID = rs("SFCID").Value.ToString
            Call SFCindHist(SFCID, False)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub UpdSFCallPpl()
        '2024-10-30. One-time run to update the history of all known people with SFCID (where records still exist)
        Dim SFCID As String, x As Integer
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("Select PersonID,SFCID,Name1,Name2 FROM people WHERE Not isnull(SFCID) ORDER BY Name1,Name2", con)
        Do Until rs.EOF
            x += 1
            SFCID = rs("SFCID").Value.ToString
            Console.WriteLine(x & vbTab & SFCID & vbTab & rs("name1").Value.ToString & vbTab & rs("name2").Value.ToString)
            Call SFCindHist(SFCID, True)
            'Console.ReadKey()
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub SFCbothRanks(SFCID As String, hours As Integer)
        Call SFCpeople(SFCID, 1, hours)
        Call SFCpeople(SFCID, 0, hours)
    End Sub
    Sub SFCpeople(SFCID As String, SFCrank As Byte, hours As Integer)
        'Get names of licensed staff of an organisation and put them in the DB, or update them
        'SFCrank 1=Responsible Officers, 0=Representatives
        Dim arr(,), page, r, n1, n2, cn, sql, SFCupd, pSFCID As String,
            con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            orgID, p, start, x As Integer,
            makeNew As Boolean
        Call OpenEnigma(con)
        'to allow for some 4-byte UTF-8 characters in the SFC web site
        con.Execute("SET character_set_client=utf8mb4, character_set_connection=utf8mb4,character_set_results=utf8mb4;")
        rs.Open("SELECT PersonID from organisations WHERE SFCID='" & SFCID & "'", con)
        If rs.EOF Then
            rs.Close()
            con.Close()
            con = Nothing
            Exit Sub
        End If
        orgID = CInt(rs("PersonID").Value)
        rs.Close()
        If SFCrank = 1 Then page = "ro" Else page = "rep"
        r = GetSFCpage(page, SFCID, "corp")
        'find the JSON package
        start = InStr(r, page & "rawData")
        If start = 0 Then
            con.Close()
            con = Nothing
            Exit Sub
        End If
        If InStr(start, r, "ceref""") = 0 Then
            con.Close()
            con = Nothing
            Exit Sub 'no people
        End If
        arr = ReadSFCpeople(r, start)
        For x = 0 To UBound(arr, 2)
            SFCupd = "1970-01-01"
            pSFCID = arr(0, x)
            n1 = arr(1, x)
            n2 = arr(2, x)
            cn = arr(3, x)
            rs.Open("SELECT personID,SFCupd,cName,sex FROM enigma.people WHERE SFCID='" & pSFCID & "'", con)
            If Not rs.EOF Then
                p = CInt(rs("PersonID").Value)
                If Not IsDBNull(rs("SFCupd").Value) Then SFCupd = rs("SFCupd").Value.ToString
                'update cName if null, but don't touch ename
                If cn > "" And IsDBNull(rs("cName").Value) Then con.Execute("UPDATE people SET cName='" & cn & "' WHERE personID=" & p)
                'used direct instruction because otherwise 4-byte UTF-8 in some names causes crash, e.g. the "Jun" in Wang Jun (SFC:AVA086)
                'even then, the update does not work properly - a 4-byte is returned as a question mark when displayed.
                'we can manually edit using MySQL Query Browser, but then this routine detects they are not the same and overwrites it
                'there is some kind of problem with the way we read the cName in the first place, as Len(cName) shows 3 for Wang Jun rather than 2.
            Else
                makeNew = False
                rs.Close()
                If n2 = "" Then sql = "isNull(name2)" Else sql = "name2='" & Apos(n2) & "'"
                rs.Open("SELECT * FROM People WHERE Name1='" & Apos(n1) & "' AND " & sql, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    makeNew = True
                    'new person, name unused
                Else
                    'name already in DB
                    If Not IsDBNull(rs("SFCID").Value) Then
                        'a person with a different SFCID, so differentiate the old and add the new
                        Call PplExtend(CInt(rs("PersonID").Value))
                        makeNew = True
                    Else
                        'Could be same person
                        rs2.Open("SELECT * FROM directorships WHERE director=" & rs("PersonID").Value.ToString & " AND company=" & orgID & " AND isNull(ResDate)", con)
                        If Not rs2.EOF Then
                            'the found human is associated with this org, so it is probably the same human
                            'RISK: the org might have had two people with the same name working for it, only one of them in the DB
                            rs("SFCID").Value = pSFCID
                            If cn > "" Then rs("cName").Value = cn
                            rs.Update()
                        Else
                            'the found human is not associated with this org, so it could be the wrong person.
                            'differentiate the old person if possible
                            Call PplExtend(CInt(rs("PersonID").Value))
                            'Add new person with SFCID in forenames
                            makeNew = True
                        End If
                        rs2.Close()
                    End If
                End If
                If makeNew Then
                    p = ExtendOthers(n1, n2, Trim(n2 & " (SFC:" & pSFCID & ")"), cn, pSFCID)
                    Console.WriteLine("NEW" & vbTab & p & vbTab & pSFCID & vbTab & n1 & ", " & n2 & " " & cn)
                End If
            End If
            rs.Close()
            'Update the history of this person if not done since hours ago
            If DateDiff("h", SFCupd, Now) >= hours Then Call SFCindHist(pSFCID, False)
        Next
        con.Close()
        con = Nothing
    End Sub
    Function ReadSFCpeople(ByVal r As String, ByVal start As Integer) As String(,)
        'extract the names of ROs or Reps for a given entity
        Dim ceref, n, n1, n2, cn, arr(3, 0), rows() As String, x As Integer
        r = FindArray(r, start)
        rows = ReadArray(r)
        x = 0
        For Each r In rows
            ceref = GetVal(r, "ceref")
            n = StripSpace(GetVal(r, "fullName"))
            n = Replace(n, "\u0027", "'")
            n1 = ""
            n2 = ""
            Call NameSplit(n, n1, n2)
            cn = GetVal(r, "entityNameChi")
            If cn = "null" Then cn = ""
            'we found a few names with spaces in them, not just at ends, so cannot trim
            cn = Replace(cn, " ", "")
            ReDim Preserve arr(3, x)
            arr(0, x) = GetVal(r, "ceref")
            arr(1, x) = n1
            arr(2, x) = n2
            arr(3, x) = cn
            x += 1
            'Console.WriteLine(ceref & vbTab & cn & vbTab & n1 & vbTab & n2)
        Next
        Return arr
    End Function
    Sub NameSplit(ByVal n As String, ByRef n1 As String, ByRef n2 As String)
        Dim engName As String, p, prevspace, L, x, y As Integer
        'SFC names are not consistent - surname is usually capitalised but not always (e.g. Li Ngok), forenames are sometimes capitalised
        'assume first word is always part of surname
        n = StripSpace(n)
        p = InStr(n, " ")
        If p = 0 Then
            'no forenames, e.g. Indonesian
            n1 = n
            n2 = ""
        Else
            prevspace = p
            L = Len(n)
            For x = p + 1 To L
                y = Asc(Mid(n, x, 1))
                'if there is a non-capital, then this is usually the second letter of fornames.
                If y >= Asc("a") Or y = Asc(".") Or (y = Asc("-") And x = prevspace + 2) Then Exit For
                'the last case handles forenames like I-Chen
                If y = Asc(" ") Then prevspace = x
                'if this letter is surrounded by spaces then that is probably an initial of a forename
                If Len(Trim(Mid(n & " ", x - 1, 3))) = 1 Then
                    x += 1
                    Exit For
                End If
            Next
            If x = L + 1 Then
                'it was possibly all in caps, or there is a surname with initials and no forenames
                n1 = Trim(Left(n, p - 1))
                n2 = Trim(Right(n, L - p))
            Else
                'in case they did not capitalise first letter of forenames, include the character after the previous word then trim it
                n1 = Trim(Left(n, x - 2))
                n2 = Trim(Right(n, L - x + 2))
            End If
        End If
        'now convert to lower case with first-letter capitals
        n1 = ULname(n1, True)
        If n2 > "" Then
            'a few names are all in capitals, so we must decap them
            n2 = ULname(n2, False)
            'count number of commas
            L = Len(n2)
            p = L - Len(Replace(n2, ",", ""))
            If p = 1 Then
                'there is one comma, usually marking one or more English forenames
                'if there is more than one comma (as a number of people at SG Securities have) then do nothing
                p = InStr(n2, ",")
                engName = Trim(Right(n2, L - p))
                'now put the English name(s) first
                n2 = engName & " " & Trim(Left(n2, p - 1))
            Else
                'there is no comma or multiple commas. Replace them with a space
                n2 = Replace(n2, ",", " ")
                'strip any resulting double-spaces (if there was a space after the comma)
                n2 = StripSpace(n2)
            End If
        End If
        If n2 = "-" Then n2 = ""
    End Sub
    Sub SFCindHist(SFCID As String, recomp As Boolean)
        'get the history of an individual and update the DB
        'if recomp then update directorships table even if no change to licrec table
        Dim x, peopleID, role As Integer,
            arr(6, 0), started, ended, MSstarted, MSended, strSEL, strINS, strDEL, name1, name2, ROstart, ROend, orgID As String,
            blnFound, changed As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM people WHERE SFCID='" & SFCID & "'", con)
        If rs.EOF Then
            Console.WriteLine("Individual not in DB: " & SFCID)
            rs.Close()
            con.Close()
            con = Nothing
            Exit Sub
        End If
        peopleID = CInt(rs("PersonID").Value)
        name1 = rs("Name1").Value.ToString
        name2 = rs("Name2").Value.ToString
        rs.Close()
        Console.WriteLine("Checking SFCID: " & SFCID & vbTab & peopleID & vbTab & name1 & ", " & name2)
        Call ReadSFCLicRec(SFCID, arr, blnFound)
        If Not blnFound Then
            con.Close()
            con = Nothing
            Exit Sub
        End If
        Call UpdLicRec(peopleID, arr, changed)
        If Not changed And Not recomp Then
            con.Close()
            con = Nothing
            Exit Sub
        End If
        If changed Then Console.WriteLine("Changes found. Updating.")
        If recomp Then Console.WriteLine("Recomputing directorships entries")
        'build temporary table with two sequences of periods of RO and Rep positions
        con.Execute("DELETE FROM tempsfc")
        For x = 0 To UBound(arr, 2)
            role = CInt(arr(0, x))
            started = arr(1, x)
            If started = "" Then MSstarted = "NULL" Else MSstarted = "'" & started & "'"
            ended = arr(2, x)
            If ended = "" Then MSended = "NULL" Else MSended = "'" & ended & "'"
            orgID = arr(4, x)
            'Console.WriteLine("orgID:" & orgID & vbTab & "role:" & role & vbTab & started & vbTab & ended)
            strSEL = "SELECT * from tempsfc WHERE orgID=" & orgID & " AND role=" & role
            strDEL = "DELETE FROM tempsfc WHERE orgID=" & orgID & " AND role=" & role
            rs.Open(strSEL & " AND isNull(started) and isNull(ended)", con)
            If rs.EOF Then
                'person has not always been in role, so we have an entry to make.
                If started = "" Then
                    If ended = "" Then
                        'person has always been in role, so this trumps other periods
                        con.Execute(strDEL)
                        con.Execute("INSERT INTO tempsfc (orgID,role) VALUES (" & orgID & "," & role & ")")
                    Else
                        'person was in role forever up to a date for this activity so this trumps any periods which ended before that
                        con.Execute(strDEL & " AND ended<=" & MSended)
                        rs.Close()
                        rs.Open(strSEL & " AND (isNull(started) OR started<=" & MSended & ")", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If rs.EOF Then
                            'no overlapping period
                            con.Execute("INSERT INTO tempsfc (orgID,role,ended) VALUES (" & orgID & "," & role & "," & MSended & ")")
                        Else
                            'extend the period to open-started
                            rs("started").Value = DBNull.Value
                            rs.Update()
                        End If
                    End If
                ElseIf ended = "" Then
                    'person has been in role since a date. This trumps any period which started afterwards
                    con.Execute(strDEL & " AND started>=" & MSstarted)
                    rs.Close()
                    rs.Open(strSEL & " AND (isNull(ended) OR ended>=" & MSstarted & ")", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs.EOF Then
                        'no overlapping period
                        con.Execute("INSERT INTO tempsfc(orgID,role,started) VALUES (" & orgID & "," & role & "," & MSstarted & ")")
                    Else
                        'extend the period to open-ended
                        rs("ended").Value = DBNull.Value
                        rs.Update()
                    End If
                Else
                    'person was in role for fixed period, which may be trumped by a containing period but trumps any period it contains
                    rs.Close()
                    rs.Open(strSEL & " AND (isNull(started) OR started<=" & MSstarted & ") AND (isNull(ended) OR ended>=" & MSended & ")", con)
                    If rs.EOF Then
                        'not trumped by a container. Now delete periods it contains
                        con.Execute(strDEL & " AND started>=" & MSstarted & " AND ended<=" & MSended)
                        rs.Close()
                        'look for non-container period that overlaps the start
                        rs.Open(strSEL & " AND (isNull(started) OR started<=" & MSstarted & ") AND ended>=" & MSstarted, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If rs.EOF Then
                            'no overlap at start
                            rs.Close()
                            'look for non-container period that overlaps the end
                            rs.Open(strSEL & " AND started<=" & MSended & " AND (isNull(ended) OR ended >=" & MSended & ")", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                            If rs.EOF Then
                                'no overlap at end either, so this is a new period
                                con.Execute("INSERT INTO tempsfc(orgID,role,started,ended) VALUES (" & orgID & "," & role & "," & MSstarted & "," & MSended & ")")
                            Else
                                'found an overlap at end, so extend its start date
                                rs("started").Value = started
                                rs.Update()
                            End If
                        Else
                            'found an overlap at start, so extend its end date
                            rs("ended").Value = ended
                            'if it also overlaps at end then it bridges two periods which must be combined
                            rs2.Open(strSEL & " AND started<=" & MSended & " AND started>" & MSstarted, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                            If Not rs2.EOF Then
                                'it bridges two periods so delete the second one and combine them
                                rs("ended").Value = rs2("ended").Value 'may be null
                                rs2.Delete()
                            End If
                            rs.Update()
                            rs2.Close()
                        End If
                    End If
                End If
            End If
            rs.Close()
            'Console.WriteLine("Pause to inspect sfctemp")
            'Console.ReadKey()
        Next
        'Now we have two sequences of RO and Rep roles for each org. Each sequence consists of non-overlapping periods
        'Next we need to combine them into a single sequence with the rule that RO trumps Rep
        rs.Open("SELECT DISTINCT orgID FROM tempsfc", con)
        Do Until rs.EOF
            orgID = rs("OrgID").Value.ToString
            strINS = "INSERT INTO tempsfc (orgID,role,started,ended) VALUES (" & orgID & ",0,"
            'fetch the Rep entries into an array then delete them from tempSFC
            rs2.Open("SELECT * FROM tempsfc WHERE role=0 AND orgID=" & orgID & " ORDER BY started", con)
            If Not rs2.EOF Then
                arr = GetRows(rs2)
                rs2.Close()
                con.Execute("DELETE FROM tempsfc WHERE role=0 AND orgID=" & orgID)
                'fetch the RO entries
                rs2.Open("SELECT * FROM tempsfc WHERE role=1 AND orgID=" & orgID & " ORDER BY started", con)
                x = 0
                Do Until rs2.EOF Or x > UBound(arr, 2)
                    started = arr(1, x)
                    If started = "" Then
                        MSstarted = "NULL"
                    Else
                        started = MSdate(CDate(started))
                        arr(1, x) = started
                        MSstarted = "'" & started & "'"
                    End If
                    ended = arr(2, x)
                    If ended = "" Then
                        MSended = "NULL"
                    Else
                        ended = MSdate(CDate(ended))
                        arr(2, x) = ended
                        MSended = "'" & ended & "'"
                    End If
                    ROstart = MSdate(DBdate(rs2("started")))
                    ROend = MSdate(DBdate(rs2("ended")))
                    If started = "" And ROstart = "" Then
                        'RO and Rep both have null start
                        If ROend <> "" And (ended > ROend Or ended = "") Then
                            'Rep extends beyond RO, so start it after RO
                            arr(1, x) = ROend
                            rs2.MoveNext()
                        Else
                            'Rep ends before RO, so skip it
                            x += 1
                        End If
                    ElseIf started < ROstart Then
                        'Rep start is null or begins before RO
                        If ended <> "" And ended <= ROstart Then
                            'Rep period is entirely before the RO period, so insert it
                            con.Execute(strINS & MSstarted & "," & MSended & ")")
                            x += 1
                        Else
                            'Rep period starts before RO period but overlaps by at least 1 day, so end it when RO starts
                            con.Execute(strINS & MSstarted & ",'" & ROstart & "')")
                            arr(1, x) = ROstart
                        End If
                    ElseIf started <= ROend Or ROend = "" Then
                        'Rep starts during RO
                        If ROend <> "" And (ended = "" Or ended > ROend) Then
                            'Rep extends beyond RO, so shift its start to the end of RO
                            arr(1, x) = ROend
                            rs2.MoveNext()
                        Else
                            'Rep is contained by RO, so skip it
                            x += 1
                        End If
                    Else
                        'Rep begins after RO
                        rs2.MoveNext()
                    End If
                Loop
                If rs2.EOF Then
                    'insert any remaining Rep periods
                    For x = x To UBound(arr, 2)
                        started = arr(1, x)
                        ended = arr(2, x)
                        If started = "" Then MSstarted = "NULL" Else MSstarted = "'" & MSdate(CDate(started)) & "'"
                        If ended = "" Then MSended = "NULL" Else MSended = "'" & MSdate(CDate(ended)) & "'"
                        con.Execute(strINS & MSstarted & "," & MSended & ")")
                    Next
                End If
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        'delete existing RO/Rep records of this person except those with known start dates before 1-Apr-03
        con.Execute("DELETE FROM Directorships WHERE positionID IN (394,395) AND director=" & peopleID & " AND (isNull(apptDate) or apptDate>='2003-04-01')")
        'now add the rows to the permanent table
        rs.Open("SELECT * FROM tempsfc ORDER BY orgID,started", con)
        Do Until rs.EOF
            orgID = rs("OrgID").Value.ToString
            If IsDBNull(rs("started").Value) Then MSstarted = "NULL" Else MSstarted = "'" & MSdate(CDate(rs("started").Value)) & "'"
            If IsDBNull(rs("ended").Value) Then MSended = "NULL" Else MSended = "'" & MSdate(CDate(rs("ended").Value)) & "'"
            If CInt(rs("Role").Value) = 0 Then role = 394 Else role = 395
            strINS = "INSERT INTO Directorships (company,director,positionID,apptDate,resDate) VALUES (" &
                orgID & "," & peopleID & "," & role & "," & MSstarted & "," & MSended & ")"
            If IsDBNull(rs("started").Value) Then
                rs2.Open("SELECT * FROM Directorships WHERE company=" & orgID & " AND director=" & peopleID & " AND positionID=" & role, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs2.EOF Then
                    con.Execute(strINS)
                Else
                    'preserve existing record and update it IF it extends beyond 1-Apr-2003. If it is unknown (1-Jan-1000) then it won't be touched
                    ended = MSdate(DBdate(rs2("resDate")))
                    If ended = "" Or ended > "2003-04-01" Then
                        rs2("ResDate").Value = rs("ended").Value
                        rs2("ResAcc").Value = DBNull.Value
                        rs2.Update()
                    Else
                        'add it as a new line
                        con.Execute(strINS)
                    End If
                End If
                rs2.Close()
            Else
                con.Execute(strINS)
            End If
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub SFCorgHistAll(live As Boolean)
        'update the SFC licence history of all orgs
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, sql As String, p As Integer
        Call OpenEnigma(con)
        sql = "SELECT * FROM organisations WHERE Not isnull(SFCID)"
        If live Then sql &= " AND isNull(disDate)"
        rs.Open(sql, con)
        Do Until rs.EOF
            p = CInt(rs("PersonID").Value)
            Call SFCorgHist(p)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub SFCorgHist(p As Integer)
        'update the SFC licence history of one org
        Dim arr(3, 0), SFCID, actType, started, ended, startStr, endStr, ri, ID As String,
            x As Integer,
            blnFound, SFCri As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM organisations WHERE (Not isNull(SFCID)) AND personID=" & p, con)
        If rs.EOF Then
            Console.WriteLine("Org not in DB or not licensed: " & p)
            rs.Close()
            con.Close()
            con = Nothing
            Exit Sub
        End If
        SFCID = rs("SFCID").Value.ToString
        SFCri = CBool(rs("SFCri").Value)
        Console.WriteLine(rs("Name1").Value.ToString)
        Call ReadSFCoLicRec(SFCID, SFCri, arr, blnFound)
        If SFCri <> CBool(rs("SFCri").Value) Then con.Execute("UPDATE organisations SET SFCri=" & SFCri & " WHERE personID=" & p)
        rs.Close()
        If blnFound Then
            For x = 0 To UBound(arr, 2)
                ri = arr(0, x)
                actType = arr(1, x)
                started = arr(2, x)
                ended = arr(3, x)
                If started = "" Then startStr = " AND isNull(startDate)" Else startStr = " AND startDate='" & started & "'"
                rs.Open("SELECT * FROM olicrec WHERE orgID=" & p & " AND actType=" & actType & startStr, con)
                If rs.EOF Then
                    'new line found (or start date was changed, causing a duplicate entry in our records!)
                    If started = "" Then startStr = "NULL" Else startStr = "'" & started & "'"
                    If ended = "" Then endStr = "NULL" Else endStr = "'" & ended & "'"
                    con.Execute("INSERT INTO olicrec (orgID,ri,actType,startDate,endDate) VALUES(" & p & "," & ri & "," & actType & "," & startStr & "," & endStr & ")")
                Else
                    'check old line for changes
                    ID = rs("ID").Value.ToString
                    If IsDBNull(rs("endDate").Value) Then
                        If ended > "" Then con.Execute("UPDATE olicrec SET endDate='" & ended & "' WHERE ID=" & ID) 'position has ended
                    ElseIf ended = "" Then
                        'position has reopened - strange but possible
                        con.Execute("UPDATE olicrec SET endDate=NULL WHERE ID=" & ID)
                    End If
                End If
                rs.Close()
            Next
        Else
            Console.WriteLine(SFCID & ": No history")
        End If
        con.Close()
        con = Nothing
    End Sub
    Sub ReadSFCoLicRec(ByVal SFCID As String, ByRef SFCri As Boolean, ByRef arr(,) As String, ByRef blnFound As Boolean)
        'read the license history of an organisation
        Dim r, started, ended, actType, rows(), list() As String,
            c, x As Integer,
            ri As Boolean
        c = 0
        blnFound = False
        'get the data and update any change in the type (licensed corp or registered institution).
        'An example of a change is AVF500 which changed from LC to RI
        If SFCri Then
            r = GetSFCpage("licences", SFCID, "ri")
            If InStr(r, "No record found") <> 0 Then
                r = GetSFCpage("licences", SFCID, "corp")
                If r <> "" And InStr(r, "No record found") = 0 Then SFCri = False
            End If
        Else
            r = GetSFCpage("licences", SFCID, "corp")
            If InStr(r, "No record found") <> 0 Then
                r = GetSFCpage("licences", SFCID, "ri")
                If r <> "" And InStr(r, "No record found") = 0 Then SFCri = True
            End If
        End If
        If r = "" Then Exit Sub
        x = InStr(r, "licRecordData") 'find the JSON packet
        If x = 0 Then Exit Sub
        r = FindArray(r, x)
        If InStr(r, "lcType") = 0 Then Exit Sub
        blnFound = True
        rows = ReadArray(r)
        For Each r In rows
            If GetVal(r, "lcType") = "E" Then ri = True Else ri = False
            actType = GetItem(r, "regulatedActivity.actType")
            list = ReadArray(GetVal(r, "effectivePeriodList"))
            For Each s In list
                started = GetVal(s, "effectiveDate")
                If CDate(started) = #4/1/2003# Then started = "" Else started = MSdate(CDate(started))
                ended = GetVal(s, "endDate")
                If ended = "null" Then ended = "" Else ended = MSdate(CDate(ended))
                ReDim Preserve arr(3, c)
                arr(0, c) = ri.ToString
                arr(1, c) = actType
                arr(2, c) = started
                arr(3, c) = ended
                Console.WriteLine(SFCID & vbTab & arr(0, c) & vbTab & arr(1, c) & vbTab & arr(2, c) & vbTab & arr(3, c))
                c += 1
            Next
        Next
        If Not blnFound Then Console.WriteLine(SFCID & ": no history")
    End Sub
    Sub ReadSFCLicRec(SFCID As String, ByRef arr(,) As String, ByRef blnFound As Boolean)
        'revised version to use JSON kit
        'read the license history of an individual
        Dim x, y As Integer,
            rows(), r, s, role, started, ended, principal, cPrincipal, orgCE, actType, list() As String
        x = 0
        blnFound = False
        r = GetSFCpage("licenceRecord", SFCID, "indi")
        If r = "" Then Exit Sub
        y = InStr(r, "licRecordData")
        If y = 0 Then Exit Sub
        r = FindArray(r, y)
        If r = "[]" Then Exit Sub 'if SFC has deleted all records then don't delete ours
        blnFound = True
        rows = ReadArray(r)
        For Each r In rows
            If GetVal(r, "lcRole") = "RO" Then role = "1" Else role = "0"
            principal = GetVal(r, "prinCeName")
            cPrincipal = GetVal(r, "prinCeNameChin")
            If cPrincipal = "null" Or cPrincipal = "\u0000" Then cPrincipal = ""
            orgCE = GetVal(r, "prinCeRef")
            actType = GetItem(r, "regulatedActivity.actType")
            list = ReadArray(GetVal(r, "effectivePeriodList"))
            For Each s In list
                started = GetVal(s, "effectiveDate")
                If CDate(started) = #4/1/2003# Then started = "" Else started = MSdate(CDate(started))
                ended = GetVal(s, "endDate")
                If ended = "null" Then ended = "" Else ended = MSdate(CDate(ended))
                ReDim Preserve arr(6, x)
                arr(0, x) = role
                arr(1, x) = started
                arr(2, x) = ended
                arr(3, x) = principal
                arr(4, x) = orgCE
                arr(5, x) = cPrincipal
                arr(6, x) = actType
                'Console.WriteLine(arr(0, x) & vbTab & arr(1, x) & vbTab & arr(2, x) & vbTab & arr(4, x) & vbTab & arr(6, x) & vbTab & arr(3, x))
                x += 1
            Next
        Next
    End Sub
    Sub UpdLicRec(ByVal staffID As Integer, ByRef arr(,) As String, ByRef changed As Boolean)
        'update the detailed license history of an SFC individual
        'array is passed in from readSFCLicRec
        'we try to avoid rebuilding the entire licence history of each individual - partly because the SFC might delete it
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            started, ended, role, actType, orgSFCID, lastSFCID, startStr, endStr, ID As String,
            x, orgID As Integer
        Call OpenEnigma(con)
        lastSFCID = ""
        For x = 0 To UBound(arr, 2)
            role = arr(0, x)
            started = arr(1, x)
            ended = arr(2, x)
            actType = arr(6, x)
            If started = "" Then startStr = " AND isNull(startDate)" Else startStr = " AND startDate='" & started & "'"
            orgSFCID = arr(4, x)
            'lookup the orgID if it is a different org to the previous line
            If orgSFCID <> lastSFCID Then orgID = SFCIDorgID(orgSFCID, arr(3, x), arr(5, x), "corp")
            lastSFCID = orgSFCID
            'replace the SFCID with our orgID in the array
            arr(4, x) = orgID.ToString
            rs.Open("SELECT * FROM licrec WHERE staffID=" & staffID & " AND orgID=" & orgID & " AND role=" & role & " AND actType=" & actType & startStr, con)
            If rs.EOF Then
                'new line found (or start date was changed, causing a duplicate entry in our records! We deal with this later in the procedure)
                changed = True
                If started = "" Then startStr = "NULL" Else startStr = "'" & started & "'"
                If ended = "" Then endStr = "NULL" Else endStr = "'" & ended & "'"
                con.Execute("INSERT INTO licrec (staffID,orgID,role,actType,startDate,endDate) VALUES(" &
                    staffID & "," & orgID & "," & role & "," & actType & "," & startStr & "," & endStr & ")")
            Else
                'check old line for changes
                ID = rs("ID").Value.ToString
                If IsDBNull(rs("endDate").Value) Then
                    If ended <> "" Then
                        'position has ended
                        con.Execute("UPDATE licrec SET endDate='" & ended & "' WHERE ID=" & ID)
                        changed = True
                    End If
                ElseIf ended = "" Then
                    'position has reopened - strange but possible
                    con.Execute("UPDATE licrec SET endDate=NULL WHERE ID=" & ID)
                    changed = True
                ElseIf ended <> MSdate(CDate(rs("endDate").Value)) Then
                    'added 2024-10-30 to deal with changes of end-date by SFC
                    con.Execute("UPDATE licrec SET endDate='" & ended & "' WHERE ID=" & ID)
                    Console.WriteLine("licence endDate changed for record:" & ID)
                    changed = True
                End If
            End If
            rs.Close()
        Next
        'now deal with situation where the start date has changed. A person cannot have two open positions in the same activity
        rs.Open("SELECT DISTINCT L2.ID,L2.actType,L2.startDate,L2.endDate FROM licrec L1 JOIN licrec L2 ON L1.ID>L2.ID AND " &
                "L1.staffID=" & staffID & " AND L2.staffID=" & staffID &
                " AND L1.orgID=L2.orgID AND L1.actType=L2.actType AND L1.role=L2.role " &
                "AND ((isNull(l1.endDate) AND isNull(l2.endDate)) OR " &
                "(L1.startDate>L2.startDate AND isNull(L2.endDate) AND (Not isNull(L1.endDate))) OR " &
                "(L1.startDate<=l2.startDate AND L1.endDate>L2.startDate))", con)
        If Not rs.EOF Then
            changed = True
            Do Until rs.EOF
                Console.WriteLine("Deleting" & vbTab & rs("ID").Value.ToString & vbTab & rs("actType").Value.ToString & vbTab &
                                  rs("startDate").Value.ToString & vbTab & rs("endDate").Value.ToString)
                con.Execute("DELETE FROM licrec WHERE ID=" & rs("ID").Value.ToString)
                rs.MoveNext()
            Loop
        End If
        rs.Close()
        rs.Open("SELECT DISTINCT L1.ID,L1.actType,L1.startDate,L1.endDate FROM licrec L1 JOIN licrec L2 ON L1.ID>L2.ID AND " &
                "L1.staffID=" & staffID & " AND L2.staffID=" & staffID &
                " AND L1.orgID=L2.orgID AND L1.actType=L2.actType AND L1.role=L2.role " &
                "AND (l1.startDate>l2.startDate AND l1.startDate<l2.endDate)", con)
        If Not rs.EOF Then
            changed = True
            Do Until rs.EOF
                Console.WriteLine("Deleting" & vbTab & rs("ID").Value.ToString & vbTab & rs("actType").Value.ToString & vbTab &
                                  rs("startDate").Value.ToString & vbTab & rs("endDate").Value.ToString)
                con.Execute("DELETE FROM licrec WHERE ID=" & rs("ID").Value.ToString)
                rs.MoveNext()
            Loop
        End If
        rs.Close()
        con.Execute("UPDATE people SET SFCupd=NOW() WHERE personID=" & staffID)
        con.Close()
        con = Nothing
    End Sub
    Function SFCIDorgID(SFCID As String, name As String, cName As String, ptype As String) As Integer
        'return the orgID of an SFCID, and create a new Org if necessary
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            orgType As Nullable(Of Integer) = 0,
            r, dStr As String,
            d As Date
        Call OpenEnigma(con)
        'first try to lookup in the DB
        rs.Open("SELECT * FROM organisations WHERE SFCID='" & SFCID & "'", con)
        If Not rs.EOF Then
            SFCIDorgID = CInt(rs("PersonID").Value)
        Else
            rs.Close()
            rs.Open("SELECT * FROM oldSFCIDs WHERE SFCID='" & SFCID & "'", con)
            If Not rs.EOF Then
                'old SFCID of amalgamated company
                SFCIDorgID = CInt(rs("OrgID").Value)
            Else
                'the SFCID is not in the DB. Now use the name we found
                If InStr(name, "(trading as") <> 0 Then name = Trim(Left(name, InStr(name, "(trading as") - 1))
                name = Replace(name, "&amp;", "&")
                name = Replace(name, "\u0026", "&")
                name = Replace(name, "\u0027", "'")
                'NB there is a risk that the firm is already there but the name has changed
                If Right(name, 7) = " Limited" Or Right(name, 4) = " Ltd" Or Right(name, 5) = " Ltd." Then orgType = 19
                If Right(name, 4) = " LLC" Or Right(name, 7) = " L.L.C." Then orgType = 10
                If Right(name, 4) = " LLP" Or Right(name, 7) = " L.L.P." Then orgType = 9
                If orgType = 0 Then orgType = vbNull
                If Left(name, 4) = "The " Then name = Right(name, Len(name) - 4) & " (The)"
                rs.Close()
                'prefer lowest domicile (HK) to avoid name clashes with non-HK cos
                rs.Open("SELECT personID,SFCID,orgType,cName FROM organisations WHERE isNull(disDate) AND nameHash=orgHash('" & Apos(name) & "') ORDER BY domicile",
                         con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    'not in the system, create a new org and add its name and SFCID
                    con.Execute("INSERT INTO persons() VALUES ()")
                    SFCIDorgID = LastID(con)
                    If cName = "" Or Len(cName) > 127 Then cName = "NULL" Else cName = "'" & Apos(cName) & "'"
                    con.Execute("INSERT INTO organisations(PersonID,SFCID,Name1,cName,orgType) VALUES(" &
                                 SFCIDorgID & ",'" & SFCID & "','" & Apos(name) & "'," & cName & "," & orgType & ")")
                Else
                    SFCIDorgID = CInt(rs("PersonID").Value)
                    If rs("SFCID").Value.ToString > "" And rs("SFCID").Value.ToString <> SFCID Then
                        r = GetSFCpage("licences", SFCID, ptype)
                        d = FindDate(r, "amalgamated on")
                        If d = Nothing Then dStr = "NULL" Else dStr = "'" & MSdate(d) & "'"
                        con.Execute("INSERT INTO oldsfcids(SFCID,until,orgID) VALUES('" & rs("SFCID").Value.ToString & "'," & dStr & "," & SFCIDorgID & ")")
                        Call SendMail("Inserted old SFCID, check amalgamation date", rs("SFCID").Value.ToString & " until " & dStr & " " & name)
                    End If
                    rs("SFCID").Value = SFCID
                    If orgType > 0 Then UpdateIfNull(rs("orgType"), orgType)
                    rs.Update()
                    'had to use .execute to add cName to avoid OLE error
                    If cName <> "" And IsDBNull(rs("cName").Value) Then
                        con.Execute("UPDATE organisations SET cName='" & Apos(cName) & "' WHERE personID=" & SFCIDorgID)
                    End If
                End If
            End If
        End If
        rs.Close()
        con.Close()
        con = Nothing
    End Function
End Module
