Option Compare Text
Option Explicit On
Option Strict Off

Imports System.Security.Cryptography
Imports ScraperKit
Imports Excel = Microsoft.Office.Interop.Excel

Module Listing
    Sub Main()
        Call ListingTeams2()
    End Sub
    Sub ListingTeams2()
        'rewritten 2025-08-28 as HKEX has anonymised the team members
        On Error GoTo repErr
        'retrieve and read listing div file
        Dim URL, dest, sc, team, s As String,
            cd As Date,
            updteam As Boolean,
            teamID, orgID, staffID, posID As Integer,
            app As New Excel.Application, wb As Excel.Workbook, sht As Excel.Worksheet,
            row, col, tel As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        URL = "https://www.hkex.com.hk/-/media/HKEX-Market/Listing/Rules-and-Guidance/Other-Resources/Listed-Issuers/Contact-Persons-in-HKEX-Listing-Department-for-Listed-Companies/Excel-Protected-File/listing.xlsx"
        cd = Today
        dest = GetLog("storage") & "\listingTeams.xlsx"
        Call Download(URL, dest,, True)
        Console.WriteLine("Got file")
        Call OpenEnigma(con)
        wb = app.Workbooks.Open(dest)
        sht = CType(wb.Worksheets(1), Excel.Worksheet)
        For row = 2 To sht.UsedRange.Rows.Count
            sc = sht.Cells(row, 1).value.ToString
            If sc = "" Then Exit For
            team = sht.Cells(row, 4).value.ToString
            updteam = False
            rs.Open("SELECT * FROM lirteams WHERE teamno=" & team, con)
            If rs.EOF Then
                'new team
                updteam = True
                con.Execute("INSERT INTO lirteams (teamno,firstseen,lastseen)" & Valsql({team, cd, cd}))
                teamID = LastID(con)
            Else
                teamID = DBint(rs("ID"))
                If DBdate(rs("lastseen")) < cd Then updteam = True
                con.Execute("UPDATE lirteams" & Setsql("lastseen", {cd}) & "ID=" & teamID)
            End If
            rs.Close()
            Console.WriteLine(sc & vbTab & team & vbTab & teamID)
            orgID = DBint(con.Execute("SELECT getOrgID(" & sc & "," & Sqv(cd) & ")").Fields(0))
            If orgID > 0 Then
                'found the issuer
                rs.Open("SELECT * FROM lirorgteam WHERE NOT dead AND teamID=" & teamID & " AND orgID=" & orgID, con)
                If rs.EOF Then
                    'issuer is at new team. Remove it from any other team
                    con.Execute("UPDATE lirorgteam SET dead=True WHERE orgID=" & orgID)
                    con.Execute("INSERT INTO lirorgteam (orgID,teamID,firstSeen,lastSeen)" & Valsql({orgID, teamID, cd, cd}))
                Else
                    con.Execute("UPDATE lirorgteam" & Setsql("lastSeen", {cd}) & "ID=" & DBint(rs("ID")))
                End If
                rs.Close()
            End If
            If updteam Then
                'only need to update each team once per spreadsheet
                'there are up to 3 people. The first is a Case Manager (where present), the next 2 are Case Officers (where present)
                'but the sheet still has 17 columns, so there could be a 4th staffer at column 15
                For col = 6 To sht.UsedRange.Columns.Count - 2 Step 3
                    If Not IsNothing(sht.Cells(row, col).value) Then
                        'sheet has some non-breaking spaces, Chr(160)
                        s = CleanStr(Replace(sht.Cells(row, col).value.ToString, Chr(160), ""))
                        tel = CInt(CleanStr(Replace(Replace(sht.Cells(row, col + 2).value.ToString, "-", ""), Chr(160), "")))
                        Console.WriteLine(teamID & vbTab & s & vbTab & tel)
                        rs.Open("SELECT * FROM lirstaff WHERE tel=" & tel, con)
                        If rs.EOF Then
                            'new tel number with no name
                            con.Execute("INSERT INTO lirstaff (tel)" & Valsql({tel}))
                            staffID = LastID(con)
                        Else
                            'someone else may have taken over the phone number but we will note that in the web page
                            staffID = DBint(rs("ID"))
                        End If
                        rs.Close()
                        'no more internal titles (Associate, AVP, VP, SVP), just 2 types
                        If s = "Case Manager" Then posID = 6 Else posID = 5
                        'now check the staff in the team
                        rs.Open("SELECT * FROM lirteamstaff WHERE NOT dead AND teamID=" & teamID & " AND staffID=" & staffID & " AND posID=" & posID)
                        If rs.EOF Then
                            'new to this team, or new position
                            con.Execute("INSERT INTO lirteamstaff(teamID,staffID,posID,firstSeen,lastSeen)" & Valsql({teamID, staffID, posID, cd, cd}))
                        Else
                            con.Execute("UPDATE lirteamstaff" & Setsql("lastSeen", {cd}) & "ID=" & DBint(rs("ID")))
                        End If
                        rs.Close()
                    End If
                Next
                'now remove missing staff of this team
                con.Execute("UPDATE lirteamstaff SET dead=True WHERE lastSeen<" & Sqv(cd) & " AND teamID=" & teamID)
            End If
        Next
        wb.Close()
        app.Quit()
        'now if a team has not shown up, set its members to dead
        con.Execute("UPDATE lirteamstaff s JOIN lirteams t ON s.teamID=t.ID SET s.dead=True WHERE t.lastSeen<" & Sqv(cd))
        'set delisted stocks to dead
        con.Execute("UPDATE lirorgteam SET dead=True WHERE (NOT dead) AND lastseen<" & Sqv(cd))
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ListingTeams failed at stock code:" & sc, Err)
    End Sub
    Sub ListingTeams()
        'OBSOLETE
        On Error GoTo repErr
        'retrieve and read listing div file
        Dim URL, dest, sc, team, s, cn As String,
            cd As Date,
            updteam As Boolean,
            teamID, orgID As Integer,
            app As New Excel.Application, wb As Excel.Workbook, sht As Excel.Worksheet,
            row, col, div, tel As Integer, con As New ADODB.Connection, rs As New ADODB.Recordset
        URL = "https://www.hkex.com.hk/-/media/HKEX-Market/Listing/Rules-and-Guidance/Other-Resources/Listed-Issuers/Contact-Persons-in-HKEX-Listing-Department-for-Listed-Companies/Excel-Protected-File/listing.xlsx"
        cd = Today
        dest = GetLog("storage") & "\listingTeams.xlsx"
        Call Download(URL, dest,, True)
        Console.WriteLine("Got file")
        Call OpenEnigma(con)
        wb = app.Workbooks.Open(dest)
        sht = CType(wb.Worksheets(1), Excel.Worksheet)
        For row = 2 To sht.UsedRange.Rows.Count
            sc = sht.Cells(row, 1).value.ToString
            If sc = "" Then Exit For
            team = sht.Cells(row, 4).value.ToString
            updteam = False
            rs.Open("SELECT * FROM lirteams WHERE teamno=" & team, con)
            If rs.EOF Then
                'new team
                updteam = True
                con.Execute("INSERT INTO lirteams (teamno,firstseen,lastseen)" & Valsql({team, cd, cd}))
                teamID = LastID(con)
            Else
                teamID = DBint(rs("ID"))
                If DBdate(rs("lastseen")) < cd Then updteam = True
                con.Execute("UPDATE lirteams" & Setsql("lastseen", {cd}) & "ID=" & teamID)
            End If
            rs.Close()
            Console.WriteLine(sc & vbTab & team & vbTab & teamID)
            orgID = DBint(con.Execute("SELECT getOrgID(" & sc & "," & Sqv(cd) & ")").Fields(0))
            If orgID > 0 Then
                'found the issuer
                rs.Open("SELECT * FROM lirorgteam WHERE NOT dead AND teamID=" & teamID & " AND orgID=" & orgID, con)
                If rs.EOF Then
                    'issuer is at new team. Remove it from any other team
                    con.Execute("UPDATE lirorgteam SET dead=True WHERE orgID=" & orgID)
                    con.Execute("INSERT INTO lirorgteam (orgID,teamID,firstSeen,lastSeen)" & Valsql({orgID, teamID, cd, cd}))
                Else
                    con.Execute("UPDATE lirorgteam" & Setsql("lastSeen", {cd}) & "ID=" & DBint(rs("ID")))
                End If
                rs.Close()
            End If
            If updteam Then
                'only need to update each team once per spreadsheet
                For col = 6 To 15 Step 3
                    If Not IsNothing(sht.Cells(row, col).value) Then
                        'sheet has some non-breaking spaces, Chr(160)
                        s = CleanStr(Replace(sht.Cells(row, col).value.ToString, Chr(160), ""))
                        cn = ""
                        If Not IsNothing(sht.Cells(row, col + 1).value) Then
                            'Chinese name is present
                            cn = CleanStr(Replace(sht.Cells(row, col + 1).value.ToString, Chr(160), ""))
                            div = InStr(cn, "-")
                            If div = 0 Then div = InStr(cn, "–") 'sometimes they use a different character
                            If div > 0 Then cn = Trim(Left(cn, div - 1))
                        End If
                        tel = CInt(CleanStr(Replace(Replace(sht.Cells(row, col + 2).value.ToString, "-", ""), Chr(160), "")))
                        Console.WriteLine(s & vbTab & cn & vbTab & tel & vbTab & teamID)
                        Call ProcStaff(s, cn, tel, teamID, cd)
                    End If
                Next
                'now remove missing staff of this team
                con.Execute("UPDATE lirteamstaff SET dead=True WHERE lastSeen<" & Sqv(cd) & " AND teamID=" & teamID)
            End If
        Next
        wb.Close()
        app.Quit()
        'now if a team has not shown up, set its members to dead
        con.Execute("UPDATE lirteamstaff s JOIN lirteams t ON s.teamID=t.ID SET s.dead=True WHERE t.lastSeen<" & Sqv(cd))
        'set delisted stocks to dead
        con.Execute("UPDATE lirorgteam SET dead=True WHERE (NOT dead) AND lastseen<" & Sqv(cd))
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ListingTeams failed at stock code:" & sc, Err)
    End Sub
    Sub ProcStaff(s As String, cn As String, tel As Integer, teamID As Integer, cd As Date)
        Dim div, staffID, posID As Integer,
            n1, n2, title As String,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        div = InStrRev(s, "-") 'split name and title
        n2 = Trim(Left(s, div - 1))
        title = Trim(Mid(s, div + 1))
        div = InStrRev(n2, " ")
        n1 = Trim(Replace(Mid(n2, div + 1), Chr(194), ""))
        n2 = Trim(Replace(Left(n2, div - 1), Chr(194), ""))
        Console.WriteLine(n1 & vbTab & n2 & vbTab & title & vbTab & tel)
        rs.Open("SELECT * FROM lirstaff WHERE n1=" & Sqv(n1) & " AND n2=" & Sqv(n2), con)
        If rs.EOF Then
            'new staff
            con.Execute("INSERT INTO lirstaff (n1,n2,cn,tel)" & Valsql({n1, n2, cn, tel}))
            staffID = LastID(con)
        Else
            staffID = DBint(rs("ID"))
            con.Execute("UPDATE lirstaff" & Setsql("tel", {tel}) & "ID=" & staffID)
        End If
        rs.Close()
        rs.Open("SELECT * FROM lirroles WHERE title=" & Sqv(title))
        If rs.EOF Then
            'unlikely, but new title
            con.Execute("INSERT INTO lirroles (title)" & Valsql({title}))
            posID = LastID(con)
        Else
            posID = DBint(rs("ID"))
        End If
        rs.Close()
        'now check the staff in the team
        rs.Open("SELECT * FROM lirteamstaff WHERE NOT dead AND teamID=" & teamID & " AND staffID=" & staffID & " AND posID=" & posID)
        If rs.EOF Then
            'new to this team, or new position
            con.Execute("INSERT INTO lirteamstaff(teamID,staffID,posID,firstSeen,lastSeen)" & Valsql({teamID, staffID, posID, cd, cd}))
        Else
            con.Execute("UPDATE lirteamstaff" & Setsql("lastSeen", {cd}) & "ID=" & DBint(rs("ID")))
        End If
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
End Module
