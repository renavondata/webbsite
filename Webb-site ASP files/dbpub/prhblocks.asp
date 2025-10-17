<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,c,a,tota,ob,title,x,suma,sumc,e,dis,disName,estName,elev,sumelev,coords,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
e=getInt("e",1)
rs.Open "SELECT d.ID,CONCAT(e.en,' ',e.cn) estName,CONCAT(d.en,' ',d.cn)disName,latitude,longitude FROM prhestate e JOIN hkdistrict d ON e.district=d.ID WHERE e.ID="&e,con
	dis=rs("ID")
	disName=rs("disName")
	estName=rs("estName")
	coords=rs("latitude")&","&rs("longitude")
rs.Close
Select case sort
	Case "en" ob="en"
	Case "end" ob="en DESC"
	Case "cn" ob="cn"
	Case "cnd" ob="cn DESC"
	Case "tota" ob="tota"
	Case "totad" ob="tota DESC"
	Case "a" ob ="a"
	Case "ad" ob="a DESC"
	Case "c" ob ="c,en"
	Case "cd" ob="c DESC,en"
	Case Else
		ob="en"
		sort="en"
End Select
URL=Request.ServerVariables("URL")&"?e="&e
title="Housing Authority public rental blocks in an estate"
rs.Open "SELECT b.ID,b.en,b.cn,COUNT(*) c,SUM(area) tota,SUM(area)/COUNT(*) a,SUM(elevator)elev FROM prhflat f JOIN prhblock b "&_
	"ON f.blockID=b.ID WHERE b.estateID="&e&" AND lastseen>=(SELECT DATE(MAX(lastSeen)) FROM prhflat) GROUP BY b.ID ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<table class="txtable" style="font-weight:bold">
	<tr><td>Estate:</td><td><%=estName%></td></tr>
	<tr><td>District:</td><td><%=disName%></td></tr>
	<tr><td>Map:</td><td><a href="https://maps.google.com/?q=<%=coords%>" target="_blank">Open</a></td></tr>
</table>
<p>This page shows the HK Housing Authority's stock of Public Rental units in one Estate. Data are
<a href="https://data.gov.hk/en-datasets/provider/hk-housing" target="_blank">
sourced here</a>. Click on a Block to drill down to Floors and Units.</p>
<ul class="navlist">
	<li><a href="prhdistricts.asp?sort=<%=sort%>">Districts</a></li>
	<li><a href="prhestates.asp?sort=<%=sort%>&amp;dis=<%=dis%>">Estates</a></li>
</ul>
<div class="clear"></div>
<%=mobile(2)%>
<table class="numtable c2l c3l">
	<tr>
		<th class="colHide2"></th>
		<th><%SL "Block","en","end"%></th>
		<th><%SL "Chinese","cn","cnd"%></th>	
		<th><%SL "Units","cd","c"%></th>
		<th>Units<br>with<br>elevator</th>
		<th><%SL "Total<br>internal<br>floor<br>area sq.m.","totad","tota"%></th>
		<th><%SL "Average<br>internal<br>floor<br>area sq.m.","ad","a"%></th>
	</tr>
	<%Do Until rs.EOF
		c=CLng(rs("c"))
		sumc=sumc+c
		tota=CDbl(rs("tota"))
		suma=suma+tota
		elev=CLng(rs("elev"))
		sumelev=sumelev+elev
		If c=0 Then a="-" Else a=FormatNumber(rs("a"),2)
		x=x+1
		URL="prhfloors.asp?sort="&sort&"&amp;b="&rs("ID")%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td><a href="<%=URL%>"><%=rs("en")%></a></td>
			<td><a href="<%=URL%>"><%=rs("cn")%></a></td>
			<td><%=FormatNumber(c,0)%></td>
			<td><%=FormatNumber(elev,0)%></td>
			<td><%=FormatNumber(tota,0)%></td>
			<td><%=a%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td class="colHide2"></td>
		<td>Total</td>
		<td></td>
		<td><%=FormatNumber(sumc,0)%></td>
		<td><%=FormatNumber(sumelev,0)%></td>
		<td><%=FormatNumber(suma,0)%></td>
		<td><%=FormatNumber(suma/sumc,2)%></td>
	</tr>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>