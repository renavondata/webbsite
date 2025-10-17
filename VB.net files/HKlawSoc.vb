Option Compare Text
Option Explicit On
Imports ScraperKit
Imports persons
Module HKlawSoc
    Sub Main()
        Call UpdLawSoc()
    End Sub
    Sub BugFix(appd As String, resd As String, source As Integer)
        'thousands of positions were removed and added back, probably due to the LS server going down
        'we've fixed one pair (appd 2023-05-06, resd 2023-05-05)
        'source 1 = solicitors in practice 2 = not in practice
        'so we match up the directorships, remove the new one, and copy the resDate (if any) back to the old one, merging them
        Dim sql, r1, r2, d2res, d2resAcc As String, con As New ADODB.Connection, rs As New ADODB.Recordset, x As Integer
        'sql = "Select d1.ID1 r1,d2.ID1 r2,d1.resDate resDate,d1.resAcc resAcc from directorships d1 JOIN directorships d2 On d1.director=d2.director And d1.company=d2.company And d1.positionID=d2.positionID " &
        '    "And d1.source=" & source & " And d2.source=" & source & " And d1.ID1<>d2.ID1 WHERE d1.apptDate='" & appd & "' AND d2.resDate='" & resd & "'"
        'version in which a partner with a different position ID was changed to partner
        'sql = "Select d1.ID1 r1,d2.ID1 r2,d1.resDate resDate,d1.resAcc resAcc from directorships d1 JOIN directorships d2 On d1.director=d2.director And d1.company=d2.company " &
        '    "AND d1.source=" & source & " And d2.source=" & source & " And d1.ID1<>d2.ID1 WHERE d1.apptDate='" & appd & "' AND d2.resDate='" & resd & "' " &
        '    "AND d1.positionID=348 AND d2.positionID IN(select positionID from positions where poslong like '%Partner%')"
        'version in which a consultant with a different position ID was changed to consultant
        sql = "Select d1.ID1 r1,d2.ID1 r2,d1.resDate resDate,d1.resAcc resAcc from directorships d1 JOIN directorships d2 On d1.director=d2.director And d1.company=d2.company " &
            "AND d1.source=" & source & " And d2.source=" & source & " And d1.ID1<>d2.ID1 WHERE d1.apptDate='" & appd & "' AND d2.resDate='" & resd & "' " &
            "AND d1.positionID=124 AND d2.positionID IN(select positionID from positions where poslong like '%Consultant%')"
        Call OpenEnigma(con)
        rs.Open(sql, con)
        Do Until rs.EOF
            x += 1
            r1 = rs("r1").Value.ToString
            r2 = rs("r2").Value.ToString
            d2res = MSdate(DBdate(rs("resDate")))
            If d2res = "" Then d2resAcc = "NULL" Else d2resAcc = rs("resAcc").Value.ToString
            'Console.WriteLine(x & vbTab & ID1 & vbTab & ID2 & vbTab & d2res)
            sql = "UPDATE directorships SET resDate=" & If(d2res = "", "NULL", "'" & d2res & "'") & ",resAcc=" & d2resAcc & " WHERE ID1=" & r2
            Console.WriteLine(x & vbTab & sql)
            con.Execute(sql)
            sql = "DELETE FROM directorships WHERE ID1=" & r1
            Console.WriteLine(x & vbTab & sql)
            con.Execute(sql)
            rs.MoveNext()
        Loop
    End Sub
    Sub UpdLawSoc()
        On Error GoTo repErr
        'call daily to update lawSoc records
        'do a complete pass of HK solicitors then kill records for those not found
        Dim nowTime As Date, con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            n1, n2, n2ext, cn, dtStr, sql As String,
            p, x As Integer
        Call OpenEnigma(con)
        con.CommandTimeout = 480 'prevents long query timing out
        nowTime = Now()
        Call PutLog("LawSocStarted", MSdateTime(nowTime))
        dtStr = "'" & MSdateTime(nowTime) & "'"
        'find new orgs, renames, kill old orgs
        Call GetAllLSorgs()
        'get HK lawyers with practising certs
        Call GetLSpeople(True)
        'get HK lawyers without practising certs
        Call GetLSpeople(False)
        'match the employer names of non law-firms if possible
        Call MatchLSemps()
        'set dead posts, lsppl not found in this pass
        'this is needed because if a person has disappeared altogether, then getLSpeople won't notice that they've gone
        con.Execute("UPDATE lsposts SET dead=True WHERE lastSeen<" & dtStr)
        con.Execute("UPDATE lsjobs SET dead=True WHERE lastSeen<" & dtStr)
        con.Execute("UPDATE lsppl SET dead=True WHERE lastSeen<" & dtStr)
        'attempt to set personIDs for people with same name and admission date
        'can't assume the old lsppl is dead, because we may have scraped while they were updating so we caught both the old one
        'and the new one, before the old one was deleted
        con.Execute("UPDATE lsppl p1 JOIN lsppl p2 ON p1.name1=p2.name1 AND (p1.name2=p2.name2 OR (isNull(p1.name2) AND isNull(p2.name2))) AND p1.admHK=p2.admHK " &
            "AND p1.lsid<>p2.lsid AND p2.dead=False AND (NOT isnull(p1.personID)) and isnull(p2.personID) " &
            "SET p2.personID=p1.personID;")
        'for new lsppl whose name has changed, find the personID based on former name
        con.Execute("UPDATE lsppl p1 JOIN (lsalias a,lsppl p2) " &
            "ON p1.lsid=a.lsid AND p1.lsid<>p2.lsid AND a.aliase=p2.lsename AND p1.admHK=p2.admHK AND p1.dead=False AND p2.dead " &
            "AND isNull(p1.personID) AND Not isNull(p2.personID) " &
            "SET p1.personID=p2.personID;")
        'set the personID in lsppl if we match a name in directorships of law firms
        rs.Open("SELECT lo.personID orgID,p.lsid, p.name1,p.name2 FROM lsposts lp JOIN(lsppl p,lsorgs lo) ON lp.lsppl=p.lsid AND lp.lsorg=lo.lsid " &
                "WHERE lp.dead=False AND isNull(p.personID)", con)
        Do Until rs.EOF
            n1 = Apos(rs("name1").Value.ToString)
            n2 = Apos(rs("name2").Value.ToString)
            If n2 = "" Then
                sql = " AND isNull(dn2)"
            Else
                sql = " AND (p.dn2=stripext('" & n2 & "') OR " &
                     "p.dn2 Like CONCAT('% ',stripext('" & n2 & "')) OR " &
                     "p.dn2 Like CONCAT(stripext('" & n2 & "'),' %'))"
            End If
            rs2.Open("SELECT DISTINCT personID FROM directorships d JOIN people p ON d.director=p.PersonID WHERE Company=" &
                     CStr(rs("orgID").Value) & " AND p.dn1='" & n1 & "'" & sql, con)
            If Not rs2.EOF Then
                con.Execute("UPDATE lsppl SET personID=" & CStr(rs2("personID").Value) & " WHERE lsid=" & CStr(rs("lsid").Value))
                Console.WriteLine("Matched:" & CStr(rs2("personID").Value) & n1 & "," & n2)
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        'set the personID in lsppl if we match a name in directorships of non-law firms
        rs.Open("SELECT lo.personID orgID,p.lsid,p.name1,p.name2 FROM lsjobs lp JOIN(lsppl p ,lsemps lo) ON lp.lsppl=p.lsid AND lp.empID=lo.ID " &
                "WHERE lp.dead=False AND isNull(p.personID) AND NOT isnull(lo.personID)", con)
        Do Until rs.EOF
            n1 = Apos(rs("name1").Value.ToString)
            n2 = Apos(rs("name2").Value.ToString)
            If n2 = "" Then
                sql = " AND isNull(dn2)"
            Else
                sql = " AND (p.dn2=stripext('" & n2 & "') OR " &
                     "p.dn2 Like CONCAT('% ',stripext('" & n2 & "')) OR " &
                     "p.dn2 Like CONCAT(stripext('" & n2 & "'),' %'))"
            End If
            rs2.Open("SELECT DISTINCT personID FROM directorships d JOIN people p ON d.director=p.PersonID WHERE Company=" &
                     CStr(rs("orgID").Value) & " AND p.dn1='" & n1 & "'" & sql, con)
            If Not rs2.EOF Then
                con.Execute("UPDATE lsppl SET personID=" & CStr(rs2("personID").Value) & " WHERE lsid=" & CStr(rs("lsid").Value))
                Console.WriteLine("Matched:" & CStr(rs2("personID").Value) & n1 & "," & n2)
            End If
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        'add personIDs of new people
        rs.Open("SELECT * FROM lsppl WHERE dead=False AND ISNULL(personID) ORDER BY name1,name2", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        Do Until rs.EOF
            n1 = rs("Name1").Value.ToString
            n2 = rs("Name2").Value.ToString
            cn = rs("cName").Value.ToString
            n2ext = Trim(n2 & " (LSHK:" & MSdate(CDate(rs("admHK").Value), 2) & ")")
            'lawyer may already be in database with LSHK extension, due to old LSID series
            p = CInt(con.Execute("SELECT IFNULL((SELECT personID FROM people WHERE name1='" & Apos(n1) & "' AND name2='" & Apos(n2ext) & "'), 0)").Fields(0).Value)
            If p = 0 Then
                p = ExtendOthers(n1, n2, n2ext, cn, Nothing)
                x += 1
                Console.WriteLine("inserted " & x & vbTab & p & vbTab & n1 & vbTab & n2)
            End If
            rs("PersonID").Value = p
            rs.Update()
            rs.MoveNext()
        Loop
        rs.Close()
        'now we have a complete set of lawyers. Insert any new aliases from lsalias into main table
        Call ProcLSaliases(nowTime)
        'now do directorships and dirsum amendments
        'first add the missing law-firm positions
        rs.Open("SELECT lo.personID AS orgID,lp.personID as pplID,posID,ps.firstSeen FROM lsposts ps JOIN(lsppl lp,lsorgs lo,lsroles lr) " &
            "ON ps.lsppl=lp.lsid AND ps.lsorg=lo.lsid AND ps.post=lr.ID AND ps.dead=False AND Not isnull(lo.personID) " &
            "LEFT JOIN (directorships d JOIN positions pn ON d.positionID=pn.positionID AND isnull(resDate)) " &
            "ON lo.personID=company AND lp.personID=director AND pn.LSrole=post " &
            "WHERE isnull(d.ID1) ORDER BY orgID,pplID;", con)
        x = 0
        Do Until rs.EOF
            x += 1
            con.Execute("INSERT INTO directorships(company,director,positionID,source,apptDate,apptAcc) VALUES (" &
        CStr(rs("OrgID").Value) & "," & CStr(rs("pplID").Value) & "," & CStr(rs("posID").Value) & ",1,'" & MSdate(CDate(rs("firstSeen").Value)) & "',2)")
            Console.WriteLine("Added post" & vbTab & x & vbTab & CStr(rs("OrgID").Value) & vbTab & CStr(rs("pplID").Value) & vbTab & CStr(rs("posID").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        'add new lsjobs to directorships
        rs.Open("SELECT e.personID AS orgID,p.personID as pplID,j.firstSeen FROM lsjobs j JOIN(lsppl p,lsemps e) " &
            "ON j.lsppl=p.lsid AND j.empID=e.ID AND j.dead=False AND p.dead=False AND Not isnull(e.personID) " &
            "LEFT JOIN directorships d ON e.personID=company AND p.personID=director AND positionID=418 AND isnull(resDate) " &
            "WHERE isnull(d.ID1) order by orgID,pplID;", con)
        x = 0
        Do Until rs.EOF
            x += 1
            con.Execute("INSERT INTO directorships(company,director,positionID,source,apptDate,apptAcc) VALUES (" &
        CStr(rs("OrgID").Value) & "," & CStr(rs("pplID").Value) & ",418,2,'" & MSdate(CDate(rs("firstSeen").Value)) & "',2)")
            Console.WriteLine("Added solicitor:" & vbTab & x & vbTab & CStr(rs("OrgID").Value) & vbTab & CStr(rs("pplID").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        'remove people who no longer hold lsposts
        x = 0
        rs.Open("SELECT ID1,d.company,director,LSrole FROM directorships d JOIN positions pn " &
            "ON d.positionID=pn.positionID AND source=1 AND d.positionID<>418 AND isNull(resDate) LEFT JOIN " &
            "(lsposts ps JOIN (lsppl lp, lsorgs lo) ON ps.lsppl=lp.lsid AND ps.lsorg=lo.lsid AND ps.dead=False) " &
            "ON d.company=lo.personID AND d.director=lp.personID AND pn.LSrole=post " &
            "WHERE isnull(lo.personID) order by company,director;", con)
        Do Until rs.EOF
            x += 1
            con.Execute("UPDATE directorships SET resDate=" & dtStr & ",resAcc=2 WHERE ID1=" & CStr(rs("ID1").Value))
            Console.WriteLine("Removed law-firm post:" & vbTab & x & vbTab & CStr(rs("Company").Value) & vbTab & CStr(rs("Director").Value) & vbTab & CStr(rs("LSrole").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        'remove people who no longer hold lsjobs
        'this only covers "Solicitor" position 418, so even if this routine added the job, if we change the position manually then it will
        'not be removed if he gives up his Law Society membership
        'This doesn't handle employer name changes - it then appears that the person has left. But at least the big ones like SFC shouldn't change
        rs.Open("SELECT ID1,company,director FROM directorships d LEFT JOIN " &
            "(lsjobs j JOIN (lsppl p, lsemps e) ON j.lsppl=p.lsid AND j.empID=e.ID AND j.dead=False) " &
            "ON d.company=e.personID AND d.director=p.personID " &
            "WHERE source=2 AND positionID=418 AND isNull(resDate) AND isnull(p.personID) order by company,director;", con)
        Do Until rs.EOF
            x += 1
            con.Execute("UPDATE directorships SET resDate=" & dtStr & ",resAcc=2 WHERE ID1=" & CStr(rs("ID1").Value))
            Console.WriteLine("Removed job:" & vbTab & x & vbTab & CStr(rs("Company").Value) & vbTab & CStr(rs("Director").Value))
            rs.MoveNext()
        Loop
        rs.Close()
        Call PutLog("LawSocDone", MSdateTime(Now()))
        Console.WriteLine("Done!")
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("HKlawSoc update failed", Err)
    End Sub
    Sub GetAllLSorgs(Optional pg As Integer = 1)
        'get the list of HK solicitors firms and put it in the lsorgs table
        'may have problems if the id numbers change
        Dim con As New ADODB.Connection, rs, rs2 As New ADODB.Recordset,
            r, lsn1, n1, cn As String,
            x, y, lsid, p, domicile As Integer,
            nowTime, incDate As Date
        Call OpenEnigma(con)
        nowTime = Now()
        Do
            r = GetWeb("https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Hong-Kong-Law-Firms?dataCount=99999&pageIndex=" & pg, "utf-8", False)
            x = InStr(r, "Firm Name (Chinese)")
            Do
                x = FindStr(r, "FirmId=", x)
                If x = 0 Then Exit Do
                y = InStr(x, r, """")
                lsid = CInt(Mid(r, x, y - x))
                x = InStr(y, r, ">") + 1
                y = InStr(x, r, "<")
                lsn1 = Trim(Mid(r, x, y - x))
                lsn1 = HTMLtext(lsn1)
                n1 = lsn1
                cn = ""
                Call TagCont(x, r, "a", cn)
                cn = Trim(cn)
                'remove Solicitors from end
                n1 = RemSuf(n1, "SOLICITOR")
                n1 = RemSuf(n1, "SOLICITORS")
                n1 = RemSuf(n1, "SOLICITORS & NOTARIES")
                n1 = RemSuf(n1, "SOLICITORS AND NOTARIES")
                n1 = RemSuf(n1, ",")
                'move anything after "& Co.," to the start
                y = InStr(n1, "& Co.,")
                If y > 0 And y < Len(n1) - 5 Then n1 = Right(n1, Len(n1) - y - 6) & " " & Left(n1, y + 4)
                y = InStr(n1, "& CO,")
                If y > 0 And y < Len(n1) - 4 Then n1 = Right(n1, Len(n1) - y - 5) & " " & Left(n1, y + 3) & "."
                y = InStr(n1, "AND COMPANY,")
                If y > 0 And y < Len(n1) - 11 Then n1 = Right(n1, Len(n1) - y - 12) & " " & Left(n1, y + 10)
                y = InStr(n1, "& COMPANY,")
                If y > 0 And y < Len(n1) - 9 Then n1 = Right(n1, Len(n1) - y - 10) & " " & Left(n1, y + 8)
                y = InStr(n1, "AND CO.,")
                If y > 0 And y < Len(n1) - 7 Then n1 = Right(n1, Len(n1) - y - 8) & " " & Left(n1, y + 6)
                With rs
                    .Open("SELECT * FROM lsorgs WHERE lsid=" & lsid, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If .EOF Then
                        Console.WriteLine("Found new org: " & lsid & vbTab & n1)
                        .AddNew()
                        rs("firstSeen").Value = nowTime
                        rs("lsid").Value = lsid
                    ElseIf rs("name1").Value.ToString <> n1 Then
                        'name change with same lsid, as can now happen (previously LS generated a new ID)
                        p = DBint(rs("personID"))
                        If p > 0 Then
                            rs2.Open("SELECT * FROM organisations WHERE personID=" & p, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                            domicile = DBint(rs2("Domicile"))
                            incDate = DBdate(rs2("incDate"))
                            Call NameResOrg(1, n1, incDate, Nothing, domicile, Nothing)
                            Console.WriteLine("Renaming: " & rs2("Name1").Value.ToString, "To: " & n1)
                            con.Execute("INSERT INTO namechanges (personID,oldName,oldcName,dateChanged,dateAcc)" &
                                        Valsql({p, rs2("Name1").Value, rs2("cName").Value, Today, 2}))
                            rs2("Name1").Value = n1
                            If cn <> "" Then rs2("cName").Value = cn Else rs2("cName").Value = DBNull.Value
                            rs2.Update()
                            rs2.Close()
                        End If
                    End If
                    rs("name1").Value = n1
                    rs("lastSeen").Value = nowTime
                    rs("lsename").Value = lsn1
                    If cn <> "" Then rs("lscname").Value = cn
                    .Update()
                    .Close()
                End With
                'now fetch details from the individual org page
                Call GetLSorg(lsid)
                Console.WriteLine("LSID: " & lsid & vbTab & n1 & vbTab & cn)
            Loop
            pg += 1
        Loop Until InStr(r, "Next Page") = 0
        'set missing entries to dead
        con.Execute("UPDATE lsorgs SET dead=True WHERE lastSeen<'" & MSdateTime(nowTime) & "'")
        'match the orgs with same LS English name but new lsid and set personID
        con.Execute("UPDATE lsorgs p1 JOIN lsorgs p2 ON p1.lsename=p2.lsename AND p1.lsid<>p2.lsid AND p1.dead AND p2.dead=False " &
            "AND NOT ISNULL(p1.personID) AND isNull(p2.personID) " &
            "SET p2.personID=p1.personID, p2.name1=p1.name1;")
        'for the remainder, look for name changes based on phone number
        rs.Open("SELECT lsid,name1,lscname,tel," &
            "(SELECT personID FROM lsorgs WHERE NOT isnull(personID) AND name1<>o.name1 AND tel=o.tel AND dead ORDER BY lastSeen DESC LIMIT 1) AS p " &
            "FROM lsorgs o WHERE isnull(personID) HAVING NOT isnull(p);", con)
        Do Until rs.EOF
            p = CInt(rs("p").Value)
            'fix 19-Apr-2018: do not accept match if a live lsorg also has that phone number, because 2 live firms may share a phone number
            If Not CBool(con.Execute("SELECT EXISTS(SELECT * FROM lsorgs WHERE NOT dead AND tel='" & rs("Tel").Value.ToString & "' AND personID=" & p & ")").Fields(0).Value) Then
                'no other live firm has that number
                con.Execute("UPDATE lsorgs SET personID=" & p & " WHERE lsid=" & rs("lsid").Value.ToString)
                n1 = rs("Name1").Value.ToString
                rs2.Open("SELECT * FROM organisations WHERE personID=" & p, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If n1 <> rs2("Name1").Value.ToString Then
                    'PROCESS NAME CHANGE
                    domicile = DBint(rs2("Domicile"))
                    incDate = DBdate(rs2("incDate"))
                    Call NameResOrg(1, n1, incDate, Nothing, domicile, Nothing)
                    Console.WriteLine("Renaming: " & rs2("Name1").Value.ToString, "To: " & n1)
                    con.Execute("INSERT INTO namechanges(personID,oldName,oldcName,dateChanged,dateAcc)" &
                                Valsql({p, rs2("Name1").Value, rs2("cName").Value, Today, 2}))
                    rs2("Name1").Value = n1
                    rs2("cName").Value = rs("lscname").Value
                    rs2.Update()
                End If
                rs2.Close()
            End If
            rs.MoveNext()
        Loop
        rs.Close()
        'now match or insert the remaining unmatched lsorgs into organisations
        rs.Open("SELECT * FROM lsorgs WHERE isnull(personID) AND not dead order by name1", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        Do Until rs.EOF
            p = 0
            n1 = rs("Name1").Value.ToString
            cn = rs("lscname").Value.ToString
            rs2.Open("SELECT * FROM organisations WHERE (isnull(domicile) OR domicile=1) AND namehash=orghash('" & Apos(n1) & "')", con)
            If rs2.EOF Then
                Call NameResOrg(p, n1, incDate:=Nothing, disDate:=Nothing, 1, "")
                con.Execute("INSERT INTO persons VALUES()")
                p = LastID(con)
                con.Execute("INSERT INTO organisations (personID,domicile,name1,cName,incDate,incAcc)" & Valsql({p, 1, n1, cn, Today, 2}))
                con.Execute("INSERT INTO classifications (company,category) VALUES (" & p & ",88)")
            Else
                p = CInt(rs2("PersonID").Value)
            End If
            rs2.Close()
            rs("PersonID").Value = p
            rs.Update()
            Console.WriteLine(CStr(rs("Name1").Value) & vbTab & CStr(rs("lsid").Value) & vbTab & p)
            rs.MoveNext()
        Loop
        rs.Close()
        rs2 = Nothing
        rs = Nothing
        con.Close()
        con = Nothing
        Console.WriteLine("Done!")
    End Sub
    Sub GetLSorg(lsid As Integer)
        'get telephone, orgType and web address of a Law Society firm from the LS site
        'personID may not yet be determined, so store orgType in lsorgs too
        Dim r, n1, URL, Tel As String,
            x, p, orgType As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        r = GetWeb(GetLog("LawSocFirmURL") & lsid, "utf-8", False)
        'If r = "" Or InStr(r, "No record found") > 0 Then
        'Console.WriteLine("FIRM NOT FOUND: " & lsid)
        'Exit Sub
        'End If
        Call OpenEnigma(con)
        With rs
            .Open("SELECT * FROM lsorgs WHERE lsid=" & lsid, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            p = DBint(rs("PersonID"))
            n1 = CStr(rs("Name1").Value)
            Tel = ""
            x = InStr(r, "Telephone")
            If x > 0 Then
                Call TagCont(x, r, "td", Tel)
                rs("Tel").Value = Left(Trim(Replace(Replace(Tel, "-", ""), " ", "")), 8)
            End If
            x = InStr(r, "Sole Practitioner")
            If x > 0 Then
                orgType = 11
            ElseIf Right(n1, 4) = " LLP" Then
                orgType = 9
            Else
                orgType = 3
            End If
            rs("orgType").Value = orgType
            .Update()
            .Close()
            If p > 0 Then con.Execute("UPDATE organisations SET orgType=" & orgType & " WHERE personID=" & p)
            Console.WriteLine(lsid & vbTab & p & vbTab & Tel & vbTab & n1 & vbTab & orgType)
        End With
        'while we are here, get the web site and check whether we already have it
        x = InStr(r, "Homepage")
        If x > 0 And p > 0 Then
            URL = ""
            Call TagCont(x, r, "td", URL)
            Call TagCont(1, URL, "a", URL)
            If URL <> "" Then 'sometimes LawSoc has an empty string
                Console.WriteLine(URL)
                rs.Open("SELECT * FROM web WHERE personID=" & p & " AND INSTR(URL,'" & URL & "')>0", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    con.Execute("INSERT INTO web(personID,source,URL) VALUES(" & p & "," & 115 & ",'" & URL & "')")
                Else
                    rs("source").Value = 115
                    rs.Update()
                End If
                rs.Close()
            End If
        End If
        rs = Nothing
        con.Close()
        con = Nothing
    End Sub
    Sub GetLSpeople(withCert As Boolean, Optional pg As Integer = 1)
        'for Law Society human list of members with practising certificate
        'extract the current id of all people in the list and fetch their details
        Dim r, URL As String, x, y, lsid As Integer
        URL = ""
        If Not withCert Then URL = "out"
        Do
            r = GetWeb("https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Members-with" & URL & "-Practising-Certificate?pageIndex=" & pg,, False)
            x = 1
            Do
                x = FindStr(r, "MemId=", x, 2)
                If x = 0 Then Exit Do
                y = InStr(x, r, "'")
                lsid = CInt(Mid(r, x, y - x))
                Call GetLShuman(lsid)
            Loop
            pg += 1
        Loop Until InStr(r, "Next Page") = 0
    End Sub
    Sub GetLShuman(lsid As Integer)
        'extract details on one Law Society human based on the page id
        'NB Chinese 4-byte characters are collected as HTML entities, e.g. Edwin Cheng Kwok Kit (the Kit character).
        'I tried converting them using function HTMLtext, but the resultant character causes the ODBC connector to crash
        'Can't find a way around it, same problem with SFC.
        On Error GoTo repErr
        Dim r, lsen, lscn, n1, n2, cn, sex, adm, s, t, URL, fkae, fkac As String,
            x, y, firmID, firmPos As Integer,
            lsdom, pos, admAcc As Byte,
            admDate, nowTime As Date
        'lsen=Law Society English name, lscn=Law Society Chinese name
        'after processing, n1=surname, n2=forenames, cn=Chinese name
        't is the HTML table of other admissions
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        r = GetWeb(GetLog("LawSocHumanURL") & lsid, "utf-8", False)
        'If r = "" Or InStr(r, "Details of") = 0 Then Exit Sub
        nowTime = Now()
        fkae = Nothing
        fkac = Nothing
        lsen = Nothing
        lscn = Nothing
        Call OpenEnigma(con)
        x = InStr(r, "Name (English)")
        Call TagCont(x, r, "td", lsen)
        'convert html tokens such as &#39; (apostrophe) and various characters not in BIG5
        lsen = HTMLtext(lsen)
        x = InStr(x, r, "Name (Chinese)")
        If x > 0 Then
            Call TagCont(x, r, "td", lscn)
            lscn = stripTag(lscn, "span")
        End If
        n1 = Nothing
        n2 = Nothing
        cn = Nothing
        sex = Nothing
        Call procName(lsen, lscn, n1, n2, cn, sex)
        x = InStr(r, "Former Name (English)")
        If x > 0 Then
            Call TagCont(x, r, "td", fkae)
            fkae = StripTag(fkae, "br")
            fkae = HTMLtext(fkae)
        End If
        x = InStr(r, "Former Name (Chinese)")
        If x > 0 Then
            Call TagCont(x, r, "td", fkac)
            fkac = StripTag(fkac, "br")
        End If
        If fkae <> "" Or fkac <> "" Then
            Console.WriteLine("Former Names:" & vbTab & fkae & vbTab & fkac)
            con.Execute("INSERT IGNORE INTO lsalias(lsid,aliase,aliasc,firstSeen)" & Valsql({lsid, fkae, fkac, MSdateTime(nowTime)}))
        End If
        x = InStr(r, "Admission in Hong Kong")
        adm = ""
        Call TagCont(x, r, "td", adm)
        Console.WriteLine(lsid & vbTab & adm & vbTab & sex & vbTab & lsen & vbTab & n1 & ", " & n2 & vbTab & cn & vbTab & Len(cn))
        With rs
            .Open("SELECT * FROM lsppl WHERE lsid=" & lsid, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If .EOF Then
                .AddNew()
                rs("lsid").Value = lsid
                rs("firstSeen").Value = nowTime
            End If
            rs("lastSeen").Value = nowTime
            rs("dead").Value = False
            rs("lsename").Value = lsen
            If lscn <> "" Then
                rs("lscname").Value = lscn
                rs("cName").Value = cn
            End If
            If Len(adm) = 7 Then
                'MM/YYYY
                admDate = MakeDate(CInt(Right(adm, 4)), CInt(Left(adm, 2)))
                admAcc = 2 'nearest month
            ElseIf Len(adm) = 4 Then
                'YYYY
                admDate = makeDate(CInt(adm))
                admAcc = 1 'nearest year
            End If
            rs("Name1").Value = n1
            If n2 <> "" Then rs("Name2").Value = n2
            rs("admHK").Value = admDate
            rs("admAcc").Value = admAcc
            If sex > "" Then rs("Sex").Value = sex
            .Update()
            .Close()
        End With
        'process table of admissions in other jurisdictions, if any
        x = InStr(r, "Admission in Other")
        If x > 0 Then
            t = ""
            Call TagCont(x, r, "table", t)
            x = InStr(t, "Admission")
            Do Until InStr(x, t, "<tr") = 0
                s = ""
                Call TagCont(x, t, "td", s)
                s = Trim(s)
                s = HTMLtext(s)
                rs.Open("SELECT * FROM lsdoms WHERE domName='" & Apos(s) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    rs.AddNew()
                    rs("domName").Value = s
                    rs.Update()
                    lsdom = CByte(LastID(con))
                Else
                    lsdom = CByte(rs("lsdom").Value)
                End If
                rs.Close()
                Call TagCont(x, t, "td", adm)
                adm = Trim(adm)
                If Len(adm) = 7 Then
                    admDate = MakeDate(CInt(Right(adm, 4)), CByte(Left(adm, 2)), 0)
                    admAcc = 2 'nearest month
                ElseIf Len(adm) = 4 Then
                    admDate = MakeDate(CInt(adm))
                    admAcc = 1 'nearest year
                End If
                With rs
                    .Open("SELECT * FROM lsadm WHERE lsid=" & lsid & " AND lsdom=" & lsdom, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If .EOF Then
                        .AddNew()
                        rs("lsid").Value = lsid
                        rs("lsdom").Value = lsdom
                    End If
                    rs("adm").Value = admDate
                    rs("admAcc").Value = admAcc
                    .Update()
                    .Close()
                End With
                Console.WriteLine(lsdom & vbTab & s & vbTab & adm & vbTab & admDate & vbTab & admAcc)
            Loop
        End If
        'look for Posts in law firms or employment in other firms
        firmPos = InStr(r, ">Firm</th>")
        Do Until firmPos = 0
            If InStr(firmPos, r, ">Post<") > 0 Then
                'person has a post at a law firm
                x = firmPos
                t = ""
                Call TagCont(x, r, "lable", t) 'they mis-spelled "label", so this tag may change
                pos = CByte(con.Execute("SELECT ID FROM lsroles WHERE LStxt='" & t & "'").Fields(0).Value)
                x = InStr(x, r, "Company (English)")
                If x > 0 Then
                    'there are some bad entries, with a Post but no firm name
                    Call TagCont(x, r, "td", t)
                    URL = GetAttrib(t, "href")
                    If URL <> "" Then
                        firmID = CInt(GetParam(URL, "FirmId"))
                        With rs
                            .Open("SELECT * FROM lsposts WHERE NOT dead AND lsorg=" & firmID & " AND lsppl=" & lsid &
                                  " AND post=" & pos, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                            If .EOF Then
                                .AddNew()
                                rs("lsorg").Value = firmID
                                rs("lsppl").Value = lsid
                                rs("post").Value = pos
                                rs("firstSeen").Value = nowTime
                            End If
                            rs("lastSeen").Value = nowTime
                            .Update()
                            .Close()
                        End With
                        Console.WriteLine("Position:" & pos & vbTab & "human:" & lsid & vbTab & "firm:" & firmID)
                    End If
                Else
                    'found the >Firm</th> title, and post, but no employer - an error in the database, so skip this
                End If
            Else
                'person may have a job at a non-law firm
                x = InStr(firmPos, r, "Company (English)")
                If x > 0 Then
                    t = Nothing
                    Call TagCont(x, r, "td", t)
                    If InStr(t, "<a") > 0 Then Call TagCont(1, t, "a", t) 'sometimes the name is hyperlinked
                    t = Trim(t)
                    t = HTMLtext(t)
                    If Right(t, 5) = " LTD." Then t = Left(t, Len(t) - 4) & "LIMITED"
                    If Right(t, 4) = " LTD" Then t = Left(t, Len(t) - 3) & "LIMITED"
                    If Left(t, 4) = "THE " Then t = Trim(Right(t, Len(t) - 4)) & " (THE)"
                    With rs
                        .Open("SELECT * FROM lsemps WHERE empName='" & Apos(t) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If .EOF Then
                            .AddNew()
                            rs("empName").Value = t
                            .Update()
                            y = LastID(con)
                        Else
                            y = CInt(rs("ID").Value)
                        End If
                        .Close()
                        .Open("SELECT * FROM lsjobs WHERE NOT dead AND lsppl=" & lsid & " AND empID=" & y, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                        If .EOF Then
                            .AddNew()
                            rs("lsppl").Value = lsid
                            rs("empID").Value = y
                            rs("firstSeen").Value = nowTime
                        End If
                        rs("lastSeen").Value = nowTime
                        .Update()
                        .Close()
                    End With
                    Console.WriteLine("Employer:" & vbTab & t)
                Else
                    'found the >Firm</th> title, but no employer - an error in the database, so skip this
                End If
            End If
            firmPos = InStr(firmPos + 11, r, ">Firm</th>")
        Loop
        'kill any posts or jobs entries no longer seen
        con.Execute("UPDATE lsposts SET dead=TRUE WHERE lsppl=" & lsid & " AND lastSeen<'" & MSdateTime(nowTime) & "'")
        con.Execute("UPDATE lsjobs SET dead=TRUE WHERE lsppl=" & lsid & " AND lastSeen<'" & MSdateTime(nowTime) & "'")
        rs = Nothing
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("GetLShuman failed with id " & lsid, Err)
    End Sub
    Sub ProcName(ByVal lsen As String, ByVal lscn As String, ByRef n1 As String, ByRef n2 As String, ByRef cn As String, ByRef sex As String)
        'input lsen=English name string, lscn=Chinese name string
        'outputs are n1=surname, n2=forenames (English first, Upper-Lower case), cn=Chinese name, sex
        'en is number of non-Chinese words in forenames
        Dim words, cc, x, y, en As Integer, ns() As String,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'LS has some McNames with a space (Mc Name), but nobody should have Mc as a surname!
        If Left(lsen, 3) = "MC " Then lsen = "MC" & Mid(lsen, 4)
        words = UBound(Split(lsen)) + 1
        cn = Replace(lscn, " ", "") 'some names have a space inside
        cc = Len(cn) 'number of characters in cn(but sometimes too high - character set problem?
        If words = 1 Then
            'no forenames
            n1 = ULname(lsen, True)
            n2 = Nothing
        Else
            y = InStr(lsen, " ")
            'check for two-word surnames
            If Left(lsen, 4) = "VAN " And words > 2 Then y = InStr(5, lsen, " ")
            If (Left(lsen, 3) = "DE " Or Left(lsen, 3) = "DA ") And words > 2 Then y = InStr(4, lsen, " ")
            If (Left(lsen, 9) = "AU YEONG " Or Left(lsen, 9) = "AU YEUNG " Or Left(lsen, 9) = "AU YOUNG") And words > 3 Then y = 9
            n1 = Replace(Trim(Left(lsen, y - 1)), ",", "")
            If Left(n1, 3) = "AU-" Then n1 = Replace(n1, "-", " ") 'remove hyphen from the Au-Yeungs
            n1 = ULname(n1, True)
            n2 = ULname(Trim(Right(lsen, Len(lsen) - y)), False)
            sex = GenderName(n2, True)
            y = InStr(n2, ",")
            'move names after a comma to the front, usually English name
            If y = 0 Then
                'no comma, but English name may still be at the end
                'if the first word is not a recognised English name, then check from the last word backwards
                ns = Split(n2)
                words = UBound(ns) + 1
                rs.Open("SELECT * FROM namesex WHERE sex<>'C' And name='" & Apos(ns(0)) & "'", con)
                If rs.EOF Then
                    'no English name at start
                    'now check the other words starting with the last one
                    For x = words - 1 To 1 Step -1
                        rs.Close()
                        rs.Open("SELECT * FROM namesex WHERE sex<>'C' AND name='" & Apos(ns(words - 1)) & "'", con)
                        If Not rs.EOF Then
                            en += 1
                            'English name at end, so move it
                            n2 = ns(words - 1)
                            For y = 0 To words - 2
                                n2 = n2 & " " & ns(y)
                            Next
                        End If
                        ns = Split(n2)
                    Next
                Else
                    'English name at start
                    en += 1
                    'count the rest but don't move anything
                    For x = 1 To words - 1
                        rs.Close()
                        rs.Open("SELECT * FROM namesex WHERE sex<>'C' AND name='" & Apos(ns(x)) & "'", con)
                        If Not rs.EOF Then en += 1
                    Next
                End If
                rs.Close()
            Else
                words = UBound(Split(n2)) + 1
                en = UBound(Split(Trim(Right(n2, Len(n2) - y)))) + 1
                n2 = Trim(Right(n2, Len(n2) - y)) & " " & Trim(Left(n2, y - 1))
            End If
            'now cc is the number of chinese characters in forenames
            'we want to remove hyphens from Romanised Chinese names, if possible
            If cc - UBound(Split(n1)) - 1 > words - en Then
                'we may have unwanted hyphens in Romanized Chinese forenames
                n2 = Replace(n2, "-", " ")
            End If
        End If
        If n2 = "" Then n2 = Nothing
        con.Close()
        con = Nothing
    End Sub
    Sub MatchLSemps()
        'try to match employers named in LawSoc with non-dissolved HK orgs
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset, n1 As String, PersonID As Integer
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM lsemps WHERE isnull(personID) order by empName", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
        Do Until rs.EOF
            n1 = StripSpace(CStr(rs("empName").Value))
            If Right(n1, 17) = " HONG KONG BRANCH" Then n1 = Trim(Left(n1, Len(n1) - 17))
            If Right(n1, 18) = "(HONG KONG BRANCH)" Then n1 = Trim(Left(n1, Len(n1) - 18))
            'first try to find HK entity
            PersonID = OrgIDhash(n1, 1) '1=HK domicile
            If PersonID = 0 Then
                'try foreign cos
                rs2.Open("SELECT * FROM organisations JOIN freg ON personID=orgID WHERE hostDom=1 AND isNull(cesDate) AND " &
                    "nameHash=orgHash('" & Apos(n1) & "')", con)
                If Not rs2.EOF Then
                    rs("PersonID").Value = rs2("PersonID").Value
                    rs.Update()
                    Console.WriteLine("Found:" & CStr(rs2("Name1").Value))
                End If
                rs2.Close()
            Else
                rs("PersonID").Value = PersonID
                rs.Update()
                Console.WriteLine("Found:" & n1)
            End If
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub ProcLSaliases(since As Date)
        'process the aliases from the lsalias table found in LawSoc pages since the specified time
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            n1, n2, cn, sex, lsen, lscn, sql As String,
            p, x As Integer
        Call OpenEnigma(con)
        'prevent repeating changes to the main alias table, so that LS errors don't recur
        'if we've seen the same alias on the same personID with different lsid then carry forward the firstSeen dateTime
        con.Execute("UPDATE (lsalias a1 JOIN lsppl p1 ON a1.lsid=p1.lsid) JOIN (lsalias a2 JOIN lsppl p2 ON a2.lsid=p2.lsid) " &
            "ON a1.lsid<>a2.lsid AND p1.personID=p2.personID AND a1.aliase=a2.aliase AND a1.firstSeen<a2.firstSeen " &
            "SET a2.firstSeen=a1.firstSeen;")
        rs.Open("SELECT * FROM lsalias a JOIN lsppl p on a.lsid=p.lsid WHERE Not isnull(personID) AND (isnull(a.firstSeen) OR " &
            "a.firstSeen>'" & MSdateTime(since) & "')", con) 'add NOT DEAD later
        x = 0
        Do Until rs.EOF
            x += 1
            p = CInt(rs("PersonID").Value)
            If IsDBNull(rs("aliase").Value) Then lsen = rs("lsename").Value.ToString Else lsen = rs("aliase").Value.ToString
            lscn = rs("aliasc").Value.ToString
            n1 = ""
            n2 = ""
            cn = ""
            sex = ""
            Call ProcName(lsen, lscn, n1, n2, cn, sex)
            If n2 = "" Then
                sql = "ISNULL(n2)"
                n2 = "NULL"
            Else
                n2 = "'" & Apos(n2) & "'"
                sql = "n2=" & n2
            End If
            n1 = "'" & Apos(n1) & "'"
            If cn = "" Then
                cn = "NULL"
                sql &= " AND ISNULL(cn)"
            Else
                cn = "'" & Apos(cn) & "'"
                sql = sql & " AND cn=" & cn
            End If
            rs2.Open("SELECT * FROM alias WHERE personID=" & p & " AND n1 =" & n1 & " AND " & sql, con)
            If rs2.EOF Then
                Console.WriteLine(x & vbTab & "New fka" & vbTab & p & vbTab & n1 & vbTab & n2 & vbTab & cn)
                con.Execute("INSERT INTO alias (personID,n1,n2,cn) VALUES (" & p & "," & n1 & "," & n2 & "," & cn & ")")
            Else
                Console.WriteLine(x & vbTab & "Existing record" & vbTab & rs("aliase").Value.ToString & vbTab & rs2("n1").Value.ToString & vbTab & rs2("n2").Value.ToString)
            End If
            rs2.Close()
            'now change to the new name if it hasn't already been changed
            n1 = "'" & Apos(CStr(rs("Name1").Value)) & "'"
            If IsDBNull(rs("Name2").Value) Then
                n2 = "NULL"
                sql = "ISNULL(n2)"
            Else
                n2 = Apos(rs("Name2").Value.ToString)
                sql = "Name2='" & n2 & "'"
            End If
            rs2.Open("SELECT * FROM people WHERE personID<>" & p & " AND name1=" & n1 & " AND " & sql, con)
            If Not rs2.EOF Then
                'there's a clash
                If n2 = "NULL" Then n2 = ""
                n2 = Trim(n2 & " (LSHK:" & MSdate(CDate(rs("admHK").Value), CByte(rs("admAcc").Value)) & ")")
            End If
            'update it anyway, because cName might have changed
            If n2 <> "NULL" Then n2 = "'" & n2 & "'"
            If IsDBNull(rs("cName").Value) Then cn = "NULL" Else cn = "'" & Apos(rs("cName").Value.ToString) & "'"
            con.Execute("UPDATE people SET name1=" & n1 & ",name2=" & n2 & ",cName=" & cn & " WHERE personID=" & p)
            rs2.Close()
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
End Module
