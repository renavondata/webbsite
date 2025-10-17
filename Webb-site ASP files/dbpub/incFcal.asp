<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim count,title,y,m,d,dom,x,sort,URL,ob,con,rs,sql
Call openEnigmaRs(con,rs)
y=getIntRange("y",0,1946,Year(Date))
m=IIF(y=0,0,getIntRange("m",0,1,12))
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
dom=getInt("dom",0)
If dom=0 And y=0 Then y=Year(Date) 'don't provide the entire table
sort=Request("sort")
Select case sort
	Case "namdn" ob="name DESC"
	Case "renup" ob="regID"
	Case "rendn" ob="regID DESC"
	Case "regup" ob="regDate,name"
	Case "regdn" ob="regDate DESC,name"
	Case "cesdn" ob="cesDate DESC,name"
	Case "cesup" ob="cesDate,name"
	Case "disdn" ob="disDate DESC,name"
	Case "disup" ob="disDate,name"
	Case "domup" ob="friendly,name"
	Case "domdn" ob="friendly DESC,name"
	Case Else
		ob="name"
		sort="namup"
End Select
rs.Open "SELECT personID,name1 as name,f.regDate,disDate,f.cesDate,friendly,regID FROM organisations JOIN freg f ON personID=orgID LEFT JOIN domiciles ON " &_
	"organisations.domicile=domiciles.ID WHERE hostDom=1 "&_
	IIF(y>0," AND regDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'","")&_
	IIF(dom>0," AND domicile="&dom,"")&_
	" ORDER BY "&ob,con
title="Foreign companies registered in HK"&IIF(y>0,IIF(d>0," on "," in ")&dateYMD(y,m,d),"")
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d&"&amp;dom="&dom%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the foreign companies with a place of business in HK by year 
of registration, since records begin in 1946. 
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
<form method="get" action="incFcal.asp">
	<div class="inputs">Registration date&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,True,"Any year",True,1946,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",True)%>
		<%=daySelect("d",d,True,"Any day",True)%>
	</div>
	<div class="inputs">
		<%sql="SELECT DISTINCT domicile,friendly FROM organisations o JOIN (freg f,domiciles d) ON o.personID=f.orgID AND o.domicile=d.ID"&_
			" WHERE hostDom=1 ORDER BY friendly"%>
		Domicile <%=arrSelectZ("dom",dom,con.Execute(sql).GetRows,True,True,0,"All")%>
	</div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<%=mobile(1)%>
	<table class="txtable fcr">
	<tr>
		<th class="colHide1"></th>
		<th class="colHide1"><%SL "Reg no.","renup","rendn"%></th>
		<th><%SL "Name","namup","namdn"%></th>
		<th><%SL "Registered","regup","regdn"%></th>
		<th class="colHide3"><%SL "Left HK","cesdn","cesup"%></th>
		<th class="colHide2"><%SL "Dissolved","disdn","disup"%></th>
		<%If dom=0 Then%><th><%SL "Domicile","domup","domdn"%></th><%End If%>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1%>
		<tr>
		<td class="colHide1"><%=x%></td>
		<td class="colHide1"><%=rs("regID")%>&nbsp;</td>
		<td><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=rs("name")%></a></td>
		<td class="nowrap"><%=MSdate(rs("regDate"))%></td>
		<td class="colHide3 nowrap"><%=MSdate(rs("cesDate"))%></td>
		<td class="colHide2 nowrap"><%=MSdate(rs("disDate"))%></td>
		<%If dom=0 Then%><td><%=rs("friendly")%></td><%End If%>
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