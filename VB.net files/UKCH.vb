Imports System.IO
Imports System.Net
Imports ScraperKit
Imports JSONkit
Imports persons

Module UKCH
    Sub Main()
        Call UKloop()
    End Sub
    Sub Fixnats()
        '2023-04-24 one-off routine used to merge nationalities differing only by a trailing comma.
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset, rs3 As New ADODB.Recordset,
            oldID, newID, descrip, clean, personID As String, oldLatest As Date
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM UKCHnats WHERE right(descrip,1)=',' AND char_length(descrip)>1", con)
        Do Until rs.EOF
            oldID = rs("ID").Value.ToString
            descrip = rs("descrip").Value.ToString
            clean = Left(descrip, Len(descrip) - 1)
            Console.WriteLine(oldID & vbTab & rs("descrip").Value.ToString)
            rs2.Open("SELECT * FROM ukchnats where descrip='" & clean & "'", con)
            If Not rs2.EOF Then
                newID = rs2("ID").Value.ToString
                Console.WriteLine(newID & vbTab & rs2("descrip").Value.ToString)
                rs2.Close()
                rs2.Open("SELECT * FROM nat2 WHERE ukchnat=" & oldID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                Do Until rs2.EOF
                    personID = rs2("personID").Value.ToString
                    oldLatest = CDate(rs2("latest").Value)
                    rs3.Open("SELECT * FROM nat2 WHERE personID=" & personID & " AND ukchnat=" & newID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs3.EOF Then
                        rs2("ukchnat").Value = newID
                        rs2.Update()
                    Else
                        'conflict
                        If oldLatest > CDate(rs3("latest").Value) Then
                            rs3("latest").Value = oldLatest
                            rs3.Update()
                            rs2.Delete()
                        Else
                            rs3.Delete()
                            rs2("ukchnat").Value = newID
                            rs2.Update()
                        End If
                    End If
                    rs3.Close()
                    rs2.MoveNext()
                Loop
            Else
                Console.WriteLine("Not found")
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        Console.ReadKey()
        con = Nothing
    End Sub
    Sub Fixnats2()
        '2023-04-24 one-off routine used to split multiple nationalities
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset, rs3 As New ADODB.Recordset,
            oldID, newID As Integer, descrip, a(), s, personID As String, oldLatest As Date
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM UKCHnats WHERE instr(descrip,',')>0 AND char_length(descrip)>1", con)

        Do Until rs.EOF
            oldID = CInt(rs("ID").Value)
            descrip = rs("descrip").Value.ToString
            Console.WriteLine(descrip)
            a = Split(descrip, ",")
            For Each s In a
                s = Trim(s)
                rs2.Open("SELECT * FROM ukchnats where descrip='" & Apos(s) & "'", con)
                If rs2.EOF Then
                    con.Execute("INSERT INTO ukchnats (descrip) VALUES ('" & Apos(s) & "')")
                    newID = LastID(con)
                Else
                    newID = CInt(rs2("ID").Value)
                End If
                rs2.Close()
                Console.WriteLine(newID & vbTab & s)
                rs2.Open("SELECT * FROM nationality WHERE ukchnat=" & oldID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                Do Until rs2.EOF
                    personID = rs2("personID").Value.ToString
                    oldLatest = CDate(rs2("latest").Value)
                    rs3.Open("SELECT * FROM nationality WHERE personID=" & personID & " AND ukchnat=" & newID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs3.EOF Then
                        rs3.AddNew()
                        rs3("personID").Value = personID
                        rs3("UKCHnat").Value = newID
                        rs3("latest").Value = oldLatest
                        rs3.Update()
                    Else
                        'conflict
                        If oldLatest > CDate(rs3("latest").Value) Then
                            rs3("latest").Value = oldLatest
                            rs3.Update()
                        End If
                    End If
                    Console.WriteLine(personID & vbTab & newID & vbTab & oldLatest)
                    rs3.Close()
                    rs2.MoveNext()
                Loop
                rs2.Close()
            Next
            con.Execute("DELETE FROM nationality WHERE ukchnat=" & oldID)
            rs.MoveNext()
        Loop
        rs.Close()
        Console.ReadKey()
        con = Nothing
    End Sub
    Sub TestLevel1()
        'This test proves that if the subroutine has error-handling then Level 1 error is not triggered
        'But if we disable Level2 error-handling then Level 1 is triggered
        'Both levels report line number 0
        On Error GoTo repErr
        Call TestLevel2()
        Exit Sub
repErr:
        Call ErrMail("Level 1 failed", Err)
        Console.WriteLine("Level 1 failed")
        Console.ReadKey()
    End Sub
    Sub TestLevel2()
        On Error GoTo repErr
        'COMMENT OUT UNLESS TESTING - THIS FORCES AN ERROR
        'Console.WriteLine("" = 0)
        Console.ReadKey()
        Exit Sub
repErr:
        Call ErrMail("Level 2 failed", Err)
        Console.WriteLine("Level 2 failed")
        Console.ReadKey()
    End Sub
    Sub TestGetUKPage()
        Dim o, co As String
        o = ""
        'co = "10651937" 'company with directors register
        'Call GetUKpage("company/" & co & "/registers", o, reset1, reset2)
        'Console.WriteLine(o)
        'Console.ReadKey()
        co = "12971898" 'company doesn't exist, missing from 23-Oct-2020
        'co = "01246083" 'a company with 31 name changes!
        Call GetUKpage("company/" & co, o, reset1:=Now, reset2:=Now, quota1:=600, quota2:=600)
        Console.WriteLine("Empty string:" & (o = ""))
        Console.WriteLine(o)
        Console.ReadKey()
    End Sub
    Sub TestDateDiff()
        Dim nextTime As Date, x As Long
        nextTime = DateAdd("s", 10, Now)
        x = DateDiff("s", Now, nextTime)
        Call WaitNSec(x)
        Console.WriteLine("wait ended")
    End Sub
    Sub ReinstateUK()
        'In Jan-2021, UKCH reinstated companies that were dissolved since Jan-2010
        'So if we have these in the UKURI, look for their details in API
        On Error GoTo repErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            reset1, reset2 As Date,
            quota1, quota2, orgID, x As Integer,
            sql, incID As String
        Call OpenEnigma(con)
        con.CommandTimeout = 480
        sql = " FROM organisations WHERE domicile IN(112,116,311) AND incID rLike '^(LP|NC|NI|NL|OC|R0|SC|SL|SO)?[0-9]*$'"
        reset1 = CDate(con.Execute("SELECT Max(incUpd)" & Sql).Fields(0).Value).AddSeconds(301 + DateDiff("s", Now, Date.UtcNow))
        reset2 = reset1
        rs.Open("SELECT incID,personID " & sql & " AND UKURI AND disDate>='2010-01-01' AND incUpd<'2021-02-01'", con)
        Do Until rs.EOF
            incID = rs("incID").Value.ToString
            orgID = CInt(rs("personID").Value)
            Console.WriteLine("Checking API for dissolved co: " & incID)
            Call GetUKprofile(incID, reset1, reset2, quota1, quota2, True, orgID)
            rs.MoveNext()
            x += 1
            If Int(x / 5000) = (x / 5000) Then Call GetAllNewUKcos(reset1, reset2, quota1, quota2)
        Loop
        rs.Close()
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ReinstateUK failed", Err, "incID: " & incID & vbCrLf & "orgID: " & orgID)
    End Sub
    Sub UKloop(Optional doDead As Boolean = False, Optional runTarget As Integer = 14160, Optional doURI As Boolean = False)
        'perpetually run the UK update. 14160 is based on an hour, throttle of 590 x 2 per 5 minutes.
        'runTarget is the number of companies we want to update, default is 10000 or about 2 hours' worth
        On Error GoTo RepErr
        Dim con As New ADODB.Connection,
            sql As String,
            numCos, minsOld, interval, quota1, quota2 As Integer,
            reset1, reset2 As Date
        Const accur = 2000 'nearest number of companies targetted
        sql = " FROM organisations WHERE domicile IN(112,116,311) AND incID rLike '^(LP|NC|NI|NL|OC|R0|SC|SL|SO)?[0-9]*$'"
        'don't start earlier than 301 seconds after last update, in UTC time, when both quotas will have reset
        Call OpenEnigma(con)
        con.CommandTimeout = 480
        reset1 = CDate(con.Execute("SELECT Max(incUpd)" & sql).Fields(0).Value).AddSeconds(301 + DateDiff("s", Now, Date.UtcNow))
        reset2 = reset1
        sql = "SELECT COUNT(*) " & sql
        If Not doDead Then sql &= " AND isNull(disDate)"
        If Not doURI Then sql &= " AND NOT UKURI"
        sql &= " AND timestampdiff(minute,incUpd,now())>="
        'initial guess
        Do
            minsOld = 131072 '2^17 minutes ~ 90 days, aim high and hunt back
            Do
                numCos = CInt(con.Execute(sql & minsOld).Fields(0).Value)
                Console.WriteLine("MinsOld: " & minsOld & vbTab & "interval: " & interval & vbTab & "numCos: " & numCos)
                If numCos < runTarget + accur Then Exit Do
                minsOld *= 2  'too many companies, double the time period
            Loop
            'now slice back
            interval = minsOld
            Do Until Math.Abs(numCos - runTarget) <= accur
                interval = CInt(interval / 2)
                If numCos < runTarget - accur Then
                    minsOld -= interval
                Else
                    minsOld += interval
                End If
                numCos = CInt(con.Execute(sql & minsOld).Fields(0).Value)
                Console.WriteLine("MinsOld:" & minsOld & vbTab & "interval:" & interval & vbTab & "numCos: " & numCos)
            Loop
            Call UpdAllUKcos(doDead, minsOld, doURI, reset1, reset2, quota1, quota2)
        Loop
        Exit Sub
RepErr:
        Call ErrMail("UK loop crashed", Err)
        con.Close()
        con = Nothing
    End Sub
    Sub TestNullables()
        Dim i As Integer?
        Console.WriteLine(i)
        Console.WriteLine("i is Nothing:" & (i Is Nothing))
        i = 1
        Console.WriteLine(i)
        Console.WriteLine("i is Nothing:" & (i Is Nothing))
        i = Nothing
        Console.WriteLine(i)
        Console.WriteLine("i is Nothing:" & (i Is Nothing))
        Console.WriteLine("isNothing(i):" & (IsNothing(i)))
        Dim d As Date?
        Console.WriteLine(d)
        Console.WriteLine("d is Nothing:" & (d Is Nothing))
        d = Today
        Console.WriteLine(d)
        Console.WriteLine("d is Nothing:" & (d Is Nothing))
        d = Nothing
        Console.WriteLine(d)
        Console.WriteLine("d is Nothing:" & (d Is Nothing))
        Console.WriteLine("isNothing(d):" & (IsNothing(d)))
        Console.ReadKey()
    End Sub
    Sub TestDBTypes()
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, i As Integer, s As String, d As Date
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM organisations WHERE isNull(domicile) LIMIT 1", con)
        Console.WriteLine("i=0:" & (i = 0))
        Console.WriteLine("i=Nothing:" & (i = Nothing))
        Console.WriteLine("IsNothing(i):" & (IsNothing(i)))

        Console.WriteLine("d:" & d)
        Console.WriteLine("IsNothing(d):" & IsNothing(d))
        Console.WriteLine("d=Nothing:" & (d = Nothing))

        s = rs("domicile").Value.ToString
        Console.WriteLine("s:" & s)
        Console.WriteLine("isNothing(Null DB):" & IsNothing(s))
        Console.WriteLine("Null DB = Nothing:" & (s = Nothing))
        Console.WriteLine("Null DB= """":" & (s = ""))
        rs.Close()
        con.Close()
        con = Nothing
        Console.WriteLine(Nothing = "")
        Console.ReadKey()
    End Sub
    Sub UpdAllUKcos(doDead As Boolean, mins As Integer, doURI As Boolean, ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer)
        On Error GoTo repErr
        'doURI includes companies last seen only in URI (without officer listing)
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            sql, target As String,
            orgID, x As Integer
        'check for cos not in sequence created in last 30 days
        Call GetMissingUKcos(reset1, reset2, quota1, quota2, 30)
        Call GetAllNewUKcos(reset1, reset2, quota1, quota2)
        Call OpenEnigma(con)
        sql = ""
        If Not doDead Then sql &= " AND isNull(disDate)"
        If Not doURI Then sql &= " AND not UKURI"
        con.CommandTimeout = 240
        rs.Open("SELECT * FROM organisations WHERE domicile IN(112,116,311) AND incID rLike '^(LP|NC|NI|NL|OC|R0|SC|SL|SO)?[0-9]*$'" &
                "AND TIMESTAMPDIFF(MINUTE,incUpd,NOW())>=" & mins & sql & " ORDER BY incupd", con)
        Do Until rs.EOF
            target = rs("incID").Value.ToString
            orgID = CInt(rs("PersonID").Value)
            Console.WriteLine("Updating profile of: " & target)
            Call GetUKprofile(target, reset1, reset2, quota1, quota2, True, orgID)
            rs.MoveNext()
            x += 1
            'every 3000 companies (approx 30 mins), break away to fetch new companies
            If Int(x / 3000) = x / 3000 Then Call GetAllNewUKcos(reset1, reset2, quota1, quota2)
        Loop
        rs.Close()
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("UpdAllUKcos failed", Err, "target: " & target & vbCrLf & "orgID: " & orgID)
    End Sub

    Sub GetAllNewUKcos(ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer)
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, co As String
        Call OpenEnigma(con)
        con.CommandTimeout = 480
        'revisit firms which only appeared in the URI, up to 30 days, as they may now be in the API
        rs.Open("SELECT * FROM organisations WHERE domicile IN(112,116,311) AND datediff(curdate(),incDate)<=30 AND UKURI order by incupd;", con)
        Do Until rs.EOF
            co = rs("incID").Value.ToString
            Console.WriteLine("Updating profile of: " & co)
            Call GetUKprofile(co, reset1, reset2, quota1, quota2, True, CInt(rs("PersonID").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        'fetch directorships if we didn't get any on recent passes, because sometimes CH publishes company before its directors
        rs.Open("select personID,incID,incDate,name1,(select count(*) from directorships where Company=personID) AS dirs " &
                "FROM organisations WHERE domicile IN(112,116,311) AND Left(incID,2) NOT IN('LP','SL','NL') AND datediff(curdate(),incDate)<=30 having dirs=0 order by incupd;", con)
        Do Until rs.EOF
            Console.WriteLine(rs("incID").Value.ToString & vbTab & rs("Name1").Value.ToString)
            Call GetUKofficers(rs("incID").Value.ToString, CInt(rs("PersonID").Value), reset1, reset2, quota1, quota2)
            rs.MoveNext()
        Loop
        rs.Close()
        rs.Open("SELECT * FROM uklog", con)
        Do Until rs.EOF
            Call GetNewUKcos(rs("prefix").Value.ToString, reset1, reset2, quota1, quota2)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Function GetCHID(s As String) As String
        'extract the CHID from a link in the officer list
        'this is designed to fail if they change the format of the link
        Dim x As Integer
        x = InStr(s, "/officers/")
        If x = 0 Then Return Nothing
        x += Len("/officers/")
        Return Mid(s, x, InStr(s, "/appointments") - x)
    End Function
    Sub GetNewUKcos(prefix As String, ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer)
        On Error GoTo repErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            lastCo, targNum, orgID, lastFound, domID As Integer,
            targStr As String
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM uklog WHERE prefix='" & prefix & "'", con)
        domID = CInt(rs("domID").Value)
        lastCo = CInt(rs("lastCo").Value)
        rs.Close()
        targNum = lastCo
        lastFound = targNum
        Do
            targNum += 1
            If prefix = "" Then targStr = Right("0000000" & targNum, 8) Else targStr = Right("00000" & targNum, 6)
            targStr = prefix & targStr
            rs.Open("SELECT personID FROM organisations WHERE domicile=" & domID & " AND incID='" & targStr & "'", con)
            If rs.EOF Then
                orgID = 0
                Console.WriteLine("Searching for new incorporation: " & targStr)
                Call GetUKprofile(targStr, reset1, reset2, quota1, quota2, False, orgID)
                If orgID > 0 Then
                    lastFound = targNum
                    'update highest number to avoid possible mismatch if this routine is interrupted
                    con.Execute("UPDATE uklog SET lastCo='" & lastFound & "' WHERE prefix='" & prefix & "'")
                End If
            Else
                'co is already in database
                lastFound = targNum
            End If
            rs.Close()
        Loop Until targNum - lastFound = 10
        'stop if 10 consecutive IDs are missing
        con.Execute("UPDATE uklog SET lastCo='" & lastFound & "' WHERE prefix='" & prefix & "'")
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetNewUKcos failed", Err, "targStr:" & targStr)
    End Sub
    Sub GetMissingUKcos(ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer, Optional lookback As Integer = 0)
        'find the UK cos not in DB, working backwards,lookback days or unlimited
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, prefs As New ADODB.Recordset,
        prefix, co, sql, lastDateFound As String,
            coNum As Integer
        Call OpenEnigma(con)
        con.CommandTimeout = 480
        prefs.Open("SELECT * FROM uklog  order by prefix", con)
        Do Until prefs.EOF
            prefix = prefs("prefix").Value.ToString
            coNum = CInt(prefs("lastCo").Value)
            sql = "SELECT * FROM organisations WHERE domicile=" & CInt(prefs("domID").Value)
            If prefix = "" Then
                sql &= " AND Left(incID,2)<='99'"
            Else
                sql = sql & " AND LEFT(incID,2)='" & prefix & "'"
            End If
            If lookback > 0 Then sql = sql & " AND incDate>='" & MSdate(Today.AddDays(-lookback)) & "'"
            sql &= " ORDER BY incID DESC"
            rs.Open(sql, con)
            lastDateFound = ""
            Do Until rs.EOF
                If prefix = "" Then
                    co = Right("0000000" & coNum, 8)
                Else
                    co = prefix & Right("00000" & coNum, 6)
                End If
                If rs("incID").Value.ToString = co Then
                    lastDateFound = MSdate(CDate(rs("incDate").Value))
                    rs.MoveNext()
                Else
                    Console.WriteLine("last date found:" & lastDateFound)
                    Console.WriteLine("Checking for missing co:" & co)
                    Call GetUKprofile(co, reset1, reset2, quota1, quota2, True)
                End If
                coNum -= 1
            Loop
            rs.Close()
            prefs.MoveNext()
        Loop
        prefs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub GetUKprofile(co As String, ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer,
                     getOfficers As Boolean, ByRef Optional orgID As Integer = 0)
        On Error GoTo repErr
        If IsNumeric(co) Then co = Right("0000000" & co, 8) 'conform company number
        'use the Companies House API to get details of a company, returned in JSON format
        'normally don't fetch officers for brand new companies, as these take a while to populate at UKCH
        'see https://developer-specs.company-information.service.gov.uk/companies-house-public-data-api/resources/companyprofile
        Dim DOB, o, items(), s, arr(), ceased, nameArr(1, 0), incDateStr, disDateStr, Name, coType, earliest, errors, link, UKURI, coStatus As String,
            p, x, tempID, disMode, domicile, orgType As Integer,
            incDate, disDate As Date,
            con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            insert, newOrg As Boolean
        Call OpenEnigma(con)
        Name = ""
        earliest = ""
        incDateStr = ""
        disDateStr = ""
        UKURI = "FALSE"
        o = ""
        Call GetUKpage("company/" & co, o, reset1, reset2, quota1, quota2)
        errors = GetVal(o, "errors")
        If errors <> "" Or o = "" Then
            If InStr(errors, "company-profile-not-found") > 0 Or o = "" Then
                Console.WriteLine("Not in API")
                'now try the URI
                Call GetOldUKprofile(co, Name, incDateStr, disDateStr, nameArr, earliest, orgType, disMode)
                If Name = "" Then
                    con.Close()
                    con = Nothing
                    Exit Sub 'if we don't have a name, then go no further!
                End If
                domicile = UKdom(co)
                UKURI = "TRUE"
            End If
        Else
            Name = TheEnd(Trim(StripSpace(GetVal(o, "company_name"))))
            incDateStr = GetVal(o, "date_of_creation")
            disDateStr = GetVal(o, "date_of_cessation")
            domicile = UKdom(co)
            coType = GetVal(o, "type")
            If coType > "" Then
                orgType = CInt(con.Execute("SELECT orgType FROM ukch WHERE api='" & coType & "'").Fields(0).Value)
                'Console.Write("type: " & coType)
                'Console.WriteLine(", our orgType: " & orgType)
            End If
            coStatus = GetVal(o, "company_status")
            'Console.Write("company_status: " & coStatus)
            disMode = CInt(con.Execute("SELECT ID FROM dismodes WHERE UKapi='" & coStatus & "'").Fields(0).Value)
            'Console.WriteLine(", our status: " & orgType)
            arr = ReadArray(GetVal(o, "previous_company_names"))
            If arr(0) > "" Then
                Console.WriteLine("previous_company_names:")
                ReDim nameArr(1, UBound(arr))
                For x = 0 To UBound(arr)
                    nameArr(0, x) = TheEnd(Trim(StripSpace(GetVal(arr(x), "name"))))
                    ceased = GetVal(arr(x), "ceased_on")
                    nameArr(1, x) = ceased
                    If earliest = "" Or earliest > ceased Then earliest = ceased
                    'Console.WriteLine(nameArr(0, x) & vbTab & nameArr(1, x))
                Next
                'Console.WriteLine("Earliest: " & earliest)
            End If
        End If
        If Name = "" Then
            Console.WriteLine("Name not found")
            con.Close()
            con = Nothing
            Exit Sub 'if we don't have a name, then go no further!
        End If
        If incDateStr > "" Then incDate = CDate(incDateStr)
        If disDateStr > "" Then disDate = CDate(disDateStr)
        newOrg = False
        If orgID = 0 Then
            rs.Open("SELECT * FROM organisations WHERE domicile IN(2,112,116,311) AND incID='" & co & "'", con)
            If rs.EOF Then
                newOrg = True
                Call InsertOrg(Name, incDateStr, disDateStr, domicile, co, orgType, disMode, UKURI, orgID)
                If earliest <> "" Then
                    For x = 0 To UBound(nameArr, 2)
                        con.Execute("INSERT INTO namechanges (personID,oldName,dateChanged) VALUES (" & orgID &
                                     ",'" & Apos(nameArr(0, x)) & "','" & nameArr(1, x) & "')")
                    Next
                End If
            Else
                orgID = CInt(rs("PersonID").Value)
            End If
        Else
            rs.Open("SELECT * FROM organisations WHERE personID=" & orgID, con)
        End If
        Console.WriteLine("Company name: " & Name)
        Console.WriteLine("orgID: " & orgID & vbTab & "orgType: " & orgType)
        Console.Write("Incorporated: " & incDateStr & " " & "Dissolved: " & disDateStr)
        Console.WriteLine(" earliest name change: " & earliest)
        If Not newOrg Then
            con.Execute("UPDATE organisations SET UKURI=" & UKURI & ",disMode=" & disMode & " WHERE personID=" & orgID)
            If StrComp(Name, TrimName(rs("Name1").Value.ToString), vbBinaryCompare) <> 0 Then
                'name without suffixes has changed
                tempID = orgID
                Call NameResOrg(tempID, Name, incDate, disDate, domicile, co)
                con.Execute("UPDATE organisations SET name1='" & Apos(Name) & "',incUpd=NOW() WHERE personID=" & orgID)
            End If
            If domicile > 0 Then
                If DBint(rs("domicile")) <> domicile Then
                    con.Execute("UPDATE organisations SET domicile=" & domicile & ",incUpd=NOW() WHERE PersonID = " & orgID)
                End If
            End If
            If orgType > 0 Then con.Execute("UPDATE organisations SET orgType=" & orgType & ",incUpd=NOW() WHERE personID=" & orgID)
            If incDate > Nothing Then
                If incDate <> DBdate(rs("incDate")) Then
                    con.Execute("UPDATE organisations SET incAcc=NULL, incDate='" & incDateStr & "',incUpd=NOW() WHERE personID=" & orgID)
                End If
            End If
            If disDate = Nothing Then
                con.Execute("UPDATE organisations SET disDate=NULL,incUpd=NOW() WHERE personID=" & orgID)
            ElseIf disDate <> DBdate(rs("disDate")) Then
                con.Execute("UPDATE organisations SET disDate='" & disDateStr & "',incUpd=NOW() WHERE personID=" & orgID)
            End If
        End If
        If earliest <> "" Then
            'add name history from API/URI, if any. The API does not have all, e.g. Cable & Wireless Limited 00238525 has no history but CH webcheck does
            con.Execute("DELETE FROM namechanges WHERE isnull(oldcName) AND personID=" & orgID & " AND dateChanged>='" & earliest & "'")
            rs2.Open("SELECT * FROM namechanges WHERE personID=" & orgID & " ORDER BY dateChanged DESC LIMIT 1", con)
            For x = 0 To UBound(nameArr, 2)
                insert = True
                If x = UBound(nameArr, 2) Then
                    'check whether the last change is the same as our last change before that
                    If Not rs2.EOF Then
                        If nameArr(0, x) = rs2("OldName").Value.ToString Then insert = False
                    End If
                End If
                If insert Then con.Execute("INSERT INTO namechanges (personID,oldName,dateChanged) VALUES (" & orgID &
                                                   ",'" & Apos(nameArr(0, x)) & "','" & nameArr(1, x) & "')")
            Next
            rs2.Close()
        End If
        If orgType <> 9 And getOfficers Then 'not a limited partnership - these have no officers in UKCH
            'fetch the officers for firm in the API
            If UKURI = "FALSE" Then
                Call GetUKofficers(co, orgID, reset1, reset2, quota1, quota2)
                'check whether registers are currently online and if so get day of birth, but this is rare
                link = GetItem(o, "links.registers")
                If link <> "" Then
                    'now or in the past, the registers were online
                    Call GetUKpage(link, o, reset1, reset2, quota1, quota2)
                    Select Case Left(co, 2)
                        Case "OC", "SO", "NC"
                            link = GetItem(o, "registers.llp_members.links.llp_members")
                        Case Else
                            link = GetItem(o, "registers.directors.links.directors_register")
                    End Select
                    If link <> "" Then
                        'the registers are online. Extract DOBs
                        Call GetUKpage(link, o, reset1, reset2, quota1, quota2)
                        items = ReadArray(GetVal(o, "items"))
                        If items(0) > "" Then x = UBound(items) Else x = -1
                        For x = 0 To x
                            s = items(x)
                            DOB = GetItem(s, "date_of_birth.day")
                            If DOB <> "" Then
                                link = GetItem(s, "links.officer.appointments")
                                If link <> "" Then link = Mid(link, 11, Len(link) - 23)
                                p = CInt(con.Execute("SELECT IFNULL((SELECT personID FROM ukppl WHERE CHID='" & link & "'),0)").Fields(0).Value)
                                If p > 0 Then
                                    rs.Close()
                                    rs.Open("SELECT * FROM people WHERE personID=" & p, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                                    If IsDBNull(rs("DOB").Value) Then
                                        rs("DOB").Value = DOB
                                        rs.Update()
                                    End If
                                End If
                            End If
                        Next
                    End If
                End If
            ElseIf disMode = 8 Then 'dissolved according to URI, so resign any remaining directors if dissolution date is known
                If disDateStr = "" Then
                    disDateStr = con.Execute("SELECT disDate FROM organisations WHERE personID=" & orgID).Fields(0).Value.ToString
                    If disDateStr > "" Then disDateStr = MSdate(CDate(disDateStr))
                End If
                If disDateStr > "" Then con.Execute("UPDATE directorships d JOIN positions p ON d.positionID=p.positionID AND p.rank=1 SET resDate='" &
                                                          disDateStr & "' WHERE isNull(resDate) AND Company=" & orgID)
            End If
        End If
        rs.Close()
        con.Close()
        con = Nothing
        Console.WriteLine()
        Exit Sub
repErr:
        Call ErrMail("GetUKprofile failed", Err, "incID: " & co & vbCrLf & "orgID: " & orgID)
    End Sub
    Sub TestGetUKofficers()
        Dim co As String, orgID As Integer, reset1, reset2 As Date
        'CAREFUL - orgID may be different for DMW PC
        co = "08281981"
        orgID = 7346241
        Call GetUKofficers(co, orgID, reset1, reset2, quota1:=600, quota2:=600)
        Console.WriteLine("TestGetUKofficers Done")
    End Sub
    Sub TestGetUKprofile()
        Dim co As String, orgID As Integer, reset1, reset2 As Date
        'PANGEA CONNECTED HOLDINGS LIMITED
        co = "13133371"
        orgID = 25714035
        'co = "12971898" 'company doesn't exist, missing from 23-Oct-2020
        'orgID = 0
        Call GetUKprofile(co, reset1, reset2, quota1:=600, quota2:=600, True, orgID)
        Console.WriteLine("orgID: " & orgID)
    End Sub
    Sub TestGetOldUKprofile()
        Dim co, name, incDate, disDate, nameArr(1, 0), earliest As String,
            orgType, status As Integer
        'co = "01827894"
        co = "12971898" 'company doesn't exist, missing from 23-Oct-2020
        name = ""
        incDate = ""
        disDate = ""
        earliest = ""
        Call GetOldUKprofile(co, name, incDate, disDate, nameArr, earliest, orgType, status)
    End Sub
    Sub GetOldUKprofile(co As String, ByRef Name As String, ByRef incDate As String, ByRef disDate As String, ByRef nameArr(,) As String,
                        ByRef earliest As String, ByRef orgType As Integer, ByRef status As Integer)
        'the older site has data on some companies which are missing from the beta site
        Dim URL, o, ceased, arr(), coType, strStat As String,
            x As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        URL = "doc/company/" & co & ".json"
        o = GetWeb("http://data.companieshouse.gov.uk/" & URL,, True)
        If InStr(o, "Error Code: 9001") > 0 And InStr(o, "Resource not found") > 0 Then
            Console.WriteLine("Not found in UKURI")
            Exit Sub 'Resource not found
        End If
        o = GetVal(o, "primaryTopic")
        If o = "" Then Exit Sub
        'Console.WriteLine(o)
        Name = TheEnd(Trim(StripSpace(GetVal(o, "CompanyName"))))
        coType = GetVal(o, "CompanyCategory")
        incDate = MSdateDMY(GetVal(o, "IncorporationDate"))
        If incDate = "" Then incDate = MSdateDMY(GetVal(o, "RegistrationDate"))
        disDate = MSdateDMY(GetVal(o, "DissolutionDate"))
        strStat = GetVal(o, "CompanyStatus")
        arr = ReadArray(GetVal(o, "PreviousNames"))
        Call OpenEnigma(con)
        If coType <> "" Then
            Console.Write("CompanyCategory: " & coType)
            rs.Open("SELECT orgType FROM ukch WHERE meaning='" & Apos(coType) & "'", con)
            If rs.EOF Then
                Stop 'type not found
            Else
                orgType = CInt(rs("orgType").Value)
                Console.WriteLine(", our orgType: " & orgType)
            End If
            rs.Close()
        End If
        Console.Write("CompanyStatus: " & strStat)
        rs.Open("SELECT ID from dismodes WHERE UKuri='" & strStat & "'", con)
        If rs.EOF Then
            Stop 'type not found
        Else
            status = CInt(rs("ID").Value)
            Console.WriteLine(", our status: " & status)
        End If
        rs.Close()
        If arr(0) <> "" Then
            Console.WriteLine("PreviousNames:")
            ReDim nameArr(1, UBound(arr))
            For x = 0 To UBound(arr)
                nameArr(0, x) = TheEnd(Trim(StripSpace(GetVal(arr(x), "CompanyName"))))
                ceased = MSdateDMY(GetVal(arr(x), "CONDate"))
                nameArr(1, x) = ceased
                If earliest = "" Or earliest > ceased Then earliest = ceased
                Console.WriteLine(nameArr(0, x) & vbTab & nameArr(1, x))
            Next
            Console.WriteLine("Earliest: " & earliest)
        End If
        con.Close()
        con = Nothing
    End Sub
    Sub GetUKofficers(co As String, orgID As Integer, ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer)
        On Error GoTo repErr
        'use the Companies House API to get officers of a company, returned in JSON format
        'see https://developer.company-information.service.gov.uk/api/docs/company/company_number/officers/officerList.html
        If IsNumeric(co) Then co = Right("0000000" & co, 8) 'conform company number
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            o, errors, items(), s, oName, appointed, resigned, ResAcc, oRole, n1, n2, dobStr, DOB, MOB, YOB, CHID, sql, nat, natSplit(), t,
            latest, liveOff(,), offType, disDateStr, tempStr, dbResigned As String,
            x, y, offCnt, offDone, offset, p, UKCHnat, disMode As Integer,
            natDate, disDate As Date,
            doit As Boolean
        Call OpenEnigma(con)
        rs.Open("SELECT disDate,disMode FROM organisations WHERE personID=" & orgID, con)
        disDate = DBdate(rs("disDate"))
        disDateStr = MSdate(disDate)
        disMode = DBint(rs("disMode"))
        rs.Close()
        'don't touch those with HK-listed equity
        sql = "SELECT EXISTS(SELECT * FROM issue i JOIN stocklistings s ON i.ID1=s.issueID WHERE stockExID IN(1,20,22,23) AND issuer=" &
            orgID & " AND i.typeID NOT IN (1,2,40,41,46))"
        If CBool(con.Execute(sql).Fields(0).Value) Then
            Console.WriteLine("Is or was HK-listed")
            con.Close()
            con = Nothing
            Exit Sub
        End If
        'API cannot return more than 100 officers at a time. Parameter start_index is the offset in result set
        offset = 0
        offDone = 0
        ReDim liveOff(2, 0)
        Do
            o = ""
            Call GetUKpage("company/" & co & "/officers?items_per_page=100&start_index=" & offset, o, reset1, reset2, quota1, quota2)
            If o = "{}" Then
                Console.WriteLine("No officers")
                Exit Do 'sometimes the officers are not ready, we will catch them next time we run getAllNewUKcos
            End If
            errors = GetVal(o, "errors")
            If errors <> "" Then
                Console.WriteLine(errors)
                con.Close()
                con = Nothing
                Exit Sub
            End If
            items = ReadArray(GetVal(o, "items"))
            If items(0) <> "" Then x = UBound(items) Else x = -1
            For x = 0 To x
                oName = ""
                n1 = ""
                n2 = ""
                p = 0
                offType = ""
                CHID = ""
                s = items(x)
                CHID = GetCHID(GetItem(s, "links.officer.appointments"))
                oName = GetVal(s, "name")
                dobStr = GetVal(s, "date_of_birth")
                doit = True
                'check for appointment after resignation, even for non-humans
                appointed = GetVal(s, "appointed_on")
                resigned = GetVal(s, "resigned_on")
                oRole = ""
                If appointed <> "" And resigned <> "" And appointed > resigned Then
                    'impossible - record error
                    con.Execute("INSERT IGNORE INTO ukappres(orgID,CHID,appDate,resDate,name) VALUES (" &
                                 orgID & ",'" & CHID & "','" & appointed & "','" & resigned & "','" & Apos(oName) & "')")
                    doit = False
                    Console.WriteLine("RESIGNED BEFORE APPOINTED: " & oName & vbTab & appointed & vbTab & resigned)
                Else
                    oRole = GetVal(s, "officer_role")
                    If oRole = "director" Or oRole = "nominee-director" Then
                        'director in a company
                        offType = "187"
                    ElseIf oRole = "llp-designated-member" Or oRole = "llp-member" Or oRole = "limited-partner-in-a-limited-partnership" Then
                        'Partner
                        offType = "348"
                    ElseIf oRole = "general-partner-in-a-limited-partnership" Then
                        'General Partner
                        offType = "238"
                    Else
                        doit = False
                    End If
                End If
                'check for non-human
                If dobStr <> "" And doit Then
                    rs.Open("SELECT u.personID,name1,name2 FROM ukppl u JOIN people p ON u.personID=p.personID WHERE CHID='" & CHID & "'", con)
                    If rs.EOF Then
                        'not seen this director before.
                        If CBool(con.Execute("SELECT EXISTS(SELECT * FROM uknonhuman WHERE CHID='" & CHID & "')").Fields(0).Value) Then
                            doit = False
                        ElseIf CBool(con.Execute("SELECT EXISTS(SELECT * FROM uknonhuman WHERE name='" & Apos(oName) & "')").Fields(0).Value) Then
                            doit = False
                            con.Execute("INSERT INTO uknonhuman (CHID,name) VALUES ('" & CHID & "','" & Apos(oName) & "')")
                        Else
                            Call UKnameSplit(oName, n1, n2)
                            If CInt(con.Execute("SELECT COUNT(*) FROM corpwords WHERE '" &
                                           Apos(n1) & "' LIKE CONCAT(word,' %') OR '" &
                                           Apos(n1) & "' LIKE CONCAT('% ',word,' %') OR '" &
                                           Apos(n1) & "' LIKE CONCAT('% ',word)").Fields(0).Value) > 0 Then
                                doit = False
                                con.Execute("INSERT INTO uknonhuman (CHID,name) VALUES ('" & CHID & "','" & Apos(oName) & "')")
                            Else
                                YOB = GetVal(dobStr, "year")
                                MOB = GetVal(dobStr, "month")
                                DOB = GetVal(dobStr, "day")
                                If n1 <> "" And YOB <> "" Then
                                    'get or generate personID, but only if they have a YOB (may be some companies misclassified as people)
                                    p = PplRes(n1, n2, "", "", YOB, MOB, DOB, "", "", "")
                                    con.Execute("INSERT INTO ukppl(CHID,personID) VALUES('" & CHID & "'," & p & ")")
                                End If
                            End If
                        End If
                    Else
                        p = CInt(rs("PersonID").Value)
                        n1 = rs("Name1").Value.ToString
                        n2 = rs("Name2").Value.ToString
                    End If
                    rs.Close()
                    If p > 0 Then
                        If resigned = "" Then
                            'live officer, add to array if not already there
                            For y = 1 To UBound(liveOff, 2)
                                If liveOff(0, y) = p.ToString And liveOff(1, y) = offType Then
                                    If appointed < liveOff(2, y) Then liveOff(2, y) = appointed 'earlier live appointment
                                    Exit For
                                End If
                            Next
                            If y > UBound(liveOff, 2) Then
                                ReDim Preserve liveOff(2, y)
                                liveOff(0, y) = p.ToString
                                liveOff(1, y) = offType
                                liveOff(2, y) = appointed
                            End If
                        ElseIf appointed <> "" Then
                            'a resigned appointment. Check that it does not conflict with a live one
                            For y = 1 To UBound(liveOff, 2)
                                If p.ToString = liveOff(0, y) And offType = liveOff(1, y) And appointed >= liveOff(2, y) Then
                                    'this is a later appointment than the live one, ignore it
                                    doit = False
                                    Exit For
                                End If
                            Next
                        End If
                        If doit Then
                            'first process nationality. doIt now relates to adding the nationality to the director's history
                            nat = Apos(GetVal(s, "nationality"))
                            If Right(nat, 1) = "," Then nat = Left(nat, Len(nat) - 1)
                            If nat <> "" Then
                                If resigned <> "" Then
                                    natDate = CDate(resigned)
                                ElseIf disMode = 8 And disDate > Nothing Then
                                    natDate = disDate
                                Else
                                    natDate = Today
                                End If
                                natSplit = Split(nat, ",")
                                For Each t In natSplit
                                    t = Trim(t)
                                    rs.Open("SELECT * FROM ukchnats WHERE descrip='" & Apos(t) & "'", con)
                                    If rs.EOF Then
                                        con.Execute("INSERT INTO ukchnats(descrip) VALUES('" & Apos(t) & "')")
                                        UKCHnat = LastID(con)
                                    Else
                                        UKCHnat = CInt(rs("ID").Value)
                                    End If
                                    rs.Close()
                                    'check for latest claimed date for that nationality
                                    rs.Open("SELECT * FROM nationality WHERE personID=" & p & " AND UKCHnat=" & UKCHnat, con)
                                    If rs.EOF Then
                                        con.Execute("INSERT INTO nationality (personID,UKCHnat,latest) VALUES(" & p & "," & UKCHnat & ",'" & MSdate(natDate) & "')")
                                    ElseIf natDate > CDate(rs("latest").Value) Then
                                        con.Execute("UPDATE nationality SET latest='" & MSdate(natDate) & "' WHERE personID=" & p & " AND UKCHnat=" & UKCHnat)
                                    End If
                                    rs.Close()
                                Next
                            End If
                            'find main-board positions. NB this assumes that a person only holds 1 main board position at a time.
                            'We would need to rewrite this if we want to include Secretaries
                            sql = "SELECT * FROM directorships d JOIN positions p ON d.positionID=p.positionID AND p.rank=1 WHERE Company=" &
                                orgID & " AND director=" & p
                            'a contiguous set of positions in our db may be a single period of directorship in UKCH, e.g. ED, CEO, Ch
                            'exclude appointments and resignations before the appointment date
                            If appointed <> "" Then sql = sql & " AND (isNull(apptDate) OR apptDate>='" & appointed &
                                "') AND (isNull(resDate) OR resDate='1000-01-01' OR resDate>='" & appointed & "')"
                            'exclude appointments and resignations after the resignation date
                            If resigned <> "" Then
                                sql = sql & " AND (isNull(apptDate) OR apptDate<='" & resigned & "') AND (isNull(resDate) OR resDate<='" & resigned & "')"
                            End If
                            sql &= " ORDER BY apptDate"
                            With rs
                                .Open(sql, con, ADODB.CursorTypeEnum.adOpenStatic)
                                If .EOF Then
                                    'no positions found
                                    sql = "INSERT INTO directorships (source,company,director,positionID,apptDate,resDate,resAcc) VALUES (3," &
                                        orgID & "," & p & "," & offType & ","
                                    If appointed = "" Then sql &= "NULL," Else sql = sql & "'" & appointed & "',"
                                    'if company is currently dissolved with known disDate, then set that as resignation date
                                    If resigned <> "" Then
                                        sql = sql & "'" & resigned & "',NULL)"
                                    ElseIf disMode = 8 Then 'dissolved with unknown resignation date
                                        If disDate = Nothing Then
                                            sql &= "'1000-01-01',3)"
                                            resigned = "1000-01-01"
                                        Else
                                            sql = sql & "'" & disDate & "',NULL)"
                                            resigned = disDateStr
                                        End If
                                    Else
                                        'current position, firm not dissolved
                                        sql &= "NULL,NULL)"
                                    End If
                                    con.Execute(sql)
                                    'Call OneDirSum(orgID, p)
                                Else
                                    'one or more positions found, in sequence
                                    If appointed <> "" Then
                                        If IsDBNull(rs("ApptDate").Value) Then
                                            If (resigned = "" And IsDBNull(rs("ResDate").Value)) Or resigned <> "" Then
                                                con.Execute("UPDATE directorships SET source=3, apptDate='" & appointed & "' WHERE ID1=" & rs("ID1").Value.ToString)
                                            Else
                                                con.Execute("INSERT INTO directorships (source,company,director,positionID,apptDate,resDate) VALUES (3," &
                                                             orgID & "," & p & "," & offType & ",'" & appointed & "',NULL)")
                                            End If
                                            .Requery()
                                            'Call OneDirSum(orgID, p)
                                        ElseIf CDate(rs("ApptDate").Value) > CDate(appointed) Then
                                            'add a new position to prepend the appointment to the appointed date
                                            con.Execute("INSERT INTO directorships (source,company,director,positionID,apptDate,resDate) VALUES (3," &
                                                        orgID & "," & p & "," & offType & ",'" & appointed & "','" & MSdate(CDate(rs("ApptDate").Value)) & "')")
                                            'Call OneDirSum(orgID, p)
                                        End If
                                        .Requery() 'fetch the updated list
                                    End If
                                    If resigned > "" Or disMode = 8 Then 'dir resigned or co dissolved
                                        ResAcc = "NULL"
                                        If disMode = 8 And resigned = "" Then
                                            If disDate = Nothing Then
                                                resigned = "1000-01-01"
                                                ResAcc = "3"
                                            Else
                                                resigned = disDateStr
                                            End If
                                        End If
                                        latest = ""
                                        Do Until .EOF
                                            dbResigned = MSdate(DBdate(rs("resDate")))
                                            If dbResigned = resigned Then Exit Do
                                            If dbResigned = "" Or dbResigned = "1000-01-01" Then
                                                con.Execute("UPDATE directorships SET source=3, resDate='" & resigned & "',resAcc=" & ResAcc & " WHERE ID1=" & rs("ID1").Value.ToString)
                                                'Call OneDirSum(orgID, p)
                                                Exit Do
                                            End If
                                            latest = dbResigned
                                            .MoveNext()
                                        Loop
                                        If .EOF Then
                                            'we ran out of directorships, so extend with a directorship from the latest date until the resigned date
                                            con.Execute("INSERT INTO directorships (source,company,director,positionID,apptDate,resDate) VALUES (3," &
                                                        orgID & "," & p & "," & offType & ",'" & latest & "','" & resigned & "')")
                                            'Call OneDirSum(orgID, p)
                                        End If
                                    Else
                                        'the last position must still be current unless the firm has dissolved and we have manually entered the dissolution date as resignation date
                                        .MoveLast()
                                        dbResigned = MSdate(DBdate(rs("resDate")))
                                        If dbResigned > "" And (disDateStr = "" Or dbResigned <> disDateStr) Then
                                            con.Execute("UPDATE directorships SET source=3, resDate=NULL,resAcc=NULL WHERE ID1=" & rs("ID1").Value.ToString)
                                        End If
                                    End If
                                    'if appointed and resigned are both empty then we must have found a position with no apptDate and no resDate in the recordset, so it matches
                                End If
                                .Close()
                            End With
                        End If
                    ElseIf n1 = "" And doit Then
                        'some directors have blank names, need to report errors
                        con.Execute("INSERT INTO errorlog(proc,descrip) VALUES ('UKCH bad director','" & CHID & "')")
                    End If
                End If
                offDone += 1
                Console.Write(offDone & " " & oRole & vbTab & Right(Space(10) & appointed, 10) & " " & Right(Space(10) & resigned, 10) & " ")
                If p = 0 Then
                    'we skipped the line
                    Console.WriteLine("  skipped: " & oName)
                Else
                    Console.WriteLine(Right(Space(10) & p, 10) & " " & n1 & ", " & n2)
                End If
            Next
            If offset = 0 Then
                tempStr = GetVal(o, "total_results")
                If tempStr = "" Then offCnt = 0 Else offCnt = CInt(tempStr)
            End If
            offset += 100
        Loop Until (offDone >= offCnt) Or offset > offCnt
        'NB second part of loop condition added because sometimes total_results is overstated, e.g. 08281981 produces 2 when there's only 1 officer
        If offCnt > 0 Then con.Execute("UPDATE organisations SET UKURI=False WHERE personID=" & orgID)
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetUKofficers failed", Err, "incID: " & co & vbCrLf & "orgID:" & orgID)
    End Sub

    Sub GetUKpage(URL As String, ByRef o As String, ByRef reset1 As Date, ByRef reset2 As Date, ByRef quota1 As Integer, ByRef quota2 As Integer)
        On Error GoTo repErr
        'This version uses the .NET HttpWebRequest object, but if a company is missing then it throws a 404 error and returns no response
        'so I code around that by returning an empty string o
        'See the problem by testing with missing Co 12971898

        'Fetch a page from UK Companies House API
        'URL is the virtual directory on the server
        'resetN is the UTC time at which UKCH resets the quota for keyN to 600
        Dim web As HttpWebRequest, resp As HttpWebResponse,
            b64key As String,
            tries, quota, keyNo As Integer,
            serverTime, resetTime, reset As Date
        o = ""
        If Left(URL, 1) = "/" Then URL = Mid(URL, 2)
        URL = "https://api.company-information.service.gov.uk/" & URL
        Do Until o <> "" 'Or tries >= 500
            Do
                On Error Resume Next
                'conservatively treat any attempted connection as a deduction from quota
                If quota1 = 0 And quota2 = 0 Then
                    'both quotas exhausted. Wait until the earliest reset
                    If reset1 <= reset2 Then
                        Call WaitNSec(DateDiff("s", Date.UtcNow, reset1)) 'wait, if positive
                        keyNo = 1
                        quota1 = 600
                    Else
                        Call WaitNSec(DateDiff("s", Date.UtcNow, reset2)) 'wait, if positive
                        keyNo = 2
                        quota2 = 600
                    End If
                End If
                'load-sharing approach
                If quota1 = 0 And reset1 < Date.UtcNow Then quota1 = 600
                If quota2 = 0 And reset2 < Date.UtcNow Then quota2 = 600
                If quota1 > quota2 Then
                    keyNo = 1
                    quota1 -= 1
                Else
                    keyNo = 2
                    quota2 -= 1
                End If
                b64key = GetKey(keyNo)
                web = CType(WebRequest.Create(URL), HttpWebRequest)
                web.Headers.Add("authorization", "Basic " & b64key)
                resp = CType(web.GetResponse, HttpWebResponse)
                If Err.Number = 0 Or InStr(Err.Description, "404") > 0 Then Exit Do
                resp.Dispose()
                tries += 1
                Console.WriteLine("Attempt " & tries & " failed " & Err.Description)
                Console.WriteLine("URL failed: " & URL)
                Call WaitNSec(5)
            Loop
            If InStr(Err.Description, "404") > 0 Then Exit Do 'Server has responded but cannot find page
            On Error GoTo repErr
            quota = CInt(resp.GetResponseHeader("X-Ratelimit-Remain"))
            'calculate number of seconds by which my server clock is ahead/(behind) CH server and add that to reset time with 2-second margin period
            serverTime = CDate(Mid(resp.GetResponseHeader("Date"), 6, 20)) 'remove weekday prefix and GMT suffix
            resetTime = DateAdd("s", CDbl(resp.GetResponseHeader("X-Ratelimit-Reset")) + DateDiff("s", serverTime, Date.UtcNow) + 2, "1/1/1970")
            If keyNo = 1 Then
                quota1 = quota
                reset1 = resetTime
            Else
                quota2 = quota
                reset2 = resetTime
            End If
            Console.WriteLine("Server time:" & vbTab & vbTab & vbTab & serverTime)
            Console.WriteLine("Key " & keyNo & " UTC reset time on my PC: " & vbTab & resetTime)
            Console.WriteLine("Key " & keyNo & " quota remaining:  " & quota)
            o = New StreamReader(resp.GetResponseStream).ReadToEnd
            If InStr(o, "503 Service Unavailable") + InStr(o, "502 Bad Gateway") + InStr(o, "Internal server error") +
                InStr(o, "Invalid Authorization") > 0 And InStr(o, "502 BAD GATEWAY MEDIA LTD") = 0 Then o = ""
            tries += 1
        Loop
        Exit Sub
repErr:
        ErrMail("GetUKpage failed", Err, URL & vbCrLf & o)
    End Sub

    Function GetKey(i As Integer) As String
        'returns a 56-character B64-encoded key. Get your keys by creating an "application" in the UKCH Developers portal
        'first create a free account at https://developer.company-information.service.gov.uk/signin
        'We hard-coded the B64 keys to save recomputing them
        'Generate the B64 encoded keys with the following function call in the Immediate window under ScraperKit.vb, where key is the UKCH key
        '?B64encode(key & ":")
        Return GetPrivate("UKkey" & i)
    End Function
    Function UKdom(co As String) As Integer
        'determine the domicile within the UK from the UK company number
        Select Case Left(co, 2)
            Case "NA", "NC", "NI", "NL", "NO", "NP", "NR", "NV", "NZ", "R0"
                Return 311 'Northern Ireland
            Case "SA", "SC", "SI", "SL", "SO", "SP", "SR", "SZ"
                Return 112 'Scotland
            Case "AC", "IC", "IP", "LP", "OC", "RC", "ZC"
                Return 116 'England & Wales
            Case "RS"
                Return 2 'UK
            Case Else
                If IsNumeric(Left(co, 2)) Then
                    Return 116 'England & Wales
                Else
                    UKdom = Nothing
                    Call SendMail("Unrecognised New UK company type:    " & co)
                    Stop
                End If
        End Select
    End Function
    Sub UKnameSplit(s As String, ByRef n1 As String, ByRef n2 As String)
        'find a UK officer's name from o, which has commas between parts, and return it in n1 and n2. n2 may be ""
        Dim x, p As Integer, t As String
        s = Trim(s)
        If s = "" Then Exit Sub
        'some strings have double commas inside - perhaps when a Chinese name has been entered as "other_forename" without a forename
        Do Until InStr(s, ",,") = 0
            s = Replace(s, ",,", ",")
        Loop
        'sometimes a backtick or forwardtick is used instead of an apostrophe in O'Brien etc
        s = Replace(s, "`", "'")
        s = Replace(s, "’", "'")
        'find the first lower-case character position
        For x = 1 To Len(s)
            t = Mid(s, x, 1)
            'first sub-clause ignores characters which are non-case, e.g. hyphens and spaces
            If StrComp(UCase(t), LCase(t), vbBinaryCompare) <> 0 And StrComp(LCase(t), t, vbBinaryCompare) = 0 Then Exit For
        Next
        If x > Len(s) Then x -= 1 'no lower case found
        'walk back to the previous comma
        p = InStrRev(s, ",", x)
        If p = 0 Then
            n1 = s
            n2 = ""
        Else
            n1 = Trim(Left(s, p - 1))
            n2 = Trim(Right(s, Len(s) - p))
            'if n1 contains a comma, then the first part is the surname and the rest is honours etc
            p = InStr(n1, ",")
            If p > 0 Then n1 = Left(n1, p - 1)
            'if n2 contains a comma, then the first part is the forenames and the rest is a title - discard it
            p = InStr(n2, ",")
            If p > 0 Then n2 = Left(n2, p - 1)
        End If
        'Found a surname enclosed in brackets in incID 05984344, which forced a null dn1 when it was stripped, so remove enclosing brackets
        If Left(n1, 1) = "(" And Right(n1, 1) = ")" Then n1 = Mid(n1, 2, Len(n1) - 2)
        n1 = StripSpace(n1)
        n2 = StripSpace(n2)
        n1 = RemHons(n1)
        n1 = RemTitles(n1)
        n2 = RemTitles(n2)
        n1 = ULname(n1, True)
        'n1 may have honours without a comma
        If n1 = "" Then
            n1 = n2
            n2 = ""
        End If
        'we found some names with hyphens next to spaces
        n1 = Replace(n1, " -", "-")
        n1 = Replace(n1, "- ", "-")
        n2 = Replace(n2, " -", "-")
        n2 = Replace(n2, "- ", "-")
        If n2 = "-" Or n2 = "." Then n2 = ""
        'Console.WriteLine(n1)
        'Console.WriteLine(n2)
    End Sub
    Sub InsertOrg(coName As String, incDateStr As String, disDateStr As String, dom As Integer, incID As String,
                  orgType As Integer, disMode As Integer, UKURI As String, ByRef orgID As Integer)
        'incDateStr, disDateStr are in MySQL format or empty
        'incID cannot be empty
        Dim con As New ADODB.Connection,
            domStr, orgTypeStr, disModeStr As String,
            incDate, disDate As Date
        Call OpenEnigma(con)
        orgID = 0
        If incDateStr <> "" Then incDate = CDate(incDateStr)
        If disDateStr <> "" Then disDate = CDate(disDateStr)
        Call NameResOrg(orgID, coName, incDate, disDate, dom, incID)
        If incDateStr = "" Then incDateStr = "NULL" Else incDateStr = "'" & incDateStr & "'"
        If disDateStr = "" Then disDateStr = "NULL" Else disDateStr = "'" & disDateStr & "'"
        If dom = 0 Then domStr = "NULL" Else domStr = dom.ToString
        If disMode = 0 Then disModeStr = "NULL" Else disModeStr = disMode.ToString
        If orgType = 0 Then orgTypeStr = "NULL" Else orgTypeStr = orgType.ToString
        If UKURI = "" Then UKURI = "NULL"
        If orgID = 0 Then
            'create a new org as nameResOrg did not find it
            con.Execute("INSERT INTO persons() VALUES ()")
            orgID = LastID(con)
            con.Execute("INSERT INTO organisations (personID,domicile,incID,Name1,orgType,incDate,disDate,disMode,UKURI,incUpd) " &
                "VALUES (" & orgID & "," & domStr & ",'" & incID & "','" & Apos(coName) & "'," & orgTypeStr &
                "," & incDateStr & "," & disDateStr & "," & disModeStr & "," & UKURI & ",NOW())")
        ElseIf orgType > 0 Or disMode > 0 Or UKURI <> "NULL" Then
            'we found and are using a match with same name, incDate,disDate,incID, dom. Now update it.
            con.Execute("UPDATE organisations SET orgType=" & orgType & ",disMode=" & disModeStr & ",UKURI=" & UKURI &
                        "incUpd=NOW() WHERE personID=" & orgID)
        End If
    End Sub
    Function RemHons(s As String) As String
        If s = "" Then Return ""
        s = Trim(s)
        'remove honours from a surname, unless the only word left is an honour, in which case it could be a real name (e.g. Ma, Obe)
        Dim x As Integer, con As New ADODB.Connection, rs As New ADODB.Recordset, t, h() As String
        'fetch the list of suffixes
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM ukhons", con)
        h = GetCol(rs, "ukhons")
        rs.Close()
        con.Close()
        con = Nothing
        Do
            x = Len(s)
            s = RemSuf(s, ".")
            For Each t In h
                s = RemSuf(s, t)
                If " " & s = t And s <> "OBE" And s <> "BA" And s <> "MA" And s <> "RA" And s <> "MBA" And s <> "ACA" And s <> "ACCA" Then
                    s = ""
                    Exit For
                End If
                'NB Ba,Ma,Mba,Ra and Obe are surnames so we won't remove that if it is the only surname
            Next
        Loop Until x = Len(s)
        Return Trim(s)
    End Function
    Function RemTitles(s As String) As String
        'remove titles from the front or end of a name
        'apply to either surnames or forenames
        Dim x As Integer, t As String
        If s <> "" Then
            s = Trim(s)
            Do
                x = Len(s)
                For Each t In {"-", ".", "Dr ", "Dr.", "Sir ", "Mr ", "Mr.", "Mrs ", "Mrs.", "Ms ", "Ms.", "Miss ", "Deceased "}
                    s = RemPref(s, t)
                    If s & " " = t And s <> "Sir" Then s = "" : Exit For
                    'NB Sir is also a given name, so can't strip unless it precedes something, e.g.
                    'https://beta.companieshouse.gov.uk/officers/6k12MutRK1KxRw-j7hj8uijjmSc/appointments
                Next
                For Each t In {".", " Miss", " Mr", " Mrs", " Dr", " Deceased", " N/A"}
                    s = RemSuf(s, t)
                Next
            Loop Until x = Len(s)
        End If
        Return Trim(s)
    End Function

    Function TheEnd(s As String) As String
        'If the definite article "The " is at the start, then put it at the end of the string and preserve its case
        If Left(s, 4) = "The " Then Return Trim(Right(s, Len(s) - 4) & " (" & Left(s, 3) & ")")
        If Right(s, 5) = "(The)" And Right(s, 6) <> " (The)" Then Return Left(s, Len(s) - 5) & " " & Right(s, 5) 'fix missing space in CH names
        Return s 'otherwise
    End Function
End Module
