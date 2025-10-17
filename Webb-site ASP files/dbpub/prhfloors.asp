<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,c,a,tota,ob,title,x,suma,sumc,b,e,dis,disname,estname,f,block,elev,sumelev,coords,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
b=getInt("b",1)
block=con.Execute("SELECT CONCAT(en,' ',cn) FROM prhblock WHERE ID="&b).Fields(0)
rs.Open "SELECT e.ID eID,e.en een,e.cn ecn,d.ID dID,d.en den,d.cn dcn,latitude,longitude FROM prhblock b JOIN (prhestate e,hkdistrict d) ON b.estateID=e.ID AND e.district=d.ID WHERE b.ID="&b,con
	dis=rs("dID")
	disName=rs("den")&" "&rs("dcn")
	e=rs("eID")
	estName=rs("een")&" "&rs("ecn")
	coords=rs("latitude")&","&rs("longitude")
rs.Close
Select case sort
	Case "en" ob="floor"
	Case "end" ob="floor DESC"
	Case "tota" ob="tota"
	Case "totad" ob="tota DESC"
	Case "a" ob ="a"
	Case "ad" ob="a DESC"
	Case "c" ob ="c,floor"
	Case "cd" ob="c DESC,floor DESC"
	Case Else
		ob="floor DESC"
		sort="en"
End Select
URL=Request.ServerVariables("URL")&"?b="&b
title="Housing Authority public rental floors in a block"
rs.Open "select floor,COUNT(*) c,SUM(area) tota,SUM(area)/COUNT(*) a,SUM(elevator) elev FROM prhflat f WHERE blockID="&b&_
	" AND lastseen>=(SELECT DATE(MAX(lastSeen)) FROM prhflat) GROUP BY floor ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<table class="txtable" style="font-weight:bold">
	<tr><td>Block:</td><td><%=block%></td></tr>
	<tr><td>Estate:</td><td><%=estName%></td></tr>
	<tr><td>District:</td><td><%=disName%></td></tr>
	<tr><td>Map:</td><td><a href="https://maps.google.com/?q=<%=coords%>" target="_blank">Open</a></td></tr>
</table>
<p>This page shows the HK Housing Authority's stock of Public Rental units, in one Block of one Estate. Data are
<a href="https://data.gov.hk/en-datasets/provider/hk-housing" target="_blank">
sourced here</a>. Click on a floor to see the flats.</p>
<ul class="navlist">
	<li><a href="prhdistricts.asp?sort=<%=sort%>">Districts</a></li>
	<li><a href="prhestates.asp?sort=<%=sort%>&amp;dis=<%=dis%>">Estates</a></li>
	<li><a href="prhblocks.asp?sort=<%=sort%>&amp;e=<%=e%>">Blocks</a></li>
</ul>
<div class="clear"></div>
<%=mobile(2)%>
<table class="numtable">
	<tr>
		<th class="colHide2"></th>
		<th><%SL "Floor","end","en"%></th>
		<th><%SL "Units","cd","c"%></th>
		<th>Units<br>with<br>elevator</th>
		<th><%SL "Total<br>internal<br>floor<br>area sq.m.","totad","tota"%></th>
		<th><%SL "Average<br>internal<br>floor<br>area sq.m.","ad","a"%></th>
	</tr>
	<%Do Until rs.EOF
		c=CLng(rs("c"))
		sumc=sumc+c
		tota=CDbl(rs("tota"))
		f=rs("floor")
		suma=suma+tota	
		elev=CLng(rs("elev"))
		sumelev=sumelev+elev
		If c=0 Then a="-" Else a=FormatNumber(rs("a"),2)
		x=x+1
		URL="prhunits.asp?sort="&sort&"&amp;b="&b&"&amp;f="&f%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td><a href="<%=URL%>"><%=f%></a></td>
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