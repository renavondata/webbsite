<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim count,title,y,m,d,dom,x,sort,URL,ob,con,rs
Call openEnigmaRs(con,rs)
y=getIntRange("y",Year(Date),1946,Year(Date))
m=getIntRange("m",0,1,12)
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
sort=Request("sort")
Select case sort
	Case "namdn" ob="name DESC"
	Case "regup" ob="regDate,name"
	Case "regdn" ob="regDate DESC,name"
	Case "cesdn" ob="cesDate DESC,name"
	Case "cesup" ob="cesDate,name"
	Case "disdn" ob="disDate DESC,name"
	Case "disup" ob="disDate,name"
	Case "domup" ob="friendly,name"
	Case "domdn" ob="friendly DESC,name"
	Case Else ob="name":sort="namup"
End Select
If isNumeric(dom) then dom=CInt(dom) Else dom=-1
rs.Open "SELECT personID,name,regDate,disDate,cesDate,relDate,friendly,regID FROM "&_
	"(SELECT personID,name1 AS name,regDate,disDate,cesDate,LEAST(IFNULL(disDate,cesDate),IFNULL(cesDate,disDate)) AS relDate,"&_
	"friendly,regID FROM organisations o JOIN freg f ON personID=orgID LEFT JOIN domiciles d ON o.domicile=d.ID "&_
	"WHERE hostDom=1) AS t1 WHERE "&_
	" relDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
	" ORDER BY "&ob,con
title="Non-HK companies departed/dissolved HK "&IIF(d>0,"on ","in ")&dateYMD(y,m,d)
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the non-HK companies which were registered in HK and either 
departed or were dissolved (whichever comes first) in the chosen period, since records begin in 1946. 
A change in registration requirements took effect on 31-Aug-1984; it is possible 
that there were other foreign companies with a place of business in HK before 
that which were not registered with the Companies Registry.</p>
<p>Note: data on deregistrations are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new registrations 
and name-changes, without stating domicile.</p>
<form method="get" action="disFcal.asp">
	<div class="inputs"><b>Departure/dissolution date</b>&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,False,,False,1946,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",True)%>
		<%=daySelect("d",d,True,"Any day",True)%>
	</div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<%=mobile(1)%>	
	<table class="numtable">
	<tr>
		<th class="colHide1"></th>
		<th class="colHide1"><%SL "Reg no.","regup","regdn"%></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th class="colHide3"><%SL "Registered","regup","regdn"%></th>
		<th><%SL "Left HK","cesdn","cesup"%></th>
		<th class="colHide2"><%SL "Dissolved","disdn","disup"%></th>
		<th><%SL "Domicile","domup","domdn"%></th>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td class="colHide1"><%=rs("regID")%>&nbsp;</td>
			<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=rs("name")%></a></td>
			<td class="colHide3 nowrap"><%=MSdate(rs("regDate"))%></td>
			<td class="nowrap"><%=MSdate(rs("cesDate"))%></td>
			<td class="colHide2 nowrap"><%=MSdate(rs("disDate"))%></td>
			<td><%=rs("friendly")%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</table>
	<%If x=2000 Then%>
		<p>Only the first 2000 records are shown. Try narrowing your search to a specific month or day.</p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>