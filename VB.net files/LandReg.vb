Option Compare Text
Option Explicit On
Imports JSONkit
Imports ScraperKit

Module LandReg

    Sub Main()
        'Call LRmonth(2007, 2)
        Call LRupdate()
    End Sub
    Sub LRupdate()
        'look for a new month of data
        Dim d As Date, done As Boolean, con As New ADODB.Connection
        Call OpenEnigma(con)
        d = DBdate(con.Execute("SELECT Max(d)+INTERVAL 1 MONTH FROM landreg").Fields(0))
        con.Close()
        Console.WriteLine("Attempting to get Year-Month: " & Year(d) & "-" & Month(d), done)
        Call LRmonth(Year(d), Month(d))
        If done Then SendMail("New data loaded from Land Registry")
        Console.WriteLine("New data found at Land Registry: " & done)
    End Sub
    Sub LRbatch(sy As Integer, sm As Integer, ey As Integer, em As Integer)
        Dim y, m As Integer
        For y = sy To ey
            For m = CInt(IIf(y = sy, sm, 1)) To CInt(IIf(y = ey, em, 12))
                Call LRmonth(y, m)
            Next
        Next
    End Sub
    Sub LRmonth(y As Integer, m As Integer, Optional ByRef done As Boolean = False)
        'fetch monthly Land Registry stats for year y and month m
        On Error GoTo repErr
        Dim r, items(), des, units, consid As String,
            x, ID As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        r = GetWeb("http://www.landreg.gov.hk/datagovhk/" & y & Right("0" & m, 2) & "_data.json")
        If r = "" Or InStr(r, "the page you requested cannot be found") <> 0 Then Exit Sub
        Call OpenEnigma(con)
        items = ReadArray(r)
        For x = 0 To UBound(items)
            r = items(x)
            des = Trim(GetVal(r, "Description"))
            If des > "" Then
                '1996-03 has a line at the end with y-m nulls and an empty string for description
                rs.Open("SELECT statsID FROM statgov WHERE descrip=" & Sqv(des), con)
                If rs.EOF Then
                    con.Execute("INSERT INTO stats (statName)" & Valsql({des}))
                    ID = LastID(con)
                    con.Execute("INSERT INTO statgov (descrip,statsID)" & Valsql({des, ID}))
                    Console.WriteLine("Added statistic statsID:" & ID & " " & des)
                Else
                    ID = DBint(rs("statsID"))
                End If
                rs.Close()
                units = Replace(Trim(GetVal(r, "Units")), ",", "")
                consid = Trim(GetVal(r, "Consideration (nearest $ million)"))
                If consid = "" Then
                    'figures are in single dollars and cents from 1993-04 to 1994-05 inclusive
                    consid = Replace(Trim(GetVal(r, "Consideration ($)")), ",", "")
                    If consid = "-" Or consid = "" Then
                        consid = ""
                    Else
                        consid = CStr(Int(CDbl(Replace(consid, ",", "")) / 1000000 + 0.5))
                    End If
                ElseIf consid = "-" Then
                    consid = ""
                Else
                    consid = Replace(consid, ",", "")
                End If
                Console.WriteLine(y & vbTab & m & vbTab & ID & vbTab & units & vbTab & consid)
                con.Execute("REPLACE INTO landreg(statID,d,units,consid)" & Valsql({ID, y & "-" & m & "-01", units, consid}))
            End If
        Next
        con = Nothing
        done = True
        Exit Sub
repErr:
        Call ErrMail("Land Registry LRmonth failed", Err)
    End Sub
End Module
