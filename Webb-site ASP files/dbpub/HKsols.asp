<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,age,x,p,con,rs,sql
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=getIntRange("p",0,1,5)
If p=0 Then
	title="All solicitors"
Else
	sql=" AND post="&p
	title=con.Execute("SELECT LStxt FROM lsroles WHERE ID="&p).Fields(0)&"s"
End If
Select Case sort
	Case "humup" ob="pName,oName"
	Case "humdn" ob="pName DESC,oName"
	Case "orgup" ob="oName,LStxt,pName"
	Case "orgdn" ob="oName,admHK,pName"
	Case "admdn" ob="admHK DESC,pName"
	Case "ageup" ob="age,pName,oName"
	Case "agedn" ob="age DESC,pName,oName"
	Case "rolup" ob="LStxt,pName,oName"
	Case "roldn" ob="LStxt DESC,oName,pName"
	Case Else
	ob="admHK,pName,oName"
	sort="admup"
End Select
URL=Request.ServerVariables("URL")&"?p="&p
title=title&" in HK law firms"%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,1)%>
<form method="get">
	<p>Role: <%=arrSelectZ("p",p,con.Execute("SELECT ID,LStxt FROM lsroles WHERE ID<>4").GetRows,True,True,0,"All")%></p>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%rs.Open "SELECT MSdateAcc(admHK,2)admHK,o.personID AS orgID,o.name1 AS oName,p.personID AS pID,fnameppl(p.name1,p.name2,p.cName) AS pName,LStxt,Year(Now())-YOB AS age "&_
	"FROM lsposts ps JOIN (lsppl lp, lsorgs lo,lsroles lr,organisations o,people p) ON ps.lsorg=lo.lsid AND ps.lsppl=lp.lsid AND not ps.dead "&_
	"AND ps.post=lr.id AND lo.personID=o.PersonID AND lp.personID=p.personID "&sql&" ORDER BY "&ob,con%>
<p>This table lists all current HK Solicitors associated with HK law firms seen in the 
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withcert.asp" target="_blank">Law Society's Law List</a>. Some members are associated with more than one firm. Click 
a column heading to sort.</p>
<table class="txtable">
	<tr>
		<th class="colHide3 right"></th>
		<th><%SL "Lawyer","humup","humdn"%></th>
		<th><%SL "Admission<br>in HK","admup","admdn"%></th>
		<th><%SL "Firm","orgup","orgdn"%></th>
		<%If p="A" Then%>
			<th><%SL "Role","roldn","rolup"%></th>
		<%End if%>
		<th class="right"><%SL "Age in<br>"&Year(Date),"agedn","ageup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		age=rs("age")%>
		<tr>
			<td class="colHide3 right"><%=x%></td>
			<td><a href='positions.asp?p=<%=rs("pID")%>'><%=rs("pName")%></a></td>
			<td><%=rs("admHK")%></td>
			<td><a href='officers.asp?p=<%=rs("orgID")%>'><%=rs("oName")%></a></td>
			<%If p="A" Then%>
				<td><%=rs("LStxt")%></td>
			<%End If%>
			<td class="right"><%If isNull(age) Then Response.Write "-" Else Response.Write age%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>