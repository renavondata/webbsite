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
Dim count,title,y,m,d,t,x,sort,URL,ob,types,ot,name,dom,doms,domexp,domName,con,rs,typeName
Call openEnigmaRs(con,rs)
y=getIntRange("y",Year(Date),1663,Year(Date))
m=getIntRange("m",0,1,12)
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
t=getInt("t",0)
If t>0 Then typeName=con.Execute("SELECT typeName FROM orgtypes WHERE orgtype="&t).Fields(0)
sort=Request("sort")
dom=getInt("dom",116)
Select Case sort
	Case "namdn" ob="name DESC"
	Case "regup" ob="incID"
	Case "regdn" ob="incID DESC"
	Case "incup" ob="incDate,name"
	Case "incdn" ob="incDate DESC,name"
	Case "disdn" ob="disDate DESC,name"
	Case "disup" ob="disDate,name"
	Case "typup" ob="typeName,name"
	Case "typdn" ob="typeName DESC,name"
	Case Else
		ob="name"
		sort="namup"
End Select
'we don't actually use the domexp but keep it in script for future use
Select Case dom
	Case 116 domexp="^(AC|GE|IC|IP|LP|OC|RC|SE|ZC|)[0-9]":domName="England & Wales"
	Case 311 domexp="^(EN|GN|NA|NC|NI|NL|NO|NP|NR|NV|NZ|R)[0-9]":domName="Northern Ireland"
	Case 112 domexp="^(ES|GS|SA|SC|SI|SL|SO|SP|SR|SZ)[0-9]":domName="Scotland"
End Select
doms="116,England & Wales,311,Northern Ireland,112,Scotland"

If t=0 Then
	rs.Open "SELECT personID,name,cName,incID,incDate,disDate,t.orgType,typeName FROM "&_
		"(SELECT personID,name1 as name,cName,incDate,disDate,incID,orgType FROM organisations WHERE domicile="&dom&_
		" AND incDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
		" LIMIT "&limit&")t JOIN orgtypes ot ON t.orgType=ot.orgType ORDER BY "&ob,con
Else
	rs.Open "SELECT personID,name1 as name,cName,incDate,disDate,incID FROM organisations WHERE domicile="&dom&" AND orgtype="&t&_
		" AND incDate BETWEEN '"&dateYMD(y,IIF(m>0,m,1),IIF(d>0,d,1))&"' AND '"&dateYMD(y,IIF(m>0,m,12),IIF(d>0,d,monthEnd(m,y)))&"'"&_
		" ORDER BY "&ob&" LIMIT "&limit,con
End If
title="Entities formed in "&domName&IIF(d>0," on "," in ")&dateYMD(y,m,d)&IIF(t>0,": "&typeName,"")
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d&"&amp;t="&t&"&amp;dom="&dom%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the companies newly-incorporated in UK by year, month or date and by type, excluding some dissolved companies which the registry deleted before we could collect them. 
</p>
<form method="get" action="incUKcaltype.asp">
	<div class="inputs"><b>Incorporation date</b>&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,False,,False,1663,Year(Date()))%>
		<%=monthSelect("m",m,True,"Any month",False)%>
		<%=daySelect("d",d,True,"Any day",True)%>
	</div>
	<div class="inputs">
		<b>Type</b>
		<%=arrSelectZ("t",t,con.Execute("SELECT orgType,typeName FROM orgtypes WHERE orgtype IN(7,9,19,20,21,23,25,26,35,37,38,41) ORDER BY typeName").GetRows,False,True,0,"Any type")%>
	</div>
	<div class="inputs">
		<b>Place</b>
		<%=MakeSelect("dom",dom,doms,0)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%If rs.EOF Then%>
	<p>None found. Try widening your search.</p>
<%Else%>
	<%=mobile(1)%>
	<table class="numtable">
	<tr>
		<th class="colHide1"></th>
		<th class="colHide1"><%SL "Reg no.","regup","regdn"%></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th class="colHide3"><%SL "Incorp-<br>orated","incup","incdn"%></th>
		<th class="colHide3"><%SL "Dissolved","disdn","disup"%></th>
		<%If t=0 Then%><th class="colHide2"><%SL "Type","typup","typdn"%></th><%End If%>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1
		name=htmlEnt(rs("name"))
		If Not isnull(rs("cName")) Then name=name & "<br>" & rs("cName")
		%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td class="colHide1"><%=rs("incID")%>&nbsp;</td>
			<td class="left"><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=name%></a></td>
			<td class="nowrap colHide3"><%=MSdate(rs("incDate"))%></td>
			<td class="nowrap colHide3"><%=MSdate(rs("disDate"))%></td>
			<%If t=0 Then%><td class="colHide2"><%=rs("typeName")%></td><%End If%>
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