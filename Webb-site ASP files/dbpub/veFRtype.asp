<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,ytot,m,mtot,msql,x,ob,total,sql,maxd,f,sumLic,sumReg,simple
Call openEnigmaRs(con,rs)
maxd=con.Execute("SELECT MAX(d) FROM vehicleFR").Fields(0)
y=GetInt("y",Year(maxd))
If y<>0 Then y=Min(Max(y,2013),Year(maxd))
If y=0 Then m=0 Else m=Min(Max(GetInt("m",0),0),12)
If y=Year(maxd) And m>Month(maxd) Then m=Month(maxd)
If y>0 Then	msql=" AND YEAR(d)="&y
If m>0 Then msql=msql&" AND MONTH(d)="&m

'find the month for total licensed and registered
If y=0 Then ytot=Year(maxd) Else ytot=y
If m=0 Then
	If ytot=Year(maxd) Then mtot=Month(maxd) Else mtot=12
Else
	mtot=m
End If

sort=Request("sort")
Select case sort
	Case "licup" ob="totLic,des"
	Case "licdn" ob="totLic DESC,des"
	Case "regup" ob="totReg,des"
	Case "regdn" ob="totReg DESC,des"
	Case "FRup" ob="FR,des"
	Case "FRdn" ob="FR DESC,des"
	Case "desdn" ob="des DESC,FR"
	Case Else
		sort="desup"
		ob="des"
End Select

title="HK registration and licensing "
If y=0 Then	title=title&"from 2013-01 " Else title=title&"in "&y
If m>0 Then	title=title&"-"&Right("0"&m,2)
If y=0 Or (y=year(maxd) And m=0) Then
	title=title&" up to "&year(maxd)&"-"&right("0"&month(maxd),2)
End If
total=con.Execute("SELECT SUM(FR) FROM tdreglic WHERE 1=1"&msql).Fields(0)

rs.Open "SELECT SUM(totLic)sumLic,SUM(totReg)sumReg FROM tdreglic WHERE totReg>0 AND YEAR(d)="&ytot&" AND MONTH(d)="&mtot,con
sumLic=rs("sumLic")
sumReg=rs("sumReg")
rs.Close

simple=getBool("simple")
If simple Then
	sql="SELECT vc1.parent ID,vc2.des,SUM(FR)FR,t.totLic,t.totReg FROM tdreglic td JOIN (vehicleclass vc1,"&_
		"(SELECT parent,vc.des,SUM(totLic)totlic,SUM(totReg)totreg FROM tdreglic JOIN vehicleclass vc on vc=ID "&_
		"WHERE YEAR(d)="&ytot&" AND MONTH(d)="&mtot&" GROUP BY vc.parent)t,"&_
		"vehicleclass vc2) ON td.vc=vc1.ID AND vc1.parent=t.parent AND vc1.parent=vc2.ID "&_
		"WHERE t.totReg>0"&msql&" GROUP BY vc1.parent ORDER BY "&ob
Else
	sql="SELECT td.vc ID,vc.des,SUM(FR)FR,t.totLic,t.totReg FROM tdreglic td JOIN (vehicleclass vc,"&_
		"(SELECT vc,totLic,totReg FROM tdreglic WHERE YEAR(d)="&ytot&" AND MONTH(d)="&mtot&")t)"&_
		"ON td.vc=vc.ID AND td.vc=t.vc WHERE t.totReg>0"&msql&" GROUP BY td.vc ORDER BY "&ob
End If
rs.Open sql,con
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;simple="&simple
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(1,0,4)%>
<p>This page shows the number of vehicles newly-registered in HK by vehicle class, from Jan-2013 onwards, using data from the Transport Department. 
Choose simple or detailed view. The total licensed and registered are at the end 
of the period. If a vehicle is registered but not licensed then it is not 
allowed on public roads and may have already been scrapped. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the vehicle class to see the history. The latest available month is <%=Left(MSdate(maxd),7)%>.</p>
<form method="get" action="veFRtype.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Year <%=rangeSelect("y",y,True,"All",True,2013,Year(Date()))%>
		Month <%=rangeSelect("m",m,True,"All",True,1,12)%>
	</div>
	<div class="inputs">
		Breakdown <%=makeSelect("simple",simple,"True,Simple,False,Detailed",True)%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable c2l">
	<tr>
		<th class="colHide1"></th>
		<th><%SL "Vehicle class","desup","desdn"%></th>
		<th><%SL "First reg.","FRdn","FRup"%></th>
		<th><%SL "Total licensed","licdn","licup"%></th>
		<th><%SL "Total reg.","regdn","regup"%></th>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td><a href="veFRtypehist.asp?vc=<%=rs("ID")%>&amp;simple=<%=simple%>"><%=rs("des")%></a></td>
			<td><%=FormatNumber(rs("FR"),0)%></td>			
			<td><%=FormatNumber(rs("totLic"),0)%></td>
			<td><%=FormatNumber(rs("totReg"),0)%></td>
		</tr>
	<%rs.MoveNext
	Loop
	rs.Close%>
	<tr class="total">
		<td class="colHide1"></td>
		<td>All classes</td>
		<td><%=FormatNumber(total,0)%></td>
		<td><%=FormatNumber(sumLic,0)%></td>
		<td><%=FormatNumber(sumReg,0)%></td>
	</tr>
</table>
<%If Not simple Then
	rs.Open "SELECT DISTINCT orgID,tdabbrev,fnameOrg(name1,cName)n FROM tdreglic t JOIN (vehicleclass v,ptoperators p,organisations o)"&_
		" ON t.vc=v.ID AND v.operator=p.ID AND p.orgID=o.personID WHERE NOT ISNULL(operator) AND totReg>0 ORDER BY tdabbrev",con%>
	<h3>Bus operators</h3>
	<table class="opltable">
	<%Do Until rs.EOF%>
		<tr>
			<td><%=rs("tdabbrev")%></td>
			<td><a href="orgdata.asp?p=<%=rs("orgID")%>"><%=rs("n")%></a></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End If%>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>