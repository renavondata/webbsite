<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,x,p,dom,sel,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=Request("p")
dom=getLng("dom",116)
Select Case sort
	Case "admoup" ob="adm,name"
	Case "admodn" ob="adm DESC,name"
	Case "admhup" ob="admHK, name"
	Case "admhdn" ob="admHK DESC,name"
	Case "namedn" ob="name DESC,admHK DESC"
	Case Else
		ob="name,admHK"
		sort="nameup"
End Select
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;dom="&dom
title=con.Execute("SELECT friendly FROM domiciles WHERE ID="&dom).Fields(0)
title="HK solicitors admitted to "&title%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,0)%>
<form method="get" action="HKsolsdom.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		<%rs.Open "SELECT DISTINCT domID,friendly FROM lsppl p JOIN (lsadm a,lsdoms ld,domiciles d) "&_
			"ON p.lsid=a.lsid AND a.lsdom=ld.lsdom AND ld.domID=d.ID where not p.dead ORDER BY friendly",con%>
		Domicile <%=arrSelect("dom",dom,rs.GetRows,True)%>
		<%rs.Close%>
	</div>
	<div class="clear"></div>
</form>
<%rs.open "SELECT DISTINCT p.personID,MSdateAcc(admHK,lp.admAcc)admHK,MSdateAcc(adm,la.admAcc)admOS,fnameppl(p.name1,p.name2,p.cName)name "&_
	"FROM lsppl lp JOIN (people p,lsadm la,lsdoms ld,domiciles d) "&_
	"ON p.personID=lp.personID AND lp.lsid=la.lsid AND la.lsdom=ld.lsdom AND ld.domID=d.ID AND not dead AND domID="&dom&_
	" ORDER BY "&ob,con%>
<p>This table shows all solicitors admitted in HK and currently seen in the 
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withcert.asp" target="_blank">Law Society's Law List</a>, whether practising or not, 
who have been admitted to the chosen jurisdiction. 
Click a column heading to sort.</p>
<table class="fcr txtable">
	<tr>
		<th class="colHide3"></th>
		<th><%SL "Name","nameup","namedn"%></th>
		<th><%SL "Admitted<br>to HK","admhup","admhdn"%></th>
		<th><%SL "Admitted<br>overseas","admoup","admodn"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td><a href='positions.asp?p=<%=rs("personID")%>'><%=rs("name")%></a></td>
			<td><%=rs("admHK")%></td>
			<td><%=rs("admOS")%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>