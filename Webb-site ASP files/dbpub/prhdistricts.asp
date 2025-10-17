<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,c,a,tota,ob,title,x,suma,sumc,elev,sumelev,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
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
	Case "r" ob="region,en"
	Case "rd" ob="region DESC,en"
	Case Else
		ob="region,en"
		sort="r"
End Select
URL=Request.ServerVariables("URL")
title="Housing Authority public rental housing by District"
rs.Open "SELECT d.ID,d.en,d.cn,COUNT(*)c,SUM(area)tota,SUM(area)/COUNT(*)a,CONCAT(r.en,' ',r.cn)region,SUM(elevator)elev "&_
	"FROM prhflat f JOIN (prhblock b,prhestate e,hkdistrict d,hkregion r) "&_
	"ON f.blockID=b.ID AND b.estateID=e.ID AND e.district=d.ID AND d.regionID=r.ID WHERE lastseen>=(SELECT DATE(MAX(lastSeen)) FROM prhflat) GROUP BY d.ID ORDER BY "&ob,con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the HK Housing Authority's stock of Public Rental units, by District. Data are
<a href="https://data.gov.hk/en-datasets/provider/hk-housing" target="_blank">sourced here</a>. Click on a District to drill down to Estates, Blocks, Floors 
and Units.</p>
<%=mobile(2)%>
<table class="numtable c2l c3l">
	<tr>
		<th class="colHide2"></th>
		<th><%SL "District","en","end"%></th>
		<th><%SL "Chinese","cn","cnd"%></th>	
		<th><%SL "Units","cd","c"%></th>
		<th class="colHide2">Units<br>with<br>elevator</th>
		<th><%SL "Total<br>internal<br>floor<br>area sq.m.","totad","tota"%></th>
		<th><%SL "Average<br>internal<br>floor<br>area sq.m.","ad","a"%></th>
		<th><%SL "Region","r","rd"%></th>
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
		If sort="r" Then sort="en"
		URL="prhestates.asp?sort="&sort&"&amp;dis="&rs("ID")%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td><a href="<%=URL%>"><%=rs("en")%></a></td>
			<td><a href="<%=URL%>"><%=rs("cn")%></a></td>
			<td><%=FormatNumber(c,0)%></td>
			<td class="colHide2"><%=FormatNumber(elev,0)%></td>
			<td><%=FormatNumber(tota,0)%></td>
			<td><%=a%></td>
			<td><%=rs("region")%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td class="colHide2"></td>
		<td>Total</td>
		<td></td>
		<td><%=FormatNumber(sumc,0)%></td>
		<td class="colHide2"><%=FormatNumber(sumelev,0)%></td>
		<td><%=FormatNumber(suma,0)%></td>
		<td><%=FormatNumber(suma/sumc,2)%></td>
	</tr>	
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>