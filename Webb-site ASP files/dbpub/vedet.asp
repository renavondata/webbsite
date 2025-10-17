<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,m,vc,vcdes,x,ob,fuels,fuelcnt,bodies,bodycnt,n,d,makeID,make,total,maxd,vsql,lastBody,newBody,f,row,found,rowTot
f=getInt("f",1) 'frequency 1=monthly 2=yearly
makeID=getInt("brand",0)
vc=GetInt("vc",1)
Select Case vc
	Case 1,2,27,28,29
	Case Else vc=1
End Select
vsql=" vc="&vc

Call openEnigmaRs(con,rs)
maxd=con.Execute("SELECT MAX(d) FROM vehicleFR").Fields(0)
y=GetInt("y",Year(maxd))
If y<>0 Then y=Min(Max(y,2016),Year(maxd))
If y=0 Then m=0 Else m=Min(Max(GetInt("m",0),0),12)
If y=2016 And m>0 And m<5 Then m=5
If y=Year(maxd) And m>Month(maxd) Then m=Month(maxd)
If y>0 Then	vsql=vsql&" AND YEAR(d)="&y
If m>0 Then vsql=vsql&" AND MONTH(d)="&m

vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)
If makeID>0 Then
	If con.Execute("SELECT EXISTS(SELECT * FROM vehiclefr WHERE makeID="&makeID&" AND vc="&vc&")").Fields(0) Then
		make=con.Execute("SELECT make FROM vehiclemakes WHERE ID="&makeID).Fields(0)
	Else
		'this vehicle class doesn't have this brand so get the first one alphabetically
		rs.Open "SELECT DISTINCT ID,make FROM vehiclemakes JOIN vehiclefr ON makeID=ID AND vc="&vc&" ORDER BY make LIMIT 1",con
		makeID=rs("ID")
		make=rs("make")
		rs.Close
	End If
	vsql=vsql&" AND makeID="&makeID
End If

'crashes if no records!
found=con.Execute("SELECT EXISTS(SELECT * FROM vehiclefr WHERE"&vsql&")").Fields(0)
If found Then
	fuels=con.Execute("SELECT ID,friendly,SUM(freg) FROM fueltype f JOIN vehiclefr v ON f.ID=v.fuelID WHERE"&vsql&" GROUP BY f.ID ORDER BY ID").GetRows
	bodies=con.Execute("SELECT ID,des,SUM(freg) FROM bodytype b JOIN vehiclefr v ON b.ID=v.bodyID WHERE"&vsql&" GROUP BY b.ID ORDER BY ID").GetRows
	total=colSum(fuels,2)
	fuelcnt=Ubound(fuels,2)
	bodycnt=Ubound(bodies,2)
	Redim row(fuelcnt)
End If
title="HK first registration: "&vcdes&": "&make&" "
If y=0 Then	title=title&"from 2016-05 " Else title=title&"in "&y
If m>0 Then
	title=title&"-"&Right("0"&m,2)
ElseIf y=2016 Then
	title=title&"-05 to 2016-12"
End If
If y=0 Or (y=year(maxd) And m=0) Then
	title=title&" up to "&year(maxd)&"-"&right("0"&month(maxd),2)
End If

rs.Open "SELECT bt.bodyID,st.FRstatID,ft.fuelID,IFNULL(freg,0)freg,sdes FROM "&_
	"(SELECT DISTINCT fuelID FROM vehiclefr WHERE "&vsql&")ft JOIN "&_
	"(SELECT DISTINCT bodyID FROM vehiclefr WHERE "&vsql&")bt JOIN "&_
	"(SELECT DISTINCT FRstatID,des sdes FROM vehiclefr JOIN frstatus ON FRstatID=ID WHERE "&vsql&")st "&_
	"LEFT JOIN (SELECT SUM(freg)freg,bodyID,fuelID,FRstatID FROM vehiclefr WHERE "&vsql&" GROUP BY bodyID,fuelID,FRstatID)vf "&_
	"ON ft.fuelID=vf.fuelID AND bt.bodyID=vf.bodyID AND st.FRstatID=vf.FRstatID "&_
	"WHERE (EXISTS(SELECT * FROM vehiclefr WHERE "&vsql&" AND bodyID=bt.bodyID AND frStatID=st.FRstatID)) "&_
	"ORDER BY bt.bodyID,sdes,ft.fuelID",con%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,makeID,2)%>
