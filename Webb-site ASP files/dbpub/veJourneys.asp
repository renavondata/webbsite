<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,ytot,m,mtot,msql,x,ob,total,sql,maxd,f,sumLic,sumReg,simple,a
Call openEnigmaRs(con,rs)
maxd=con.Execute("SELECT MAX(d) FROM tdjourneys").Fields(0)
y=GetInt("y",Year(maxd))
If y<>0 Then y=Min(Max(y,2013),Year(maxd))
If y=0 Then m=0 Else m=Min(Max(GetInt("m",0),0),12)
If y=Year(maxd) And m>Month(maxd) Then m=Month(maxd)
If y>0 Then	msql=" AND YEAR(t.d)="&y
If m>0 Then msql=msql&" AND MONTH(t.d)="&m

'find the month for total licensed and registered
If y=0 Then ytot=Year(maxd) Else ytot=y
If m=0 Then
	If ytot=Year(maxd) Then mtot=Month(maxd) Else mtot=12
Else
	mtot=m
End If

sort=Request("sort")
Select case sort
	Case "capdn" ob="paxcap DESC,des"
	Case "capup" ob="paxcap,des"
	Case "jup" ob="j,des"
	Case "jdn" ob="j DESC,des"
	Case "jcddn" ob="jcd DESC,des"
	Case "jcdup" ob="jcd,des"
	Case "licdn" ob="totLic DESC,des"
	Case "licup" ob="totLic,des"
	Case "desdn" ob="des DESC,j"
	Case "desup" ob="des,j"
	Case "kcddn" ob="kcd DESC,des"
	Case "kcdup" ob="kcd,des"
	Case "kmdn" ob="km DESC,des"
	Case "kmup" ob="km,des"
	Case Else
		sort="jdn"
		ob="j DESC,des"
End Select

title="HK passenger journeys "
If y=0 Then	title=title&"from 2013-01 " Else title=title&"in "&y
If m>0 Then	title=title&"-"&Right("0"&m,2)
If y=0 Or (y=year(maxd) And m=0) Then
	title=title&" up to "&year(maxd)&"-"&right("0"&month(maxd),2)
End If
total=con.Execute("SELECT SUM(j) FROM tdjourneys t WHERE 1=1"&msql).Fields(0)

rs.Open "SELECT SUM(totLic)sumLic,SUM(totReg)sumReg FROM tdreglic WHERE YEAR(d)="&ytot&" AND MONTH(d)="&mtot,con
sumLic=rs("sumLic")
sumReg=rs("sumReg")
rs.Close

simple=getBool("simple")
sql="SELECT v.ID,des,SUM(j)j,ROUND(SUM(j)/SUM(DAY(t.d)))pd,ROUND(AVG(totlic))totLic,ROUND(AVG(paxcap))paxcap,SUM(km)km,"&_
	"IFNULL(SUM(km)/AVG(totLic)/SUM(DAY(t.d)),0)kcd,IFNULL(SUM(j)/AVG(totlic)/SUM(DAY(t.d)),0)jcd FROM "
If simple Then
	sql=sql&"(SELECT t.d,jparent,SUM(j)j,SUM(paxcap)paxcap,SUM(km)km,SUM(totLic)totLic FROM tdjourneys t JOIN "&_
		"(vehicleclass v,tdreglic r) ON t.vc=v.ID AND t.d=r.d AND t.vc=r.vc GROUP BY t.d,jparent)t "&_
		"JOIN vehicleclass v ON t.jparent=v.ID"
Else
	sql=sql&"tdjourneys t JOIN (vehicleclass v,tdreglic r) ON t.vc=v.ID AND t.d=r.d AND t.vc=r.vc"
End If
sql=sql&" WHERE 1=1"&msql&" GROUP BY v.ID ORDER BY "&ob

a=con.Execute(sql).GetRows
'rs.Open sql,con
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;simple="&simple
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(1,0,10)%>
<p>This page shows the number of passenger journeys and distance covered by vehicle class, from Jan-2013 onwards, using data from the Transport Department. 
Choose simple or detailed view. For trains, cars are passenger carriages but car kilometres are train kilometres. So you 
need to multiply km/car/day by the number of cars per train. Red Minibus journeys are based on surveys, not regular 
returns. MTR fleet data exclude cross-border trains. For periods longer than 1 month, we show the monthly average 
capacity and vehicles. Click on the vehicle class to see the history. The latest available month is <%=Left(MSdate(maxd),7)%>.</p>
<form method="get" action="veJourneys.asp">
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
		<th><%SL "Journeys","jdn","jup"%></th>
		<th><%SL "Per day","jdn","jup"%></th>
		<th><%SL "Licensed vehicles","licdn","licup"%></th>
		<th><%SL "Vehicle capacity","capdn","capup"%></th>
		<th><%SL "Car Km","kmdn","kmup"%></th>
		<th class="colHide2"><%SL "Km/<br>car/<br>day","kcddn","kcdup"%></th>
		<th class="colHide2"><%SL "Journeys/<br>car/<br>day","jcddn","jcdup"%></th>
	</tr>
	<%For y=0 to Ubound(a,2)%>
		<tr>
			<td class="colHide1"><%=y+1%></td>
			<td><a href="veJourneyhist.asp?vc=<%=a(0,y)%>&amp;simple=<%=simple%>"><%=a(1,y)%></a></td>
			<%For x=2 to 6%>
				<td><%=FormatNumber(a(x,y),0)%></td>
			<%Next%>
			<td class="colHide2"><%=FormatNumber(a(7,y),1)%></td>
			<td class="colHide2"><%=FormatNumber(a(8,y),1)%></td>
		</tr>
	<%Next%>
	<tr class="total">
		<td class="colHide1"></td>
		<td>All classes</td>
		<%For x=2 to 6%>
			<td><%=FormatNumber(colSum(a,x),0)%></td>
		<%Next%>
	</tr>
</table>
<%If Not simple Then
	rs.Open "SELECT DISTINCT orgID,tdabbrev,fnameOrg(name1,cName)n FROM tdjourneys t JOIN (vehicleclass v,ptoperators p,organisations o)"&_
		" ON t.vc=v.ID AND v.operator=p.ID AND p.orgID=o.personID WHERE NOT ISNULL(operator) ORDER BY tdabbrev",con%>
	<h3>Operators</h3>
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