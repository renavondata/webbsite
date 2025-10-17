<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim n,x,st,ob,sort,URL,sql,m,title,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select case sort
	Case "domup" ob="A2,name1"
	Case "domdn" ob="A2 DESC,name1"
	Case "incup" ob="incDate,name1"
	Case "incdn" ob="incDate DESC,name1"
	Case "disup" ob="disDate,name1"
	Case "disdn" ob="disDate DESC,name1"
	Case "namup" ob="name1"
	Case "namdn" ob="name1 DESC"
	Case Else
		sort="namup"
		ob="name1,A2"
End Select
const limit=500
n=remSpace(Request("n"))
st=Request("st")
title="Search organisations"
URL=Request.ServerVariables("URL")&"?n="&n&"&amp;st="&st%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<form method="post" action="searchorgs.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<p><input type="text" class="ws" name="n" value="<%=n%>"></p>
	<%=MakeSelect("st",st,"l,Left match,a,Any match",True)%>
	<input type="submit" value="search" name="search">
</form>
<%If n<>"" Then
	If st="a" Then
		m = " AGAINST('+" & apos(join(split(n),"+")) & "' IN BOOLEAN MODE)"
		sql="MATCH name1" & m
	Else
		m= " LIKE '" & apos(n) & "%'"
		sql="name1" & m
	End If
	rs.Open "SELECT personID, Name1,everListCo(personID)hklist,incDate,disDate,cName,A2,friendly "&_
		"FROM organisations o LEFT JOIN domiciles d ON o.domicile=d.ID WHERE "&_
		sql & " ORDER BY "&ob&" LIMIT "&limit,con%>
	<p>"*" = is or was HK-listed</p>
	<h3>Matches in current names</h3>
	<%If rs.EOF then%>
		<p>None.</p>
	<%Else%>
		<%=mobile(1)%>
		<table class="txtable">
		<tr>
			<th class="colHide1"></th>
			<th></th>
			<th><%SL "Name","namup","namdn"%></th>
			<th class="colHide3">Chinese name</th>
			<th style="font-size:large"><%SL "&#x1f310;","domup","domdn"%></th>
			<th><%SL "Formed","incup","incdn"%></th>
			<th class="colHide3"><%SL "Dissolved","disdn","disup"%></th>
		</tr>
		<%x=0
		Do Until rs.EOF
			x=x+1%>
			<tr>
				<td class="colHide1"><%=x%></td>
				<td><%=IIF(rs("hklist"),"*","&nbsp;")%></td>
				<td><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name1")%></a></td>
				<td class="colHide3"><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("cName")%></a></td>
				<td><span class="info"><%=rs("A2")%><span><%=rs("friendly")%></span></span></td>
				<td><%=MSdate(rs("incDate"))%></td>
				<td class="colHide3"><%=MSdate(rs("disDate"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
		<%If x=limit Then%>
			<p><b>Only the first <%=limit%> matches are displayed. Please narrow your 
			search.</b></p>
		<%End If
	End if
	rs.Close
	'search old names
	If st="a" Then
		sql="MATCH oldName" & m
	Else
		sql="oldName" & m
	End If
	rs.Open "SELECT n.PersonID,OldName as name1,oldcName,everListCo(o.personID)hklist,incDate,disDate,A2,friendly "&_
		"FROM nameChanges n JOIN organisations o on n.PersonID=o.personID "&_
		"LEFT JOIN domiciles d ON o.domicile=d.ID WHERE "&_
		sql & " ORDER BY "&ob&" LIMIT "&limit,con%>
	<h3>Matches in old names</h3>
	<%If rs.EOF then%>
		<p>None.</p>
	<%Else%>
		<%=mobile(3)%>
		<table class="txtable">
		<tr>
			<th class="colHide1"></th>
			<th></th>
			<th><%SL "Name","namup","namdn"%></th>
			<th class="colHide3">Chinese name</th>
			<th style="font-size:large"><%SL "&#x1f310;","domup","domdn"%></th>
			<th><%SL "Formed","incup","incdn"%></th>
			<th class="colHide3"><%SL "Dissolved","disdn","disup"%></th>
		</tr>
		<%x=0
		Do Until rs.EOF
			x=x+1%>
			<tr>
				<td class="colHide1"><%=x%></td>
				<td><%=IIF(rs("hklist"),"*","&nbsp;")%></td>
				<td><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("name1")%></a></td>
				<td class="colHide3"><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("oldcName")%></a></td>
				<td><span class="info"><%=rs("A2")%><span><%=rs("friendly")%></span></span></td>
				<td><%=MSdate(rs("incDate"))%></td>
				<td class="colHide3"><%=MSdate(rs("disDate"))%></td>				
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
		<%If x=limit Then%>
			<p><b>Only the first <%=limit%> matches are displayed. Please narrow your 
			search.</b></p>
		<%End If
	End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