<p>This page shows the breakdown of newly-registered vehicles for a chosen 
vehicle class and brand since May-2016, using data from the Transport Department. By
<a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. The latest month is <%=left(MSdate(maxd),7)%>.</p>
<form method="get" action="vedet.asp">
	<div class="inputs">
		Year <%=rangeSelect("y",y,True,"All",True,2016,Year(Date()))%>
		Month <%=rangeSelect("m",m,True,"All",True,1,12)%>
	</div>
	<div class="inputs">
		Vehicle type
		<%=arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID IN(1,2,27,28,29)").GetRows,True)%>
	</div>
	<div class="inputs">
		Brand
		<%=arrSelectZ("brand",makeID,con.Execute("SELECT DISTINCT ID,make FROM vehiclemakes JOIN vehiclefr ON ID=makeID WHERE vc="&vc&" ORDER BY make").GetRows,True,True,0,"All")%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If found Then%>
	<%=mobile(1)%>
	<table class="optable fcl c2l">
		<tr>
			<th>Body</th>
			<th>Reg type</th>
			<%For x=0 to fuelcnt%>
				<th><%=fuels(1,x)%></th>
			<%Next%>
			<th>All fuels</th>
			<%For x=0 to fuelcnt%>
				<th class="colHide1"><%=fuels(1,x)&" share %"%></th>
			<%Next%>
		</tr>
		<%
		lastBody=0
		x=-1
		Do Until rs.EOF
			newBody=False
			If rs("bodyID")<>lastBody Then
				newBody=True
				lastBody=rs("bodyID")
				x=x+1
			End If%>
			<tr <%=IIF(newBody,"class='total'","")%>>
				<td><%=IIF(newBody,bodies(1,x),"")%></td>
				<td><%=rs("sdes")%></td>
				<%For f=0 to fuelcnt
					row(f)=CLng(rs("freg"))
					rs.MoveNext%>
					<td><%=FormatNumber(row(f),0)%></td>
				<%Next
				rowTot=arrSum(row)%>
				<td><%=FormatNumber(rowTot,0)%></td>
				<%For f=0 to fuelcnt%>
					<td class="colHide1"><%=formatNumber(row(f)*100/rowTot,2)%></td>
				<%Next%>
			</tr>
		<%Loop%>
		<tr class="total">
			<td>Total</td>
			<td></td>
			<%For x=0 to fuelcnt%>
				<td><%=FormatNumber(fuels(2,x),0)%></td>
			<%Next%>
			<td><%=FormatNumber(total,0)%></td>
			<%For x=0 to fuelcnt%>
				<td class="colHide1"><%=FormatNumber(CLng(fuels(2,x))*100/total,2)%></td>
			<%Next%>
		</tr>
	</table>
	<%rs.Close
	rs.Open "SELECT bt.bodyID,ft.fuelID,IFNULL(freg,0)freg FROM "&_
		"(SELECT DISTINCT fuelID FROM vehiclefr WHERE"&vsql&")ft JOIN "&_
		"(SELECT DISTINCT bodyID FROM vehiclefr WHERE"&vsql&")bt LEFT JOIN "&_
		"(SELECT SUM(freg)freg,bodyID,fuelID FROM vehiclefr WHERE"&vsql&" GROUP BY bodyID,fuelID)vf "&_
		"ON bt.bodyID=vf.bodyID AND ft.fuelID=vf.fuelID ORDER BY bodyID,fuelID",con%>
	<h3>Summary</h3>
	<table class="numtable fcl">
		<tr>
			<th>Body</th>
			<%For f=0 to fuelcnt%>
				<th><%=fuels(1,f)%></th>
			<%Next%>
			<th>All fuels</th>
			<%For f=0 to fuelcnt%>
				<th class="colHide1"><%=fuels(1,f)&" share %"%></th>
			<%Next%>
		</tr>
		<%x=0
		Do Until rs.EOF%>
			<tr>
				<td><%=bodies(1,x)%></td>
				<%For f=0 to fuelcnt
					row(f)=CLng(rs("freg"))
					rs.MoveNext%>
					<td><%=FormatNumber(row(f),0)%></td>
				<%Next
				rowTot=arrSum(row)%>
				<td><%=FormatNumber(bodies(2,x),0)%></td>
				<%For f=0 to fuelcnt%>
					<td class="colHide1"><%=formatNumber(row(f)*100/rowTot,2)%></td>
				<%Next%>
			</tr>
			<%x=x+1
		Loop%>
		<tr class="total">
			<td>All bodies</td>
			<%For f=0 to fuelcnt%>
				<td><%=FormatNumber(fuels(2,f),0)%></td>
			<%Next%>
			<td><%=FormatNumber(total,0)%></td>
			<%For f=0 to fuelcnt%>
				<td class="colHide1"><%=FormatNumber(CLng(fuels(2,f))*100/total,2)%></td>
			<%Next%>
		</tr>
		<%Rs.MoveFirst
		x=0
		Do Until rs.EOF%>
			<tr>
				<td><%=bodies(1,x)%> %</td>
				<%For f=0 to fuelcnt%>
					<td><%=FormatNumber(CLng(rs("freg"))*100/CLng(fuels(2,f)))%></td>
					<%rs.MoveNext
				Next%>
				<td><%=FormatNumber(CLng(bodies(2,x))*100/total,2)%></td>
			</tr>
			<%x=x+1
		Loop%>
	</table>
<%Else%>
	<h3>No records found.</h3>
<%End If
Call CloseConRs(con,rs)%>
<hr>
<h3>Notes</h3>
<p>Registrations are classified by the Transport Department, up to 2018 into "Brand 
new" and "Others", and from 2019 onwards, using the following more detailed 
categories:</p>
<table class="txtable">
	<tr>
		<th>Status</th>
		<th>Description</th>
	</tr>
	<tr>
		<td>A</td>
		<td>Prior to importation into Hong Kong for sale, the vehicle has either 
		never been registered outside Hong Kong, or was registered outside Hong 
		Kong but in a manner that the vehicle was not permitted to be used on 
		roads, with documentary proof.</td>
	</tr>
	<tr>
		<td>B</td>
		<td>Prior to importation into Hong Kong for sale, the vehicle has never 
		been registered outside Hong Kong as declared by the vehicle importer.</td>
	</tr>
	<tr>
		<td>C1</td>
		<td>The vehicle has been registered outside Hong Kong prior to 
		importation to Hong Kong for sale. The length of the period of such 
		registration is shorter than 15 days as proved by supporting documents.</td>
	</tr>
	<tr>
		<td>C2</td>
		<td>The vehicle has been registered outside Hong Kong prior to 
		importation to Hong Kong for sale, other than vehicles categorised as 
		C1.</td>
	</tr>
	<tr>
		<td>Others</td>
		<td>The vehicle was imported by the registered owner into Hong Kong for 
		own use, or was assembled in Hong Kong with specified additions to the 
		imported chassis / cab and chassis, or was acquired through auction from 
		the Hong Kong SAR Government.</td>
	</tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>