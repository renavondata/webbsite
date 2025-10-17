<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,m,msql,x,ob,total,sql,f,ftxt,simple,vc,vcdes,d,op,opName
Call openEnigmaRs(con,rs)
vc=Max(GetInt("vc",1),1)

f=getInt("f",1) 'frequency 1=monthly 2=yearly
If f=1 Then ftxt="Month" Else ftxt="Year"

simple=GetBool("simple")
If simple Then
	'use previous detailed category to get the parent
	If vc>12 Then vc=con.Execute("SELECT parent FROM vehicleclass WHERE ID="&vc).Fields(0)
Else
	'use parent category to find first child alphabetically
	If vc<13 Then vc=con.Execute("SELECT DISTINCT ID FROM vehicleclass JOIN tdreglic ON vc=ID WHERE parent="&vc&" ORDER BY des LIMIT 1").Fields(0)
	rs.Open "SELECT orgID,fnameOrg(name1,cName)n FROM vehicleclass v JOIN (ptoperators p,organisations o) ON operator=p.ID AND p.orgID=o.personID WHERE v.ID="&vc,con
	If Not rs.EOF Then
		op=rs("orgID")
		opName=rs("n")
	End If
	rs.Close
End If
vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)

sort=Request("sort")
Select case sort
	Case "licup" ob="totLic"
	Case "licdn" ob="totLic DESC"
	Case "regup" ob="totReg"
	Case "regdn" ob="totReg DESC"
	Case "FRup" ob="FR"
	Case "FRdn" ob="FR DESC"
	Case "datup" ob="d"
	Case "","datdn" ob="d DESC"
End Select

title="HK registration and licensing: "&vcdes&" by "&Lcase(ftxt)

If simple Then
	total=con.Execute("SELECT SUM(FR) FROM tdreglic JOIN vehicleclass ON vc=ID WHERE parent="&vc).Fields(0)
	If f=1 Then
		sql="SELECT d,SUM(FR)FR,SUM(totLIC)totLIC,SUM(totReg)totReg FROM tdreglic JOIN vehicleclass vc "&_
			"ON vc=ID WHERE parent="&vc&" GROUP BY d "
	Else
		sql="SELECT d,t.FR,SUM(totLic)totLic,SUM(totReg)totReg FROM tdreglic td JOIN (vehicleclass vc,"&_
			"(SELECT SUM(FR)FR,MAX(d)maxd FROM tdreglic td JOIN vehicleclass vc ON td.vc=vc.ID WHERE vc.parent=3 GROUP BY YEAR(d))t)"&_
			"ON d=maxd AND td.vc=vc.ID WHERE parent="&vc&" GROUP BY d"
	End If
Else
	total=con.Execute("SELECT SUM(FR) FROM tdreglic WHERE vc="&vc).Fields(0)
	If f=1 Then
		sql="SELECT d,FR,totLic,totReg FROM tdreglic WHERE vc="&vc
	Else
		sql="SELECT d,t.FR,totLic,totReg FROM tdreglic JOIN "&_
			"(SELECT SUM(FR)FR,MAX(d)maxd FROM tdreglic WHERE vc="&vc&" GROUP BY YEAR(d))t "&_
			"ON d=maxd AND vc="&vc
	End If
End If
sql=sql&" ORDER BY "&ob
rs.Open sql,con
URL=Request.ServerVariables("URL")&"?vc="&vc&"&amp;simple="&simple
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,0,5)%>
<%If op>0 Then%>
	<h4>Operator: <a href="orgdata.asp?p=<%=op%>"><%=opName%></a></h4>
<%End If%>
<p>This page shows the number of vehicles newly-registered and totals licensed and registered in HK by class, from Jan-2013 onwards, using data from the Transport Department. 
Choose simple or detailed classes. The total licensed and registered are at the end 
of the period. If a vehicle is registered but not licensed then it is not 
allowed on public roads and may have already been scrapped. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the <%=Lcase(ftxt)%> to see all types for the <%=Lcase(ftxt)%>.</p>
<form method="get" action="veFRtypehist.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Breakdown <%=makeSelect("simple",simple,"True,Simple,False,Detailed",True)%>
	</div>
	<div class="inputs">
	Vehicle class
	<%If simple Then
		Response.Write arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID<13 AND ID<>8 ORDER BY des").GetRows,True)
	Else
		Response.Write arrSelect("vc",vc,con.Execute("SELECT DISTINCT ID,des FROM tdreglic JOIN vehicleclass ON vc=ID WHERE totReg>0 ORDER BY des").GetRows,True)
	End If%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable fcl">
	<tr>
		<th><%SL ftxt,"datdn","datup"%></th>
		<th><%SL "First reg.","FRdn","FRup"%></th>
		<th><%SL "Total licensed","licdn","licup"%></th>
		<th><%SL "Total reg.","regdn","regup"%></th>
	</tr>
	<%Do Until rs.EOF
		d=MSdate(rs("d"))
		If f=1 Then m=Month(d) Else m=0%>
		<tr>
			<td class="nowrap"><a href="veFRtype.asp?y=<%=Year(d)%>&amp;m=<%=m%>&amp;simple=<%=simple%>"><%=Left(d,7)%></a></td>
			<td><%=FormatNumber(rs("FR"),0)%></td>			
			<td><%=FormatNumber(rs("totLic"),0)%></td>
			<td><%=FormatNumber(rs("totReg"),0)%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td><a href="veFRtype.asp">Total</a></td>
		<td><%=FormatNumber(total,0)%></td>
	</tr>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>