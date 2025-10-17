<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim count,code,unused,con,rs
Call openEnigmaRs(con,rs)%>
<title>Available stock codes under 1000</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Available stock codes under 1000</h2>
<p>As the number of listings has increased, the stock code space has become 
increasingly crowded. So if you are thinking of listing on the main board, and 
would like a short stock code under 1000, which 
stock codes are currently unused? This page will tell you. To find out what the 
codes have been used for in the past, if anything, click on the code.</p>
<table class="optable">
<%rs.Open "SELECT * FROM StockCodes1000",con
For code=1 to 999
	If rs.EOF Then
		unused=True
	ElseIf code=Cint(rs("StockCode")) Then
		unused=False
		rs.MoveNext
	Else
		unused=True
	End If
	If unused Then
		If count=10*Int(count/10) Then Response.Write "<tr>"%>
		<td style="width:40px"><a href='code.asp?code=<%=code%>'><%=code%></a></td>
		<%count=count+1
		If count=10*Int(count/10) Then Response.Write "</tr>"
	End If
Next
If count<>10*Int(count/10) Then Response.Write "</tr>"
Call CloseConRs(con,rs)%>
</table>
<p>There are <%=count%> stock codes available under 1000.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>