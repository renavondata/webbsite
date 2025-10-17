<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,URL,y,nowYear,cnt,m,x,sql,title,con,rs,a
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	case "namedn" ob="name DESC"
	case "deaddn" ob="YOD DESC,MonD DESC,DOD DESC,name1,name2"
	case "deadup" ob="YOD,MonD,DOD,name1,name2"
	case "bornup" ob="YOB,MOB,DOB,name1,name2"
	case "borndn" ob="YOB DESC,MOB DESC,DOB DESC,name1,name2"
	case Else
		sort="nameup"
		ob="name1,name2"
End Select
m=getMonth("m",1)
y=getInt("y",1949)
nowYear=Year(Now())
If CInt(y)>nowYear Then y=nowYear
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m
title="Born in "&monthName(m)&" "&y%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<Form method="get" action="bornyear.asp" style="margin-top:6px">
	<h2>People born in&nbsp;
	<input type="text" name="y" size="4" value="<%=y%>">
	month <%=monthSelect("m",m,False,,True)%>
	<input type="hidden" name="sort" value="<%=sort%>">
	</h2>
</Form>
<h3>Age in <%=nowYear%>: <%=nowYear-y%></h3>
<table class="txtable">
	<tr>
		<th><%SL "Name","nameup","namedn"%></th>
		<th class="right"><%SL "Date of birth","bornup","borndn"%></th>
		<th class="right"><%SL "Date of death","deaddn","deadup"%></th>
	</tr>
	<%If m=0 Then
		sql="isNUll(MOB)"
	Else
		sql="MOB="&m
	End If
	rs.Open "SELECT PersonID,fnameppl(name1,name2,cName)name,YOB,MOB,DOB,YOD,MonD,DOD FROM People WHERE "&sql&" AND YOB="&y&" ORDER BY "&ob,con
	If rs.EOF Then
		rs.Close
	Else
		a=rs.GetRows
		rs.Close 'close as quickly as possible
		For x=0 to Ubound(a,2)%>
			<tr>
				<td><a href='positions.asp?p=<%=a(0,x)%>'><%=a(1,x)%></a></td>
				<td><%=dateYMD(a(2,x),a(3,x),a(4,x))%></td>
				<td><%=dateYMD(a(5,x),a(6,x),a(7,x))%></td>
			</tr>
		<%Next
	End If
Call CloseConRs(con,rs)%>
</table>
<p>Note: the list may include dead people. If a person is known to be dead but 
we do not know when he/she died, then this is indicated by a (d) against their 
name.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>