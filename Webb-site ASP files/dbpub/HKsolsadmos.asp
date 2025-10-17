<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,x,p,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
p=Request("p")
Select Case sort
	Case "jurup" ob="jur"
	Case "jurdn" ob="jur DESC"
	Case "cntup" ob="cnt,jur"
	Case "befdn" ob="bef DESC,jur"
	Case "befup" ob="bef,jur"
	Case "aftdn" ob="aft DESC,jur"
	Case "aftup" ob="aft,jur"
	Case "shrdn" ob="share DESC,jur"
	Case "shrup" ob="share,jur"
	Case Else
		ob="cnt DESC,friendly"
		sort="cntdn"
End Select
URL=Request.ServerVariables("URL")&"?p="&p
title="HK solicitors admitted overseas"%>
<title><%=title%></title></head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,4)
rs.open "SELECT domID,friendly AS jur,COUNT(*) AS cnt, SUM(adm<admhk) AS bef,sum(adm>=admhk) AS aft,SUM(adm<admHK)/COUNT(*) AS share "&_
	"FROM lsppl p JOIN (lsadm a,lsdoms ld,domiciles d) ON p.lsid=a.lsid AND a.lsdom=ld.lsdom AND ld.domID=d.ID AND not dead "&_
	"GROUP BY domID ORDER BY "&ob,con%>
<p>This table analyses all solicitors admitted in HK and currently seen in the 
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withcert.asp" target="_blank">Law Society's Law List</a>, whether practising or not. 
To which other jurisdictions they have been admitted, before or after being 
admitted to HK? Click a column heading to sort. Click a jurisdiction to see 
lawyers who have been admitted both there and in HK.</p>
<%=mobile(3)%>	
<table class="c2l numtable">
	<tr>
		<th class="colHide3"></th>
		<th><%SL "Jurisdiction","jurup","jurdn"%></th>
		<th><%SL "Lawyers","cntdn","cntup"%></th>
		<th><%SL "Before<br>HK","befdn","befup"%></th>
		<th><%SL "On or<br>after<br>HK","aftdn","aftup"%></th>
		<th class="colHide3"><%SL "Share<br>before","shrdn","shrup"%></th>
	</tr>
	<%Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td><a href='HKsolsdom.asp?dom=<%=rs("domID")%>'><%=rs("jur")%></a></td>
			<td><%=rs("cnt")%></td>
			<td><%=rs("bef")%></td>
			<td><%=rs("aft")%></td>
			<td class="colHide3"><%=FormatPercent(CLng(rs("bef"))/CLng(rs("cnt")),1)%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>