<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,y,m,vsql,x,ob,total,sql,f,ftxt,simple,vc,vcdes,d,t,tName,defdir,altdir,notes,opdate,tsql

Call openEnigmaRs(con,rs)
t=getInt("t",1)
tsql=IIF(t=26," IN(1,2,3)","="&t)
rs.Open "SELECT * FROM tunnels WHERE ID="&t,con
tName=rs("name")
notes=rs("notes")
opdate=MSdate(rs("opened"))
rs.Close
vc=GetInt("vc",0)
If vc=0 Then
	vcdes="All vehicles"
Else
	vsql=" AND vc="&vc
	If con.Execute("SELECT EXISTS(SELECT * FROM tuntraff WHERE tunID"&tsql&" AND vc="&vc&")").Fields(0) Then
		vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)
	Else
		rs.Open "SELECT DISTINCT ID,des FROM vehicleclass JOIN tuntraff ON vc=ID WHERE tunID"&tsql&" ORDER BY des LIMIT 1",con
		vc=rs("ID")
		vcdes=rs("des")
		rs.Close
	End If
End If

f=getInt("f",1) 'frequency 1=monthly 2=yearly
If f=1 Then ftxt="Month" Else ftxt="Year"

'get tunnel compass directions
rs.Open "SELECT defdir,altdir FROM tunnels t JOIN tundir d ON tundirID=d.ID WHERE t.ID="&t,con
defdir=rs("defdir")
altdir=rs("altdir")
rs.Close

sort=Request("sort")
Select case sort
	Case "defup" ob="defcnt"
	Case "defdn" ob="defcnt DESC"
	Case "altup" ob="altcnt"
	Case "altdn" ob="altcnt DESC"
	Case "defaup" ob="defa"
	Case "defadn" ob="defa DESC"
	Case "altaup" ob="alta"
	Case "altadn" ob="alta DESC"
	Case "datup" ob="d"
	Case Else
		sort="datdn"
		ob="d DESC"
End Select
title="Traffic: "&tName&": "&vcdes&" by "&Lcase(ftxt)
If f=1 Then
	sql="SELECT Max(d)d,SUM(defcnt)defc,SUM(altcnt)altc,SUM(defcnt)/DAYOFMONTH(d)defa,SUM(altcnt)/DAYOFMONTH(d)alta "&_
		"FROM tuntraff WHERE tunID"&tsql&vsql&" GROUP BY d"
Else
	sql="SELECT Max(d)d,SUM(defcnt)defc,SUM(altcnt)altc,SUM(defcnt)/DAYOFYEAR(Max(d))defa,SUM(altcnt)/DAYOFYEAR(Max(d))alta "&_
		"FROM tuntraff WHERE tunID"&tsql&vsql&" GROUP BY YEAR(d)"
End If
sql=sql&" ORDER BY "&ob
rs.Open sql,con
URL=Request.ServerVariables("URL")&"?t="&t&"&amp;vc="&vc
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(1,0,9)%>
<p>This page shows the number of vehicles passing through a tunnel or over a bridge. Some routes, 
without tolls, only count vehicles as one class. Data are from the Transport Department. By <a href="https://www.hklii.hk/en/legis/ord/374/s2" target="_blank">law</a>, 
permitted gross vehicle mass of Goods Vehicles in tonnes are: Light: 5.5, Medium: 24, Heavy: 38.</p>
<form method="get" action="tuntraff.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Tunnel <%=arrSelect("t",t,con.Execute("SELECT ID,name FROM tunnels ORDER By name").GetRows,True)%>
	</div>	
	<div class="inputs">
	Vehicle class <%=arrSelectZ("vc",vc,con.Execute("SELECT DISTINCT ID,des FROM tuntraff t JOIN vehicleclass v ON t.vc=v.ID WHERE tunID"&tsql&" ORDER BY des").GetRows,True,True,0,"All")%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If opdate>"" Then%><p>Opening date: <%=opdate%></p><%End If%>
<%If notes>"" Then%><h3>Notes</h3><%=notes%><%End If%>
<table class="numtable fcl">
	<tr>
		<th><%SL ftxt,"datdn","datup"%></th>
		<th><%SL defdir,"defdn","defup"%></th>
		<%If altdir>"" Then%>
			<th><%SL altdir,"altdn","altup"%></th>
			<th>Net</th>
		<%End If%>
		<th><%SL "Average daily "&defdir,"defadn","defaup"%></th>
		<%If altdir>"" Then%>
			<th><%SL "Average daily "&altdir,"altadn","altaup"%></th>
			<th>Net</th>
		<%End If%>
	</tr>
	<%Do Until rs.EOF%>
		<tr>
			<td class="nowrap"><%=Left(MSdate(rs("d")),7)%></td>
			<td><%=FormatNumber(rs("defc"),0)%></td>			
		<%If altdir>"" Then%>
			<td><%=FormatNumber(rs("altc"),0)%></td>
			<td><%=FormatNumber(CLng(rs("defc"))-CLng(rs("altc")),0)%></td>
		<%End If%>
			<td><%=FormatNumber(rs("defa"),1)%></td>
		<%If altdir>"" Then%>
			<td><%=FormatNumber(rs("alta"),1)%></td>
			<td><%=FormatNumber(CDbl(rs("defa"))-CDbl(rs("alta")),1)%></td>
		<%End If%>
		</tr>
	<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>