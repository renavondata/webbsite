Option Compare Text
Option Explicit On

Imports JSONkit
Imports ScraperKit
Module HKMA

    Sub Main()
        'Get Exchange Fund Balance Sheet for last 12 months
        Call GetRecords(1, "?pagesize=12")
        'Get currency in circulation for last 12 months
        Call GetRecords(2, "?pagesize=12")
        'Get monetary base for last 10 days
        Call GetRecords(3, "?pagesize=10")
        'Console.ReadKey()
    End Sub
    Sub GetAcItems(s As Integer)
        'get the balance sheet items from the swagger definition
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            r, a(,) As String, x As Integer
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM datasource WHERE ID=" & s, con)
        r = GetWeb(rs("swagger").Value.ToString)
        r = GetItem(r, rs("fieldlist").Value.ToString)
        rs.Close()
        If r <> "" Then
            a = GetSwagger(r)
            For x = 0 To UBound(a, 2)
                rs.Open("SELECT * FROM acitems WHERE datasource=" & s & " AND sourceName='" & a(0, x) & "'", con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    rs.AddNew()
                    rs("datasource").Value = s
                    rs("sourceName").Value = a(0, x)
                End If
                rs("type").Value = a(1, x)
                rs.Update()
                rs.Close()
                Console.WriteLine(a(0, x) & vbTab & a(1, x))
            Next
        End If
        con.Close()
        con = Nothing
    End Sub

    Sub GetRecords(ID As Integer, Optional querystring As String = "")
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            r, s, a(), acID, acName, acVal, URL, dateField, dateStr, fields(,), sourceName As String, atDate, maxDate As Date,
            x As Integer
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM datasource WHERE ID=" & ID, con)
        URL = rs("URL").Value.ToString & querystring
        sourceName = rs("name").Value.ToString
        rs.Close()
        'get the latest date of data before this run
        rs.Open("SELECT max(atDate) maxDate FROM acdata d JOIN acitems i on d.acitem=i.id WHERE datasource=" & ID & " GROUP BY datasource", con)
        If Not rs.EOF Then maxDate = CDate(rs("maxDate").Value)
        rs.Close()
        'get the name of the date field
        dateField = con.Execute("SELECT sourceName FROM acitems WHERE refDate AND datasource=" & ID).Fields(0).Value.ToString
        rs.Open("SELECT ID,sourceName FROM acitems WHERE NOT refDate AND type<>'string' AND datasource=" & ID, con)
        fields = GetRows(rs)
        rs.Close()
        r = GetWeb(URL)
        r = GetItem(r, "result.records")
        a = ReadArray(r)
        For Each s In a
            dateStr = GetVal(s, dateField)
            If Len(dateStr) = 7 And Mid(dateStr, 5, 1) = "-" Then
                'format YYYY-MM
                atDate = DateSerial(CInt(Left(dateStr, 4)), CInt(Right(dateStr, 2)), 1)
                atDate = atDate.AddMonths(1).AddDays(-1)
            Else
                atDate = CDate(dateStr)
            End If
            For x = 0 To UBound(fields, 2)
                acID = fields(0, x).ToString
                acName = fields(1, x).ToString
                acVal = GetVal(s, acName)
                If acVal = "null" Then acVal = "0"
                Console.WriteLine(atDate & vbTab & acID & vbTab & acName & vbTab & acVal)
                con.Execute("REPLACE INTO acData (acItem,atDate,acVal) VALUES (" & acID & ",'" & MSdate(atDate) & "'," & acVal & ")")
            Next
            If atDate > maxDate Then Call SendMail("New data found for: " & sourceName, "As at: " & MSdate(atDate))
        Next
    End Sub
End Module
