<%Option Explicit
Server.ScriptTimeout=600%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Const limit=5000
Dim sort,URL,count,title,y,m,d,t,x,ob,ot,name,con,rs,sql,typeName
Call openEnigmaRs(con,rs)
y=getIntRange("y",Year(Date),1865,Year(Date))
m=getIntRange("m",0,1,12)
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
t=getInt("t",0)
If t>0 Then typeName=con.Execute("SELECT typeName FROM orgtypes WHERE orgtype="&t).Fields(0)
sort=Request("sort")
'use array rather than JOIN to get the typeName. Depends on having no gaps in sequence, so array index is same as orgType
Select case sort
	Case "namdn" ob="name1 DESC"
	Case "regup" ob="incID"
	Case "regdn" ob="incID DESC"
	Case "incup" ob="incDate,name1"
	Case "incdn" ob="incDate DESC,name1"
	Case "disdn" ob="disDate DESC,name1"
	Case "disup" ob="disDate,name1"
	Case "typup" ob="typeName,name1"
	Case "typdn" ob="typeName DESC,name1"
	Case Else
		ob="name1"
		sort="namup"	
End Select
If t=0 Then
	sql="SELECT personID,name1,cName,incID,incDate,disDate,t.orgType,typeName FROM"&_
		" organisations o JOIN orgtypes t ON o.orgType=t.orgType WHERE domicile=1 AND NOT isNull(incID)"&_
		" AND incDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
		" ORDER BY "&ob&" LIMIT "&limit 
Else
	sql="SELECT personID,name1,cName,incID,incDate,disDate FROM organisations WHERE domicile=1 AND NOT isNull(incID)"&_
		" AND incDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
		" AND orgtype="&t&" ORDER BY "&ob&" LIMIT "&limit
End If
rs.Open sql,con
title="Entities formed in HK "&IIF(d>0,"on ","in ")&dateYMD(y,m,d)&IIF(t>0,": "&typeName,"")
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d&"&amp;t="&t%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the companies newly-incorporated in HK by year, month or date and by type. 
Earliest records from the 19th century are understated due to lost records of 
dissolved companies. Registration was not required until 1911.</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<form method="get" action="incHKcaltype.asp">
	<div class="inputs"><b>Incorporation date</b>&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,False,,False,1865,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",False)%>
		<%=daySelect("d",d,True,"Any day",True)%>
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
		<th class="colHide1"></th>
		<th class="colHide2"><%SL "Reg no.","regup","regdn"%></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th><%SL "Incorp-<br>orated","incup","incdn"%></th>
		<th class="colHide2"><%SL "Dissolved","disdn","disup"%></th>
		<%If t=0 Then%><th class="colHide1"><%SL "Type","typup","typdn"%></th><%End If%>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1
		name=rs("name1")
		If Not isnull(rs("cName")) Then name=name & "<br>" & rs("cName")%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td class="colHide2"><%=rs("incID")%>&nbsp;</td>
			<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=name%></a></td>
			<td class="nowrap"><%=MSdate(rs("incDate"))%></td>
			<td class="nowrap colHide2"><%=MSdate(rs("disDate"))%></td>
			<%If t=0 Then%><td class="colHide1"><%=rs("typeName")%></td><%End If%>
		</tr>
	<%rs.MoveNext
	Loop%>
	</table>
	<%If x=limit Then%>
		<p>Only the first <%=limit%> records are shown. Try narrowing your search to a specific month or day.</p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>