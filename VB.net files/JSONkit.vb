Option Compare Text
Option Explicit On

Imports ScraperKit

Public Module JSONkit
    Function GetItem(ByVal o As String, ByVal Name As String) As String
        'get a nested value from a JSON object to make the calls more compact than a set of nested getVal calls
        'e.g. name = address.street.house
        'names must be separated by ".". If the name includes a dot then it must be escaped with \. This is our protocol
        Dim s() As String, r As String, x As Byte, n As Byte
        r = o
        s = Split(Name, ".")
        n = UBound(s)
        For x = 0 To n
            If Right(s(x), 1) = "\" And x < n Then
                s(x + 1) = Left(s(x), Len(s(x)) - 1) & "." & s(x + 1)
            Else
                r = GetVal(r, s(x))
            End If
        Next
        GetItem = r
    End Function

    Function GetVal(ByVal o As String, ByVal Name As String) As String
        'find the value of a named item in a JSON object
        'this does not drill to lower levels, because names are only unique at the top level
        'if the value is null then it returns "null"
        'if the value doesn't exist then it returns an empty string
        Dim x As Integer, elStart As Integer, nest As Byte, startChar As String, endChar As String, t As String, e As Integer, nameLen As Integer, y As Integer
        If Left(o, 1) = "{" Then o = Mid(o, 2, Len(o) - 2) 'strip the braces from the object
        If o = "" Then Return ""
        e = Len(o)
        Name = """" & Name & """"
        nameLen = Len(Name)
        x = 1
        Do Until x = 0 Or x >= e
            x = InStr(x, o, """")
            If x = 0 Then Exit Do
            If Mid(o, x, nameLen) = Name Then
                'found the pair we want
                x += nameLen
                x = InStr(x, o, ":")
                x = SkipWhite(o, x + 1)
                elStart = x
                startChar = Mid(o, x, 1)
                y = InStr("{[""", startChar)
                If y = 0 Then
                    'value is true, false, null or a number
                    x = InStr(x, o, ",")
                    If x = 0 Then x = e + 1 'this was the last item in the object
                    Return Mid(o, elStart, x - elStart)
                Else
                    If y = 3 Then
                        '{}[] in a string do not have meaning and should be ignored
                        x = EndString(o, x)
                        If x <> 0 Then Return Mid(o, elStart + 1, x - elStart - 1)
                    Else
                        endChar = Mid("}]", y, 1)
                        nest = 1
                        Do Until nest = 0 Or x = 0 Or x = e
                            x += 1
                            t = Mid(o, x, 1)
                            If t = """" Then
                                x = EndString(o, x)
                            ElseIf t = startChar Then
                                'nested
                                nest += 1
                            ElseIf t = endChar Then
                                nest -= 1
                            End If
                        Loop
                        If x <> 0 Then Return Mid(o, elStart, x - elStart + 1)
                    End If
                End If
                Exit Do
            Else
                'parse until next item
                x = EndString(o, x)
                x = InStr(x, o, ":")
                x = SkipWhite(o, x + 1)
                startChar = Mid(o, x, 1)
                y = InStr("{[""", startChar)
                If y = 3 Then
                    x = EndString(o, x)
                ElseIf y > 0 Then
                    endChar = Mid("}]", y, 1)
                    nest = 1
                    Do Until nest = 0 Or x = 0 Or x = e
                        x += 1
                        t = Mid(o, x, 1)
                        If t = """" Then
                            x = EndString(o, x)
                        ElseIf t = startChar Then
                            'nested
                            nest += 1
                        ElseIf t = endChar Then
                            nest -= 1
                        End If
                    Loop
                End If
            End If
            If x <> 0 Then x = InStr(x, o, ",")
        Loop
        Return ""
    End Function
    Function FindArray(ByVal r As String, ByVal x As Integer) As String
        'find a JSON array in a string r (usually a web page) starting from position x
        Dim y As Integer, c As Integer, s As String
        x = InStr(x, r, "[")
        If x = 0 Then Return Nothing
        y = x + 1
        c = 1
        Do Until y > Len(r) Or c = 0
            s = Mid(r, y, 1)
            If s = "]" Then c -= 1
            If s = "[" Then c += 1
            y += 1
        Loop
        If c = 0 Then Return Mid(r, x, y - x) Else Return Nothing
    End Function
    Function ReadArray(o) As String()
        'take a string which is an array [] and break it into a 1-D string array
        'the values may be objects {} or arrays [] themselves
        'name-value pairs are of form name:value and are separated by commas
        'if nothing in the string then returns a single-element array with a(0)=""
        Dim x, c, e, elStart, nest As Integer,
            startChar, endChar, a(0), t As String
        If Left(o, 1) = "[" Then o = Mid(o, 2, Len(o) - 2) 'strip the outer brackets
        If o = "" Then Return a
        e = Len(o)
        x = SkipWhite(o, 1) 'move to first non-whitespace character
        c = 0 'number of items
        Do Until x = 0 Or x >= e
            startChar = Mid(o, x, 1)
            elStart = x
            If startChar = "[" Or startChar = "{" Then
                If startChar = "[" Then endChar = "]" Else endChar = "}"
                nest = 1
                x += 1
                Do Until nest = 0 Or x = 0 Or x > e
                    t = Mid(o, x, 1)
                    If t = """" Then
                        x = EndString(o, x)
                    ElseIf t = startChar Then
                        'nested
                        nest += 1
                    ElseIf t = endChar Then
                        nest -= 1
                    End If
                    x += 1
                Loop
            ElseIf startChar = """" Then
                elStart += 1
                x = EndString(o, x)
            Else
                'value is true, false, null or a number
                x = InStr(x, o, ",")
            End If
            If x = 0 Then x = e + 1 'this was the last item in the array or object or was unterminated
            ReDim Preserve a(c)
            a(c) = Mid(o, elStart, x - elStart)
            c += 1
            x = InStr(x, o, ",")
            If x <> 0 Then x = SkipWhite(o, x + 1)
        Loop
        Return a
    End Function
    Function EndString(s As String, x As Integer) As Integer
        'in a JSON where the escape character is \, find the end of the string indicated by "
        'Disregard " if immmediately preceded by an odd number of backslashes as this indicates it is an escaped quote
        'x is the location in s of the opening "
        Dim y As Integer, ls As Integer
        ls = Len(s)
        y = x + 1
        Do Until y >= ls
            If Mid(s, y, 1) = """" Then Exit Do
            If Mid(s, y, 2) = "\\" Or Mid(s, y, 2) = "\""" Then
                y += 2
            Else
                y += 1
            End If
        Loop
        If y > ls Then y = ls
        Return y
    End Function
    Function GetJSONnames(ByVal r As String) As String()
        'Get the names of name-value pairs in a JSON object
        Dim x, y, c As Integer, a(0) As String
        r = Trim(r)
        If Left(r, 1) <> "{" Then Return Nothing
        x = 2
        Do Until x > Len(r)
            x = InStr(x, r, """")
            If x = 0 Then Exit Do
            y = EndString(r, x)
            ReDim Preserve a(c)
            a(c) = Mid(r, x + 1, y - x - 1)
            Console.WriteLine(c & " " & a(c))
            x = InStr(y, r, ":") + 1
            x = SkipWhite(r, x)
            'now skip the length of its value
            x += Len(GetVal(r, a(c)))
            c += 1
        Loop
        If a(0) = "" Then Return Nothing Else Return a
    End Function
    Function GetSwagger(ByVal r As String) As String(,)
        'Get the name-value pairs in a JSON object
        Dim x, y, c As Integer, a(1, 0), t As String
        r = Trim(r)
        If Left(r, 1) <> "{" Then Return Nothing
        x = 2
        Do Until x > Len(r)
            x = InStr(x, r, """")
            If x = 0 Then Exit Do
            y = EndString(r, x)
            ReDim Preserve a(1, c)
            a(0, c) = Mid(r, x + 1, y - x - 1)
            x = InStr(y, r, ":") + 1
            x = SkipWhite(r, x)
            t = GetVal(r, a(0, c))
            a(1, c) = GetVal(t, "type")
            'now skip the length of its value
            Console.WriteLine(c & vbTab & a(0, c) & vbTab & a(1, c))
            x += Len(t)
            c += 1
        Loop
        If a(0, 0) = "" Then Return Nothing Else Return a
    End Function
End Module
