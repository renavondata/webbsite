<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<%Dim con,rs
Call openEnigmaRs(con,rs)
rs.Open "SELECT a.personID,name from listedcosHKall a LEFT JOIN (SELECT * FROM web WHERE NOT dead)t ON a.personID=t.personID WHERE isNull(URL)",con%>
<title>HK-listed companies without web sites</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<!--#include file="functions1.asp"-->
<h2>HK-listed companies without web sites</h2>
<p>As far as we know, the following HK-listed companies have no web site. If you know of one, then please 
<a href="../contact/">tell us</a>! For a list of 
those who do have web sites, <a href="../dbpub/hklistcowebs.asp">click here</a>.</p>
<%If Not rs.EOF Then%>
	<table class="txtable">
		<%Do Until rs.EOF%>
			<tr><td><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name")%></a></td></tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%Else%>
	<p><b>None found.</b></p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
