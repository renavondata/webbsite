<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Const limit=5000
Dim count,title,a,aStr,t,x,sort,URL,ob,otStr,name,con,rs
Call openEnigmaRs(con,rs)
t=getInt("t",0)
sort=Request("sort")
a=getBool("a")
title="The oldest "&limit
If a Then
	aStr=" AND isNull(disDate)"
	title=title&" surviving"
End If
title=title & " HK-incorporated companies"
Select case sort
	Case "namup" ob="name"
	Case "namdn" ob="name DESC"
	Case "regup" ob="incID"
	Case "regdn" ob="incID DESC"
	Case "incup" ob="incDate,name"
	Case "incdn" ob="incDate DESC,name"
	Case "disdn" ob="disDate DESC,name"
	Case "disup" ob="disDate,name"
	Case "typup" ob="typeName,Name"
	Case "typdn" ob="typeName DESC,Name"
	Case Else
		ob="incDate,name"
		sort="incup"
End Select
If t>0 Then
	title=title&", "&con.Execute("SELECT typeName FROM orgtypes WHERE orgtype="&t).Fields(0)
	otStr=" AND o.orgtype="&t
End If
rs.Open "SELECT personID,name,cName,incDate,disDate,typeName,incID FROM "&_
	"(SELECT personID,name1 AS name,cName,incDate,disDate,typeName,incID FROM organisations o JOIN orgTypes ot "&_
	"ON o.orgType=ot.orgType WHERE domicile=1 AND incID RLIKE '^[0-9]'"&aStr&otStr&" ORDER BY incDate LIMIT "&limit&") AS t1"&" ORDER BY "&ob, con
URL=Request.ServerVariables("URL")&"?a="&a&"&amp;t="&t%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the oldest companies incorporated in HK. Keep in mind that 
some entities have an earlier, unincorporated existence. 
Earliest records from the 19th century are understated due to lost records of 
dissolved companies. Registration was not required until 1911. 
<%If t=0 or t=2 Then%>
One company, "The General Commercial Company, Limited", has no known incorporation date but, 
based on its incorporation number, it was between 1-Feb-1926 and 11-Mar-1926, so 
we estimate it at 20-Feb-1926. It was 
dissolved on 20-Aug-1926.
<%End If%>
</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<form method="get" action="oldestHKcos.asp">
	<%=arrSelectZ("t",t,con.Execute("SELECT orgtype,typeName FROM orgtypes WHERE orgtype IN(1,19,21,22,26,28) ORDER BY typeName").GetRows,True,True,0,"All types")%>
	<%=checkbox("a",a,True)%> Surviving
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<br>
<%If rs.EOF Then%>
	<p>None found. Try widening your search.</p>
<%Else%>
	<%=mobile(2)%>
	<table class="txtable">
		<tr>
			<th></th>
			<th class="colHide2"><%SL "Reg no.","regup","regdn"%></th>
			<th class="left"><%SL "Name","namup","namdn"%></th>
			<th><%SL "Inc.","incup","incdn"%></th>
			<%If a="" Then%>
				<th class="colHide3"><%SL "Dissolved","disdn","disup"%></th>
			<%End If%>
			<%If t=0 Then%><th class="colHide3"><%SL "Type","typup","typdn"%></th><%End If%>
		</tr>
		<%x=0
		Do Until rs.EOF
			x=x+1
			name=rs("name")
			If Not isnull(rs("cName")) Then name=name & "<br>" & rs("cName")
			%>
			<tr>
				<td><%=x%></td>
				<td class="colHide2"><%=rs("incID")%>&nbsp;</td>
				<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=name%></a></td>
				<td class="nowrap"><%=MSdate(rs("incDate"))%></td>
				<%If a="" Then%>
					<td class="colHide3 nowrap"><%=MSdate(rs("disDate"))%></td>
				<%End If%>
				<%If t=0 Then%><td class="colHide3"><%=rs("typeName")%></td><%End If%>
			</tr>
		<%rs.MoveNext
		Loop%>
	</table>
<%
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>