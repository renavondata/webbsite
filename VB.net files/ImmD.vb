Option Compare Text
Option Explicit On

Imports ScraperKit
Module ImmD
    Public Sub Main()
        Call GetHKpx()
    End Sub
    Sub GetHKpx()
        On Error GoTo repErr
        'Add new data since LastHKpx date
        'New version as Immd revamped web to display a CSV file using javascript, effective 2023-07-11. We can access the CSV file.
        Dim con As New ADODB.Connection,
            r, csv(,), d, lastd, port, arriv(2), depart(2), portID As String,
            x, y As Integer
        r = GetWeb("https://www.immd.gov.hk/opendata/eng/transport/immigration_clearance/statistics_on_daily_passenger_traffic.csv",, False)
        Console.WriteLine("Got file, now reading")
        lastd = GetLog("LastHKpx")
        'jump to last seen date, to save parsing rest of file
        r = Mid(r, InStr(r, DMYMSdate(lastd, "-")))
        csv = ReadCSV2D(r)
        Call OpenEnigma(con)
        d = lastd
        For y = 0 To UBound(csv, 2)
            d = MSdateDMY(csv(0, y))
            If d > lastd Then
                'new data. CSV has 1 row for arrival and next row for departures, for each port
                port = csv(1, y)
                'our passenger types are 1=HK residents,2=Mainland visitors,3=Other visitors
                arriv(0) = csv(3, y)
                arriv(1) = csv(4, y)
                arriv(2) = csv(5, y)
                y += 1
                depart(0) = csv(3, y)
                depart(1) = csv(4, y)
                depart(2) = csv(5, y)
                'check for new port
                If Not CBool(con.Execute("SELECT EXISTS(SELECT * FROM hkports WHERE name='" & port & "')").Fields(0).Value) Then
                    con.Execute("INSERT INTO hkports (name) VALUES('" & port & "')")
                End If
                portID = con.Execute("SELECT ID FROM hkports WHERE name=" & Sqv(port)).Fields(0).Value.ToString
                For x = 1 To 3
                    con.Execute("REPLACE INTO hkpx(d,port,pxType,arrivals,departures)" & Valsql({d, portID, x, arriv(x - 1), depart(x - 1)}))
                    Console.WriteLine(d & vbTab & portID & vbTab & port & vbTab & x & vbTab & arriv(x - 1) & vbTab & depart(x - 1))
                Next
            End If
        Next
        If d > lastd Then Call PutLog("LastHKpx", d)
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ImmD failed", Err)
    End Sub

End Module
