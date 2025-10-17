<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,m,x,ob,total,sql,f,ftxt,sumLic,sumReg,simple,d,cats,cnt,t,tcol,ttxt,vc,vcdes,op,opName,maxd
Call openEnigmaRs(con,rs)
maxd=MSdate(con.Execute("SELECT MAX(d) FROM vehiclefuel").Fields(0))
vc=Max(GetInt("vc",1),1)

f=getInt("f",1) 'frequency 1=monthly 2=yearly
If f=1 Then	ftxt="Month" Else ftxt="Year"

simple=GetBool("simple")
If simple Then
	'use previous detailed category to get the parent
	If vc>12 Then vc=con.Execute("SELECT parent FROM vehicleclass WHERE ID="&vc).Fields(0)
Else
	'use parent category to find first child alphabetically
	If vc<13 Then vc=con.Execute("SELECT DISTINCT ID FROM vehicleclass JOIN vehiclefuel ON vc=ID WHERE parent="&vc&" ORDER BY des LIMIT 1").Fields(0)
	'the fuel table has no breakdown for red/green PLBs and Citbus' 2 franchises, only for Citybus Single/Double
	x=CInt(con.Execute("SELECT IFNULL(fuelparent,0) FROM vehicleclass WHERE ID="&vc).Fields(0))
	If x>0 Then vc=x
	rs.Open "SELECT orgID,fnameOrg(name1,cName)n FROM vehicleclass v JOIN (ptoperators p,organisations o) ON operator=p.ID AND p.orgID=o.personID WHERE v.ID="&vc,con
	If Not rs.EOF Then
		op=rs("orgID")
		opname=rs("n")
	End If
	rs.Close
End If

vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)

t=GetInt("t",0) '0=licensed,1=registered vehicle count
If t=0 Then
	tcol="totLic"
	ttxt="licensed"
Else
	tcol="totReg"
	ttxt="registered"
End If

'only show fuels that have ever been used in this class or group of classes
sql=IIF(simple,",vehicleclass vc) ON v.vc=vc.ID AND v.fuelID=f.ID WHERE parent=",") ON v.fuelID=f.ID WHERE vc=")
cats=con.Execute("SELECT fuelID,friendly FROM vehiclefuel v JOIN (fueltype f"&sql&vc&" AND "&tcol&">0 GROUP BY fuelID").GetRows
cnt=Ubound(cats,2)

sort=Request("sort")
For x=0 to cnt
	If sort="f"&x&"dn" Then ob="f"&x&" DESC"
	If sort="f"&x&"up" Then ob="f"&x
	If sort="fs"&x&"dn" Then ob="fs"&x&" DESC"
	If sort="fs"&x&"up" Then ob="fs"&x
Next
Select case sort
	Case "totdn" ob="n DESC,d"
	Case "totup" ob="n,d"
	Case "datup" ob="d"
	Case "","datdn" ob="d DESC"
End Select

sql=""
For x=0 to cnt
	sql=sql&",SUM("&tcol&"*(fuelID="&cats(0,x)&"))f"&x&",SUM("&tcol&"*(fuelID="&cats(0,x)&"))*100/SUM("&tcol&")fs"&x
Next
sql="SELECT d,SUM("&tcol&")n "&sql&" FROM vehiclefuel "
simple=getBool("simple")
rs.Open sql&IIF(simple,"f JOIN vehicleclass v ON f.vc=v.ID WHERE parent=","WHERE vc=")&vc&_
	IIF(f=2," AND (MONTH(d)=12 OR d="&sqv(maxd)&")","")&" GROUP BY d ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?vc="&vc&"&amp;f="&f&"&amp;simple="&simple
title="HK "&ttxt&" "&vcdes&" by fuel and "&Lcase(ftxt)
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,0,7)%>
<%If op>0 Then%>
	<h4>Operator: <a href="orgdata.asp?p=<%=op%>"><%=opName%></a></h4>
<%End If%>
<p>This page shows the number of vehicles <%=ttxt%> in HK by vehicle class and 
fuel, and the fuel share, using data from the Transport Department. 
Choose simple or detailed view. If a vehicle is registered but not licensed then it is not 
allowed on public roads and may have already been scrapped. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the <%=lcase(ftxt)%> to see all classes for that <%=Lcase(ftxt)%>. Prior to 2023-07, Government Vehicles were excluded. 
There is no fuel breakdown between Red and Green Public Light Buses, nor between 
the 2 Citybus franchises.</p>
<form method="get" action="vefuelhist.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Breakdown <%=makeSelect("simple",simple,"True,Simple,False,Detailed",True)%>
	</div>
	<div class="inputs">
	Vehicle class
	<%If simple Then
		Response.Write arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID<13 AND ID<>8 ORDER BY des").GetRows,True)
	Else
		Response.Write arrSelect("vc",vc,con.Execute("SELECT DISTINCT ID,des FROM vehiclefuel JOIN vehicleclass ON vc=ID ORDER BY des").GetRows,True)
	End If%>
	</div>
	<div class="inputs">
		Status <%=makeSelect("t",t,"0,Licensed,1,Registered",True)%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable fcl">
	<tr class="yscroll">
		<th><%SL ftxt,"datdn","datup"%></th>
		<%For x=0 to cnt%>
			<th><%SL cats(1,x),"f"&x&"dn","f"&x&"up"%></th>
		<%Next%>
			<th class="colHide1"><%SL "Total","totdn","totup"%></th>
		<%For x=0 to cnt%>
			<th class="colHide1"><%SL cats(1,x)&" share %","fs"&x&"dn","fs"&x&"up"%></th>
		<%Next%>
	</tr>
	<%Do Until rs.EOF
		d=MSdate(rs("d"))
		If f=1 Then m=Month(d) Else m=0%>
		<tr>
			<td class="nowrap"><a href="vefuel.asp?y=<%=Year(d)%>&amp;m=<%=m%>&amp;simple=<%=simple%>"><%=Left(d,7)%></a></td>
			<%For x=0 to cnt%>
				<td><%=FormatNumber(rs("f"&x),0)%></td>
			<%Next%>
			<td class="colHide1"><%=FormatNumber(rs("n"),0)%></td>
			<%For x=0 to cnt%>
				<td class="colHide1"><%If isNull(rs("fs"&x)) Then Response.Write "NA" Else Response.Write FormatNumber(rs("fs"&x),2)%></td>
			<%Next%>
		</tr>
	<%rs.MoveNext
	Loop
	rs.Close%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>