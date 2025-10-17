<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>Hong Kong Identity Card check digit generator</title>
<%
Dim ID,n,length,ready,cd,hint
ID=trim(Ucase(Request("ID")))
n=right(ID,6)
length=len(ID)
ready=True
If length<7 or length>8 then
	ready=False
	hint="The ID must be 7 or 8 characters. "
End If
If Not isNumeric(n) Then
	ready=False
	hint=hint & "The last 6 characters must be digits 0-9. "
End If
If ready Then
	If length=8 Then cd=9*(Asc(ID)-58)
	cd=cd+8*(Asc(Right(ID,7))-64)+7*Left(n,1)+6*Mid(n,2,1)+5*mid(n,3,1)+4*mid(n,4,1)+3*mid(n,5,1)+2*right(n,1)
	cd=11-cd
	cd=cd-11*int(cd/11)
	If cd=10 then cd="A"
	hint="The check digit is: "&cd
End If
%>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2>Hong Kong Identity Card check digit generator</h2>
<p>Enter ID (without the check digit)</p>
<form method="get" action="idcheck.asp">
<input type="text" name="ID" value="<%=ID%>"/>
<input type="submit" value="Submit"/>
</form>
<p><b><%=hint%></b></p>
<p>Note: we will not store the ID number submitted. For more on HKID cards, and 
our call for transparency, <a href="../articles/identity.asp">click here</a>. To generate the last digit of a HK 
Business Registration number, <a href="HKBRcheck.asp">click here</a>.</p>
<p>
<a href="https://en.wikipedia.org/wiki/Hong_Kong_identity_card" target="_blank">Known</a> single-letter prefixes are ABCDEFGHJKLMNPRSTVWYZ and double-letter prefixes 
are WX,XA,XB,XC,XD,XE,XG and XH.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>