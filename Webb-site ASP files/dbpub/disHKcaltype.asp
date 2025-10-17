<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Const limit=5000
Dim sort,URL,count,title,y,m,d,t,x,w,ob,ot,name,con,rs,sql,typeName,disTxt
Call openEnigmaRs(con,rs)
y=getIntRange("y",Year(Date),1917,Year(Date))
m=getIntRange("m",0,1,12)
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
t=getInt("t",0)
If t>0 Then typeName=con.Execute("SELECT typeName FROM orgtypes WHERE orgtype="&t).Fields(0)
w=getInt("w",0)
If w>0 Then disTxt=con.Execute("SELECT disModeTxt FROM dismodes WHERE ID="&w).Fields(0)
sort=Request("sort")
Select case sort
	Case "namdn" ob="name DESC"
	Case "modup" ob="disModeTxt,Name"
	Case "moddn" ob="disModeTxt DESC,Name"
	Case "typup" ob="typeName,Name"
	Case "typdn" ob="typeName DESC,Name"
	Case "incup" ob="incDate,name"
	Case "incdn" ob="incDate DESC,name"
	Case "disdn" ob="disDate DESC,name"
	Case "disup" ob="disDate,name"
	Case Else
		ob="name"
		sort="namup"
End Select
If t=0 Then
	If w=0 Then
		sql="SELECT personID,name,cName,incID,incDate,disDate,t.orgType,typeName,disModeTxt FROM "&_
			"(SELECT personID,name1 name,cName,incID,incDate,disDate,orgType,disMode FROM organisations WHERE domicile=1 AND NOT isNull(incID)"&_
			" AND disDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
			" ORDER BY "&ob&" LIMIT "&limit&")t JOIN (orgtypes ot,dismodes d) ON t.orgType=ot.orgType AND t.disMode=d.ID ORDER BY "&ob
	Else
		sql="SELECT personID,name,cName,incID,incDate,disDate,t.orgType,typeName FROM "&_
			"(SELECT personID,name1 name,cName,incID,incDate,disDate,orgType,disMode FROM organisations WHERE domicile=1 AND NOT isNull(incID)"&_
			" AND disDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
			" AND disMode="&w&_
			" ORDER BY "&ob&" LIMIT "&limit&")t JOIN orgtypes ot ON t.orgType=ot.orgType ORDER BY "&ob
	End If
Else
	If w=0 Then
		sql="SELECT personID,name,cName,incID,incDate,disDate,disModeTxt FROM "&_
			"(SELECT personID,name1 name,cName,incID,incDate,disDate,disMode FROM organisations WHERE domicile=1 AND NOT isNull(incID)"&_
			" AND disDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
			" AND orgtype="&t&" ORDER BY "&ob&" LIMIT "&limit&")t JOIN dismodes d ON t.disMode=d.ID ORDER BY "&ob
	Else
		sql="SELECT personID,name1 name,cName,incID,incDate,disDate FROM organisations WHERE domicile=1 AND NOT isNull(incID)"&_
			" AND disDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
			" AND disMode="&w&_
			" AND orgtype="&t&" ORDER BY "&ob&" LIMIT "&limit
	End If
End If
rs.Open sql,con

'rs.Open "SELECT * FROM (SELECT personID,name1 as name,cName,incDate,disDate,orgType,disMode FROM organisations "&_
'	"WHERE domicile=1 AND incID RLIKE '^[0-9]'"&_
'	IIF(t>0," AND orgType="&t,"")&_
'	" AND incDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
'	IIF(w>0," AND disMode="&w,"")&_
'	" LIMIT "&limit&") AS t1 JOIN (orgTypes ot,disModes d) ON t1.orgType=ot.orgType AND t1.disMode=d.ID ORDER BY "&ob,con
title="Entities dissolved in HK "&IIF(d>0,"on ","in ")&dateYMD(y,m,d)&IIF(t>0,": "&typeName,"")&IIF(w>0,": "&disTxt,"")
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d&"&amp;t="&t&"&amp;w="&w
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the HK-incorporated companies dissolved by year, method of 
dissolution and type of company. 
Earliest records from the 19th century are understated due to lost records of 
dissolved companies. Registration was not required until 1911. 
The earliest known dissolution is in 1917.</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<form method="get" action="disHKcaltype.asp">
	<div class="inputs"><b>Dissolution date</b>&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,False,,False,1917,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",False)%>
		<%=daySelect("d",d,True,"Any day",False)%>
	</div>
	<div class="inputs">
		<b>Method</b>
		<%=arrSelectZ("w",w,con.Execute("SELECT ID,disModeTxt FROM disModes WHERE ID IN(1,2,3,4,5,8,9,10,18) ORDER BY disModeTxt").GetRows,False,True,0,"Any method")%>
	</div>
	<div class="inputs">
		<b>Type</b>
		<%=arrSelectZ("t",t,con.Execute("SELECT orgType,typeName FROM orgtypes WHERE orgtype IN(1,2,9,15,19,21,22,23,26,28,35,42,43) ORDER BY typeName").GetRows,False,True,0,"Any type")%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%If rs.EOF Then%>
	<p>None found. Try widening your search.</p>
<%Else%>
	<%=mobile(2)%>
	<table class="txtable fcr">
	<tr>
		<th class="colHide2"></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th class="colHide3"><%SL "Incorp-<br>orated","incup","incdn"%></th>
		<th><%SL "Dissolved","disdn","disup"%></th>
		<%If w=0 Then%><th class="colHide3"><%SL "Method","modup","moddn"%></th><%End If%>
		<%If t=0 Then%><th class="colHide2"><%SL "Type","typup","typdn"%></th><%End If%>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		name=rs("name")
		If Not isNull(rs("cName")) Then name=name & "<br>" & rs("cName")%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=name%></a></td>
			<td class="nowrap colHide3"><%=MSdate(rs("incDate"))%></td>
			<td class="nowrap"><%=MSdate(rs("disDate"))%></td>
			<%If w=0 Then%><td class="colHide3"><%=rs("disModeTxt")%></td><%End If%>
			<%If t=0 Then%><td class="colHide2"><%=rs("typeName")%></td><%End If%>
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