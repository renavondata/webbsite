Option Compare Text
Option Explicit On
Imports System.Net.Mail
Imports System.Net
Imports System.IO
Imports System.Text
Imports System.Web

Public Module ScraperKit
    Declare Sub Sleep Lib "kernel32" (ByVal milliseconds As Long)
    Function Apos(s As String) As String
        'escape apostrophe
        If s = "" Then Apos = "" Else Apos = Replace(s, "'", "''")
    End Function
    Function B64decode(s As String) As String
        Return Encoding.UTF8.GetString(Convert.FromBase64String(s))
    End Function
    Function B64encode(s As String) As String
        'convert text to Base 64 for sending in web request headers
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
    End Function
    Function ByteToText(body As Object, Cset As String) As String
        'convert an xmlhttp responseBody into a string in the specified character set
        Dim objstream As New ADODB.Stream With {
            .Type = ADODB.StreamTypeEnum.adTypeBinary, '1 = binary
            .Mode = ADODB.ConnectModeEnum.adModeReadWrite '3 = read/write permissions
            }
        With objstream
            .Open()
            .Write(body)
            .Position = 0
            .Type = ADODB.StreamTypeEnum.adTypeText '2 = text
            .Charset = Cset
            ByteToText = .ReadText
            .Close()
        End With
        objstream = Nothing
    End Function
    Function CleanName(s As String) As String
        'remove anything in parentheses at the end of the name, along with its parentheses
        'allow for unclosed parentheses - then discard everything to the right of it
        If s = "" Then Return s
        s = Trim(s)
        Do While InStr(s, "(") <> 0 And (Right(s, 1) = ")" Or InStr(s, ")") = 0)
            s = Trim(Left(s, InStrRev(s, "(") - 1))
        Loop
        Return s
    End Function

    Function CleanStr(s As String) As String
        'remove line feed,tab and carriage returns and leading/trailing space
        s = Replace(s, Chr(9), "")
        s = Replace(s, Chr(10), "")
        s = Replace(s, Chr(13), "")
        CleanStr = Trim(s)
    End Function
    Function DbDiff(s As String, t As String) As Boolean
        'returns true only if both strings are not empty and are different. Use with database .tostring comparisons
        Return s <> t And s > "" And t > ""
    End Function
    Function DBdate(f As ADODB.Field) As Date
        If IsDBNull(f.Value) Then Return Nothing Else Return CDate(f.Value)
    End Function
    Function DBint(f As ADODB.Field) As Integer
        If IsDBNull(f.Value) Then Return Nothing Else Return CInt(f.Value)
    End Function
    Function DBdbl(f As ADODB.Field) As Double
        If IsDBNull(f.Value) Then Return Nothing Else Return CDbl(f.Value)
    End Function

    Sub Download2(URL As String, path As String, ByRef cookies As CookieCollection, Optional charset As String = "",
                  Optional overwrite As Boolean = False, Optional limited As Boolean = True, Optional ByRef e As String = "")
        'this version uses cookies
        'download a file from the web and save it as filename (fully specified)
        'If limited is specified as false then it loop every second until a valid response
        Dim r As String
        r = GetWeb3(URL, cookies, charset, limited, e)
        Call WriteStringFile(path, r, overwrite)
    End Sub
    Sub Download(URL As String, path As String, Optional ByRef e As String = "", Optional overwrite As Boolean = False, Optional limited As Boolean = True)
        'download a file from the web and save it as filename (fully specified)
        'If limited is specified as false then it loop every second until a valid response
        Dim web As New WebClient,
            Buffer(0) As Byte,
            tries As Integer
        Do Until tries = 5 And limited
            On Error Resume Next
            Buffer = web.DownloadData(URL)
            If Err.Number = 0 Or InStr(Err.Description, ("404")) > 0 Then Exit Do
            tries += 1
            Console.WriteLine("Attempted download " & tries & " of " & URL & " failed" & vbTab & Err.Description & vbTab)
            Call WaitNSec(5)
        Loop
        If Err.Number <> 0 Then
            e = Err.Number & " " & Err.Description
        Else
            Call WriteFile(path, Buffer, overwrite)
        End If
    End Sub
    Sub ErrMail(subject As String, e As ErrObject, Optional detail As String = "")
        Call SendMail(subject, e.Source & " " & e.Number & " " & e.Description & vbCrLf & "Line number: " & e.Erl & vbCrLf & detail)
        Console.WriteLine("Error email sent")
    End Sub
    Function FindDate(s As String, pretext As String) As Date
        'find dates in SEHK entitlements, will be of format YYYY/MM/DD
        Dim f As Integer, m As String
        f = InStr(s, pretext)
        If f = 0 Then Return Nothing
        'find the first date text after pretext within the string and convert it into a date
        f += Len(pretext)
        Do Until IsNumeric(Mid(s, f, 1)) Or f > Len(s)
            f += 1
        Loop
        s = Mid(s, f)
        m = ""
        'GEM transfer dates are long form such as "5 February 2018"
        For Each m In {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"}
            f = InStr(s, m)
            If f > 0 Then Exit For
        Next
        If f > 0 Then
            'found a month
            f += Len(m)
            Do Until IsNumeric(Mid(s, f, 1))
                f += 1
            Loop
            'assume 4-digit year
            f += 3
            s = Left(s, f)
        Else
            f = 1
            Do While IsNumeric(Mid(s, f, 1)) Or Mid(s, f, 1) = "/"
                f += 1
            Loop
            s = Left(s, f - 1)
        End If
        If IsDate(s) Then Return CDate(s) Else Return Nothing
    End Function
    Function FindInt(s As String, Optional ByRef x As Integer = 1) As String
        'Find an integer in a string, optionally starting at x
        Dim c, r As String
        r = ""
        Do Until x > Len(s)
            c = Mid(s, x, 1)
            If IsNumeric(c) Then Exit Do 'Found the start
            x += 1
        Loop
        Do Until x > Len(s)
            c = Mid(s, x, 1)
            If (Not IsNumeric(c)) And c <> "," Then Exit Do
            r &= c
            x += 1
        Loop
        'x now points at the next character
        Return r
    End Function
    Function FindStr(r As String, s As String, Optional x As Integer = 1, Optional n As Integer = 1) As Integer
        'starting at character x (or 1), find the nth (or first) occurence of s in r and point at the character after it
        For n = 1 To n
            x = InStr(x, r, s)
            If x = 0 Then Exit For
            x += Len(s)
        Next
        Return x
    End Function
    Function GetCSV(r As String) As String(,)
        'convert a downloaded CSV file into an array, including any header. Simple version, doesn't work with commas in quoted fields
        Dim rows(), t() As String,
            cols, x As Integer
        rows = Split(r, Chr(10))
        cols = UBound(Split(rows(0), ","))
        Dim arr(cols, 0) As String
        For x = 0 To UBound(rows)
            t = Split(rows(x), ",")
            ReDim Preserve arr(cols, x)
            For y = 0 To UBound(t)
                arr(y, x) = t(y)
            Next
        Next
        Return arr
    End Function
    Function GetAttribOLD(t As String, a As String) As String
        'get the value of attribute [a] from an HTML tag [t] assuming it is quoted or single-quoted
        'returns empty string if not found or is "" or is unterminated string
        t = Replace(t, "'", """")
        Dim x, y As Integer
        x = InStr(t, " " & a) 'attribute is always preceded by a space
        If x = 0 Then Return ""
        x = InStr(x, t, """") + 1 'find the enclosing quotes
        y = InStr(x, t, """")
        If y > 0 Then Return Mid(t, x, y - x) Else Return ""
    End Function
    Function GetAttrib(t As String, a As String) As String
        '2025-07-24 new version handles attributes which contain quotes
        'get the value of attribute [a] from an HTML tag [t] assuming it is quoted or single-quoted
        'returns empty string if not found or is "" or is unterminated string
        Dim x, y As Integer,
            d As String 'delimiter
        x = InStr(t, " " & a) 'attribute is always preceded by a space
        If x = 0 Then Return ""
        x += Len(a) + 1
        d = ""
        Do Until x > Len(t)
            d = Mid(t, x, 1)
            x += 1
            If d = "'" Or d = """" Then Exit Do
        Loop
        If x > Len(t) Then Return ""
        y = InStr(Mid(t, x), d)
        If y > 0 Then Return Mid(t, x, y - 1) Else Return ""
    End Function
    Function GetBody(r As String) As String
        'return the body of an HTML page
        'returns whole page if no body tag
        Dim x As Integer, cont As String
        x = 1
        cont = Nothing
        Call TagCont(x, r, "body", cont)
        If x = 0 Then GetBody = r Else GetBody = cont
    End Function
    Function GetInput(r As String, ID As String) As String
        'get the value of an input with a given id from a web page response
        Dim x, y As Integer, t As String
        t = "id=""" & ID
        x = InStr(r, t) + Len(t)
        x = InStr(x, r, "value=""") + 7
        y = InStr(x, r, """")
        GetInput = Mid(r, x, y - x)
    End Function
    Function GetLog(ByVal var As String) As String
        'retrieve a stored value called var from the log table
        Dim con As New ADODB.Connection
        Call OpenEnigma(con)
        GetLog = con.Execute("SELECT val FROM log WHERE name=" & Sqv(var)).Fields(0).Value.ToString
        con.Close()
        con = Nothing
    End Function
    Function GetPrivate(ByVal var As String) As String
        'retrieve a stored value (usually a key or password) from the keys table in the private schema (which is not mirrored to Webb-site server)
        Dim con As New ADODB.Connection
        Call OpenEnigma(con)
        GetPrivate = con.Execute("SELECT val FROM private.keys WHERE name=" & Sqv(var)).Fields(0).Value.ToString
        con.Close()
        con = Nothing
    End Function
    Function GetParam(ByVal URL As String, ByVal p As String) As String
        'extract the parameter p from a querystring or a full URL. For a querystring, the leading question mark is optional
        'returns Nothing if parameter is not found, or empty string if parameter is found but is ""
        Dim L As Integer, s As String
        p &= "="
        L = Len(p)
        For Each s In Split(Mid(URL, InStr(URL, "?") + 1), "&")
            If Left(s, L) = p Then Return Mid(s, L + 1)
        Next
        Return Nothing
    End Function
    Function GetRows(rs As ADODB.Recordset) As String(,)
        'read a recordset into a string array
        Dim cols, row, x As Integer
        cols = rs.Fields.Count - 1
        Dim r(cols, 0) As String
        Do Until rs.EOF
            ReDim Preserve r(cols, row)
            For x = 0 To cols
                r(x, row) = rs.Fields(x).Value.ToString
            Next
            rs.MoveNext()
            row += 1
        Loop
        Return r
    End Function
    Function GetRow(rs As ADODB.Recordset) As String()
        'read first column of a recordset into a 1-D string array
        Dim r(0) As String, x As Integer
        Do Until rs.EOF
            ReDim Preserve r(x)
            r(x) = rs.Fields(0).Value.ToString
            rs.MoveNext()
            x += 1
        Loop
        Return r
    End Function
    Function GetCol(rs As ADODB.Recordset, s As String) As String()
        'read a single column named s from a recordet into a 1D array
        Dim x As Integer, a(0) As String
        Do Until rs.EOF
            ReDim Preserve a(x)
            a(x) = rs(s).Value.ToString
            rs.MoveNext()
            x += 1
        Loop
        Return a
    End Function
    Function GetTag(ByRef x As Integer, ByRef r As String, ByRef t As String) As String
        Dim y As Integer
        'get the text of the opening HTML tag of an element t from the string r,starting the search at position x
        x = InStr(x, r, "<" & t)
        y = InStr(x, r, ">")
        Return Mid(r, x, y - x + 1)
    End Function
    Sub PrintCookies(cc As CookieCollection)
        Dim c As Cookie
        Console.WriteLine("There are " & cc.Count & " cookies")
        For Each c In cc
            Console.WriteLine("Domain:" & c.Domain)
            Console.WriteLine("Name:" & c.Name)
            Console.WriteLine("Value: " & c.Value)
        Next
    End Sub
    Sub PrintHeaders(h As WebHeaderCollection)
        Console.WriteLine("Headers:")
        Dim x As Integer
        For x = 0 To h.Count - 1
            Console.WriteLine(h.GetKey(x) & ": " & h.Get(x))
        Next
    End Sub
    Sub SetHeaders(ByRef web As HttpWebRequest)
        web.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
        web.Headers.Add("Accept-Encoding", "gzip, deflate, br, zstd")
        web.AutomaticDecompression = DecompressionMethods.GZip
        web.Headers.Add("Accept-Language", "en-US,en;q=0.5")
        web.Headers.Add("DNT", "1")
        web.Headers.Add("Priority", "u=0,i")
        web.Headers.Add("Sec-Fetch-Dest", "document")
        web.Headers.Add("Sec-Fetch-Mode", "navigate")
        web.Headers.Add("Sec-Fetch-Site", "same-origin")
        web.Headers.Add("Sec-Fetch-User", "?1")
        web.Headers.Add("TE", "trailers")
        web.Headers.Add("Upgrade-Insecure-Requests", "1")
        web.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0"
        'Call PrintHeaders(web.Headers)
        'Console.ReadKey()
    End Sub
    Function PostWeb2(URL As String, post As String, ByRef cookies As CookieCollection, Optional auth As String = "",
                Optional charset As String = "") As String
        Dim web As HttpWebRequest, resp As HttpWebResponse,
            bytes() As Byte,
            postStream As Stream,
            cc As New CookieContainer,
            r As String
        bytes = Encoding.UTF8.GetBytes(post)
        web = CType(WebRequest.Create(URL), HttpWebRequest)
        web.Method = "POST"
        web.ContentType = "application/x-www-form-urlencoded"
        web.ContentLength = bytes.Length
        Call SetHeaders(web)
        If auth <> "" Then web.Headers.Add("authorization", auth)
        If cookies.Count > 0 Then cc.Add(cookies)
        web.CookieContainer = cc
        postStream = web.GetRequestStream
        postStream.Write(bytes, 0, bytes.Length)
        postStream.Close()
        resp = CType(web.GetResponse, HttpWebResponse)
        If charset = "" Then
            r = New StreamReader(resp.GetResponseStream).ReadToEnd
        Else
            Dim buffer() As Byte, ms As New MemoryStream
            resp.GetResponseStream.CopyTo(ms)
            buffer = ms.ToArray
            r = ByteToText(buffer, charset)
        End If
        cookies = resp.Cookies
        'Call PrintCookies(cookies)
        'Call PrintHeaders(resp.Headers)
        resp.Dispose()
        Return r
    End Function
    Function PostWeb(URL As String, post As String, Optional auth As String = "", Optional charset As String = "") As String
        Dim web As HttpWebRequest, resp As HttpWebResponse, r As String, bytes() As Byte, postStream As Stream
        bytes = Encoding.UTF8.GetBytes(post)
        web = CType(WebRequest.Create(URL), HttpWebRequest)
        web.Method = "POST"
        web.ContentType = "application/x-www-form-urlencoded"
        web.Headers.Add("authorization", auth)
        'web.Referer = URL
        web.ContentLength = bytes.Length
        postStream = web.GetRequestStream
        postStream.Write(bytes, 0, bytes.Length)
        postStream.Close()
        resp = CType(web.GetResponse, HttpWebResponse)
        If charset = "" Then
            r = New StreamReader(resp.GetResponseStream).ReadToEnd
        Else
            Dim buffer() As Byte, ms As New MemoryStream
            resp.GetResponseStream.CopyTo(ms)
            buffer = ms.ToArray
            r = ByteToText(buffer, charset)
        End If
        resp.Dispose()
        Return r
    End Function
    Function GetWeb3(URL As String, ByRef cookies As CookieCollection,
                Optional charset As String = "", Optional limited As Boolean = True, Optional ByRef e As String = "") As String
        'GET a web page, emulating Firefox headers
        'this version receives and returns cookies
        'If limited = false then loop every 5 seconds until we gets a valid response
        'if charset is specified, then take the responseBody in raw bytes and decode to the correct charset, otherwise use responseText
        'I needed to use the responseBody to get past reading problems with BIG5 files from the Law Society web site
        Dim web As HttpWebRequest, resp As HttpWebResponse, cc As New CookieContainer,
            tries As Integer,
            r As String
        resp = Nothing
        If cookies.Count > 0 Then cc.Add(cookies)
        Do Until tries >= 5 And limited
            On Error Resume Next
            web = CType(WebRequest.Create(URL), HttpWebRequest)
            web.Timeout = 30000 'milliseconds
            web.KeepAlive = True
            web.CookieContainer = cc
            Call SetHeaders(web)
            resp = CType(web.GetResponse, HttpWebResponse)
            If Err.Number = 0 Or InStr(Err.Description, ("404")) > 0 Then Exit Do
            resp.Dispose()
            tries += 1
            Console.WriteLine("Attempt reading " & URL & " " & tries & " times. Error number " & Err.Number & ". " & Err.Description)
            Call WaitNSec(2 + 8 * Rnd())
        Loop
        If Err.Number = 0 Then
            If charset = "" Then
                r = New StreamReader(resp.GetResponseStream).ReadToEnd
            Else
                Dim buffer() As Byte, ms As New MemoryStream
                resp.GetResponseStream.CopyTo(ms)
                buffer = ms.ToArray
                r = ByteToText(buffer, charset)
            End If
        Else
            e = Err.Number & " " & Err.Description
            r = ""
        End If
        cookies = resp.Cookies
        'Call PrintCookies(cookies)
        'Call PrintHeaders(resp.Headers)
        resp.Dispose()
        Return r
    End Function
    Function GetWeb(URL As String, Optional charset As String = "", Optional limited As Boolean = True) As String
        'GET a web page
        'If limited = false then loop every 5 seconds until we gets a valid response
        'if charset is specified, then take the responseBody in raw bytes and decode to the correct charset, otherwise use responseText
        'I needed to use the responseBody to get past reading problems with BIG5 files from the Law Society web site
        Dim web As HttpWebRequest, resp As HttpWebResponse, cc As New CookieContainer
        Dim tries As Integer, r As String = ""
        resp = Nothing
        Do Until tries >= 5 And limited
            On Error Resume Next
            web = CType(WebRequest.Create(URL), HttpWebRequest)
            web.Timeout = 10000 'milliseconds
            'we don't actually use the cookies but this is how to get them, can return them and attach to another web request
            web.CookieContainer = cc
            web.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:139.0) Gecko/20100101 Firefox/139.0"
            web.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
            web.Headers.Add("Accept-Language", "en-US,en;q=0.5")
            resp = CType(web.GetResponse, HttpWebResponse)
            If Err.Number = 0 Or InStr(Err.Description, ("404")) > 0 Then Exit Do
            resp.Dispose()
            tries += 1
            Console.WriteLine("Attempt reading " & URL & " " & tries & " times. Error number " & Err.Number & ". " & Err.Description)
            Call WaitNSec(5)
        Loop
        If Err.Number = 0 Then
            If charset = "" Then
                r = New StreamReader(resp.GetResponseStream).ReadToEnd
            Else
                Dim buffer() As Byte, ms As New MemoryStream
                resp.GetResponseStream.CopyTo(ms)
                buffer = ms.ToArray
                r = ByteToText(buffer, charset)
            End If
        End If
        resp.Dispose()
        Return r
    End Function
    Function HKEXtoken(ByRef cookies As CookieCollection) As String
        'fetch the token from HKEX to use with JSON calls
        Console.WriteLine("Fetching token")
        Dim x, y As Integer, r As String
        r = GetWeb3(GetLog("HKEXtokenPage"), cookies)
        x = InStr(r, "Base64")
        x = InStr(x, r, "return") + 8
        y = InStr(x, r, """")
        Return Mid(r, x, y - x)
    End Function
    Function HMACSHA1(s As String, key As String) As String
        Dim asc As New System.Text.UTF8Encoding, enc As New System.Security.Cryptography.HMACSHA1 With {
            .Key = asc.GetBytes(key)
        }, a() As Byte
        a = enc.ComputeHash(asc.GetBytes(s))
        Return Convert.ToBase64String(a)
    End Function
    Function HTMLtext(s As String) As String
        Dim x, ampPos As Integer,
            t, u As String
        'convert HTML entities in a string, such as &amp; and #x2f; (a slash) into text
        'preserve brackets in text strings
        s = Replace(s, "<", "\u003c")
        s = Replace(s, ">", "\u003e")
        t = ""
        For x = 1 To Len(s)
            u = Mid(s, x, 1)
            t &= u
            If u = "&" Then
                If Mid(s, x + 1, 1) = "#" Then
                    'found an entity number
                    x += 1
                    t &= "#"
                    Do Until x = Len(s)
                        x += 1
                        u = Mid(s, x, 1)
                        t &= u
                        If u = ";" Then Exit Do
                    Loop
                Else
                    ampPos = x
                    'look ahead to find a semicolon or space or end
                    Do Until x = Len(s)
                        x += 1
                        u = Mid(s, x, 1)
                        If u = ";" Then
                            'found an Entity Name such as &nbsp;
                            x = ampPos 'go back and fetch the characters
                            Exit Do
                        ElseIf u = " " Or x = Len(s) Then
                            'the substring beginning with & was part of genuine text
                            t &= "amp;"
                            x = ampPos 'go back and fetch the characters
                            Exit Do
                        End If
                    Loop
                End If
            End If
        Next
        t = HttpUtility.HtmlDecode(t)
        t = Replace(t, "\u003c", "<")
        t = Replace(t, "\u003e", ">")
        'there are sometimes line-feeds or carriage returns in the strings
        t = Replace(t, Chr(10), " ")
        t = Replace(t, Chr(13), " ")
        t = StripSpace(t)
        Return t
    End Function
    Function HTMLtextOLD(s As String) As String
        'convert HTML entities in a string, such as &amp; and #x2f (a slash) into text
        'returns nothing if its hits <br>
        '2025-07-20 my Windows 11 PC doesn't have MSXML.dll so this Function won't compile
        'Dim doc As New MSXML.DOMDocument
        Dim x, ampPos As Integer, t, u As String
        'Dim doc As New MSXML2.DOMDocument60
        s = Replace(s, "<br>", "<br/>")
        'replace the xml breaks with spaces
        s = Replace(s, "<br/>", " ")
        'preserve brackets in text strings
        s = Replace(s, "<", "\u003c")
        s = Replace(s, ">", "\u003e")
        t = ""
        For x = 1 To Len(s)
            u = Mid(s, x, 1)
            t &= u
            If u = "&" Then
                If Mid(s, x + 1, 1) = "#" Then
                    'found an entity number
                    x += 1
                    t &= "#"
                    Do Until x = Len(s)
                        x += 1
                        u = Mid(s, x, 1)
                        t &= u
                        If u = ";" Then Exit Do
                    Loop
                Else
                    ampPos = x
                    'look ahead to find a semicolon or space or end
                    Do Until x = Len(s)
                        x += 1
                        u = Mid(s, x, 1)
                        If u = ";" Then
                            'found an Entity Name such as &nbsp;
                            x = ampPos 'go back and fetch the characters
                            Exit Do
                        ElseIf u = " " Or x = Len(s) Then
                            'the substring beginning with & was part of genuine text
                            t &= "amp;"
                            x = ampPos 'go back and fetch the characters
                            Exit Do
                        End If
                    Loop
                End If
            End If
        Next
        s = t
        'doc.loadXML("<root>" & s & "</root>")
        'the .text property automatically trims leading and trailing spaces
        's = doc.text
        s = Replace(s, "\u003c", "<")
        s = Replace(s, "\u003e", ">")
        'there are sometimes line-feeds or carriage returns in the strings
        s = Replace(s, Chr(10), " ")
        s = Replace(s, Chr(13), " ")
        s = StripSpace(s)
        'doc = Nothing
        Return s
    End Function
    Function MakeDate(y As Integer, Optional m As Integer = 0, Optional d As Integer = 0) As Date
        'make a date from a year with an optional month or a year-month with optional date
        If m = 0 Then
            Return DateSerial(y, 7, 2)
        ElseIf d = 0 Then
            If m = 2 Then Return DateSerial(y, 2, 15) Else Return DateSerial(y, m, 16)
        Else
            Return DateSerial(y, m, d)
        End If
    End Function
    Function MatchCnt(r As String, s As String) As Integer
        'return the number of occurrences of s in r
        If Len(s) > 0 Then
            MatchCnt = CInt((Len(r) - Len(Replace(r, s, ""))) / Len(s))
        Else
            MatchCnt = 0
        End If
    End Function
    Function MonthEnd(y As Integer, m As Integer) As Date
        MonthEnd = DateSerial(y, m + 1, 0)
    End Function
    Function MSdate(d As Date, Optional a As Byte = 3) As String
        'string based on accuracy
        '1=year, 2=month, 3=date
        Dim s As String
        If d = Nothing Then
            s = ""
        Else
            s = CStr(Year(d))
            If a > 1 Then s = s & "-" & Right("0" & Month(d), 2)
            If a > 2 Then s = s & "-" & Right("0" & Day(d), 2)
        End If
        Return s
    End Function
    Function MSdateDMY(s As String) As String
        'allows for 1-digit day or month and different separators or 8 digits with no separator as long as we follow d-m-yyyy or  DDMMYYYY format
        Dim d As String, t As String, x, y As Integer
        t = ""
        For x = 1 To Len(s)
            t = Mid(s, x, 1)
            If Not IsNumeric(t) Then Exit For
        Next
        If x < Len(s) Then
            't is the separator, x is its position
            y = InStrRev(s, t) 'position of second separator
            d = Mid(s, y + 1) & "-" & Right("0" & Mid(s, x + 1, y - x - 1), 2) & "-" & Right("0" & Left(s, x - 1), 2)
        Else
            'no separator, must be DDMMYYYY
            d = Right(s, 4) & "-" & Mid(s, 3, 2) & "-" & Left(s, 2)
        End If
        If IsDate(d) Then Return d Else Return ""
    End Function
    Function DMYMSdate(d As String, sep As String) As String
        'convert a unix date to DD[sep]MM[sep]YYYY string for date hunting in a file.
        Return Right(d, 2) & sep & Mid(d, 6, 2) & sep & Left(d, 4)
    End Function
    Function MSdateTime(x As Date) As String
        MSdateTime = Format(x, "yyyy-MM-dd HH:mm:ss")
    End Function
    Function NextTradingDay(ByVal d As Date) As Date
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenCCASS(con)
        rs.Open("SELECT Min(tradeDate) d FROM calendar WHERE tradeDate>'" & MSdate(d) & "'", con)
        d = DBdate(rs("d"))
        rs.Close()
        con.Close()
        con = Nothing
        Return d
    End Function

    Function NotHol(atDate As Date) As Boolean
        'test for public holidays or days when no trading took place (e.g. all-day typhoon)
        Dim con As New ADODB.Connection
        If Weekday(atDate, vbMonday) > 5 Then
            NotHol = False
        Else
            Call OpenCCASS(con)
            NotHol = CBool(con.Execute("SELECT EXISTS(SELECT * FROM specialdays WHERE (pubHol OR (noAM AND noPM)) AND specialDate='" & MSdate(atDate) & "')").Fields(0).Value) = False
            con.Close()
        End If
    End Function
    Sub OpenCCASS(ByRef db As ADODB.Connection)
        db.Open("DSN=CCASS")
    End Sub
    Sub OpenEnigma(ByRef db As ADODB.Connection)
        db.Open("DSN=enigmaMySQL")
    End Sub
    Function OrgIDhash(n As String, dom As Integer) As Integer
        'find the personID of a current org with a specified domicile based on its nameHash
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenEnigma(con)
        rs.Open("SELECT personID FROM organisations WHERE isNull(disDate) AND domicile=" & dom & " AND nameHash=orgHash('" & Apos(n) & "')", con)
        If rs.EOF Then OrgIDhash = 0 Else OrgIDhash = CInt(rs("PersonID").Value)
        rs.Close()
        con.Close()
        con = Nothing
    End Function
    Function PrevTradingDay(d As Date) As Date
        Dim con As New ADODB.Connection, rs As New ADODB.Recordset
        Call OpenCCASS(con)
        rs.Open("SELECT Max(tradeDate) d FROM calendar WHERE tradeDate<'" & MSdate(d) & "'", con)
        d = DBdate(rs("d"))
        rs.Close()
        con.Close()
        con = Nothing
        Return d
    End Function
    Public Sub PutLog(var As String, val As String)
        Dim con As New ADODB.Connection
        Call OpenEnigma(con)
        con.Execute("UPDATE log SET val='" & Apos(val) & "' WHERE name='" & var & "'")
        con.Close()
        con = Nothing
    End Sub
    Function Qjoin(a() As String) As String
        'create comma-separated quoted string for INSERT in DB,run them through Apos to escape apostrophe
        'but unquote NULL
        Dim x As Integer
        For x = 0 To UBound(a)
            a(x) = Apos(a(x))
        Next
        Return Replace("'" & Join(a, "','") & "'", "'NULL'", "NULL")
    End Function
    Function ReadDMYOLD(s As String) As Date
        'convert a string of [D]D/[M]M/YYYY or [D]D-[M]M-YYYY into a date.
        If s <> "" Then
            If Mid(s, 2, 1) = "/" Or Mid(s, 2, 1) = "-" Then s = "0" & s
            If Mid(s, 5, 1) = "/" Or Mid(s, 5, 1) = "-" Then s = Left(s, 3) & "0" & Mid(s, 4)
            If (Mid(s, 3, 1) = "/" Or Mid(s, 3, 1) = "-") And (Mid(s, 6, 1) = "/" Or Mid(s, 6, 1) = "-") Then
                Return DateSerial(CInt(Mid(s, 7, 4)), CInt(Mid(s, 4, 2)), CInt(Left(s, 2)))
            Else
                Return Nothing
            End If
        Else
            Return Nothing
        End If
    End Function
    Function ReadDMY(s As String) As Date
        'allows for 1-digit day or month and different separators or 8 digits with no separator as long as we follow d-m-yyyy or  DDMMYYYY format
        Dim d As String
        d = MSdateDMY(s)
        If IsDate(d) Then Return CDate(d) Else Return Nothing
    End Function
    Function ReadCSVfile(d As String) As String()
        'd is the fully-specified file location, usually on Webbserver2
        'returns a 1D array of strings representing the rows of the file
        Return SplitCSVrows(My.Computer.FileSystem.ReadAllText(d))
    End Function
    Function SplitCSVrows(s As String) As String()
        'split the contents r of a CSV file into a 1D array of strings
        'strip off the last newline
        If Right(s, 1) = Chr(10) Then s = Left(s, Len(s) - 1)
        Return Split(s, Chr(10))
    End Function
    Function ReadCSV2D(s As String) As String(,)
        'split the contents s of a CSV file into a 2D array of strings, including header, if any
        Dim c(), r(), a(,) As String,
            x, y, cols As Integer
        c = SplitCSVrows(s)
        r = ReadCSVrow(c(0))
        cols = UBound(r)
        ReDim a(cols, 0)
        For y = 0 To UBound(c)
            ReDim Preserve a(cols, y)
            r = ReadCSVrow(c(y))
            For x = 0 To UBound(r) 'could be jagged
                a(x, y) = r(x)
            Next
        Next
        Return a
    End Function
    Function ReadCSVfile2D(d As String) As String(,)
        'd is the fully-specified file location, usually on Webbserver2
        'returns a 2D string array representing the rows and columns of the file, includes header, if any
        Return ReadCSV2D(My.Computer.FileSystem.ReadAllText(d))
    End Function
    Function ReadCSVrow(s As String) As String()
        Dim x, valStart, col As Integer, t, row(0) As String
        s = CleanStr(s)
        x = 1
        Do Until x > Len(s)
            If Mid(s, x, 1) = """" Then
                valStart = x + 1
                'column is surrounded by double-quotes
                Do Until x = Len(s)
                    x += 1
                    t = Mid(s, x, 2)
                    If t = """""" Or t = "\""" Then
                        x += 1 'ignore escaped double quote
                    Else
                        If Left(t, 1) = """" Then Exit Do 'found end of string
                    End If
                Loop
                ReDim Preserve row(col)
                'Console.WriteLine(Mid(s, valStart, x - valStart))
                t = Mid(s, valStart, x - valStart)
                t = Replace(t, """""", """")
                t = Replace(t, "\""", """")
                row(col) = t
                col += 1
                x += 2 'skip the comma
            Else
                valStart = x
                Do Until x > Len(s) Or Mid(s, x, 1) = ","
                    x += 1
                Loop
                ReDim Preserve row(col)
                'Console.WriteLine(Mid(s, valStart, x - valStart))
                row(col) = Mid(s, valStart, x - valStart)
                col += 1
                x += 1
            End If
        Loop
        If Right(s, 1) = "," Then ReDim Preserve row(col) 'final column is empty
        Return row
    End Function
    Function ReadWebCell(r As String, row As Integer, col As Integer) As String
        'Extract the contents of a specified cell (row,col) in an HTML table, numbered from (1,1)
        Return ReadWebCols(ReadWebRows(r)(row - 1))(col - 1)
    End Function
    Function ReadWebCols(r As String) As String()
        'return the column contents of an HTML table-row
        Return ReadWebTags(r, "td")
    End Function
    Function ReadWebRows(r As String) As String()
        'return the row-conents of an HTML table
        Return ReadWebTags(r, "tr")
    End Function
    Function ReadWebTags(r As String, tag As String) As String()
        'read rows (tag=tr) or columns (tag=td) of an HTML table/row and return contents of each tag in a string array
        Dim c, s() As String,
            x, y As Integer
        c = ""
        x = 1
        y = -1
        ReDim s(0)
        'read the rows
        Do Until InStr(Mid(r, x), "<" & tag) = 0
            y += 1
            Call TagCont(x, r, tag, c)
            ReDim Preserve s(y)
            s(y) = Trim(c)
        Loop
        Return s
    End Function
    Function RemCSVbreaks(s As String) As String
        'remove quoted carriage returns inside a string representing a CSV file
        Dim x As Integer,
            t, r, u As String,
            quoted As Boolean
        x = 1
        r = ""
        quoted = False
        Do Until x > Len(s)
            t = Mid(s, x, 2)
            u = Left(t, 1)
            If quoted Then
                If t = """""" Or t = "\""" Then
                    'escaped quote, so still quoted
                    r &= t
                    x += 1
                Else
                    If u <> Chr(10) Then r &= u 'skip quoted newline
                    If u = """" Then quoted = False
                End If
            Else
                If u = """" Then quoted = True
                r &= u
            End If
            x += 1
        Loop
        'strip off the last newline
        If Right(r, 1) = Chr(10) Then r = Left(r, Len(r) - 1)
        Return r
    End Function
    Function RemPref(r As String, s As String) As String
        'clip a known prefix off the start of a string
        If Left(r, Len(s)) = s Then Return Trim(Mid(r, Len(s) + 1)) Else Return r
    End Function

    Function RemSuf(r As String, s As String) As String
        'clip a known suffix off the end of a string
        If Right(r, Len(s)) = s Then Return Trim(Left(r, Len(r) - Len(s))) Else Return r
    End Function
    Function RemSufs(r As String, a() As String) As String
        'remove mutliple suffixes in an array of strings, in order
        Dim s As String
        For Each s In a
            r = RemSuf(r, s)
        Next
        Return r
    End Function
    Public Sub SaveMHT(URL As String, mht As String)
        'this was used by the old GetJudgments. Commenting out to prevent late bound resolution warnings
        'save a file to MHT format, suppress images
        With CreateObject("CDO.Message")
            '.MimeFormatted = True
            '.CreateMHTMLBody(URL, 1) '1=exclude images
            '.GetStream.SaveToFile(mht, 2) '2=overwrite
        End With
    End Sub
    Public Sub SendMail(subject As String, Optional body As String = "")
        Dim mailHost, mailPort, mailAccount, mailPW, mailName, mailTo(), m As String
        mailHost = GetPrivate("mailHost") 'the full domain of your mailserver
        mailPort = GetPrivate("mailPort") 'the SMTP port number for sending mail
        mailAccount = GetPrivate("mailAccount") 'the account you use to send mail
        mailPW = GetPrivate("mailPW") 'the password of your sending mail account
        mailName = GetPrivate("mailName") 'the sender name
        mailTo = Split(GetPrivate("mailTo"), ",") 'comma-separated list of recipients
        Dim msg As New MailMessage With {
            .From = New MailAddress(mailAccount, mailName)
        }, smtp As New SmtpClient With {
            .UseDefaultCredentials = False,
            .Credentials = New Net.NetworkCredential(mailAccount, mailPW),
            .Port = CInt(mailPort),
            .EnableSsl = True,
            .Host = mailHost
        }
        For Each m In mailTo
            msg.To.Add(m)
        Next
        msg.Subject = subject
        msg.Body = body
        msg.IsBodyHtml = False
        smtp.Send(msg)
        smtp.Dispose()
    End Sub
    Function Setsql(n As String, v() As Object) As String
        'take a CSV string of fieldnames and collection of variables/constants and convert them into a mysql string for UPDATE
        'example: "UPDATE table" & setsql("f1,f2,f3,f4",{1,"",null,"2023-04-26"}) & "ID=" & ID
        Dim a(), r, s As String
        r = ""
        s = ""
        a = Split(n, ",")
        If UBound(v) <> UBound(a) Then
            Return "Different number of names and values in setsql call. "
        Else
            For x = 0 To UBound(a)
                r &= "," & a(x) & "=" & Sqv(v(x))
            Next
            s &= " SET " & Mid(r, 2) & " WHERE " 'reminds us to use a primary key
        End If
        Return s
    End Function
    Function SkipWhite(s As String, x As Integer) As Integer
        'return position of first non-whitespace character on or after position x in string s
        'returns zero if nothing found
        Dim t As String, e As Integer
        e = Len(s)
        If x > e Then SkipWhite = 0 : Exit Function
        Do
            t = Mid(s, x, 1)
            x += 1
        Loop Until x > e Or (t <> Chr(32) And t <> Chr(9) And t <> Chr(10) And t <> Chr(13))
        Return x - 1
    End Function
    Function SqvOLD(v As Object) As String
        'sqv=Structured Query Value
        'prepare a value for insert/update in SQL. Strings are quoted, numbers/Boolean/NULL are not.
        'If you want a NULL Then pass empty String "" Or a "Nothing" (without quotes)
        'but not a variable set to Nothing, because that would trigger a default value (e.g. 0 for integer or 0001-01-01 for date)
        Dim t As String
        If IsNothing(v) Then
            t = "NULL"
        ElseIf v.ToString = "" Then
            t = "NULL"
        ElseIf IsNumeric(v) Or VarType(v).ToString = "Boolean" Then
            'Note: if we are writing to a field which is a string, then a numeric string with a leading zero such as "01234567" will be preserved, e.g. the incID of the HK Companies Registry
            t = v.ToString
        ElseIf VarType(v).ToString = "Date" Then
            If CDate(v) = Date.MinValue Then t = "NULL" Else t = "'" & MSdate(CDate(v)) & "'"
        Else
            t = "'" & Apos(v.ToString) & "'"
        End If
        Return t
    End Function
    Function Sqv(v As Object) As String
        'New version 2025-07-19 correctly converts dateTime such as Now() to full String, so pre-conversion is now optional
        'sqv=Structured Query Value
        'prepare a value for insert/update in SQL. Strings are quoted, numbers/Boolean/NULL are not.
        'If you want a NULL Then pass empty String "" Or a "Nothing" (without quotes)
        'but not a variable set to Nothing, because that would trigger a default value (e.g. 0 for integer or 0001-01-01 for date)
        Dim t As String
        If IsNothing(v) Then
            t = "NULL"
        ElseIf v.ToString = "" Then
            t = "NULL"
        ElseIf IsNumeric(v) Or VarType(v).ToString = "Boolean" Then
            'Note: if we are writing to a field which is a string, then a numeric string with a leading zero such as "01234567" will be preserved, e.g. the incID of the HK Companies Registry
            t = v.ToString
        ElseIf VarType(v).ToString = "Date" Then
            If CDate(v) = Date.MinValue Then
                t = "NULL"
            ElseIf CDate(v) > CDate(v).Date Then
                'full date-time
                t = "'" & MSdateTime(CDate(v)) & "'"
            Else
                t = "'" & MSdate(CDate(v)) & "'"
            End If
        Else
            t = "'" & Apos(v.ToString) & "'"
        End If
        Return t
    End Function
    Function StripComments(r As String) As String
        'use this to strip comments out of HTML to improve reading procedures. ICRIS includes a lot of old data tags in comments
        Dim x As Integer, y As Integer
        x = InStr(r, "<!--")
        Do Until x = 0
            y = InStr(r, "-->")
            r = Left(r, x - 1) & Right(r, Len(r) - y - 2)
            x = InStr(r, "<!--")
        Loop
        StripComments = r
    End Function
    Function StrInt(s As String) As Integer
        'strip out commas and convert hyphen to zero
        'useful for CSV files which have been converted from Excel with number formatting
        s = Trim(Replace(s, ",", ""))
        If s = "-" Then s = "0"
        'CInt will also convert a bracketed number (1) into negative -1
        Return CInt(s)
    End Function
    Function Strip0(s As String) As String
        'strip leading zeroes from a string. Must not be decimal. Used in Treasury
        Do Until Left(s, 1) <> "0" Or s = "0"
            s = Mid(s, 2)
        Loop
        Return s
    End Function
    Function StripSpace(ByVal s As String) As String
        'remove multiple spaces between words and trim any at ends
        s = Trim(s)
        Do Until InStr(s, "  ") = 0
            s = Replace(s, "  ", " ")
        Loop
        Return s
    End Function
    Function StripTag(r As String, s As String) As String
        'remove all instances of an HTML tag, but keep the contents of the element
        Dim x As Integer
        x = 1
        Do
            x = InStr(x, r, "<" & s)
            If x = 0 Then Exit Do
            'replace all tags which have identical attributes
            r = Replace(r, Mid(r, x, InStr(x, r, ">") - x + 1), "")
        Loop
        Return Replace(r, "</" & s & ">", "")
    End Function
    Public Sub TagCont(ByRef x As Integer, r As String, s As String, ByRef cont As String)
        Dim y, z As Integer
        'return cont=the inner contents of an html element searching for the element in r starting at x
        'handles nested elements of same type
        'moves x forward to next character after the closing tag
        'returns cont=Nothing if the element is empty, can be used to put nulls into recordsets
        x = InStr(x, r, "<" & s)
        If x = 0 Then cont = "" : Exit Sub 'not found
        x = InStr(x, r, ">") + 1
        z = x
        y = InStr(x, r, "</" & s)
        If y = 0 Then
            'tag never closes
            cont = Mid(r, x)
            x = Len(r) + 1
            If cont = "" Then cont = Nothing
            Exit Sub
        End If
        Do
            z = InStr(z, r, "<" & s)
            If z = 0 Or z > y Then Exit Do
            'found a nested element of same type at z, so look for next closing tag
            y = InStr(y + 4, r, "</" & s)
            z += 3
        Loop
        cont = Trim(Mid(r, x, y - x))
        If cont = "" Then cont = Nothing
        x = y + Len(s) + 3
    End Sub
    Public Sub TagContID(ByRef x As Integer, r As String, ID As String, ByRef cont As String)
        'get the inner contents of an element in r, search starting at x, excluding the tag, based on the id of the element which will be in quotes
        'move x forward to next character after the closing tag
        Dim tag As String
        x = InStr(x, r, """" & ID & """")
        x = InStrRev(r, "<", x)
        tag = Mid(r, x + 1, InStr(x, r, " ") - x - 1)
        Call TagCont(x, r, tag, cont)
    End Sub
    Function TagStart(x As Integer, r As String, s As String) As Integer
        'find the position of the first character after a target string
        Return InStr(x, r, s) + Len(s)
    End Function
    Function TrimName(s As String) As String
        'remove our appended suffixes from a name (org or human)
        'tags include dissolution date and domicile to distinguish from cos with same name
        'possible that orginal name ends in a bracket
        Do Until Right(s, 1) <> ")" Or Right(s, 5) = "(The)" Or InStr(s, "(") = 0
            s = Trim((Left(s, InStrRev(s, "(") - 1)))
        Loop
        Return Trim(s)
    End Function
    Function ULname(s As String, surname As Boolean) As String
        'convert a name to lower case with initial caps and cap after Mc, O' etc and for surnames only: Mac, Fitz
        Dim ns(), p, t As String, x, ub As Integer
        If s > "" Then
            s = Replace(s, "`", "'")
            s = Replace(s, "’", "'")
            s = StripSpace(s)
            s = RemSuf(s, "'")
            s = Replace(s, "- ", "-")
            s = Replace(s, " -", "-")
            ns = Split(s)
            ub = UBound(ns)
            s = ""
            For x = 0 To ub
                t = ns(x)
                'some Scottish/Irish names are broken with the "-Mc" at end of a word, then a space, then a word
                If Len(t) > 4 Then
                    Do Until Right(t, 3) <> "-Mc" Or x = ub
                        'append the next word to create a hyphenated name
                        x += 1
                        t &= ns(x)
                    Loop
                End If
                If ((t = "Mc" Or t = "O'") Or (surname And (t = "Mac" Or t = "Fitz"))) And x < ub Then
                    'add this to the next word
                    ns(x + 1) = t & ns(x + 1)
                ElseIf Left(t, 1) = "(" Then
                    'ignore anything in parentheses
                    s = s & t & " "
                    Do Until Right(t, 1) = ")" Or x = ub
                        x += 1
                        t = ns(x)
                        s = s & t & " "
                    Loop
                Else
                    'break hyphenated words, process them, then reassemble
                    For Each t In Split(t, "-")
                        t = RemSuf(t, "'")
                        If t <> "" Then
                            'to start, capitalise first letter and lower everything else as a base
                            t = UCase(Left(t, 1)) & LCase(Right(t, Len(t) - 1))
                            'now process the word
                            If Left(t, 3) = "Mc'" And Len(t) > 3 Then t = "Mc" & Right(t, Len(t) - 3)
                            'return numerals to capitals
                            If {"II", "III", "IV", "VI", "VII", "VIII", "IX"}.Contains(t) Then
                                t = UCase(t)
                            ElseIf {"de", "da", "of", "la", "von"}.Contains(t) Then
                                t = LCase(t)
                            ElseIf Len(t) > 2 Then
                                'this is the norm
                                If Mid(t, 2, 1) = "." Then
                                    'series of initials with periods e.g. A.B.C
                                    t = UCase(t)
                                Else
                                    'capitalise the first letter and any letter after an apostrophe, which we take to be a word break
                                    'e.g. O', D', Sa'
                                    p = t
                                    t = ""
                                    For Each p In Split(p, "'")
                                        'some names begin with an apostrophe which we preserve - e.g. Dutch 't
                                        If p <> "" Then t = t & UCase(Left(p, 1)) & LCase(Right(p, Len(p) - 1))
                                        t &= "'"
                                    Next
                                    t = Left(t, Len(t) - 1)
                                    For Each p In {"O'", "Mc", "Mac", "Fitz", "D'", "I'"}
                                        If Left(t, Len(p)) = p And Len(t) > Len(p) Then
                                            t = p & UCase(Mid(t, Len(p) + 1, 1)) & LCase(Right(t, Len(t) - Len(p) - 1))
                                            Exit For
                                        End If
                                    Next
                                    'don't do this with forenames because some begin with Mac and some people have Fitz as a given name
                                    If surname Then
                                        For Each p In {"Mac", "Fitz"}
                                            If Left(t, Len(p)) = p And Len(t) > Len(p) Then
                                                t = p & UCase(Mid(t, Len(p) + 1, 1)) & LCase(Right(t, Len(t) - Len(p) - 1))
                                                Exit For
                                            End If
                                        Next
                                    End If
                                End If
                            End If
                        End If
                        s = s & t & "-"
                    Next
                    'trim off the last hyphen
                    s = Left(s, Len(s) - 1) & " "
                End If
            Next
        End If
        ULname = Trim(s)
    End Function
    Function Unixmillis() As String
        'Return the number of milliseconds in the Unix epoch. Use 64-bit data to avoid 2038 problem        
        Return CLng((Date.UtcNow - #1/1/1970#).TotalSeconds * 1000).ToString
    End Function
    Function UnixTimestamp() As Integer
        'in seconds
        Return CInt((DateTime.UtcNow - New Date(1970, 1, 1, 0, 0, 0)).TotalSeconds)
    End Function
    Sub UpdateIfNull(ByRef f As ADODB.Field, v As Object)
        If IsDBNull(f.Value) And v.ToString > "" Then f.Value = v.ToString
    End Sub
    Function URLencode(s As String, Optional SpaceAsPlus As Boolean = False) As String
        'encode a string so that it is safe to pass back in a web GET or POST
        Dim i, cc As Integer, r, chr, sp As String
        If SpaceAsPlus Then sp = "+" Else sp = "%20"
        r = ""
        For i = 1 To Len(s)
            chr = Mid(s, i, 1)
            cc = Asc(chr)
            Select Case cc
                Case 97 To 122, 65 To 90, 48 To 57, 45, 46, 95, 126
                    r &= chr
                Case 32
                    r &= sp
                Case 0 To 15
                    r = r & "%0" & Hex(cc)
                Case Else
                    r = r & "%" & Hex(cc)
            End Select
        Next
        Return r
    End Function
    Function Valsql(a() As Object) As String
        'a is a CSV {collection} of variables. See notes on Function Sqv
        Dim b As Object, t As String
        t = ""
        For Each b In a
            t &= "," & Sqv(b)
        Next
        Return "VALUES(" & Mid(t, 2) & ")"
    End Function
    Public Sub WaitNSec(ByVal seconds As Single)
        If seconds < 0 Then Exit Sub
        Console.WriteLine("Waiting " & seconds & " seconds")
        Sleep(CLng(Int(seconds * 1000)))
    End Sub
    Public Sub WriteFile(Path As String, buffer() As Byte, overwrite As Boolean)
        If Not overwrite And FileIO.FileSystem.FileExists(Path) Then Exit Sub
        Dim stream As New ADODB.Stream
        Directory.CreateDirectory(Left(Path, InStrRev(Path, "\") - 1))
        With stream
            .Open()
            .Type = ADODB.StreamTypeEnum.adTypeBinary '1=binary
            .Write(buffer)
            .SaveToFile(Path, ADODB.SaveOptionsEnum.adSaveCreateOverWrite) 'overwrites existing file
            .Close()
        End With
        stream = Nothing
    End Sub
    Public Sub WriteStringFile(path As String, r As String, overwrite As Boolean)
        If Not overwrite And FileIO.FileSystem.FileExists(path) Then Exit Sub
        Dim s As New StreamWriter(path)
        s.Write(r)
        s.Close()
    End Sub
    Function LastID(con As ADODB.Connection) As Integer
        Return CInt(con.Execute("SELECT LAST_INSERT_ID()").Fields(0).Value)
    End Function
    Function LatinScore(s As String) As Double
        'test for fraction of string in latin characters, excluding numerals and punctuation
        'used by CR to figure out which name is Chinese, which is English
        Dim r, c, ignore() As String, x, n As Integer
        r = Replace(s, " ", "")
        ignore = Split(". : ; , & - / 0 1 2 3 4 5 6 7 8 9 ' "" < > ? ! @ # $ % + * / ( ) [ ] { }") 'strip out punctuation and numerals
        For Each c In ignore
            r = Replace(r, c, "")
        Next
        For x = 1 To Len(r)
            c = Mid(r, x, 1)
            If String.Compare(UCase(c), LCase(c)) <> 0 Then n += 1
            'If UCase(c) <> LCase(c) Then n += 1
        Next
        Return n / Len(r)
    End Function
End Module
