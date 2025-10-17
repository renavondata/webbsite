<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,m,x,ob,total,sql,mind,maxd,f,sumLic,sumReg,simple,d,cats,cnt,t,tcol,ttxt
Call openEnigmaRs(con,rs)
mind=MSdate(con.Execute("SELECT MIN(d) FROM vehiclefuel").Fields(0))
maxd=MSdate(con.Execute("SELECT MAX(d) FROM vehiclefuel").Fields(0))
t=GetInt("t",0) '0=licensed,1=registered vehicle count
If t=0 Then
	tcol="totLic"
	ttxt="licensed"
Else
	tcol="totReg"
	ttxt="registered"
End If
y=GetInt("y",Year(maxd))
y=Min(Max(y,Year(mind)),Year(maxd))
m=Min(Max(GetInt("m",Month(maxd)),1),12)
d=MSdate(DateSerial(y,m+1,0))
d=Min(d,maxd)
m=Month(d)
total=con.Execute("SELECT SUM("&tcol&") FROM vehiclefuel WHERE d="&sqv(d)).Fields(0)
cats=con.Execute("SELECT fuelID,friendly,SUM("&tcol&"),SUM("&tcol&")*100/"&total&" FROM vehiclefuel v JOIN fueltype f ON v.fuelID=f.ID WHERE d="&sqv(d)&" GROUP BY fuelID").GetRows
cnt=Ubound(cats,2)
sort=Request("sort")
For f=0 to cnt
	If sort="f"&f&"dn" Then ob="f"&f&" DESC"
	If sort="f"&f&"up" Then ob="f"&f
	If sort="fs"&f&"dn" Then ob="fs"&f&" DESC"
	If sort="fs"&f&"up" Then ob="fs"&f
Next
Select case sort
	Case "desdn" ob="des DESC"
	Case "","desup" ob="des"
End Select

For f=0 to cnt
	sql=sql&",SUM("&tcol&"*(fuelID="&cats(0,f)&"))f"&f&",SUM("&tcol&"*(fuelID="&cats(0,f)&"))*100/SUM("&tcol&")fs"&f
Next
sql="SUM("&tcol&")n "&sql

simple=getBool("simple")
If simple Then
	sql="SELECT v.parent vc,v2.des,"&sql&" FROM vehiclefuel JOIN (vehicleclass v,vehicleclass v2) ON vc=v.ID AND v.parent=v2.ID "&_
		" WHERE d="&sqv(d)&" GROUP BY v.parent"
Else
	sql="SELECT vc,v.des,fuelID,"&sql&" FROM vehiclefuel JOIN vehicleclass v ON vc=v.ID WHERE d="&sqv(d)&" GROUP BY vc"
End If
sql=sql&" ORDER BY "&ob
rs.Open sql,con
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;simple="&simple
title="HK "&ttxt&" vehicles by fuel at "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(1,0,6)%>
<p>This page shows the number of vehicles <%=ttxt%> in HK by vehicle class and 
fuel, and the fuel share of each class, from <%=Left(mind,7)%> onwards, using data from the Transport Department. 
Choose simple or detailed view. If a vehicle is registered but not licensed then it is not 
allowed on public roads and may have already been scrapped. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the vehicle class to see the history. Prior to 2023-07, Government 
Vehicles were excluded. The latest available month is <%=Left(maxd,7)%>.</p>
<form method="get" action="vefuel.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Year <%=rangeSelect("y",y,False,,True,Year(mind),Year(maxd))%>
		Month <%=rangeSelect("m",m,False,,True,1,12)%>
	</div>
	<div class="inputs">
		Breakdown <%=makeSelect("simple",simple,"True,Simple,False,Detailed",True)%>
	</div>
	<div class="inputs">
		Status <%=makeSelect("t",t,"0,Licensed,1,Registered",True)%>
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
		<%For f=0 to cnt%>
			<th><%SL cats(1,f),"f"&f&"dn","f"&f&"up"%></th>
		<%Next%>
			<th class="colHide1"><%SL "Total","totdn","totup"%></th>
		<%For f=0 to cnt%>
			<th class="colHide1"><%SL cats(1,f)&" share %","fs"&f&"dn","fs"&f&"up"%></th>
		<%Next%>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td><a href="vefuelhist.asp?vc=<%=rs("vc")%>&amp;t=<%=t%>&amp;simple=<%=simple%>"><%=rs("des")%></a></td>
			<%For f=0 to cnt%>
				<td><%=FormatNumber(rs("f"&f),0)%></td>
			<%Next%>
			<td class="colHide1"><%=FormatNumber(rs("n"),0)%></td>
			<%For f=0 to cnt%>
				<td class="colHide1"><%If isNull(rs("fs"&f)) Then Response.Write "NA" Else Response.Write FormatNumber(rs("fs"&f),2)%></td>
			<%Next%>
		</tr>
	<%rs.MoveNext
	Loop
	rs.Close%>
	<tr class="total">
		<td class="colHide1"></td>
		<td>All classes</td>
		<%For f=0 to cnt%>
			<td><%=FormatNumber(cats(2,f),0)%></td>
		<%Next%>
		<td class="colHide1"><%=FormatNumber(total,0)%></td>
		<%For f=0 to cnt%>
			<td class="colHide1"><%If isNull(cats(3,f)) Then Response.Write "NA" Else Response.Write FormatNumber(cats(3,f),2)%></td>
		<%Next%>
	</tr>
</table>
<%If Not simple Then
	rs.Open "SELECT DISTINCT orgID,tdabbrev,fnameOrg(name1,cName)n FROM vehiclefuel f JOIN (vehicleclass v,ptoperators p,organisations o) "&_
		"ON f.vc=v.ID AND v.operator=p.ID AND p.orgID=o.personID ORDER BY tdabbrev",con%>
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