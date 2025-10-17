Option Compare Text
Option Explicit On
Imports JSONkit
Imports ScraperKit

Module housing
    Sub Main()
        Call GetEstates()
    End Sub
    Sub GetEstates()
        On Error GoTo reperr
        Dim URL, r, s(), t, est, block, flat, floor, latit, longit As String,
            district, offset, estID, blockID, flatID As Integer,
            area As Single,
            elev As Boolean,
            con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        For district = 1 To 18
            'HA districts omit i and o
            offset = -(district > 8) - (district > 13)
            URL = "https://data.housingauthority.gov.hk/psi/rest/export/ha_prhs/ha_prhs_" & Chr(96 + district + offset) & "/en/json"
            r = GetWeb(URL,, False)
            s = ReadArray(GetVal(r, "data"))
            If s(0) <> "" Then
                For Each r In s
                    est = GetVal(r, "estate_english_name")
                    rs.Open("SELECT * FROM prhestate WHERE en='" & Apos(est) & "'", con)
                    If rs.EOF Then
                        latit = GetVal(r, "estate_map_latitude")
                        If latit = "" Then latit = "0"
                        longit = GetVal(r, "estate_map_longitude")
                        If longit = "" Then longit = "0"
                        con.Execute("INSERT INTO prhestate(en,cn,district,latitude,longitude) VALUES('" & Apos(est) & "','" & Apos(GetVal(r, "estate_chinese_name")) & "'," &
                                    district & "," & latit & "," & longit & ")")
                        estID = LastID(con)
                        Console.WriteLine("Estate added in District:" & district & vbTab & est)
                    Else
                        estID = rs("ID").Value
                    End If
                    rs.Close()
                    block = Replace(GetVal(r, "english_name_of_block"), "_", " ") 'BLOCK D_(MAN NING HOUSE) has underscore
                    rs.Open("SELECT * FROM prhblock WHERE estateID=" & estID & " AND en='" & Apos(block) & "'", con)
                    If rs.EOF Then
                        con.Execute("INSERT INTO prhblock(en,cn,estateID) VALUES ('" & Apos(block) & "','" & Apos(GetVal(r, "chinese_name_of_block")) & "'," & estID & ")")
                        blockID = LastID(con)
                        Console.WriteLine("Block added in:" & est & vbTab & block)
                    Else
                        blockID = rs("ID").Value
                    End If
                    rs.Close()
                    floor = GetVal(r, "floor_number")
                    flat = GetVal(r, "flat_number")
                    'some human errors in data, inconsistent use of floor 0,G and 0G
                    'flat G07 of BLOCK D_(MAN NING HOUSE) has a floor "0G"
                    If floor = "0G" Or floor = "0" Or floor = "00" Then floor = "G"
                    'WAH LAI HOUSE has a flat 102 on floor "A" but should be floor 1
                    'CHIN HING HOUSE has a flat 913 with no floor number
                    If floor = "A" Or floor = "" Then floor = Left(flat, Len(flat) - 2)
                    'assumes floors numbered 00 to 99
                    'some floors have a leading zero, others don't, even in the same block
                    If IsNumeric(floor) Then floor = Right("0" & floor, 2)
                    area = CSng(GetVal(r, "internal_floor_area"))
                    elev = CBool(GetVal(r, "avail_of_elevator_services") = "Y")
                    rs.Open("SELECT * FROM prhflat WHERE blockID=" & blockID & " AND floor='" & floor & "' AND flat='" & flat & "'", con)
                    If rs.EOF Then
                        con.Execute("INSERT INTO prhflat(blockID,floor,flat) VALUES(" & blockID & ",'" & floor & "','" & flat & "')")
                        flatID = LastID(con)
                    Else
                        flatID = rs("ID").Value
                    End If
                    rs.Close()
                    con.Execute("UPDATE prhflat SET area=" & area & ",elevator=" & elev & ",lastSeen=NOW() WHERE ID=" & flatID)
                    Console.WriteLine(block & vbTab & floor & "/F" & vbTab & flat & vbTab & "area:" & area)
                Next
            End If
        Next
        con.Close()
        con = Nothing
        Exit Sub
reperr:
        Call ErrMail("GetEstates failed", Err, "Estate:" & estID & " " & est & vbCrLf & "Block:" & blockID & " " & block & vbCrLf & "Floor:" & floor & " flat:" & flat)
    End Sub
End Module
