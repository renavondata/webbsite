Option Explicit On
Option Compare Text
Imports JSONkit
Imports ScraperKit

Module Transport

    Sub Main()
        Call TransUpd()
    End Sub
    Sub TransUpd()
        On Error GoTo repErr
        Call GetJourneys()
        Call GetRLV()
        Call GetCars()
        Call GetBikes()
        Call GetLGV()
        Call GetMGV()
        Call GetHGV()
        Call GetVehicleFuel()
        Call GetVeengine()
        Call AllTunnels()
        Call GetPTOstats()
        Call GetJourneys()
        Call GetLPGint()
        'energy & other stuff from CenStatD
        Call GetElecGasM()
        Call GetElecQ()
        Call GetCoalQ()
        Call GetFuelPricesQ()
        Call GetOilGasM()
        Call GetInflation()
        Exit Sub
repErr:
        Call ErrMail("Transport Dept update failed", Err)
    End Sub

    Sub ProcCenStat(r As String, freq As Integer, Optional subcat As String = "")
        'process a dataset from CenStatD obtained either with CenStatQ (query) or URL GET (full table)
        'frequency 1=month 2=quarter 3=year
        On Error GoTo repErr
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            a(), p, sv, v, fdes As String,
            y, item As Integer, d As Date
        r = GetVal(r, "dataSet")
        a = ReadArray(r)
        fdes = {"M", "Q", "Y"}(freq - 1)
        Call OpenEnigma(con)
        For y = 0 To UBound(a)
            r = a(y)
            If GetVal(r, "freq") = fdes Then
                v = GetVal(r, "figure")
                If IsNumeric(v) Then
                    sv = GetVal(r, "sv") & GetVal(r, subcat) 'compound description, second part is sometimes empty for the totals
                    rs.Open("SELECT ID FROM dataitems WHERE freq=" & freq & " AND sv=" & Sqv(sv), con)
                    If Not rs.EOF Then
                        item = DBint(rs("ID"))
                        p = GetVal(r, "period")
                        d = DateSerial(CInt(Left(p, 4)), CInt(Right(p, 2)), 1)
                        con.Execute("INSERT IGNORE INTO data (item,d,v)" & Valsql({item, d, v}))
                        Console.WriteLine(d & vbTab & sv & vbTab & item & vbTab & v)
                    End If
                    rs.Close()
                End If
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
repErr:
        Call ErrMail("ProcCenStat failed", Err, r)
    End Sub
    Sub GetCenStat(table As String, freq As Integer, Optional subcat As String = "")
        'get a full table from CenStatD
        On Error GoTo repErr
        Call ProcCenStat(GetWeb("https://www.censtatd.gov.hk/api/get.php?lang=en&full_series=1&id=" & table), freq, subcat)
        Exit Sub
