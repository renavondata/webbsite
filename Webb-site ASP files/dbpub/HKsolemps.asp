<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,x,p,tot,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=Request("p")
Select Case sort
	Case "orgup" ob="name1"
	Case "orgdn" ob="name1 DESC"
	Case "cntup" ob="cnt,name1"
	Case Else
		ob="cnt DESC,name1"
		sort="cntdn"
End Select
URL=Request.ServerVariables("URL")&"?p="&p
title="Non-law firms with HK solicitors"%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,6)
rs.Open "SELECT name1,o.personID,count(*) AS cnt from lsjobs j JOIN (lsemps e,organisations o) ON j.empID=e.ID AND e.personID=o.personID "&_
	"WHERE not dead GROUP BY e.personID ORDER BY "&ob,con%>
<p>This table lists known employers of HK solicitors which are not law firms, by number of solicitors admitted in HK, based on information seen in the 
Law Society's Law List,
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withcert.asp" target="_blank">
with</a> or
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withoutcert.asp" target="_blank">
without</a> a practising certificate.&nbsp;Some people are associated with more than one 
employer. Click a column heading to sort. The list is not exhaustive, because some solicitors 
don't disclose an employer or 
give only a vague name of their employer which is not sufficient for us to 
associate the name with a particular legal entity.</p>
<table class="numtable c2l">
	<tr>
		<th class="colHide3 right"></th>
		<th><%SL "Employer","orgup","orgdn"%></th>
		<th><%SL "Sols.","cntdn","cntup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		tot=tot+CLng(rs("cnt"))%>
		<tr>
			<td class="colHide3 right"><%=x%></td>
			<td><a href='officers.asp?p=<%=rs("personID")%>'><%=rs("name1")%></a></td>
			<td><%=rs("cnt")%></td>
		</tr>
		<%rs.Movenext
	Loop
	rs.Close%>
	<tr class="total">
		<td class="colHide3"></td>
		<td>Total</td>
		<td><%=tot%></td>
	</tr>
	<%Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>