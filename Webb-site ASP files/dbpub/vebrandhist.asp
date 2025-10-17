<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,m,vc,vcdes,x,ob,sql,cats,cnt,b,btxt,n,d,makeID,make,total,f,ftxt,maxd,vsql
b=getInt("b",1) 'breakdown 1=fuel 2=body
f=getInt("f",1) 'frequency 1=monthly 2=yearly
btxt=IIF(b=1,"Fuel","Body")
ftxt=IIF(f=1,"Month","Year")
makeID=getInt("brand",0)
vc=GetInt("vc",1)
vc=Max(vc,1)
vsql=" vc="&vc

Call openEnigmaRs(con,rs)
maxd=con.Execute("SELECT MAX(d) FROM vehicleFR").Fields(0)
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

If b=1 Then
	cats=con.Execute("SELECT ID,friendly,SUM(freg) FROM fueltype f JOIN vehiclefr v ON f.ID=v.fuelID WHERE"&vsql&" GROUP BY f.ID ORDER BY ID").GetRows
Else
	cats=con.Execute("SELECT ID,des,SUM(freg) FROM bodytype f JOIN vehiclefr v ON f.ID=v.bodyID WHERE "&vsql&" GROUP BY f.ID ORDER BY ID").GetRows
End If
total=colSum(cats,2)
cnt=Ubound(cats,2)

sort=Request("sort")
For x=0 to cnt
	If sort="f"&x&"dn" Then ob="f"&x&" DESC,d DESC"
	If sort="f"&x&"up" Then ob="f"&x&",d DESC"
	If sort="fs"&x&"dn" Then ob="fs"&x&" DESC,d DESC"
	If sort="fs"&x&"up" Then ob="fs"&x&",d DESC"
Next
Select case sort
	Case "totup" ob="n,d DESC"
	Case "totdn" ob="n DESC,d DESC"
	Case "datup" ob="d"
	Case "","datdn" ob="d DESC"
End Select
For x=0 to cnt
	sql=sql&"SUM(freg*("&btxt&"ID="&cats(0,x)&"))f"&x&",SUM(freg*("&btxt&"ID="&cats(0,x)&"))/SUM(freg)fs"&x&","
Next

title="HK first registration: "&vcdes&": "&make&" by "&Lcase(ftxt)&" and "&Lcase(btxt)&" "
rs.Open "SELECT Max(d)d,"&sql&"SUM(freg)n FROM vehiclefr WHERE "&vsql&" GROUP BY "&IIF(f=1,"d","Year(d)")&" ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?vc="&vc&"&amp;m="&makeID&"&amp;b="&b&"&amp;f="&f
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,makeID,3)%>
<p>This page shows the number of vehicles newly-registered in HK by vehicle class, 
brand and 
month since May-2016, using data from the Transport Department. By
<a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass in tonnes are: Light: 5.5, Medium: 24, Heavy: 38. 
Click on the <%=Lcase(ftxt)%> to see all brands for that <%=Lcase(ftxt)%>.<%If f=2 Then%> The latest month is <%=left(MSdate(maxd),7)%><%End If%>.</p>
<form method="get" action="vebrandhist.asp">
	<div class="inputs">
		Vehicle type
		<%=arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID IN(1,2,27,28,29)").GetRows,True)%>
	</div>
	<div class="inputs">
		Brand
		<%=arrSelectZ("brand",makeID,con.Execute("SELECT DISTINCT ID,make FROM vehiclemakes JOIN vehiclefr ON ID=makeID WHERE vc="&vc&" ORDER BY make").GetRows,True,True,0,"All")%>
	</div>
	<div class="inputs">
		By
		<%=makeSelect("b",b,"1,Fuel,2,Body type",True)%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	
	<%If sort="makdn" Or sort="makup" Or sort="totdn" Or sort="totup" Then 'don't use fuel-codes%>
		<input type="hidden" name="sort" value="<%=sort%>">
	<%End If%>
</form>
<%=mobile(1)%>
<table class="numtable fcl">
	<tr class="yscroll">
		<th><%SL ftxt,"datdn","datup"%></th>
		<%For x=0 to cnt%>
			<th><%SL cats(1,x),"f"&x&"dn","f"&x&"up"%></th>
		<%Next%>
		<th><%SL "Total","totdn","totup"%></th>
		<%For x=0 to cnt%>
			<th class="colHide1"><%SL cats(1,x)&" share %","fs"&x&"dn","fs"&x&"up"%></th>
		<%Next%>
		<th></th>
	</tr>
	<%Do Until rs.EOF
		n=CLng(rs("n"))
		d=MSdate(rs("d"))
		y=Year(d)
		If f=2 Then m=0 Else m=Month(d)%>
		<tr>
			<td class="nowrap"><a href="veFR.asp?vc=<%=vc%>&amp;y=<%=y%>&amp;m=<%=m%>&amp;b=<%=b%>"><%=Left(d,7)%></a></td>
			<%For x=0 to cnt%>
				<td><%=FormatNumber(rs("f"&x),0)%></td>
			<%Next%>
			<td><%=FormatNumber(rs("n"),0)%></td>
			<%For x=0 to cnt%>
				<td class="colHide1"><%=FormatNumber(CLng(rs("f"&x))*100/n,2)%></td>
			<%Next%>
			<td><a href="vedet.asp?brand=<%=makeID%>&amp;y=<%=y%>&amp;m=<%=m%>">details</a></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	<tr class="total">
		<td>Total</td>
		<%For x=0 to cnt%>
			<td><%=FormatNumber(cats(2,x),0)%></td>
		<%Next%>
		<td><%=FormatNumber(total,0)%></td>
		<%For x=0 to cnt%>
			<td class="colHide1"><%=FormatNumber(CLng(cats(2,x))*100/total,2)%></td>
		<%Next%>
		<td><a href="vedet.asp?y=0&amp;brand=<%=makeID%>">details</a></td>
	</tr>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>