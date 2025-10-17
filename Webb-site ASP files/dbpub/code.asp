<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim code,con,rs
Call openEnigmaRs(con,rs)
code=Right("0000"&Request("code"),5)%>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Stock Code: <%=code%></h2>
<%rs.Open "SELECT * FROM WebListings WHERE stockCode=" & code & " AND DelistDate<Now() ORDER BY DeListDate",con
If Not rs.EOF then%>
	<h3>Delisted securities</h3>
	<table class="txtable">
	<tr>
		<th>Issuer</th>
		<th>Type</th>
		<th>Listed</th>
		<th>Final trade</th>
		<th>Delisted</th>
		<th>Reason</th>
	</tr>
	<%Do Until rs.EOF%>
		<tr>
			<td><a href='../dbpub/orgdata.asp?p=<%=rs("OrgID")%>'><%=rs("Org")%></a></td>
			<td><%=rs("SecType")%></td>
			<td><%=MSdate(rs("FirstTradeDate"))%></td>
			<td><%=MSdate(rs("FinalTradeDate"))%></td>
			<td><%=Msdate(rs("DelistDate"))%></td>
			<td><%=rs("Reason")%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%Else%>
	<p>No delisted securities found.</p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