repErr:
        Call ErrMail("GetCenStat failed on table " & table, Err)
    End Sub
    Sub PostCenStat(post As String, freq As Integer, Optional subcat As String = "")
        'post a JSON query to CenStatD. Post is formatted with single quotes instead of double
        On Error GoTo repErr
        Call ProcCenStat(PostWeb("https://www.censtatd.gov.hk/api/post.php", "query=" & URLencode(Replace(post, "'", """"))), freq, subcat)
        Exit Sub
repErr:
        Call ErrMail("PostCenStat failed", Err, post)
    End Sub
    Sub GetInflation()
        Dim v As String = ":['Raw_1dp_idx_n','YoY_1dp_%_s']"
        Call PostCenStat("{'id': '510-60001','sv':{'CC_CM_1920'" & v & ",'A_CM_1920'" & v & ",'B_CM_1920'" & v & ",'C_CM_1920'" & v &
                         "},'period':{'start':'197407'},'lang':'en'}", 1, "svDesc")
    End Sub

    Sub GetElecGasM()
        'get monthly electricity & gas consumption from CenStatD JSON
        Call GetCenStat("915-91201", 1, "USER_TYPE")
    End Sub
    Sub GetElecQ()
        'get quarterly electricity generation & consumption from CenStatD JSON
        Call GetCenStat("915-91203", 2)
    End Sub
    Sub GetCoalQ()
        'get quarterly net imports of coal products from CenStatD JSON
        'ignores the quarterly data for other products which we can get monthly with GetOilGas
        Call GetCenStat("915-91102", 2, "PROD_TYPE")
    End Sub
    Sub GetFuelPricesQ()
        'get quarterly net imports of coal products from CenStatD JSON
        'ignores the quarterly data for other products which we can get monthly with GetOilGas
        Call GetCenStat("915-91103", 2, "PROD_TYPE")
    End Sub
    Sub GetOilGasM()
        'get monthly net imports of oil & gas products and unit prices from CenStatD JSON
        Call GetCenStat("915-91104", 1, "PROD_TYPE")
    End Sub

    Sub GetLPGint()
        'get the HK$ price of imported LPG from EMSD, excluding station operating charge
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset,
            dest, a(), r() As String, err As String = "",
            x, y, ye As Integer, p As Single, d As Date
        dest = GetLog("transportFolder") & "LPGint.csv"
        Call Download("https://www.emsd.gov.hk/filemanager/en/content_268/dataset/lpg_international_price.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading LPGint table ", err)
            Exit Sub
        Else
            Call OpenEnigma(con)
            r = ReadCSVfile(dest)
            For y = 1 To UBound(r)
                a = ReadCSVrow(r(y))
                ye = CInt(a(0)) 'year
                For x = 1 To UBound(a)
                    If a(x) > "" Then
                        p = CSng(a(x))
                        d = DateSerial(ye, x, 1)
                        Console.WriteLine(d & vbTab & p)
                        con.Execute("REPLACE INTO data(item,d,v)" & Valsql({1, d, p}))
                    End If
                Next
            Next
            con.Close()
            con = Nothing
        End If
    End Sub
    Sub AllTunnels()
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset, t As String
        Call OpenEnigma(con)
        rs.Open("SELECT * FROM tunnels WHERE NOT isNull(TDtable)", con)
        Do Until rs.EOF
            t = rs("TDtable").Value.ToString
            Console.WriteLine("Processing table " & t & " " & rs("name").Value.ToString)
            Call GetTunnel(t)
            rs.MoveNext()
        Loop
        rs.Close()
        con.Close()
        con = Nothing
    End Sub
    Sub GetTunnel(t As String)
        't = filename suffix for tunnel in form #.#a, e.g. 3.1a for CHT
        'process tunnel traffic data
        Dim err As String = ""
        Dim r(), a(), dest, defTD As String, x, vc, tunID, cnt As Integer, colTun As Integer = 0, colYM As Integer = 0, colDir As Integer = 0, colclass As Integer = 0,
            colGoods As Integer = 0, colBus As Integer = 0, colCnt As Integer = 0,
            defdir As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset, d, lastd As Date
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table" & t & ".csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table" & Replace(t, ".", "") & "_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Transport Dept tunnel Table " & t, err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "TUN_BRIDGE_CODE" : colTun = x
                    Case "YR_MTH" : colYM = x
                    Case "BOUND_CODE" : colDir = x
                    Case "VEHICLE_CLASS_CODE" : colclass = x
                    Case "GOODS_VEHICLE_TYPE_CODE" : colGoods = x
                    Case "BUS_TYPE_CODE" : colBus = x
                    Case "NO_VEHICLE" : colCnt = x
                End Select
            Next
            'the tunnel ID is unique for each file but we fetch it anyway
            rs.Open("SELECT t.ID,defTD FROM tunnels t JOIN tundir td ON tundirID=td.ID WHERE TD=" & Sqv(ReadCSVrow(r(1))(colTun)), con)
            tunID = DBint(rs("ID"))
            'the Airport tunnel file has no BOUND_CODE as it is 1-way so this will be Null making empty string
            defTD = rs("defTD").Value.ToString 'the default direction of the tunnel.
            rs.Close()
            lastd = DBdate(con.Execute("SELECT MAX(d) FROM tuntraff WHERE tunID=" & tunID).Fields(0))
            For x = 1 To UBound(r)
                a = ReadCSVrow(r(x))
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If d > lastd Then
                    'refine vehicle class
                    vc = CInt(a(colclass))
                    If vc = 5 Or vc = 21 Then
                        vc = 26 + CInt(a(colGoods)) 'Goods Vehicles Light/Medium/Heavy
                    ElseIf vc = 16 Then
                        vc = CInt(IIf((a(colBus) = "SD"), 70, 71)) 'Buses (private or public) - determine Single or Double
                    End If
                    defdir = (a(colDir) = defTD) Or defTD = ""
                    cnt = CInt(a(colCnt))
                    Console.WriteLine(tunID & vbTab & d & vbTab & vc & vbTab & defdir & vbTab & cnt)
                    rs.Open("SELECT * FROM tuntraff WHERE tunID=" & tunID & " AND vc=" & vc & " AND d=" & Sqv(d), con, ADODB.CursorTypeEnum.adOpenKeyset, ADODB.LockTypeEnum.adLockOptimistic)
                    If rs.EOF Then
                        rs.AddNew()
                        rs("tunID").Value = tunID
                        rs("vc").Value = vc
                        rs("d").Value = d
                    End If
                    If defdir Then rs("defcnt").Value = cnt Else rs("altcnt").Value = cnt
                    rs.Update()
                    rs.Close()
                End If
            Next
        End If
        con.Close()
        con = Nothing
    End Sub
    Sub GetJourneys()
        'process table 2.1
        Dim r(), a(), dest, sql, where As String, Err As String = "",
            x, y, vc, j As Integer,
            provJ As Boolean,
            d As Date,
            colYM As Integer = 0, colPTO As Integer = 0, colFran As Integer = 0, colPax As Integer = 0, colRail As Integer = 0, colInd As Integer = 0,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table2.1.csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table21_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Transport Dept Table 4.1(a) ", err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "TTD_PTO_CODE" : colPTO = x
                    Case "FRANCHISE_TYPE" : colFran = x
                    Case "RAIL_LINE" : colRail = x
                    Case "PAX" : colPax = x
                    Case "PAX_INDI" : colInd = x
                End Select
            Next
        End If
        For y = 1 To UBound(r)
            a = ReadCSVrow(r(y))
            d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
            j = CInt(Math.Round(CDbl(a(colPax)) * 1000))
            provJ = CBool(a(colInd) = "#") 'provisional data
            sql = "SELECT ID FROM vehicleclass WHERE govType=" & Sqv(a(colPTO) & a(colRail))
            If a(colFran) > "" Then sql &= " AND franchise=" & a(colFran) 'CTB franchises
            vc = DBint(con.Execute(sql).Fields(0))
            where = " d=" & Sqv(d) & " AND vc=" & vc
            rs.Open("SELECT * FROM tdjourneys WHERE" & where, con)
            Console.WriteLine(d & vbTab & vc & vbTab & provJ & vbTab & j)
            If rs.EOF Then
                con.Execute("INSERT INTO tdjourneys(d,vc,j,provJ)" & Valsql({d, vc, j, provJ}))
            Else
                'table tdjourneys Is shared with table 2.2, so we must use UPDATE, not REPLACE INTO
                con.Execute("UPDATE tdjourneys" & Setsql("j,provJ", {j, provJ}) & where)
            End If
            rs.Close()
        Next
        con.Close()
        con = Nothing
    End Sub
    Sub GetPTOstats()
        'process table 2.2
        Dim r(), a(), dest, sql, where As String, Err As String = "",
            x, y, vc, km, kmCH, paxcap As Integer,
            provkm As Boolean,
            d, lastd As Date,
            colYM As Integer = 0, colPTO As Integer = 0, colFran As Integer = 0, colRail As Integer = 0, colKM As Integer = 0, colKMCH As Integer = 0,
            colFleet As Integer = 0, colCap As Integer = 0, colInd As Integer = 0,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table2.2.csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table22_eng.csv", dest, Err, True)
        If Err > "" Then
            SendMail("Error while downloading Transport Dept Table 4.1(a) ", Err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "TTD_PTO_CODE" : colPTO = x
                    Case "FRANCHISE_TYPE" : colFran = x
                    Case "RAIL_LINE" : colRail = x
                    Case "KM" : colKM = x
                    Case "KM_INDI" : colInd = x
                    Case "KM_CROSS_HARBOUR" : colKMCH = x
                    Case "NO_FLEET" : colFleet = x
                    Case "PAX_CAP" : colCap = x
                End Select
            Next
        End If
        lastd = DBdate(con.Execute("SELECT MAX(d) FROM tdjourneys").Fields(0))
        For y = 1 To UBound(r)
            a = ReadCSVrow(r(y))
            If a(colKM) & a(colCap) > "" Then
                'skip all lines with neither KM nor paxcap (single/double decker buses)
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If a(colKM) > "" Then km = CInt(Math.Round(CDbl(a(colKM)) * 1000)) Else km = 0
                If a(colKMCH) > "" Then kmCH = CInt(Math.Round(CDbl(a(colKMCH)) * 1000)) Else kmCH = 0
                If a(colCap) > "" Then paxcap = CInt(a(colCap)) Else paxcap = 0 'this happened for NWFB in 2023-06 when its franchise ended and column was empty
                provkm = CBool(a(colInd) = "#") 'provisional data
                sql = "SELECT ID FROM vehicleclass WHERE govType=" & Sqv(a(colPTO) & a(colRail))
                If a(colFran) > "" Then sql &= " AND franchise=" & a(colFran) 'CTB franchises
                vc = DBint(con.Execute(sql).Fields(0))
                where = " d=" & Sqv(d) & " AND vc=" & vc
                rs.Open("SELECT * FROM tdjourneys WHERE" & where, con)
                Console.WriteLine(d & vbTab & vc & vbTab & provkm & vbTab & km & vbTab & kmCH & vbTab & paxcap)
                If rs.EOF Then
                    con.Execute("INSERT INTO tdjourneys(d,vc,km,kmCH,paxcap,provkm)" & Valsql({d, vc, km, kmCH, paxcap, provkm}))
                Else
                    'table tdjourneys Is shared with table 2.1, so we must use UPDATE, not REPLACE INTO
                    con.Execute("UPDATE tdjourneys" & Setsql("km,kmCH,paxcap,provkm", {km, kmCH, paxcap, provkm}) & where)
                End If
                rs.Close()
                If Split("CTB KMB LRB LWB NLB NWFB TAX HKT LFS RS MTRC NWFF STF").Contains(a(colPTO)) Then
                    'these are not included in the licensed vehicle tables, so we collect the fleet size here
                    'although we have fleet sizes for the single/double franchised buses and taxi types, we didn't combine them, so do that too to save aggregating
                    rs.Open("SELECT * FROM tdreglic WHERE" & where)
                    If rs.EOF Then
                        con.Execute("INSERT INTO tdreglic(d,vc,totLic)" & Valsql({d, vc, a(colFleet)}))
                    Else
                        con.Execute("UPDATE tdreglic" & Setsql("totLic", {a(colFleet)}) & where)
                    End If
                    rs.Close()
                End If
            End If
        Next
        con.Close()
        con = Nothing
    End Sub

    Sub GetRLV()
        'process table 4.1(a), monthly Registration and Licensing of Vehicles by Class
        Dim err As String = ""
        Dim r(), a(), dest, sql As String, x, y, vc As Integer, colYM As Integer = 0, colClass As Integer = 0, colGoods As Integer = 0, colGov As Integer = 0, colMC As Integer = 0,
            colPTO As Integer = 0, colTaxi As Integer = 0, colBus As Integer = 0, colFran As Integer = 0, colFR As Integer = 0, colTotReg As Integer = 0,
            colTotLic As Integer = 0, con As New ADODB.Connection, d, lastd As Date,
            newData As Boolean
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table4.1a.csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table41a_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Transport Dept Table 4.1(a) ", err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "VEHICLE_CLASS_CODE" : colClass = x
                    Case "GOODS_VEHICLE_TYPE_CODE" : colGoods = x
                    Case "GOV_VEHICLE_TYPE_CODE" : colGov = x
                    Case "MOTOR_CYCLE_TYPE_CODE" : colMC = x
                    Case "TAXIS_TYPE_CODE" : colTaxi = x
                    Case "TTD_PTO_CODE" : colPTO = x
                    Case "BUS_TYPE_CODE" : colBus = x
                    Case "FRANCHISED_TYPE" : colFran = x
                    Case "FIRST_REG" : colFR = x
                    Case "TOTAL_REG" : colTotReg = x
                    Case "TOTAL_LIC" : colTotLic = x
                End Select
            Next
            lastd = DBdate(con.Execute("SELECT MAX(d) FROM tdreglic").Fields(0))
            For y = 1 To UBound(r)
                a = ReadCSVrow(r(y))
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If d > lastd Then
                    newData = True
                    'refine vehicle class
                    vc = CInt(a(colClass))
                    If {2, 3, 5, 7, 9}.Contains(vc) Then
                        sql = "SELECT ID FROM vehicleclass WHERE parent=" & vc & " AND govType=" & Sqv(a(colMC) & a(colTaxi) & a(colGoods) & a(colGov) & a(colPTO))
                        vc = CInt(con.Execute(sql).Fields(0).Value)
                    ElseIf {4, 11, 12}.Contains(vc) Then 'private bus, non-franchised bus, franchised bus
                        sql = "SELECT vc.ID FROM vehicleclass vc LEFT JOIN ptoperators pto ON vc.operator=pto.ID WHERE parent=" & vc & " AND "
                        If vc = 11 Or vc = 12 Then sql &= "TDabbrev=" & Sqv(a(colPTO)) & " AND "
                        If a(colBus) = "SD" Then sql &= "NOT "
                        sql &= "DD"
                        If a(colFran) > "" Then sql &= " AND franchise=" & a(colFran)
                        vc = CInt(con.Execute(sql).Fields(0).Value)
                    End If
                    Console.WriteLine(d & vbTab & vc & vbTab & a(colFR) & vbTab & a(colTotReg) & vbTab & a(colTotLic))
                    con.Execute("INSERT INTO tdreglic (d,vc,FR,totReg,totLic)" & Valsql({d, vc, a(colFR), a(colTotReg), a(colTotLic)}))
                End If
            Next
        End If
        con.Close()
        con = Nothing
        If newData Then SendMail("Found new monthly data for vehicle registrations")
    End Sub
    Sub VehicleFR(f As String, vc As Integer)
        'process tables 4.1(d) to (h) for first registration by make, fuel type of Motorbikes, private cars, etc.
        'f = suffix d/e/f/g/h, vc = vehicle class
        Dim r(), a(), make, typos(,), dest As String, err As String = "",
            x, y, fuelID, makeID, FRstatID, Freg As Integer, colYM As Integer = 0, colMake As Integer = 0, colFRS As Integer = 0, colFRSV As Integer = 0, colFuel As Integer = 0,
            colBody As Integer = 0, colFreg As Integer = 0,
            d, lastd As Date,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table4.1" & f & ".csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table41" & f & "_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Transport Dept Table 4.1(" & f & ")", err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "MAKE" : colMake = x
                    Case "FIRST_REG_STATUS" : colFRS = x
                    Case "FIRST_REG_STATUS_REV" : colFRSV = x
                    Case "FUEL_TYPE_CODE" : colFuel = x
                    Case "BODY_TYPE_CODE" : colBody = x
                    Case "FIRST_REG" : colFreg = x
                End Select
            Next
            lastd = DBdate(con.Execute("SELECT MAX(d) FROM vehiclefr WHERE vc=" & vc).Fields(0))
            typos = GetRows(con.Execute("SELECT * FROM vehicletypos"))
            For y = 1 To UBound(r)
                a = ReadCSVrow(r(y))
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If d > lastd Then
                    make = a(colMake)
                    Freg = CInt(a(colFreg))
                    If Freg > 0 Then 'don't record nil items
                        'fix inconsistencies in car makes
                        Select Case Replace(Replace(make, " ", ""), ".", "")
                            Case "BSA" : make = "B.S.A." 'there are 2 variants of this
                            Case "BMWI" : make = "B.M.W.I." 'there are 4 variants of this
                            Case Else
                                For x = 0 To UBound(typos, 2)
                                    If make = typos(0, x) Then
                                        make = typos(1, x)
                                        Exit For
                                    End If
                                Next
                        End Select
                        rs.Open("SELECT ID FROM vehiclemakes WHERE make=" & Sqv(make), con)
                        If rs.EOF Then
                            con.Execute("INSERT INTO vehiclemakes (make)" & Valsql({make}))
                            makeID = LastID(con)
                        Else
                            makeID = DBint(rs("ID"))
                        End If
                        rs.Close()
                        fuelID = DBint(con.Execute("SELECT ID FROM fueltype WHERE des=" & Sqv(a(colFuel))).Fields(0))
                        FRstatID = DBint(con.Execute("SELECT ID FROM frstatus WHERE des=" & Sqv(a(colFRS) & a(colFRSV))).Fields(0))
                        con.Execute("INSERT INTO vehiclefr (vc,d,makeID,fuelID,bodyID,FRstatID,Freg)" & Valsql({vc, d, makeID, fuelID, a(colBody), FRstatID, Freg}))
                        Console.WriteLine(vc & vbTab & d & vbTab & makeID & vbTab & fuelID & vbTab & a(colBody) & vbTab & FRstatID & vbTab & Freg & vbTab & make)
                    Else
                        Console.WriteLine(d)
                    End If
                End If
            Next
        End If
        con.Close()
        con = Nothing
    End Sub
    Sub GetBikes()
        'fetch Table 4.1(d): First Registration of Motorcycles by Make, FR Status, Fuel Type and Body Type
        Call VehicleFR("d", 2)
    End Sub
    Sub GetCars()
        'fetch Table 4.1(e): First Registration of private cars by Make, FR Status, Fuel Type and Body Type
        Call VehicleFR("e", 1)
    End Sub
    Sub GetLGV()
        'fetch Table 4.1(f):First Registration of Light Goods Vehicles by Make, First Registration Vehicle Status, Fuel Type and Body Type 
        Call VehicleFR("f", 27)
    End Sub
    Sub GetMGV()
        'fetch Table 4.1(g):First Registration of Light Goods Vehicles by Make, First Registration Vehicle Status, Fuel Type and Body Type 
        Call VehicleFR("g", 28)
    End Sub
    Sub GetHGV()
        'fetch Table 4.1(g):First Registration of Light Goods Vehicles by Make, First Registration Vehicle Status, Fuel Type and Body Type 
        Call VehicleFR("h", 29)
    End Sub
    Sub GetVehicleFuel()
        'fetch Table 4.4: Registration and Licensing of Vehicles by Fuel Type
        Dim err As String = ""
        Dim r(), a(), dest, sql As String, x, y, vc, fuelID As Integer, colYM As Integer = 0, colClass As Integer = 0, colGoods As Integer = 0, colGov As Integer = 0, colMC As Integer = 0,
            colPTO As Integer = 0, colTaxi As Integer = 0, colBus As Integer = 0, colFuel As Integer = 0, colTotReg As Integer = 0, colTotLic As Integer = 0,
            con As New ADODB.Connection, d, lastd As Date
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table4.4.csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table44_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Table 4.4 ", err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "VEHICLE_CLASS_CODE" : colClass = x
                    Case "GOODS_VEHICLE_TYPE" : colGoods = x 'this probably should be suffixed "_CODE" but isn't.
                    Case "GOV_VEHICLE_TYPE_CODE" : colGov = x
                    Case "MOTOR_CYCLE_TYPE_CODE" : colMC = x
                    Case "TAXIS_TYPE_CODE" : colTaxi = x
                    Case "TTD_PTO_CODE" : colPTO = x
                    Case "BUS_TYPE_CODE" : colBus = x
                    Case "FUEL_TYPE_CODE" : colFuel = x
                    Case "NO_REG" : colTotReg = x 'in table 4.1(a) this is "TOTAL_REG"
                    Case "NO_LIC" : colTotLic = x 'in table 4.1(a) this is "TOTAL_LIC"
                End Select
            Next
            lastd = DBdate(con.Execute("SELECT MAX(d) FROM vehiclefuel").Fields(0))
            For y = 1 To UBound(r)
                a = ReadCSVrow(r(y))
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If d > lastd Then
                    fuelID = DBint(con.Execute("SELECT ID FROM fueltype WHERE des=" & Sqv(a(colFuel))).Fields(0))
                    'refine vehicle class
                    vc = CInt(a(colClass))
                    If {2, 3, 5, 7}.Contains(vc) Then 'unlike table 4.1(a), there's no GMB/RMB breakdown for PLBs
                        sql = "SELECT ID FROM vehicleclass WHERE parent=" & vc & " AND govType=" & Sqv(a(colMC) & a(colTaxi) & a(colGoods) & a(colGov) & a(colPTO))
                        vc = CInt(con.Execute(sql).Fields(0).Value)
                    ElseIf {4, 11, 12}.Contains(vc) Then 'private bus, non-franchised bus, franchised bus
                        If vc = 11 And a(colPTO) = "" Then a(colPTO) = "OTHERS" 'to make consistent with table 4.1(a)
                        'unlike table 4.1(a), there's no breakdown by franchise of CTB, so we need new classes for that
                        sql = "SELECT vc.ID FROM vehicleclass vc LEFT JOIN ptoperators pto ON vc.operator=pto.ID WHERE isNull(franchise) AND parent=" & vc & " AND "
                        If vc = 11 Or vc = 12 Then sql &= "TDabbrev=" & Sqv(a(colPTO)) & " AND "
                        If a(colBus) = "SD" Then sql &= "NOT "
                        sql &= "DD"
                        vc = DBint(con.Execute(sql).Fields(0))
                    End If
                    Console.WriteLine(d & vbTab & vc & vbTab & fuelID & vbTab & a(colTotReg) & vbTab & a(colTotLic))
                    con.Execute("INSERT INTO vehiclefuel (d,vc,fuelID,totReg,totLic)" & Valsql({d, vc, fuelID, a(colTotReg), a(colTotLic)}))
                End If
            Next
        End If
        con.Close()
        con = Nothing
    End Sub
    Sub GetVeengine()
        'fetch Table 4.2: Registration of Private Cars by Engine Size
        Dim err As String = ""
        Dim r(), a(), dest As String, x, y, engID As Integer, colYM As Integer = 0, colEng As Integer = 0, colFR As Integer = 0, colTotReg As Integer = 0,
            FRelec, totRegElec, FRpet, totRegPet As Integer,
            con As New ADODB.Connection, d, lastd As Date
        Call OpenEnigma(con)
        dest = GetLog("transportFolder") & "table4.2.csv"
        Call Download("https://www.td.gov.hk/datagovhk_tis/mttd-csv/en/table42_eng.csv", dest, err, True)
        If err > "" Then
            SendMail("Error while downloading Table 4.2 ", err)
            Exit Sub
        Else
            r = ReadCSVfile(dest)
            a = ReadCSVrow(r(0))
            'check column positions
            For x = 0 To UBound(a)
                Select Case a(x)
                    Case "YR_MTH" : colYM = x
                    Case "ENGINE_SIZE" : colEng = x
                    Case "NO_NEW_REG" : colFR = x
                    Case "TOTAL_REG" : colTotReg = x
                End Select
            Next
            lastd = DBdate(con.Execute("SELECT MAX(d) FROM veengine").Fields(0))
            For y = 1 To UBound(r)
                a = ReadCSVrow(r(y))
                d = MonthEnd(CInt(Left(a(colYM), 4)), CInt(Right(a(colYM), 2)))
                If d > lastd Then
                    engID = DBint(con.Execute("SELECT ID FROM enginesize WHERE TD=" & Sqv(a(colEng)) & " OR TD2=" & Sqv(a(colEng))).Fields(0))
                    'the EV data were included in the >4.5L class (ID-7) until 2017-02-28 and then in the <1L class (ID=2) until 2022-06-30. The CSV is unadjusted
                    'we have EV Freg from 2016-05 onwards
                    FRelec = 0
                    If d >= #2016-05-31# Then FRelec = DBint(con.Execute("SELECT SUM(Freg) FROM vehiclefr WHERE vc=1 AND fuelID=3 AND d=" & Sqv(d)).Fields(0))
                    totRegElec = 0
                    If d < #2022-07-31# Then totRegElec = DBint(con.Execute("SELECT totReg FROM vehiclefuel WHERE vc=1 AND fuelID=3 AND d=" & Sqv(d)).Fields(0))
                    totRegPet = CInt(a(colTotReg))
                    FRpet = CInt(a(colFR))
                    If (engID = 2 And d <= #2022-06-30# And d >= #2017-03-31#) Or (engID = 7 And d < #2017-03-31#) Then
                        totRegPet -= totRegElec
                        FRpet -= FRelec
                    End If
                    If engID > 1 Then
                        Console.WriteLine(d & vbTab & engID & vbTab & FRpet & vbTab & totRegPet)
                        con.Execute("INSERT INTO veengine (d,engID,FR,totReg)" & Valsql({d, engID, FRpet, totRegPet}))
                    End If
                End If
            Next
        End If
        con.Close()
        con = Nothing
    End Sub
End Module
