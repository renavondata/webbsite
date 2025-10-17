Option Compare Text
Option Explicit On
Imports ScraperKit
Public Module persons
    Public Sub OneDirSum(Optional ByVal org As Integer = 0, Optional ByVal dir As Integer = 0)
        'REDUNDANT 2023-04-09 as we have now written stored procedures to generate directorship summaries when needed on the fly
        'rebuild the summary of one chain of directorships
        'call after changes to directorships
        'one but not both paramters can be omitted. To regenerate whole table use genDirSum()
        If org = 0 And dir = 0 Then Exit Sub
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, filter As String,
            resDate As Date,
            firstPos, lastPos, lastOrg, lastDir As Integer
        filter = ""
        If org > 0 Then filter = " AND company=" & org
        If dir > 0 Then filter = filter & " AND director=" & dir
        Call OpenEnigma(con)
        'purge all affected chains
        rs.Open("SELECT * FROM dirsum JOIN directorships ON firstPos=ID1" & filter, con)
        Do Until rs.EOF
            con.Execute("DELETE FROM dirSum WHERE firstPos=" & CStr(rs("firstPos").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        'now rebuild
        rs.Open("SELECT ID1,company,director,apptDate,resDate FROM directorships JOIN positions ON directorships.positionID=positions.positionID " &
                filter & " AND `rank`=1 ORDER BY company,director,apptDate", con)
        Do Until rs.EOF
            'establish first and last positions in chain
            firstPos = CInt(rs("ID1").Value)
            lastOrg = CInt(rs("Company").Value)
            lastDir = CInt(rs("Director").Value)
            Do
                lastPos = CInt(rs("ID1").Value)
                resDate = DBdate(rs("resDate"))
                rs.MoveNext()
                If rs.EOF Then Exit Do
                If IsDBNull(rs("apptDate").Value) Then Exit Do
            Loop Until CDate(rs("ApptDate").Value) <> resDate Or CInt(rs("Director").Value) <> lastDir Or CInt(rs("Company").Value) <> lastOrg
            con.Execute("INSERT INTO dirSum (firstPos,lastPos) VALUES (" & firstPos & "," & lastPos & ")")
            'Console.WriteLine(lastOrg & vbTab & lastDir & vbTab & firstPos & vbTab & lastPos & vbTab & apptDate & vbTab & resDate)
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Function GenderName(ByVal n As String, ByVal addNew As Boolean) As String
        'return M, F or Nothing for unknown gender, based on the majority (if any) of genders of names in the string
        'names must be delimited by space
        'set addNew=true to insert any new words and tag them as "C" for non-English until we correct manually
        'set addNew=false if we are just testing names in the search form, to avoid garbage
        'in the table, don't put a gender on ambiguous English names that might be Asian ones, like Lee and Kim
        'ignore words ending in ".", assumed to be abbreviations
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, ns() As String, count, x, y, w As Integer
        Call OpenEnigma(con)
        GenderName = Nothing
        n = Replace(n, "-", " ") 'to deal with compound names like Karl-Heinz, Anne-Marie
        n = Replace(n, ",", " ")
        n = StripSpace(n)
        'remove anything in brackets
        Do Until InStr(n, "(") = 0
            x = InStr(n, "(")
            y = InStr(x + 1, n, ")")
            If y = 0 Then y = Len(n)
            n = Trim(Left(n, x - 1)) & " " & Trim(Right(n, Len(n) - y))
            n = Trim(n)
        Loop
        If n = "" Then Exit Function
        count = 0
        ns = Split(n)
        w = UBound(ns)
        For x = 0 To w
            If (ns(x) = "St" Or ns(x) = "St.") And x < w Then
                'skip saints
                x += 1
            Else
                rs.Open("SELECT * FROM namesex WHERE name='" & Apos(ns(x)) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    If addNew Then
                        If Len(ns(x)) > 1 And Right(ns(x), 1) <> "." Then
                            ns(x) = UCase(Left(ns(x), 1)) & LCase(Right(ns(x), Len(ns(x)) - 1))
                            y = 1
                            'capitalise letter after hyphen
                            Do
                                y = InStr(y, ns(x), "-") + 1
                                If y = 1 Or y > Len(ns(x)) Then Exit Do
                                ns(x) = Left(ns(x), y - 1) & UCase(Mid(ns(x), y, 1)) & Right(ns(x), Len(ns(x)) - y)
                            Loop
                            rs.AddNew()
                            rs("Name").Value = ns(x)
                            rs("Sex").Value = "C" 'provisionally non-English
                            rs.Update()
                            Console.WriteLine("Added to name list: " & ns(x))
                        End If
                    End If
                Else
                    If CStr(rs("Sex").Value) = "M" Then
                        count += 1
                    ElseIf CStr(rs("Sex").Value) = "F" Then
                        count -= 1
                        'sex of a first name may also be "U" for unknown
                    End If
                End If
                rs.Close()
            End If
        Next
        con.Close()
        con = Nothing
        If count > 0 Then GenderName = "M"
        If count < 0 Then GenderName = "F"
    End Function

    Function MaskHKID(n1 As String, n2 As String, HKID As String) As String
        'extend forenames sufficiently to make the name pair unique, but mask 3 or less characters at end
        Dim mask As Integer, con As New ADODB.Connection, rs As New ADODB.Recordset, ext, sql, sql2 As String
        If Len(HKID) < 7 Then Return n2 'not long enough
        Call OpenEnigma(con)
        ext = ""
        If n2 = "" Then
            sql2 = "AND isNull(dn2)"
        Else
            sql2 = "AND dn2=stripext('" & Apos(n2) & "')"
        End If
        'match with or without hyphens
        For mask = 3 To 0 Step -1
            ext = "(HKID:" & Left(HKID, Len(HKID) - mask) & StrDup(mask, "X") & ")"
            'check wheter the mask matches. If it does, then loop to reveal an extra character
            sql = "SELECT EXISTS(SELECT * FROM people WHERE dn1=stripext('" & Apos(n1) & "') " & sql2 & " AND right(name2," & Len(ext) & ")='" & ext & "')"
            If Not CBool(con.Execute(sql).Fields(0).Value) Then Exit For
        Next
        Return Trim(n2 & " " & ext)
    End Function

    Public Sub NameResOrg(ByRef PersonID As Integer, ByRef Name As String, incDate As Date, disDate As Date, domicile As Integer, incID As String)
        'check before adding or updating a name - add tags to this name and/or others if needed
        'if we conclude that a match is the same co, then change submitted personID to the matching one
        'but don't submit a variable for personID if you don't want it changed, just submit 1 instead
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset, rename, incID2 As String,
            incDate2, disDate2 As Date, domicile2 As Integer
        Call OpenEnigma(con)
        rs.Open("SELECT personID,name1,domicile,incDate,disDate,incID from organisations WHERE name1=" &
                Sqv(Name) & " AND personID<>" & PersonID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        If Not rs.EOF Then
            'found clash
            'First try using disDate, which separates 2 companies with the same domicile unless the registrar allows
            'identical names for live companies (as UK has)
            'cannot cast from ADODB to nullable dates
            incDate2 = DBdate(rs("incDate"))
            disDate2 = DBdate(rs("disDate"))
            domicile2 = DBint(rs("domicile"))
            incID2 = rs("incID").Value.ToString
            If disDate2 <> disDate Then
                If disDate2 > Nothing Then
                    rs("Name1").Value = rs("Name1").Value.ToString & " (d" & MSdate(disDate2) & ")"
                    rs.Update()
                End If
                If disDate > Nothing Then Name = Name & " (d" & MSdate(disDate) & ")"
                'disdates are the same or null. Now try using domicile
            ElseIf domicile2 <> domicile Then
                If domicile2 > 0 Then
                    rename = CStr(rs("Name1").Value) & " (" & CStr(con.Execute("SELECT A2 FROM domiciles WHERE ID=" & domicile2).Fields(0).Value) & ")"
                    'check this is available
                    rs2.Open("SELECT * FROM organisations WHERE name1='" & Apos(rename) & "'", con)
                    If Not rs2.EOF Then
                        'name clash on domicile extension. Differentiate them with a recursive call
                        'they will have the same domicile, so NameResOrg will skip this and rename rs2 based on incDate or incID
                        'then we can use the returned rename with its additional extension
                        Call NameResOrg(1, rename, incDate2, disDate2, domicile2, incID2)
                    End If
                    rs2.Close()
                    rs("Name1").Value = rename
                    rs.Update()
                End If
                If domicile > 0 Then Name = Name & " (" & CStr(con.Execute("SELECT A2 FROM domiciles WHERE ID=" & domicile).Fields(0).Value) & ")"
                'now try using incDate
            ElseIf incDate2 <> incDate Then
                If incDate2 > Nothing Then
                    rs("Name1").Value = CStr(rs("Name1").Value) & " (b" & MSdate(incDate2) & ")"
                    rs.Update()
                End If
                If incDate > Nothing Then Name = Name & " (b" & MSdate(incDate) & ")"
                'now try using incID
            ElseIf incID2 <> incID Then
                If incID2 > "" Then
                    rs("Name1").Value = CStr(rs("Name1").Value) & " (incorp. ID:" & incID2 & ")"
                    rs.Update()
                End If
                If incID > "" Then Name = Name & " (incorp. ID:" & incID & ")"
                'now we have same or null incDate, disDate, domicile and incID
            Else
                'same name, same or null incDate, disDate, domicile and incID, so probably means that they are the same co
                PersonID = CInt(rs("PersonID").Value)
            End If
            'finally check that target name is still available after any extensions
            rs.Close()
            rs.Open("SELECT * FROM organisations WHERE Name1='" & Apos(Name) & "' AND personID<>" & PersonID, con)
            If Not rs.EOF Then
                'the extended name clashes with another name
                Call NameResOrg(PersonID, Name, incDate, disDate, domicile, incID)
            End If
        End If
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Function PplRes(n1 As String, n2 As String, Title As String, Sex As String, YOB As String, MOB As String, DOB As String,
                     YOD As String, MonD As String, DOD As String, Optional p As Integer = 0) As Integer
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            canAdd, clash As Boolean,
            n2ext, sql, sql2 As String,
            oldp As Integer
        'On Error GoTo repErr
        'If p is specified, then we will either rename that person to (n1,n2) with an extension if needed, or merge with a match
        'Using columns with clean names, dn1 and dn2, which are maintained with triggers. They replace hyphens with a space and have no extensions
        'try to find an existing human with same name and YOB-[MOB]-[DOB] or add a new one if no conflict
        'A new name must be unique without regard to hyphens, by appending YOB-[MOB]-[DOB] if needed
        'returns personID of new or existing target
        'If the call came from UKCH then arguments will be strings from JSON
        n2ext = ""
        If n1 = "N/A" Then
            n1 = n2
            n2 = ""
        End If
        oldp = p
        'conform names and cases
        n1 = ULname(n1, True)
        n2 = ULname(n2, False)
        Call OpenEnigma(con)
        'first check for name clash or match
        'use dn1, dn2 to search for matches with or without hyphens
        sql = "SELECT * FROM people WHERE personID<>" & p & " AND dn1=stripext('" & Apos(n1) & "') AND "
        'some people only have one name so name2 and dn2 are null
        If n2 = "" Then
            sql &= "isNull(dn2)"
        Else
            sql = sql & "dn2=stripext('" & Apos(n2) & "')"
        End If
        clash = True
        If Not CBool(con.Execute("SELECT EXISTS(" & sql & ")").Fields(0).Value) Then
            'no match
            canAdd = True
            clash = False
        ElseIf YOB > "" Then
            n2ext = Trim(n2 & AppBirth(YOB, MOB, DOB))
            sql2 = sql & " AND YOB=" & YOB
            If MOB = "" Then
                sql2 &= " AND ISNULL(MOB)"
            Else
                sql2 = sql2 & " AND MOB=" & MOB 'if MOB doesn't match then create a new person
                If DOB > "" Then sql2 = sql2 & " AND (isNull(DOB) Or DOB=" & DOB & ")" 'if DOB exists but is different then create a new person
            End If
            rs.Open(sql2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If rs.EOF Then
                'no match, so can add name with this extension
                canAdd = True
                n2 = n2ext
            Else
                If Len(n2) > Len(rs("dn2").Value.ToString) Then
                    'n2 has an extension
                    Do Until rs.EOF
                        If n2 = rs("Name2").Value.ToString Then Exit Do 'found match
                        rs.MoveNext()
                    Loop
                    If rs.EOF Then canAdd = True
                End If
                If Not canAdd Then
                    p = CInt(rs("PersonID").Value)
                    UpdateIfNull(rs("MonD"), MonD)
                    UpdateIfNull(rs("DOD"), DOD)
                    rs.Update()
                    clash = False
                End If
            End If
            rs.Close()
        ElseIf YOD > "" Then
            n2ext = Trim(n2 & AppDeath(YOD, MonD, DOD))
            sql2 = sql & " AND YOD=" & YOD
            If MonD = "" Then
                sql2 &= " AND ISNULL(MonD)"
            Else
                sql2 = sql2 & " AND MonD=" & MonD 'if MonD doesn't match then create a new person
                If DOD > "" Then sql2 = sql2 & " AND (isNull(DOD) Or DOD=" & DOD & ")" 'if DOD exists but is different then create a new person
            End If
            rs.Open(sql2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If rs.EOF Then
                'no match, so can add name with this extension
                canAdd = True
                n2 = n2ext
            Else
                If Len(n2) > Len(rs("dn2").Value.ToString) Then
                    'n2 has an extension
                    Do Until rs.EOF
                        If n2 = rs("Name2").Value.ToString Then Exit Do 'found match
                        rs.MoveNext()
                    Loop
                    If rs.EOF Then canAdd = True
                End If
                If Not canAdd Then
                    p = CInt(rs("PersonID").Value)
                    UpdateIfNull(rs("MonD"), MonD)
                    UpdateIfNull(rs("DOD"), DOD)
                    rs.Update()
                    clash = False
                End If
            End If
            rs.Close()
        ElseIf n2 > "" Then
            'new person or renamed has no YOB or YOD, but clashes with 1 or more existing persons
            'check for extension in proposed name
            n2ext = n2
            If Len(CleanName(n2)) < Len(n2) Then
                rs.Open("SELECT * FROM people WHERE name1='" & Apos(n1) & "' AND name2='" & Apos(n2) & "'", con)
                If rs.EOF Then
                    canAdd = True
                ElseIf p = 0 Then
                    'found person with matching name, but only return this if no p was specified
                    'it is too dangerous to just merge two people without matching YOB/YOD
                    p = CInt(rs("PersonID").Value)
                End If
                rs.Close()
            End If
        End If
        'Infer sex for insertion or update, in case needed
        If n2 > "" And Sex = "" Then Sex = GenderName(n2, True)
        'If n2 = "" Then
        '    'n2 = "NULL"
        'Else
        '    If Sex = "" Then Sex = GenderName(n2, True)
        '    'n2 = "'" & Apos(n2) & "'"
        'End If
        'If Sex = "" Then Sex = "NULL" Else Sex = "'" & Sex & "'"
        'If Title = "" Then Title = "NULL"
        'If YOB = "" Then YOB = "NULL"
        'If MOB = "" Then MOB = "NULL"
        'If DOB = "" Then DOB = "NULL"
        'If YOD = "" Then YOD = "NULL"
        'If MonD = "" Then MonD = "NULL"
        'If DOD = "" Then DOD = "NULL"
        If canAdd Then
            If p = 0 Then
                'insert new person into people
                con.Execute("INSERT INTO persons() VALUES ()")
                p = LastID(con)
                con.Execute("INSERT INTO people (personID,name1,name2,sex,titleID,YOB,MOB,DOB,YOD,MonD,DOD)" &
                            Valsql({p, n1, n2, Sex, Title, YOB, MOB, DOB, YOD, MonD, DOD}))
                'con.Execute("INSERT INTO people (personID,name1,name2,titleID,sex,YOB,MOB,DOB,YOD,MonD,DOD) VALUES (" & p & ",'" & Apos(n1) & "'," & n2 &
                '            "," & Title & "," & Sex & "," & YOB & "," & MOB & "," & DOB & "," & YOD & "," & MonD & "," & DOD & ")")
            Else
                'we specified a p
                'no matching person with same DOB/DOD, so rename the existing person (extended if needed)
                con.Execute("UPDATE people" & Setsql("name1,name2,sex,titleID,YOB,MOB,DOB,YOD,MonD,DOD",
                                                     {n1, n2, Sex, Title, YOB, MOB, DOB, YOD, MonD, DOD}) & "personID=" & p)
                'con.Execute("UPDATE people SET name1='" & Apos(n1) & "', name2=" & n2 & ",sex=" & Sex & ",titleID=" & Title &
                '             ",YOB=" & YOB & ",MOB=" & MOB & ",DOB=" & DOB & ",YOD=" & YOD & ",MonD=" & MonD & ",DOD=" & DOD & " WHERE personID=" & p)
            End If
        ElseIf oldp > 0 Then
            'we specified oldp, but couldn't rename due to matching person (p) with same DOB/DOD, so merge to the oldest personID
            'if the oldperson had neither YOB nor YOD, then p=oldp and nothing will happen as merging is too dangerous
            If p > oldp Then
                Call CombinePpl(oldp, p, False)
                Console.WriteLine("merged " & p & " into " & oldp)
                p = oldp
            ElseIf p < oldp Then
                Call CombinePpl(p, oldp, False)
                Console.WriteLine("merged " & oldp & " into " & p)
                sql = sql & " AND personID<>" & p 'exclude the found person
            End If
            'now see if there are any remaining clashes
            clash = CBool(con.Execute("SELECT EXISTS(" & sql & ")").Fields(0).Value)
        End If
        If clash Then
            n2 = "'" & Apos(n2ext) & "'"
            'now extend any other matched unextended person(s) if possible
            rs.Open(sql & " AND (LENGTH(name2)=LENGTH(dn2) or isNull(name2))", con)
            Do Until rs.EOF
                Call PplExtend(CInt(rs("PersonID").Value))
                rs.MoveNext()
            Loop
            rs.Close()
        End If
        'finally, rename the merged person, if any
        If oldp > 0 And Not canAdd Then con.Execute("UPDATE people" & Setsql("name1,name2,sex,titleID,YOB,MOB,DOB,YOD,MonD,DOD",
                                                                             {n1, n2, Sex, Title, YOB, MOB, DOB, YOD, MonD, DOD}) & "personID=" & p)
        'If oldp > 0 And Not canAdd Then con.Execute("UPDATE people SET name1='" & Apos(n1) & "', name2=" & n2 & ",sex=" & Sex & ",titleID=" & Title &
        '                                            ",YOB=" & YOB & ",MOB=" & MOB & ",DOB=" & DOB & ",YOD=" & YOD & ",MonD=" & MonD & ",DOD=" & DOD & " WHERE personID=" & p)
        con.Close()
        con = Nothing
        Return p
repErr:
        Call ErrMail("PplRes failed", Err, "n1=" & n1 & vbCrLf & "n2=" & n2)
    End Function
    Function PplResOLD(n1 As String, n2 As String, Title As String, Sex As String, YOB As String, MOB As String, DOB As String,
                     YOD As String, MonD As String, DOD As String, Optional p As Integer = 0) As Integer
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            canAdd, clash As Boolean,
            n2ext, sql, sql2 As String,
            oldp As Integer
        'On Error GoTo repErr
        'If p is specified, then we will either rename that person to (n1,n2) with an extension if needed, or merge with a match
        'Using columns with clean names, dn1 and dn2, which are maintained with triggers. They replace hyphens with a space and have no extensions
        'try to find an existing human with same name and YOB-[MOB]-[DOB] or add a new one if no conflict
        'A new name must be unique without regard to hyphens, by appending YOB-[MOB]-[DOB] if needed
        'returns personID of new or existing target
        'If the call came from UKCH then arguments will be strings from JSON
        n2ext = ""
        If n1 = "N/A" Then
            n1 = n2
            n2 = ""
        End If
        oldp = p
        'conform names and cases
        n1 = ULname(n1, True)
        n2 = ULname(n2, False)
        Call OpenEnigma(con)
        'first check for name clash or match
        'use dn1, dn2 to search for matches with or without hyphens
        sql = "SELECT * FROM people WHERE personID<>" & p & " AND dn1=stripext('" & Apos(n1) & "') AND "
        'some people only have one name so name2 and dn2 are null
        If n2 = "" Then
            sql &= "isNull(dn2)"
        Else
            sql = sql & "dn2=stripext('" & Apos(n2) & "')"
        End If
        clash = True
        If Not CBool(con.Execute("SELECT EXISTS(" & sql & ")").Fields(0).Value) Then
            'no match
            canAdd = True
            clash = False
        ElseIf YOB > "" Then
            n2ext = Trim(n2 & AppBirth(YOB, MOB, DOB))
            sql2 = sql & " AND YOB=" & YOB
            If MOB = "" Then
                sql2 &= " AND ISNULL(MOB)"
            Else
                sql2 = sql2 & " AND MOB=" & MOB 'if MOB doesn't match then create a new person
                If DOB > "" Then sql2 = sql2 & " AND (isNull(DOB) Or DOB=" & DOB & ")" 'if DOB exists but is different then create a new person
            End If
            rs.Open(sql2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If rs.EOF Then
                'no match, so can add name with this extension
                canAdd = True
                n2 = n2ext
            Else
                If Len(n2) > Len(rs("dn2").Value.ToString) Then
                    'n2 has an extension
                    Do Until rs.EOF
                        If n2 = rs("Name2").Value.ToString Then Exit Do 'found match
                        rs.MoveNext()
                    Loop
                    If rs.EOF Then canAdd = True
                End If
                If Not canAdd Then
                    p = CInt(rs("PersonID").Value)
                    UpdateIfNull(rs("MonD"), MonD)
                    UpdateIfNull(rs("DOD"), DOD)
                    rs.Update()
                    clash = False
                End If
            End If
            rs.Close()
        ElseIf YOD > "" Then
            n2ext = Trim(n2 & AppDeath(YOD, MonD, DOD))
            sql2 = sql & " AND YOD=" & YOD
            If MonD = "" Then
                sql2 &= " AND ISNULL(MonD)"
            Else
                sql2 = sql2 & " AND MonD=" & MonD 'if MonD doesn't match then create a new person
                If DOD > "" Then sql2 = sql2 & " AND (isNull(DOD) Or DOD=" & DOD & ")" 'if DOD exists but is different then create a new person
            End If
            rs.Open(sql2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If rs.EOF Then
                'no match, so can add name with this extension
                canAdd = True
                n2 = n2ext
            Else
                If Len(n2) > Len(rs("dn2").Value.ToString) Then
                    'n2 has an extension
                    Do Until rs.EOF
                        If n2 = rs("Name2").Value.ToString Then Exit Do 'found match
                        rs.MoveNext()
                    Loop
                    If rs.EOF Then canAdd = True
                End If
                If Not canAdd Then
                    p = CInt(rs("PersonID").Value)
                    UpdateIfNull(rs("MonD"), MonD)
                    UpdateIfNull(rs("DOD"), DOD)
                    rs.Update()
                    clash = False
                End If
            End If
            rs.Close()
        ElseIf n2 > "" Then
            'new person or renamed has no YOB or YOD, but clashes with 1 or more existing persons
            'check for extension in proposed name
            n2ext = n2
            If Len(CleanName(n2)) < Len(n2) Then
                rs.Open("SELECT * FROM people WHERE name1='" & Apos(n1) & "' AND name2='" & Apos(n2) & "'", con)
                If rs.EOF Then
                    canAdd = True
                ElseIf p = 0 Then
                    'found person with matching name, but only return this if no p was specified
                    'it is too dangerous to just merge two people without matching YOB/YOD
                    p = CInt(rs("PersonID").Value)
                End If
                rs.Close()
            End If
        End If
        'prepare n2 and sex for insertion or update, in case needed
        If n2 = "" Then
            n2 = "NULL"
        Else
            If Sex = "" Then Sex = GenderName(n2, True)
            n2 = "'" & Apos(n2) & "'"
        End If
        If Sex = "" Then Sex = "NULL" Else Sex = "'" & Sex & "'"
        If Title = "" Then Title = "NULL"
        If YOB = "" Then YOB = "NULL"
        If MOB = "" Then MOB = "NULL"
        If DOB = "" Then DOB = "NULL"
        If YOD = "" Then YOD = "NULL"
        If MonD = "" Then MonD = "NULL"
        If DOD = "" Then DOD = "NULL"
        If canAdd Then
            If p = 0 Then
                'insert new person into people
                con.Execute("INSERT INTO persons() VALUES ()")
                p = LastID(con)
                con.Execute("INSERT INTO people (personID,name1,name2,titleID,sex,YOB,MOB,DOB,YOD,MonD,DOD) VALUES (" & p & ",'" & Apos(n1) & "'," & n2 &
                            "," & Title & "," & Sex & "," & YOB & "," & MOB & "," & DOB & "," & YOD & "," & MonD & "," & DOD & ")")
            Else
                'we specified a p
                'no matching person with same DOB/DOD, so rename the existing person (extended if needed)
                con.Execute("UPDATE people SET name1='" & Apos(n1) & "', name2=" & n2 & ",sex=" & Sex & ",titleID=" & Title &
                             ",YOB=" & YOB & ",MOB=" & MOB & ",DOB=" & DOB & ",YOD=" & YOD & ",MonD=" & MonD & ",DOD=" & DOD & " WHERE personID=" & p)
            End If
        ElseIf oldp > 0 Then
            'we specified oldp, but couldn't rename due to matching person (p) with same DOB/DOD, so merge to the oldest personID
            'if the oldperson had neither YOB nor YOD, then p=oldp and nothing will happen as merging is too dangerous
            If p > oldp Then
                Call CombinePpl(oldp, p, False)
                Console.WriteLine("merged " & p & " into " & oldp)
                p = oldp
            ElseIf p < oldp Then
                Call CombinePpl(p, oldp, False)
                Console.WriteLine("merged " & oldp & " into " & p)
                sql = sql & " AND personID<>" & p 'exclude the found person
            End If
            'now see if there are any remaining clashes
            clash = CBool(con.Execute("SELECT EXISTS(" & sql & ")").Fields(0).Value)
        End If
        If clash Then
            n2 = "'" & Apos(n2ext) & "'"
            'now extend any other matched unextended person(s) if possible
            rs.Open(sql & " AND (LENGTH(name2)=LENGTH(dn2) or isNull(name2))", con)
            Do Until rs.EOF
                Call PplExtend(CInt(rs("PersonID").Value))
                rs.MoveNext()
            Loop
            rs.Close()
        End If
        'finally, rename the merged person, if any
        If oldp > 0 And Not canAdd Then con.Execute("UPDATE people SET name1='" & Apos(n1) & "', name2=" & n2 & ",sex=" & Sex & ",titleID=" & Title &
                                                    ",YOB=" & YOB & ",MOB=" & MOB & ",DOB=" & DOB & ",YOD=" & YOD & ",MonD=" & MonD & ",DOD=" & DOD & " WHERE personID=" & p)
        con.Close()
        con = Nothing
        Return p
repErr:
        Call ErrMail("PplRes failed", Err, "n1=" & n1 & vbCrLf & "n2=" & n2)
    End Function
    Sub CombinePersons(p1 As Integer, p2 As Integer)
        'common to CombinePpl and CombineOrgs in Access version
        Dim con As New ADODB.Connection
        Call OpenEnigma(con)
        con.Execute("UPDATE directorships SET director=" & p1 & " WHERE director=" & p2)
        con.Execute("UPDATE ukppl SET personID=" & p1 & " WHERE personID=" & p2)
        con.Execute("UPDATE donations SET donor=" & p1 & " WHERE donor=" & p2)
        con.Execute("UPDATE ess SET orgID=" & p1 & " WHERE orgID=" & p2)
        con.Execute("UPDATE ccass.participants SET personID=" & p1 & " WHERE personID=" & p2)
        con.Execute("INSERT IGNORE INTO sholdings(issueID,holderID,atDate,heldAs,shares,stake) " &
                     "SELECT issueID," & p1 & ",atDate,heldAs,shares,stake FROM sholdings WHERE holderID=" & p2)
        con.Execute("INSERT IGNORE INTO personstories(personID,storyID) SELECT " & p1 & ",storyID FROM personstories WHERE personID=" & p2)
        con.Execute("INSERT IGNORE INTO web(personID,URL,source) SELECT " & p1 & ",URL,source FROM web WHERE personID=" & p2)
        con.Close()
        con = Nothing
    End Sub

    Sub CombinePpl(p1 As Integer, p2 As Integer, check As Boolean)
        'Combine the entries of person 2 with person 1 then delete person 2
        If p1 = p2 Then Exit Sub
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT * From People WHERE PersonID=" & p1, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        rs2.Open("SELECT * From People WHERE PersonID=" & p2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        If check Then
            If {"FM", "MF"}.Contains(rs("Sex").Value.ToString & rs2("Sex").Value.ToString) Then 'gender clash
                con.Close()
                con = Nothing
                Exit Sub
            End If
            If DbDiff(rs("YOB").Value.ToString, rs2("YOB").Value.ToString) Or
                DbDiff(rs("MOB").Value.ToString, rs2("MOB").Value.ToString) Or
                DbDiff(rs("DOB").Value.ToString, rs2("DOB").Value.ToString) Then
                con.Close()
                con = Nothing
                Exit Sub
            End If
            If DbDiff(rs("YOD").Value.ToString, rs2("YOD").Value.ToString) Or
                DbDiff(rs("MonD").Value.ToString, rs2("MonD").Value.ToString) Or
                DbDiff(rs("DOD").Value.ToString, rs2("DOD").Value.ToString) Then
                con.Close()
                con = Nothing
                Exit Sub
            End If
        End If
        If DbDiff(rs("SFCID").Value.ToString, rs2("SFCID").Value.ToString) Or
            DbDiff(rs("HKID").Value.ToString, rs2("HKID").Value.ToString) Then
            con.Close()
            con = Nothing
            Exit Sub
        End If
        Call MergeFields(rs, rs2, {"cName", "Sex", "TitleID", "SFCID", "HKID", "SFClastDate", "YOB", "MOB", "DOB", "YOD", "MonD", "DOD", "HKIDsource"})
        rs("SFCupd").Value = DBNull.Value 'force an update run next time if person has SFCID
        rs2.Update() 'this goes before rs to avoid unique index violation on SFCID and HKID
        rs2.Close()
        rs.Update()
        rs.Close()
        'Call OneDirSum(, p1)
        con.Execute("UPDATE alias SET personID=" & p1 & " WHERE personID=" & p2)
        con.Execute("UPDATE compos SET dirID=" & p1 & " WHERE dirID=" & p2)
        con.Execute("UPDATE licrec SET staffID=" & p1 & " WHERE staffID=" & p2)
        con.Execute("UPDATE lsppl SET personID=" & p1 & " WHERE personID=" & p2)
        con.Execute("UPDATE pay SET pplID=" & p1 & " WHERE pplID=" & p2)
        con.Execute("UPDATE sdi SET dir=" & p1 & " WHERE dir=" & p2)
        con.Execute("UPDATE ukppl SET personID=" & p1 & " WHERE personID=" & p2)
        rs.Open("SELECT * FROM relatives WHERE Rel1=" & p2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        Do Until rs.EOF
            rs2.Open("SELECT * FROM relatives WHERE (Rel1=" & p1 & " AND Rel2=" & rs("Rel2").Value.ToString & ") OR " &
                      "(Rel1=" & rs("Rel2").Value.ToString & " AND Rel2=" & p1 & ")", con)
            If rs2.EOF Then
                'they are not already related
                rs("Rel1").Value = p1
                rs.Update()
            Else
                'they are already related
                rs.Delete()
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        rs.Open("SELECT * FROM relatives WHERE Rel2=" & p2, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        Do Until rs.EOF
            rs2.Open("SELECT * FROM relatives WHERE (Rel2=" & p1 & " AND Rel1=" & rs("Rel1").Value.ToString & ") OR " &
                      "(Rel1=" & rs("Rel1").Value.ToString & " AND Rel2=" & p1 & ")", con)
            If rs2.EOF Then
                'they are not already related
                rs("Rel2").Value = p1
                rs.Update()
            Else
                'they are already related
                rs.Delete()
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        Call CombinePersons(p1, p2)
        rs = Nothing
        rs2 = Nothing
        'now delete p2
        con.Execute("DELETE FROM Persons WHERE PersonID=" & p2)
        'this will cascade to the People table
        con.Execute("INSERT INTO mergedpersons(oldp,newp) VALUES (" & p2 & "," & p1 & ")")
        con.Close()
        con = Nothing
    End Sub
    Sub MergeField(ByRef rs1 As ADODB.Recordset, ByRef rs2 As ADODB.Recordset, f As String)
        'if the field in rs1 is null then take the value from rs2
        If IsDBNull(rs1(f).Value) Then rs1(f).Value = rs2(f).Value
        rs2(f).Value = DBNull.Value
    End Sub
    Sub MergeFields(ByRef rs1 As ADODB.Recordset, ByRef rs2 As ADODB.Recordset, a() As String)
        'merge multiple fields
        Dim s As String
        For Each s In a
            Call MergeField(rs1, rs2, s)
        Next
    End Sub
    Function ExtendOthers(n1 As String, n2 As String, n2a As String, cn As String, SFCID As String) As Integer
        'called by LSHK and SFC routines. n2a is the proposed extended name if needed
        'If there are matching names then choose the extended name n2a and extend any unextended matching names
        'add the new human and return personID
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, sex, sql As String, p As Integer
        Call OpenEnigma(con)
        If n2 = "" Then
            sex = Nothing
            sql = "ISNULL(dn2)"
        Else
            sex = GenderName(n2, True)
            sql = "dn2=stripext('" & Apos(n2) & "')"
        End If
        sql = "SELECT * FROM people WHERE dn1=stripext('" & Apos(n1) & "') AND " & sql
        rs.Open(sql, con)
        If Not rs.EOF Then
            'name clash
            n2 = n2a
            rs.Close()
            'extend unextended names, but don't touch extended ones in case they are customised
            rs.Open(sql & " AND (LENGTH(name2)=LENGTH(dn2) OR ISNULL(dn2))", con)
            Do Until rs.EOF
                Call PplExtend(CInt(rs("PersonID").Value))
                rs.MoveNext()
            Loop
        End If
        rs.Close()
        con.Execute("INSERT INTO persons() VALUES ()")
        p = LastID(con)
        con.Execute("INSERT INTO people (personID,sex,name1,name2,cName,SFCID)" & Valsql({p, sex, n1, n2, cn, SFCID}))
        con.Close()
        con = Nothing
        Return p
    End Function
    Public Sub PplExtend(ByVal p As Integer, Optional ByRef hint As String = "")
        'extend the name of a natural person with no current extension, if a unique name is possible
        'hint is used to return a message in the desktop environment
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            ext, n1, n2, sql As String, done As Boolean
        Call OpenEnigma(con)
        With rs
            .Open("SELECT * FROM people p WHERE p.personID=" & p, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            n1 = rs("Name1").Value.ToString
            If Not IsDBNull(rs("Name2").Value) Then n2 = TrimName(rs("Name2").Value.ToString) Else n2 = Nothing
            sql = "SELECT EXISTS(SELECT personID FROM people WHERE personID<>" & p & " AND name1='" & Apos(n1) & "' AND name2='"
            'first try birth
            If Not IsDBNull(rs("YOB").Value) Then
                ext = AppBirth(rs("YOB").Value.ToString, rs("MOB").Value.ToString, rs("DOB").Value.ToString)
                If Not CBool(con.Execute(sql & Trim(Apos(n2) & ext) & "')").Fields(0).Value) Then
                    rs("Name2").Value = Trim(n2 & ext)
                    .Update()
                    done = True
                End If
            End If
            'now try death
            If (Not done) And (Not IsDBNull(rs("YOD").Value)) Then
                ext = AppDeath(rs("YOD").Value.ToString, rs("MonD").Value.ToString, rs("DOD").Value.ToString)
                If Not CBool(con.Execute(sql & Trim(Apos(n2) & ext) & "')").Fields(0).Value) Then
                    rs("Name2").Value = Trim(n2 & ext)
                    .Update()
                    done = True
                End If
            End If
            'now try local HK factors: SFCID, HKID or LSHK
            If Not done Then
                If Not IsDBNull(rs("SFCID").Value) Then
                    rs("Name2").Value = Trim(n2 & " " & "(SFC:" & CStr(rs("SFCID").Value) & ")")
                    .Update()
                    done = True
                ElseIf Not IsDBNull(rs("HKID").Value) Then
                    rs("Name2").Value = MaskHKID(n1, n2, CStr(rs("HKID").Value))
                    .Update()
                    done = True
                Else
                    rs2.Open("SELECT admHK,admAcc FROM lsppl WHERE personID=" & p & " ORDER BY lastSeen DESC LIMIT 1", con)
                    If Not rs2.EOF Then ext = MSdate(CDate(rs2("admHK").Value), CByte(rs2("admAcc").Value)) Else ext = ""
                    rs2.Close()
                    If ext <> "" Then
                        ext = " (LSHK:" & ext & ")"
                        If Not CBool(con.Execute(sql & Trim(Apos(n2) & ext) & "')").Fields(0).Value) Then
                            rs("Name2").Value = Trim(n2 & ext)
                            .Update()
                            done = True
                        End If
                    End If
                End If
            End If
            .Close()
        End With
        If Not done Then hint = "Unable to make a unique name."
        rs = Nothing
        rs2 = Nothing
        con.Close()
        con = Nothing
    End Sub

    Function AppBirth(y As String, m As String, d As String) As String
        'y is required, otherwise result is " ()"
        Return AppDate(y, m, d, False)
    End Function

    Function AppDeath(y As String, m As String, d As String) As String
        'y is required, otherwise result is " (d)"
        Return AppDate(y, m, d, True)
    End Function
    Function AppDate(y As String, m As String, d As String, death As Boolean) As String
        'create birth or death appendix for names, preceded by space. Use zero for unknown month/date
        Dim s As String
        If death Then s = " (d" Else s = " ("
        If y <> "" Then
            s &= y
            If m <> "" Then
                s = s & "-" & Right("0" & m, 2)
                If d <> "" Then s = s & "-" & Right("0" & d, 2)
            End If
        End If
        s &= ")"
        AppDate = s
    End Function
End Module
