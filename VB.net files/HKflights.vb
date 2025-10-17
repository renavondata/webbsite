Option Compare Text
Option Explicit On

Imports ScraperKit
Imports JSONkit
Module HKflights
    Sub Main()
        Call GetAirlines()
        Call GetAirports()
        Call FlightsUpdate()
    End Sub
    Sub FlightsUpdate()
        Dim d As Date
        d = Today.AddDays(-7)
        Do Until d > Now.AddDays(14).AddHours(-4)
            '2025-07-28 reducing "flights not found" errors by subtracting 4 hours so that the 14th day ahead is not loaded until 04:00
            Call GetFlights(d)
            d = d.AddDays(1)
        Loop
    End Sub
    Sub GetAirlines()
        Dim r, s, a(), ICAO, names(), enName, tcName, scName As String,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        r = GetWeb("https://www.hongkongairport.com/flightinfo-rest/rest/airlines")
        If r = "" Then
            Call SendMail("Airlines table not found at HK airport")
            Exit Sub
        End If
        Call OpenEnigma(con)
        a = ReadArray(r)
        For Each s In a
            ICAO = GetVal(s, "code")
            If ICAO <> "9PP" And ICAO <> "CTM" Then 'don't know why 9PP is there. CTM is French Military, obsolete
                names = ReadArray(GetVal(s, "description"))
                enName = names(0)
                tcName = names(1)
                scName = names(2)
                Console.WriteLine(ICAO & "," & enName & "," & tcName & "," & scName)
                rs.Open("SELECT * FROM airlines WHERE ICAO='" & ICAO & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    rs.AddNew()
                    rs("ICAO").Value = ICAO
                End If
                rs("enName").Value = enName
                rs("tcName").Value = tcName
                rs("scName").Value = scName
                rs.Update()
                rs.Close()
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetAirlines failed with airline:" & ICAO, Err)
    End Sub
    Sub GetAirports()
        On Error GoTo RepErr
        Dim r, s, a(), IATA, names(), enName, tcName, scName, country As String,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        r = GetWeb("https://www.hongkongairport.com/flightinfo-rest/rest/airports")
        If r = "" Then
            Call SendMail("Airports table not found at HK airport")
            Exit Sub
        End If
        Call OpenEnigma(con)
        a = ReadArray(r)
        For Each s In a
            IATA = GetVal(s, "code")
            If IATA <> "AAA" Then 'AAA is a testing data line
                country = GetVal(s, "country")
                names = ReadArray(GetVal(s, "description"))
                enName = names(0)
                tcName = names(1)
                scName = names(2)
                Console.WriteLine(IATA & "," & country & "," & enName & "," & tcName & "," & scName)
                rs.Open("SELECT * FROM airports WHERE IATA='" & IATA & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    rs.AddNew()
                    rs("IATA").Value = IATA
                End If
                rs("enName").Value = enName
                rs("tcName").Value = tcName
                rs("scName").Value = scName
                rs("country").Value = country
                rs.Update()
                rs.Close()
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetAirports failed with airport:" & IATA, Err)
    End Sub
    Sub GetFlights(target As Date)
        On Error GoTo RepErr
        Dim d, td, r, s, t, u, a(), b(), flight(), sched, status, actual, flightNo, airline, mainline, airports(), startTime As String,
            cargo, arrival As Boolean,
            ID, x As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        td = MSdate(target)
        r = GetWeb("https://www.hongkongairport.com/flightinfo-rest/rest/flights?lang=en&date=" & td)
        If r = "" Or r = "[]" Then
            Call SendMail("Flights not found at HK airport for " & td)
            Exit Sub
        End If
        Call OpenEnigma(con)
        startTime = MSdateTime(CDate(con.Execute("SELECT NOW()").Fields(0).Value))
        a = ReadArray(r)
        For Each s In a
            d = GetVal(s, "date")
            arrival = CBool(GetVal(s, "arrival"))
            cargo = CBool(GetVal(s, "cargo"))
            t = GetVal(s, "list")
            If t <> "[]" Then
                b = ReadArray(t)
                For Each t In b
                    actual = ""
                    sched = d & " " & GetVal(t, "time")
                    flight = ReadArray(GetVal(t, "flight"))
                    'read primary flight number
                    u = flight(0)
                    flightNo = Replace(GetVal(u, "no"), " ", "")
                    mainline = GetVal(u, "airline")
                    Console.Write(flightNo & vbTab & mainline)
                    'note: a transit flight could arrive and depart with the same flight number
                    rs.Open("SELECT * FROM flights WHERE sched='" & sched & "' AND flightNo='" & flightNo & "' AND arrival=" & arrival,
                            con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs.EOF Then
                        rs.AddNew()
                        rs("sched").Value = sched
                        rs("flightNo").Value = flightNo
                        rs("airline").Value = mainline
                        rs("arrival").Value = arrival
                        rs.Update()
                        rs.Close()
                        ID = LastID(con)
                        rs.Open("SELECT * FROM flights WHERE ID=" & ID, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    Else
                        ID = CInt(rs("ID").Value)
                    End If
                    rs("cargo").Value = cargo 'in case a passenger flight has become cargo-only?
                    If Not cargo Then
                        'terminal field exists but is empty for arrivals
                        u = GetVal(t, "terminal")
                        If u > "" And IsNumeric(Right(u, 1)) Then rs("terminal").Value = Right(u, 1)
                    End If
                    status = GetVal(t, "status")
                    rs("status").Value = status
                    rs("cancelled").Value = (status = "Cancelled")
                    If arrival Then
                        If Left(status, 7) = "At gate" Then
                            actual = Mid(status, 9)
                            If Len(actual) > 5 Then 'different date
                                actual = MSdateDMY(Left(Right(actual, 11), 10)) & " " & Left(actual, 5)
                            Else
                                actual = d & " " & actual
                            End If
                            rs("actual").Value = actual
                        End If
                        If Not cargo Then
                            u = GetVal(t, "stand")
                            If u > "" Then rs("stand").Value = u
                            u = GetVal(t, "baggage")
                            If u > "" Then rs("baggage").Value = u
                            u = GetVal(t, "hall")
                            If u > "" Then rs("hall").Value = u
                        End If
                    Else
                        'departures
                        If Not cargo Then
                            u = GetVal(t, "aisle")
                            If u > "" Then rs("aisle").Value = u
                            u = GetVal(t, "gate")
                            If u > "" Then rs("gate").Value = u
                        End If
                        If Left(status, 3) = "Dep" Then
                            actual = Mid(status, 5)
                            If Len(actual) > 5 Then 'different date
                                actual = MSdateDMY(Left(Right(actual, 11), 10)) & " " & Left(actual, 5)
                            Else
                                actual = d & " " & actual
                            End If
                            rs("actual").Value = actual
                        End If
                    End If
                    rs.Update()
                    rs.Close()
                    con.Execute("UPDATE flights SET lastSeen=NOW() WHERE ID=" & ID)
                    Console.WriteLine(vbTab & sched & vbTab & actual)
                    'do airports. Delete sequence in case of rerouting
                    con.Execute("DELETE FROM destor WHERE flightID=" & ID)
                    If arrival Then
                        airports = ReadArray(GetVal(t, "origin"))
                    Else
                        airports = ReadArray(GetVal(t, "destination"))
                    End If
                    For x = 0 To UBound(airports)
                        con.Execute("INSERT INTO destor (flightID,seq,IATA) VALUES (" & ID & "," & x + 1 & ",'" & airports(x) & "')")
                    Next
                    'do codeshares. Delete records in case some have dropped
                    con.Execute("DELETE FROM codeshare WHERE flightID=" & ID)
                    For x = 1 To UBound(flight)
                        u = flight(x)
                        flightNo = Replace(GetVal(u, "no"), " ", "")
                        airline = GetVal(u, "airline")
                        'prevent airline codesharing with itself, which happened in 2024-12 with FJ392
                        If airline <> mainline Then con.Execute("INSERT INTO codeshare (flightID,flightNo,airline)" & Valsql({ID, flightNo, airline}))
                    Next
                Next
            End If
            If td = d Then
                'this was the JSON file for the target date
                con.Execute("UPDATE flights SET cancelled=True WHERE DATE(sched)='" & d & "' AND cargo=" & cargo & " AND arrival=" & arrival &
                            " AND lastSeen<'" & startTime & "' AND isNull(actual)")
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
RepErr:
        Call ErrMail("GetFlights failed with date:" & d & " flightNo:" & flightNo, Err(), t)
    End Sub
End Module
