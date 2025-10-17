Option Explicit On
Option Compare Text
Imports ScraperKit
Module SDI
    Sub Main()
        Call UpdSDI3()
    End Sub
    Sub UpdSDI3()
        'bring the SDI Form 3A filings up to date
        'for filings >=2017-07-03
        On Error GoTo repErr
        Dim done As Boolean, d As Date
        d = CDate(GetLog("LastSDI3sum")).AddDays(1)
        Do Until d > Today
            If NotHol(d) Then
                done = GetSDI3sum(d)
                Console.WriteLine(d & vbTab & "done:" & done)
                If done Then Call PutLog("LastSDI3sum", MSdate(d))
            Else
                Console.WriteLine("Not a trading day:" & d)
            End If
            d = d.AddDays(1)
        Loop
        Call SDInullDir() 'try to fix missing director IDs
        Exit Sub
repErr:
        Call ErrMail("SDI update failed", Err)
    End Sub
    Sub SDInullDir()
        'try to fill any SDI with no director found, for filings >=3-Jul-2017
        'this is because filings sometimes come in before a director is in the database
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT serNo FROM sdi WHERE isNull(dir) AND NOT isNull(serNo) AND not isnull(issueID)", con)
        Do Until rs.EOF
            Call ProcOneFiling(rs("serNO").Value.ToString)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Function GetSDI3sum(ByVal d As Date) As Boolean
        GetSDI3sum = False
        'from the daily summary, collect the serial numbers of the form 3A filings published on date d
        'then use the serial numbers to pull and process the filings
        Dim r, filing, URL As String,
            x, y As Integer
        'SDI3sumURL is the base URL of the daily summary of directors' dealings at HKEX
        URL = GetLog("SDI3sumURL") & Format(d, "yyyyMMdd") & "C2.htm"
        r = GetBody(GetWeb(URL))
        If r = "" Or InStr(r, "temporarily unavailable") + InStr(r, "Error 404") > 0 Then Exit Function
        x = InStr(r, "Form3A.aspx")
        Do Until x = 0
            x = InStr(x, r, ">") + 1
            y = InStr(x, r, "<")
            filing = Mid(r, x, y - x)
            Console.WriteLine(filing)
            Call ProcOneFiling(filing)
            'the link appears twice in each row, so skip the next row
            x = InStr(x, r, "<tr bgColor")
            If x > 0 Then x = InStr(x, r, "Form3A.aspx")
        Loop
        GetSDI3sum = True
    End Function
    Sub ProcOneFiling(filing As String)
        'filing is the serial number of the SDI filing
        Dim r As String
        'SDI3root is the base URL for SDI3 filings
        r = GetBody(GetWeb(GetLog("SDI3root") & filing))
        If r <> "" And InStr(r, "temporarily unavailable") + InStr(r, "Error 404") = 0 Then Call ProcSDI3v3(r, filing)
    End Sub

    Sub ProcSDI3v3(ByVal resp As String, filing As String)
        '2024-09-28, getting OLEDB error on adding Chinese stockName via recordset, so trying con.Execute instead
        'process an SDI Form 3A filing for filings on or after 3-Jul-2017
        Dim name1, name2, cName, amend, nameCo, longShs, longStk, shortShs, shortStk, hiPrice, avPrice, avCon, conCode,
          stockCode, stockName, suffix, posType, tablCon, curr, s, ccc, shsOut, sql As String,
          dir, issueID, issuer, sdiID, x, y As Integer,
          relDate, awDate, signDate As Date,
          con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        sdiID = CInt(con.Execute("SELECT IFNULL((SELECT ID FROM sdi WHERE form=3 AND serNo='" & filing & "'),0)").Fields(0).Value)
        If sdiID = 0 Then
            con.Execute("INSERT INTO sdi (form,serNO)" & Valsql({3, filing}))
            sdiID = LastID(con)
        End If
        'check whether this is an amendment to another filing
        s = ""
        Call TagContID(1, resp, "lblDSerialNo", s)
        x = InStr(s, "Amendment to")
        If x > 0 Then
            y = InStr(x + 12, s, ")")
            amend = Trim(Mid(s, x + 13, y - x - 13))
            con.Execute("UPDATE sdi" & Setsql("serNoAmend", {amend}) & "ID=" & sdiID)
            con.Execute("UPDATE sdi" & Setsql("serNoSuper", {filing}) & "serNo='" & amend & "'")
            Console.WriteLine("Amendment to:" & amend)
        End If
        x = InStr(s, "Superseded by")
        If x > 0 Then
            y = InStr(x + 13, s, ")")
            amend = Trim(Mid(s, x + 14, y - x - 14))
            con.Execute("UPDATE sdi" & Setsql("serNoSuper", {amend}) & "ID=" & sdiID)
            con.Execute("UPDATE sdi" & Setsql("serNoAmend", {filing}) & "serNo='" & amend & "'")
            Console.WriteLine("Superseded by:" & amend)
        End If
        'find and convert values. nameCo is not stored in DB but used later to find directors
        nameCo = CleanName(SDIdata(resp, "lblDName"))

        name1 = CleanName(SDIdata(resp, "lblDSurname"))
        name2 = CleanName(SDIdata(resp, "lblDFirstname"))
        cName = Replace(CleanName(SDIdata(resp, "lblDChiName")), " ", "")
        ccc = SDIdata(resp, "lblDCharCode")
        stockCode = SDIdata(resp, "lblDStockCode")
        stockName = Replace(SDIdata(resp, "lblViewCorpName"), "&amp;", "&")
        shsOut = Replace(SDIdata(resp, "lblDIssued"), ",", "")
        relDate = ReadDMY(SDIdata(resp, "lblDEventDate"))
        awDate = ReadDMY(SDIdata(resp, "lblDAwareDate"))
        signDate = ReadDMY(SDIdata(resp, "lblDSignDate"))
        'now do box 24
        curr = SDIdata(resp, "lblDEvtCurrency")
        If curr <> "" Then
            If curr = "others" Then curr = "N/A"
            rs.Open("SELECT ID from currencies WHERE currency='" & curr & "' OR HKEXcurr='" & curr & "'", con)
            If Not rs.EOF Then curr = rs("ID").Value.ToString Else curr = ""
            rs.Close()
        End If
        hiPrice = SDIdata(resp, "lblDEvtHPrice")
        avPrice = SDIdata(resp, "lblDEvtAPrice")
        avCon = SDIdata(resp, "lblDEvtAConsider")
        x = InStr(resp, "lblDEvtNatConsider")
        Call TagCont(x, resp, "td", s)
        If s <> "" Then conCode = (CInt(s) - 3100).ToString Else conCode = "" 'values 3101 to 3104
        sql = "UPDATE sdi" & Setsql("name1,name2,cName,ccc,stockCode,stockName,shsOut,relDate,awDate,signDate,curr,hiPrice,avPrice,avCon,conCode",
                                    {name1, name2, cName, ccc, stockCode, stockName, shsOut, relDate, awDate, signDate, curr, hiPrice, avPrice, avCon, conCode}) & "ID=" & sdiID
        con.Execute(sql)
        'find issueID, but don't overwrite, as at least 2 Domestic Share filings (75701, 114901, since replaced) used the
        'wrong stock name so we had to manually set the issueID in that case
        issueID = DBint(con.Execute("SELECT issueID FROM sdi WHERE ID=" & sdiID).Fields(0))
        If issueID > 0 Then
            issuer = CInt(con.Execute("SELECT issuer FROM issue WHERE ID1=" & issueID).Fields(0).Value)
        Else
            issuer = 0
            issueID = 0
            If stockCode <> "" Then
                'Some filings are made outside the listing period, so spread target 1 month either side
                sql = "SELECT issueID,issuer from stocklistings JOIN issue ON issueID=ID1" &
                    " WHERE stockExID IN (1,20,22,23)" &
                    " AND cast(stockCode as unsigned)=" & CInt(stockCode) &
                    " AND (isNull(firstTradeDate) OR firstTradeDate<='" & MSdate(DateAdd("m", 1, relDate)) & "') " &
                    " AND (isNull(delistDate) OR delistDate>'" & MSdate(DateAdd("m", -1, relDate)) & "')"
                rs.Open(sql, con)
                If Not rs.EOF Then
                    issueID = CInt(rs("IssueID").Value)
                    issuer = CInt(rs("issuer").Value)
                    con.Execute("UPDATE sdi SET issueID=" & issueID & " WHERE ID=" & sdiID)
                End If
                rs.Close()
            Else
                'could be A-shares without HK stockCode. Have we seen this issue before?
                rs.Open("SELECT issueID,issuer FROM sdi JOIN issue ON issueID=ID1 WHERE not isnull(issueID)" &
                    " AND stockName='" & Apos(stockName) & "'", con)
                If Not rs.EOF Then
                    issueID = CInt(rs("IssueID").Value)
                    issuer = CInt(rs("issuer").Value)
                    con.Execute("UPDATE sdi SET issueID=" & issueID & " WHERE ID=" & sdiID)
                Else
                    'try to match name, if A Share or Domestic Share
                    For Each suffix In {"- A Shares", "- Domestic Shares"}
                        If Right(stockName, Len(suffix)) = suffix Then
                            stockName = Trim(Left(stockName, Len(stockName) - Len(suffix)))
                            rs.Close()
                            rs.Open("SELECT personID FROM organisations WHERE nameHash=orgHash('" & Apos(stockName) & "')", con)
                            If Not rs.EOF Then
                                issuer = CInt(rs("PersonID").Value)
                                Exit For
                            End If
                        End If
                    Next
                    If issuer > 0 Then
                        'is this an A-share in our database?
                        rs.Close()
                        rs.Open("SELECT ID1 FROM issue WHERE typeID=7 AND issuer=" & issuer, con)
                        If Not rs.EOF Then
                            issueID = CInt(rs("ID1").Value)
                            con.Execute("UPDATE sdi SET issueID=" & issueID & " WHERE ID=" & sdiID)
                        End If
                    End If
                End If
                rs.Close()
            End If
        End If
        'find director, if not already known
        dir = DBint(con.Execute("SELECT dir FROM sdi WHERE ID=" & sdiID).Fields(0))
        If issueID > 0 And dir = 0 Then
            dir = FindDir(issuer, issueID, relDate, name1, name2, cName, nameCo)
            If dir > 0 Then con.Execute("UPDATE sdi SET dir=" & dir & " WHERE ID=" & sdiID)
        End If
        If dir > 0 And cName > "" Then
            'add the chinese name from SDI to People but don't overwrite
            If CBool(con.Execute("SELECT ISNULL(cName) FROM people WHERE personID=" & dir).Fields(0).Value) Then _
                con.Execute("UPDATE people set cName='" & CleanName(cName) & "' WHERE personID=" & dir)
        End If
        posType = SDIdata(resp, "lblDEvtPosition")
        If posType <> "" Then Call DoRelEvt2(resp, sdiID, posType, "lblDEvtReason", "lblDEvtCapBefore", "lblDEvtCapAfter", "lblDEvtShare")
        posType = SDIdata(resp, "lblDEvtPosition2")
        If posType <> "" Then Call DoRelEvt2(resp, sdiID, posType, "lblDEvtReason2", "lblDEvtCapBefore2", "lblDEvtCapAfter2", "lblDEvtShare2")
        'read box 25
        x = InStr(resp, "grdSh_BEvt")
        longShs = Nothing : longStk = Nothing : shortShs = Nothing : shortStk = Nothing
        Call GrdSh2(x, resp, longShs, longStk, shortShs, shortStk)
        con.Execute("UPDATE sdi" & Setsql("longShs1,longStk1,shortShs1,shortStk1", {longShs, longStk, shortShs, shortStk}) & "ID=" & sdiID)
        'read box 26
        x = InStr(x, resp, "grdSh_AEvt")
        longShs = Nothing : longStk = Nothing : shortShs = Nothing : shortStk = Nothing
        Call GrdSh2(x, resp, longShs, longStk, shortShs, shortStk)
        con.Execute("UPDATE sdi" & Setsql("longShs2,longStk2,shortShs2,shortStk2", {longShs, longStk, shortShs, shortStk}) & "ID=" & sdiID)
        'read box 17
        'get the table
        tablCon = Nothing
        Call TagContID(x, resp, "grdCap_Dir_Sh", tablCon)
        Call GrdCapSh2(tablCon, sdiID)
        con.Close()
        con = Nothing
        Console.WriteLine("Filing " & filing & " processed")
    End Sub

    Function SDIdata(r As String, label As String) As String
        'extract data from an SDI span element using its html ID
        'would work with any labelled element as long as it is the innnermost element
        Dim x, y As Integer
        'include quote marks to avoid confusing labels with same stem
        label = """" & label & """"
        x = InStr(r, label)
        If x > 0 Then
            x = InStr(x, r, ">") + 1
            y = InStr(x, r, "<")
            If y = 0 Then y = Len(r) + 1 'tag doesn't close
            If y = x Then Return Nothing 'no contents
            Return Trim(Mid(r, x, y - x))
        Else
            Return Nothing
        End If
    End Function
    Function FindDir(ByVal issuer As Integer, ByVal IssueID As Integer, ByVal relDate As Date,
                     ByVal Name1 As String, ByVal Name2 As String, ByVal cName As String, ByVal nameCo As String) As Integer
        'try to match a director in our DB with a filing name
        'or return 0
        FindDir = 0
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, rs2 As New ADODB.Recordset,
            comma, nameCnt, x As Integer,
            dirName1, dirName2, altName2, strSQL, nameSplit() As String
        'SDI sometimes has (Resigned on DD/MM/YYY) in other name, so strip it
        Call OpenEnigma(con)
        'check for REITs
        rs.Open("SELECT * FROM issue WHERE typeID=10 AND ID1=" & IssueID, con)
        If Not rs.EOF Then
            'it's a unit trust (including REITs), so find manager
            rs.Close()
            rs.Open("SELECT * FROM adviserships JOIN organisations o ON adviser=o.personID WHERE role=9 AND company=" & issuer &
                " AND (isnull(addDate) or addDate<='" & MSdate(relDate) & "')" &
                " AND (isnull(remDate) or remDate>'" & MSdate(relDate) & "')", con)
            If Not rs.EOF Then
                'check if the "director" is actually the manager, otherwise substitute it to find directors of the manager
                If CleanName(rs("Name1").Value.ToString) = nameCo Then
                    FindDir = CInt(rs("Adviser").Value)
                Else
                    issuer = CInt(rs("Adviser").Value)
                End If
            End If
        End If
        rs.Close()
        'have we seen this person in SDIs before, with same stock?
        If Name1 <> "" And Name2 <> "" And FindDir = 0 Then
            rs.Open("SELECT dir FROM sdi WHERE (Not isNull(dir)) AND issueID=" & IssueID & " AND name1='" & Apos(Name1) &
                    "' AND name2='" & Apos(Name2) & "'", con)
            If Not rs.EOF Then FindDir = CInt(rs("Dir").Value)
            rs.Close()
        ElseIf Name1 <> "" Then
            'person with no forenames
            rs.Open("SELECT dir FROM sdi WHERE (Not isNull(dir)) AND isNull(Name2) AND issueID=" & IssueID & " AND name1='" & Apos(Name1) & "'", con)
            If Not rs.EOF Then FindDir = CInt(rs("Dir").Value)
            rs.Close()
        ElseIf cName <> "" Then
            'filing with no English names
            rs.Open("SELECT dir FROM sdi WHERE (Not isNull(dir)) AND issueID=" & IssueID & " AND cName='" & Apos(cName) & "'", con)
            If Not rs.EOF Then FindDir = CInt(rs("Dir").Value)
            rs.Close()
        End If
        'failed to match an SDI. Now try matching against the directorships using the people table.
        strSQL = "SELECT name1,name2,dn1,dn2,cName,director from directorships JOIN people ON directorships.director=people.personID" &
            " WHERE company=" & issuer
        'first try exact match of director of this co on Chinese name
        If cName <> "" And FindDir = 0 Then
            rs.Open(strSQL & " AND cName='" & Apos(cName) & "'", con)
            If Not rs.EOF Then FindDir = CInt(rs("Director").Value)
            rs.Close()
        End If
        Name1 = Trim(Replace(Name1, "-", " "))
        Name2 = Trim(Replace(Name2, "-", " "))
        'strip titles
        If Name2 <> "" And FindDir = 0 Then
            For Each s In {"Sir", "Baroness", "Lord", "Dr"}
                If Left(Name2, Len(s) + 1) = s & " " Or Left(Name2, Len(s) + 1) = s & "." Then
                    Name2 = Trim(Mid(Name2, Len(s) + 2))
                    Exit For
                End If
            Next
            Name2 = StripSpace(Trim(Replace(Name2, ".", " ")))
        End If
        If Name1 <> "" Then
            If Left(Name1, 5) = "Lord " Then Name1 = Trim(Mid(Name1, 6))
        End If
        'remove suffix from surname, e.g. Jr., OBE, BBS
        comma = InStr(Name1, ",")
        If comma > 0 Then Name1 = Trim(Left(Name1, comma - 1))
        comma = InStr(Name2, ",")
        'if there's a comma in the forenames, assume the English name is after it
        If comma > 0 Then Name2 = Trim(Mid(Name2, comma + 1)) & " " & Trim(Left(Name2, comma - 1))
        If Name2 <> "" And FindDir = 0 Then
            'first try exact match on anglicised name
            rs.Open(strSQL & " AND dn1='" & Apos(Name1) & "' AND dn2='" & Apos(Name2) & "'", con)
            If Not rs.EOF Then
                FindDir = CInt(rs("Director").Value)
            Else
                rs.Close()
                'remove spaces and try again
                rs.Open(strSQL & " AND name1='" & Apos(Name1) & "' AND replace(dn2,' ','')='" & Apos(Replace(Name2, " ", "")) & "'", con)
                If Not rs.EOF Then FindDir = CInt(rs("Director").Value)
            End If
            rs.Close()
        End If
        altName2 = Name2
        If comma = 0 And FindDir = 0 Then
            'if name2 is at least 2 words then try to move English names to the front and try exact matches
            'some English names are also Chinese e.g. "Sean" in Li Fook Sean Simon
            nameSplit = Split(Name2)
            nameCnt = UBound(nameSplit)
            If nameCnt > 0 Then
                x = nameCnt
                Do Until x = 0
                    rs.Open("SELECT * FROM namesex WHERE sex<>'C' AND name='" & Apos(nameSplit(x)) & "'", con)
                    If rs.EOF Then
                        'last word is probably Chinese, so stop
                        rs.Close()
                        Exit Do
                    End If
                    rs.Close()
                    'move a probable English name to the front
                    altName2 = nameSplit(x) & " " & Trim(Left(altName2, Len(altName2) - Len(nameSplit(x))))
                    rs.Open(strSQL & " AND dn1='" & Apos(Name1) & "' AND dn2='" & Apos(altName2) & "'", con)
                    If Not rs.EOF Then
                        FindDir = CInt(rs("Director").Value)
                        rs.Close()
                        Exit Do
                    End If
                    rs.Close()
                    x -= 1
                Loop
            End If
        End If
        If Name1 <> "" And FindDir = 0 Then
            'now try with all directors of same surname
            rs.Open(strSQL & " AND dn1='" & Apos(Name1) & "'", con)
            Do Until rs.EOF
                dirName2 = rs("dn2").Value.ToString
                'allow match if director name includes search name, because search name might omit English name
                'allow removal of spaces because mainland Chinese names often do
                If InStr(dirName2, Name2) <> 0 Or
                        ((UBound(Split(dirName2)) > 0 Or UBound(Split(Name2)) > 0) And
                        (InStr(Replace(dirName2, " ", ""), Replace(Name2, " ", "")) <> 0 Or
                        InStr(Replace(Name2, " ", ""), Replace(dirName2, " ", "")) <> 0 Or
                        InStr(Replace(altName2, " ", ""), Replace(dirName2, " ", "")) <> 0 Or
                        InStr(Replace(dirName2, " ", ""), Replace(altName2, " ", "")) <> 0)) Then
                    FindDir = CInt(rs("Director").Value)
                    Exit Do
                End If
                rs.MoveNext()
            Loop
            rs.Close()
        End If
        If Name1 <> "" And Name2 <> "" And FindDir = 0 Then
            'now try all directors of that co
            rs.Open(strSQL, con)
            Do Until rs.EOF
                dirName1 = rs("dn1").Value.ToString
                dirName2 = rs("dn2").Value.ToString
                'allow a partial match in the surname if one of them has at least 2 words, because married women sometimes use one or both surnames
                If Name1 = dirName1 Or
                    (InStr(dirName1, Name1) <> 0 And UBound(Split(dirName1)) > 0) Or
                    (InStr(Name1, dirName1) <> 0 And UBound(Split(Name1)) > 0) Then
                    'allow a partial match in the forenames if director forename has at least 2 words
                    If Replace(dirName2, " ", "") = Replace(Name2, " ", "") Or Replace(dirName2, " ", "") = Replace(altName2, " ", "") Or
                        (InStr(dirName2, Name2) <> 0 And UBound(Split(dirName2)) > 0) Then
                        FindDir = CInt(rs("Director").Value)
                        Exit Do
                    End If
                End If
                rs.MoveNext()
            Loop
            rs.Close()
        End If
        con.Close()
        con = Nothing
    End Function
    Sub DoRelEvt2(ByVal resp As String, ByVal sdiID As Integer, ByVal posType As String, ByVal lblReason As String, ByVal lblCapBefore As String,
                  ByVal lblCapAfter As String, ByVal lblShsInv As String)
        'new version for filings >=3-Jul-2017
        'process a relevant event row using labels from SDI (box 24 on Form 3A)
        Dim reason, capBefore, capAfter, shsInv As String, x, posTypeInt As Integer,
        con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        posTypeInt = CodePosType(posType)
        x = InStr(resp, lblReason)
        reason = Nothing
        Call TagCont(x, resp, "td", reason)
        If reason <> "" Then
            'in the 2017 form, the short position row always appears, even if empty, so only do a row if a reason is given
            capBefore = Nothing
            x = InStr(x, resp, lblCapBefore)
            Call TagCont(x, resp, "td", capBefore)
            x = InStr(x, resp, lblCapAfter)
            capAfter = Nothing
            Call TagCont(x, resp, "td", capAfter)
            rs.Open("SELECT * FROM sdievent WHERE sdiID=" & sdiID & " AND posType=" & posTypeInt, con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
            If rs.EOF Then
                rs.AddNew()
                rs("sdiID").Value = sdiID
                rs("posType").Value = posTypeInt
                rs("probReason").Value = reason
            End If
            rs("reason").Value = reason
            rs("capBefore").Value = capBefore
            rs("capAfter").Value = capAfter
            shsInv = SDIdata(resp, lblShsInv)
            If shsInv <> "" Then rs("shsInv").Value = CDbl(shsInv)
            rs.Update()
            rs.Close()
        End If
        con.Close()
        con = Nothing
    End Sub
    Function CodePosType(posType As String) As Integer
        Select Case posType
            Case "Long position" : Return 1
            Case "Short position" : Return 2
            Case "Lending Pool" : Return 3
        End Select
        Return 0 'new type
    End Function
    Sub GrdSh2(ByRef x As Integer, resp As String, ByRef longShs As String, ByRef longStk As String, ByRef shortShs As String, ByRef shortStk As String)
        'for filings >=2017-07-03 - but this might work for earlier filings too
        'uses tagCont from scraper kit rather than getElCon, so the variants returned are strings
        'read box 25 or 26
        Dim tablend As Integer, temp1, temp2, temp3 As String
        tablend = InStr(x, resp, "</table")
        x = TagStart(x, resp, "<tr")
        'skip header
        x = TagStart(x, resp, "<tr")
        Do Until x > tablend
            'read the rows,which contain a long position and/or short position in either order
            temp1 = Nothing : temp2 = Nothing : temp3 = Nothing
            Call TagCont(x, resp, "td", temp1)
            Call TagCont(x, resp, "td", temp2)
            Call TagCont(x, resp, "td", temp3)
            If temp1 = "Long Position" And longShs = "" Then
                longShs = Replace(temp2, ",", "")
                longStk = Replace(temp3, ",", "")
            ElseIf temp1 = "Short Position" And shortShs = "" Then
                shortShs = Replace(temp2, ",", "")
                shortStk = Replace(temp3, ",", "")
            End If
            x = TagStart(x, resp, "<tr")
        Loop
    End Sub
    Sub GrdCapSh2(table1 As String, sdiID As Integer)
        If table1 = "" Then Exit Sub
        'for filings >=2017-07-03
        'process table contents from box 27 on form 3A - capacity in which interests are held
        'N.B. this could be long or short
        'there are 2 levels of tables in box 17, with two tables inside each row of the main table
        'inner table 1 is the capacity code and its meaning
        'inner table 2 is "long position" or "short position" and number of shares
        Dim capacity, row1, row2, table2, Shares, posType As String,
            tablPos1, tablPos2, rowPos1, rowPos2, posTypeInt As Integer,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        'skip the header
        tablPos1 = TagStart(1, table1, "tr")
        'purge existing records
        con.Execute("DELETE FROM sdicap WHERE sdiID=" & sdiID)
        Do
            row1 = Nothing : row2 = Nothing : table2 = Nothing : capacity = Nothing
            'fetch a row
            Call TagCont(tablPos1, table1, "tr", row1)
            If row1 = "" Then Exit Do
            rowPos1 = 1
            'get inner table 1
            Call TagCont(rowPos1, row1, "table", table2)
            If table2 = "" Then Exit Do
            tablPos2 = 1
            Call TagCont(tablPos2, table2, "tr", row2)
            rowPos2 = 1
            Call TagCont(rowPos2, row2, "td", capacity)
            'get inner table 2
            Call TagCont(rowPos1, row1, "table", table2)
            If table2 = "" Then Exit Do
            tablPos2 = 1
            Do
                Call TagCont(tablPos2, table2, "tr", row2)
                If row2 = "" Then Exit Do
                rowPos2 = 1
                posType = Nothing : Shares = Nothing
                Call TagCont(rowPos2, row2, "td", posType)
                Call TagCont(rowPos2, row2, "td", Shares)
                posTypeInt = CodePosType(posType)
                rs.Open("SELECT * FROM sdiCap WHERE sdiID=" & sdiID & " AND posType=" & posTypeInt & " AND capID=" & capacity,
                        con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                If rs.EOF Then
                    rs.AddNew()
                    rs("sdiID").Value = sdiID
                    rs("capID").Value = capacity
                    rs("posType").Value = posTypeInt
                    rs("Shares").Value = CDbl(Shares)
                Else
                    rs("Shares").Value = CDbl(rs("Shares").Value) + CDbl(Shares)
                End If
                rs.Update()
                rs.Close()
            Loop
        Loop
        con.Close()
        con = Nothing
    End Sub
End Module
