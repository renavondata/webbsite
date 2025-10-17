<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>Top 100 domains</title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2>Who reads Webb-site.com?</h2>
<p>We do not disclose our subscriber list to third parties, but the following 
gives you some idea of where our readers are based - these are the top 100 
domains on our mailing list. We stop at 100 so that individuals who might use a 
proprietary single-user domain are not identifiable. Most e-mail domains also 
have a web site, so click on the links to view them. This list is live - you can 
change the counts by <a href="join.asp">joining</a> or leaving the list.</p>
<%Dim rs,mailDB,query,cnt,domain
Call openMailrs(mailDB,rs)
rs.Open "SELECT RIGHT(mailAddr,Char_Length(mailAddr)-Instr(mailAddr,'@')) AS domain,Count(ID) AS CountOfID FROM liveList "&_
	"WHERE mailOn=True GROUP BY domain ORDER BY Count(ID) DESC;",mailDB%>
<table>
	<tr><td>Rank</td><td>Domain</td><td>Subscribers</td></tr>
	<%
	For cnt=1 to 100
		domain=rs("Domain")%>
		<tr>
			<td><%=cnt%></td>
			<td><a href="http://www.<%=Domain%>" target="_blank"><%=Domain%></a></td>
			<td><%=rs("CountOfID")%></td>
		</tr>
		<%rs.MoveNext
	Next%>
</table>
<%Call CloseConRs(mailDB,rs)%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>