<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<title>HK-listed companies' web sites</title>
<%Dim wURL,name,lastName,URLshort,t,con,rs,sort,URL,ob,pref
Call openEnigmaRs(con,rs)
Const maxLen=20
sort=Request("sort")
Select Case sort
	Case "codup" ob="code"
	Case "coddn" ob="code DESC"
	Case "namdn" ob="name DESC"
	Case Else
		sort="namup"
		ob="name"
End Select
URL=Request.ServerVariables("URL")
rs.Open "SELECT a.personID,name,URL,ordCodeThen(a.personID,CURDATE())code FROM listedcosHKall a JOIN web w ON a.personID=w.personID AND NOT dead ORDER BY "&ob,con%>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>HK Listed companies' web sites</h2>
<p>For HK-listed companies without web sites, <a href="hklistconowebs.asp">click 
here</a>. The list below shows URLs without the "www" prefix that you may need 
if typing it, depending on whether the company has been stupid enough to reject 
web requests without www.</p>
<table class="opltable yscroll">
	<tr>
		<th><%SL "Stock code","codup","coddn"%></th>
		<th><%SL "Name","namup","namdn"%></th>
		<th>URL</th>
	</tr>
	<%Do Until rs.EOF
		wURL=rs("URL")
		name=rs("Name")
		If left(wURL,5)="http:" Then
			pref="http://"
			wURL=Right(wURL,Len(wURL)-7)
		ElseIf Left(wURL,5)="https" Then
			pref="https://"
			wURL=Right(wURL,Len(wURL)-8)
		Else
			pref="https://"
		End If
		t=wURL

		If Left(wURL,3)="www" Then t=Right(wURL,Len(wURL)-Instr(wURL,".")) Else t=wURL
		URLshort=""
		Do Until Len(t)<maxLen
			URLshort=URLshort & Left(t,maxLen) & "<br>"
			t=right(t,Len(t)-maxLen)
		Loop
		URLshort=URLshort & t
		If lastName=Name Then%>
			<tr>
				<td colspan="2"></td>
				<td><a href="<%=pref&wURL%>"><%=URLshort%></a></td>
			</tr>
		<%Else%>
			<tr class="total">
				<td><%=rs("code")%></td>
				<td><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=rs("Name")%></a></td>
				<td><a href="<%=pref&wURL%>"><%=URLshort%></a></td>
			</tr>
		<%End If
		lastName=Name
		rs.MoveNext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>