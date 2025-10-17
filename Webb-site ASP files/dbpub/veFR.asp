<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,r,y,m,msql,vc,vcdes,x,ob,total,sql,maxd,mind,cats,cnt,b,btxt,f
'b is the breakdown: 1=Fuel, 2=Body
'f is the frequency for history link: 1=monthly 2=annual
b=getInt("b",1)
If b=1 Then btxt="Fuel" Else btxt="Body"

Call openEnigmaRs(con,rs)
mind=MSdate(con.Execute("SELECT MIN(d) FROM vehicleFR").Fields(0))
maxd=MSdate(con.Execute("SELECT MAX(d) FROM vehicleFR").Fields(0))
y=GetInt("y",Year(maxd))
If y<>0 Then y=Min(Max(y,Year(mind)),Year(maxd))
If y=0 Then m=0 Else m=Min(Max(GetInt("m",0),0),12)
If y=Year(mind) And m>0 And m<Month(mind) Then m=Month(mind)
If y=Year(maxd) And m>Month(maxd) Then m=Month(maxd)
If y>0 Then	msql=" AND YEAR(d)="&y
If m>0 Then msql=msql&" AND MONTH(d)="&m
If m=0 Then f=2 Else f=1
vc=GetInt("vc",1)
Select Case vc
	Case 1,2,27,28,29
	Case Else vc=1
End Select
vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)

If b=1 Then
	cats=con.Execute("SELECT ID,friendly,SUM(freg) FROM fueltype f JOIN vehiclefr v ON f.ID=v.fuelID WHERE vc="&vc&msql&" GROUP BY f.ID ORDER BY ID").GetRows
Else
	cats=con.Execute("SELECT ID,des,SUM(freg) FROM bodytype f JOIN vehiclefr v ON f.ID=v.bodyID WHERE vc="&vc&msql&" GROUP BY f.ID ORDER BY ID").GetRows
End If
total=colSum(cats,2)
cnt=Ubound(cats,2)

sort=Request("sort")
For x=0 to cnt
	If sort="f"&x&"dn" Then ob="f"&x&" DESC,make"
	If sort="f"&x&"up" Then ob="f"&x&",make"
Next
Select case sort
	Case "makup" ob="make,n"
	Case "makdn" ob="make DESC,n"
	Case "totup" ob="n,make"
	Case "","totdn" ob="n DESC,make"
End Select

For x=0 to cnt
	sql=sql&"SUM(freg*("&btxt&"ID="&cats(0,x)&"))f"&x&","
Next

title="HK first registration: "&vcdes&" by brand and "&Lcase(btxt)&" "
If y=0 Then	title=title&"from "&Left(mind,7) Else title=title&"in "&y
If m>0 Then
	title=title&"-"&Right("0"&m,2)
ElseIf y=Year(mind) Then
	title=title&"-"&Mid(mind,6,2)&" to "&Year(mind)&"-12"
End If
If y=0 Or (y=year(maxd) And m=0) Then
	title=title&" up to "&Left(maxd,7)
End If
rs.Open "SELECT "&sql&"SUM(freg)n,makeID,make FROM vehiclefr JOIN vehiclemakes vm ON makeID=vm.ID WHERE vc="&vc&msql&" GROUP BY makeID ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;b="&b&"&amp;vc="&vc
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,0,1)%>
<p>This page shows the number of vehicles newly-registered in HK by vehicle class and 
brand and their market shares, from <%=Left(MSdate(mind),7)%> onwards, using data from the Transport Department. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the brand to see more details for the period. The 
latest available month is <%=Left(maxd,7)%>.</p>
<form method="get" action="veFR.asp">
	<div class="inputs">
		Year <%=rangeSelect("y",y,True,"All",True,Year(mind),Year(maxd))%>
		Month <%=rangeSelect("m",m,True,"All",True,1,12)%>
	</div>
	<div class="inputs">
		Vehicle type
		<%=arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID IN(1,2,27,28,29)").GetRows,True)%>
	</div>
	<div class="inputs">
		By
		<%=makeSelect("b",b,"1,Fuel,2,Body type",True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	<%If sort="makdn" Or sort="makup" Or sort="totdn" Or sort="totup" Then 'don't use fuel-codes%>
		<input type="hidden" name="sort" value="<%=sort%>">
	<%End If%>
</form>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable c2l">
	<tr>
		<th></th>
		<th><%SL "Brand","makup","makdn"%></th>
		<%For x=0 to cnt%>
			<th><%SL cats(1,x),"f"&x&"dn","f"&x&"up"%></th>
		<%Next%>
		<th><%SL "Total","totdn","totup"%></th>
		<%For x=0 to cnt%>
			<th class="colHide1"><%SL cats(1,x)&"<br>share %","f"&x&"dn","f"&x&"up"%></th>
		<%Next%>
		<th class="colHide2"><%SL "Total share %","totdn","totup"%></th>
	</tr>
	<%r=0
	Do Until rs.EOF
		r=r+1%>
		<tr>
			<td><%=r%></td>
			<td><a href="vedet.asp?vc=<%=vc%>&amp;brand=<%=rs("makeID")%>&amp;y=<%=y%>&amp;m=<%=m%>"><%=rs("make")%></a></td>
			<%For x=0 to cnt%>
				<td><%=FormatNumber(rs("f"&x),0)%></td>
			<%Next%>
			<td><%=FormatNumber(rs("n"),0)%></td>
			<%For x=0 to cnt%>
				<td class="colHide1"><%=FormatNumber(CLng(rs("f"&x))*100/CLng(cats(2,x)),2)%></td>
			<%Next%>
			<td class="colHide2"><%=FormatNumber(CLng(rs("n"))*100/total,2)%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td></td>
		<td><a href="vedet.asp?vc=<%=vc%>&amp;brand=0&amp;y=<%=y%>&amp;m=<%=m%>">All brands</a></td>
		<%For x=0 to cnt%>
			<td><%=FormatNumber(cats(2,x),0)%></td>
		<%Next%>
		<td><%=FormatNumber(total,0)%></td>
		<%For x=0 to cnt%>
			<td class="colHide1">100.00</td>
		<%Next%>
		<td class="colHide2">100.00</td>
	</tr>
	<tr>
		<td></td>
		<td><%=btxt%> share %</td>
		<%For x=0 to cnt%>
			<td><%=FormatNumber(CLng(cats(2,x))*100/total,2)%></td>
		<%Next%>
		<td class="colHide2">100.00</td>
	</tr>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>