<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,c,a,tota,ob,title,x,suma,sumc,dis,disName,elev,sumelev,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
dis=getInt("dis",1)
If dis<1 or dis>18 Then dis=1
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
URL=Request.ServerVariables("URL")&"?dis="&dis
disName=con.Execute("SELECT CONCAT(en,' ',cn) FROM hkdistrict WHERE ID="&dis).Fields(0)
title="Housing Authority public rental estates in a District"
rs.Open "SELECT e.ID,e.en,e.cn,COUNT(*) c,SUM(area) tota,SUM(area)/COUNT(*) a,SUM(elevator)elev,latitude,longitude FROM prhflat f JOIN (prhblock b,prhestate e) "&_
	"ON f.blockID=b.ID AND b.estateID=e.ID WHERE e.district="&dis&" AND lastseen>=(SELECT DATE(MAX(lastSeen)) FROM prhflat) GROUP BY e.ID ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<table class="txtable" style="font-weight:bold">
	<tr><td>District:</td><td><%=disName%></td></tr>	
</table>
<p>This page shows the HK Housing Authority's stock of Public Rental units in one District. Data are
<a href="https://data.gov.hk/en-datasets/provider/hk-housing" target="_blank">
sourced here</a>. Click on an Estate to drill down to Blocks, Floors and Units.</p>
<ul class="navlist">
	<li><a href="prhdistricts.asp?sort=<%=sort%>">Districts</a></li>
</ul>
<div class="clear"></div>
<%=mobile(2)%>
<table class="numtable c2l c3l">
	<tr>
		<th class="colHide2"></th>
		<th><%SL "Estate","en","end"%></th>
		<th><%SL "Chinese","cn","cnd"%></th>	
		<th><%SL "Units","cd","c"%></th>
		<th>Units<br>with<br>elevator</th>
		<th><%SL "Total<br>internal<br>floor<br>area sq.m.","totad","tota"%></th>
		<th><%SL "Average<br>internal<br>floor<br>area sq.m.","ad","a"%></th>
		<th>Map</th>
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
		URL="prhblocks.asp?sort="&sort&"&amp;e="&rs("ID")%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td><a href="<%=URL%>"><%=rs("en")%></a></td>
			<td><a href="<%=URL%>"><%=rs("cn")%></a></td>
			<td><%=FormatNumber(c,0)%></td>
			<td><%=FormatNumber(elev,0)%></td>
			<td><%=FormatNumber(tota,0)%></td>
			<td><%=a%></td>
			<td><a href="https://maps.google.com/?q=<%=rs("latitude")%>,<%=rs("longitude")%>" target="_blank">Open</a></td>
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