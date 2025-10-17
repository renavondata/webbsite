<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,x,p,d,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=getIntRange("p",0,1,5)
d=getMinMSdate("d","2018-01-12")
Select Case sort
	Case "orgup" ob="name1"
	Case "orgdn" ob="name1 DESC"
	Case "partup" ob="partner,tot,name1"
	Case "partdn" ob="partner DESC,tot DESC,name1"
	Case "solup" ob="sol,tot,name1"
	Case "soldn" ob="sol DESC,tot DESC,name1"
	Case "conup" ob="con,tot,name1"
	Case "condn" ob="con DESC,tot DESC,name1"
	Case "propup" ob="prop,tot,name1"
	Case "propdn" ob="prop DESC,tot DESC,name1"
	Case "totup" ob="tot,name1"
	Case Else
		ob="tot DESC,name1"
		sort="totdn"
End Select
URL=Request.ServerVariables("URL")&"?d="&d&"&amp;p="&p
title="HK law firms"%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,5)
rs.Open "SELECT lo.personID,o.name1,count(lsppl) tot,SUM(post=1) partner,SUM(post=2) con,SUM(post=3) sol,SUM(post=5) prop "&_
	"FROM lsposts lp JOIN (lsorgs lo,organisations o) ON lp.lsorg=lo.lsid AND lo.personID=o.personID "&_
	"WHERE lp.firstSeen<DATE_ADD('"&d&"', INTERVAL 1 DAY) AND (Not lp.dead or lp.lastSeen>='"&d&"') GROUP BY lo.personID ORDER BY "&ob,con%>
<p>This table lists all current HK firms seen in the 
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_firm.asp" target="_blank">Law Society's Law List</a> 
and their respective numbers of partners, assistant solicitors, consultants and 
sole proprietor admitted in HK. Some people are associated with more than one firm. Click 
a column heading to sort.</p>
<form method="get" action="HKsolfirms.asp">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<table class="numtable c2l">
	<tr>
		<th class="colHide3 right"></th>
		<th><%SL "Firm","orgup","orgdn"%></th>
		<th><%SL "Part.","partdn","partup"%></th>
		<th><%SL "Ass.<br>sol.","soldn","solup"%></th>
		<th><%SL "Cons.","condn","conup"%></th>
		<th><%SL "Sole<br>prop.","propdn","propup"%></th>
		<th><%SL "Total","totdn","totup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide3 right"><%=x%></td>
			<td><a href='officers.asp?p=<%=rs("personID")%>&amp;d=<%=d%>'><%=rs("name1")%></a></td>
			<td><%=rs("partner")%></td>
			<td><%=rs("sol")%></td>
			<td><%=rs("con")%></td>
			<td><%=rs("prop")%></td>
			<td><%=rs("tot")%></td>
		</tr>
		<%rs.Movenext
	Loop
	rs.Close
	rs.Open "SELECT count(lsppl) tot,SUM(post=1) partner,SUM(post=2) con,SUM(post=3) sol,SUM(post=5) AS prop FROM lsposts lp "&_
		"WHERE lp.firstSeen<DATE_ADD('"&d&"', INTERVAL 1 DAY) AND (Not lp.dead or lp.lastSeen>='"&d&"') AND post<>4",con%>
	<tr class="total">
		<td class="colHide3"></td>
		<td>Total</td>
		<td><%=rs("partner")%></td>
		<td><%=rs("sol")%></td>
		<td><%=rs("con")%></td>
		<td><%=rs("prop")%></td>
		<td><%=rs("tot")%></td>
	</tr>
	<%Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>