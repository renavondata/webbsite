<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Dim b,n,ready,cd,hint,title
b=Trim(Request("b"))
If Len(b)<>7 Then
	hint=hint&"Enter the first 7 digits. "
ElseIf Not isNumeric(b) Then
	hint=hint&"The first 7 digits must be numerals. "
Else
	ready=True
	hint="The last digit is: " & (8*Mid(b,1,1)+Mid(b,2,1)+2*Mid(b,3,1)+3*Mid(b,4,1)+6*Mid(b,5,1)+7*Mid(b,6,1)+8*Mid(b,7,1)) Mod 10
End If
title="Hong Kong Business Registration Number check digit generator"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2><%=title%></h2>
<p>Enter the first 7 digits of the Business Registration number (without the last digit) and we will tell you the last 
(8th) digit, also known as a checkdigit.</p>
<form method="get" action="HKBRcheck.asp">
	<input type="text" name="b" value="<%=b%>">
	<input type="submit" value="Submit">
</form>
<p><b><%=hint%></b></p>
<%If ready Then%>
	<p>So, how did we do this? The formula we discovered is: reading from left to right, multiply the digits by 8, 1, 
	2, 3, 6, 7 and 8 respectively, then add them together. The last digit of the result (that is, Modulo 10) is the 
	check-digit.</p>
<%End If%>
<p>Note: we do not store the number submitted. To try the same trick with your HKID number, <a href="idcheck.asp">click here</a>.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>