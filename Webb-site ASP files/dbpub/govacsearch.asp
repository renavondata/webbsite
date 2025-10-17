<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="navbars.asp"-->
<!--#include file="functions1.asp"-->
<%Dim n,x,st,sql,m,i,a,ip,s,limit,y,title,con,rs
Call openEnigmaRs(con,rs)
n=Request("n")
st=Request("st")
n=trim(Replace(n,"Hong Kong","HK",1,-1,vbTextCompare))
If st="" then st="a"
limit=50
title="Search the HKSAR Government accounts"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call govacBar(2)%>
<form method="post" action="govacsearch.asp">
	<input type="hidden" name="s" value="<%=s%>">
	<p><input type="text" class="ws" name="n" value="<%=n%>"></p>
	<%=MakeSelect("st",st,"l,Left match,a,Any match",True)%>
	<input type="submit" value="search" name="search">
</form>
<%
If n<>"" Then
	If st="a" Then
		m = " AGAINST('+" & apos(join(split(n),"+")) & "' IN BOOLEAN MODE)"
		sql="MATCH txt" & m
	Else
		m= " LIKE '" & apos(n) & "%'"
		sql="txt" & m
	End If
	rs.Open "SELECT ID,txt,parentID FROM govitems WHERE "&sql&" ORDER BY txt LIMIT "&limit,con
	%>
	<h3>Matches</h3>
	<%
	If rs.EOF then%>
		<p>None.</p>
	<%Else
		a=rs.Getrows%>
		<table>
		<%For x=0 to Ubound(a,2)
			i=a(0,x)
			s=a(1,x)
			ip=a(2,x)
			y=0
			Do%>
				<tr>
				<%If y=0 Then%>
					<td><%=x+1%>&nbsp;</td>
					<td><a href="govac.asp?i=<%=i%>"><b><%=s%></b></a><td>
				<%Else%>
					<td></td>
					<td style="padding-left:<%=y*20%>px"><a href="govac.asp?i=<%=i%>"><%=s%></a><td>				
				<%End If%>
				</tr>
				<%
				rs.Close
				y=y+1
				rs.Open "SELECT txt,parentID FROM govitems WHERE ID="&ip,con
				i=ip
				ip=rs("parentID")
				s=rs("txt")
			Loop Until i=1251 Or isNull(ip)%>
		<%Next%>
		</table>
		<%If x=limit Then%>
			<p><b>Only the first <%=limit%> matches are displayed. Please narrow your search.</b></p>
		<%End If
	End if
	rs.Close
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
