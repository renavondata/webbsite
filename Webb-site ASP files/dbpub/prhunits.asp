<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,c,a,tota,ob,title,x,suma,sumc,b,e,dis,disname,estname,f,block,elev,coords,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
b=getInt("b",1)
block=con.Execute("SELECT CONCAT(en,' ',cn) FROM prhblock WHERE ID="&b).Fields(0)
f=Left(Request("f"),6) 'avoid injection attacks
If f="" Then f=con.Execute("SELECT floor FROM prhflat WHERE blockID="&b&" ORDER BY floor LIMIT 1").Fields(0)
rs.Open "SELECT e.ID eID,e.en een,e.cn ecn,d.ID dID,d.en den,d.cn dcn,latitude,longitude "&_
	"FROM prhblock b JOIN (prhestate e,hkdistrict d) ON b.estateID=e.ID AND e.district=d.ID WHERE b.ID="&b,con
	dis=rs("dID")
	disName=rs("den")&" "&rs("dcn")
	e=rs("eID")
	estName=rs("een")&" "&rs("ecn")
	coords=rs("latitude")&","&rs("longitude")
rs.Close
Select case sort
	Case "en" ob="flat"
	Case "end" ob="flat DESC"
	Case "a" ob ="area,flat"
	Case "ad" ob="area DESC,flat"
	Case "el" ob="elevator,flat DESC"
	Case "eln" ob="elevator DESC,flat"
	Case Else
		ob="flat"
		sort="en"
End Select
URL=Request.ServerVariables("URL")&"?b="&b&"&amp;f="&f
title="Housing Authority public rental flats on a floor"
rs.Open "select flat,area,elevator from prhflat WHERE blockID="&b&" AND floor='"&f&"' AND lastseen>=(SELECT DATE(MAX(lastSeen)) FROM prhflat) ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<table class="txtable" style="font-weight:bold">
	<tr><td>Floor:</td><td><%=f%></td></tr>
	<tr><td>Block:</td><td><%=block%></td></tr>
	<tr><td>Estate:</td><td><%=estName%></td></tr>
	<tr><td>District:</td><td><%=disName%></td></tr>
	<tr><td>Map:</td><td><a href="https://maps.google.com/?q=<%=coords%>" target="_blank">Open</a></td></tr>
</table>
<p>This page shows the HK Housing Authority's stock of Public Rental units, on one floor of one Block in one Estate. Data are
<a href="https://data.gov.hk/en-datasets/provider/hk-housing" target="_blank">
sourced here</a>. Click on the menu to go back up.</p>
<ul class="navlist">
	<li><a href="prhdistricts.asp?sort=<%=sort%>">Districts</a></li>
	<li><a href="prhestates.asp?sort=<%=sort%>&amp;dis=<%=dis%>">Estates</a></li>
	<li><a href="prhblocks.asp?sort=<%=sort%>&amp;e=<%=e%>">Blocks</a></li>
	<li><a href="prhfloors.asp?sort=<%=sort%>&amp;b=<%=b%>">Floors</a></li>
</ul>
<div class="clear"></div>
<table class="numtable">
	<tr>
		<th></th>
		<th><%SL "Flat","end","en"%></th>
		<th><%SL "Internal<br>floor<br>area sq.m.","ad","a"%></th>
		<th><%SL "Elevator?","el","eln"%></th>
	</tr>
	<%Do Until rs.EOF
		a=CDbl(rs("area"))
		suma=suma+a	
		If rs("elevator") Then elev="Y" Else elev="N"
		x=x+1%>
		<tr>
			<td><%=x%></td>
			<td><%=rs("flat")%></td>
			<td><%=FormatNumber(a,2)%></td>
			<td><%=elev%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td></td>
		<td>Total</td>
		<td><%=FormatNumber(suma/x,2)%></td>
		<td></td>
	</tr>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>