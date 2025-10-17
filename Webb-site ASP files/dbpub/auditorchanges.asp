<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim ob,cnt,con,rs,URL,sort
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "sdatup" ob="SortDate"
	Case "anamdn" ob="AdvName,SortDate DESC"
	Case "anamup" ob="AdvName DESC,SortDate DESC"
	Case "cnamup" ob="CoName,SortDate DESC"
	Case "cnamdn" ob="CoName DESC,SortDate DESC"
	Case Else
		sort="sdatdn"
		ob="SortDate DESC"
End Select
rs.Open "SELECT `add`,rem,Company,CoName,AdvName FROM AuditorChanges ORDER BY "&ob,con
URL=Request.ServerVariables("URL")%>
<title>Auditor changes of current HK-listed companies</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Changes of Auditors of current HK-listed companies</h2>
<ul class="navlist">
	<li class="livebutton">Auditor changes</li>
	<li><a target="_blank" href="auditornotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>

<table class="txtable yscroll">
	<tr>
		<th class="colHide1">Count</th>
		<th><%SL "Company","cnamup","cnamdn"%></th>
		<th><%SL "Auditor","anamdn","anamup"%></th>
		<th>Added</th>
		<th><%SL "Removed","sdatdn","sdatup"%></th>
	</tr>
<%Do Until rs.EOF
	cnt=cnt+1%>
	<tr>
		<td class="colHide1"><%=cnt%></td>
		<td><a href='articles.asp?p=<%=rs("Company")%>'><%=rs("CoName")%></a></td>
		<td><%=rs("AdvName")%></td>
		<td class="nowrap"><%=rs("add")%></td>
		<td class="nowrap"><%=rs("rem")%></td>
	</tr>
	<%rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>