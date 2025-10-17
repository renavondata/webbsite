<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,d,m,byear,nowYear,x,mend,title,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	case "nameup" ob="Name1,Name2"
	case "namedn" ob="Name1 DESC,Name2 DESC"
	case "yeardn" ob="YOB DESC"
	case Else
		sort="yearup"
		ob="YOB"
End Select
m=getMonth("m",Month(Date))
d=getInt("d",Day(Date))
mend=MonthEnd(m,2000)
If d>mend Then d=mend
nowYear=Year(Date())
URL=Request.ServerVariables("URL")&"?d="&d&"&amp;m="&m
title="People born on "&d&" "&MonthName(m)
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<form method="get" action="bornday.asp">
	Day <%=rangeSelect("d",d,False,"",True,1,mend)%>
	Month <%=monthSelect("m",m,False,"",True)%>
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="submit" value="Go">
</Form>
<table class="numtable">
	<tr>
		<th class="left"><%SL "Name","nameup","namedn"%></th>
		<th><%SL "Year of birth","yearup","yeardn"%></th>
		<th><%SL "Age in "&Year(Now()),"yearup","yeardn"%></th>
		<th>Date of death</th>
	</tr>
	<%rs.Open "SELECT PersonID,fnameppl(name1,name2,cName)name,YOB,YOD,MonD,DOD FROM People "&_
		"WHERE MOB="&m&" AND DOB="&d&" AND NOT isNUll(YOB) ORDER BY "&ob,con
	Do Until rs.EOF
		byear=rs("YOB")
		%>
		<tr>
			<td class="left"><a href='natperson.asp?p=<%=rs("PersonID")%>'><%=rs("name")%></a></td>
			<td><a href="bornyear.asp?y=<%=byear%>&amp;m=<%=m%>"><%=byear%></a></td>
			<td><%=nowYear-byear%></td>
			<td><%=dateYMD(rs("YOD"),rs("MonD"),rs("DOD"))%></td>
		</tr>
		<%
		rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<p>Note: the list may include dead people. If a person is known to be dead but 
we do not know when he/she died, then this is indicated by a (d) against their 
name.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>