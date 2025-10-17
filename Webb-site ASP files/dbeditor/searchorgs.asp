<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%'This page is open to all editors, doesn't require a role. The edit links will show if the user has write ranking
Dim userID,uRank,con,rs,referer,tv,n,x,stype,blnFnd,title,st,m,sql,p
Call getReferer(referer,tv)
'returning from adding an org? If so then forward to referer
If Request(tv)>"" Then Response.Redirect referer & "?" & tv & "=" & Request(tv)
blnFnd=False
const limit=100
n=remSpace(Request("n"))
st=Request("st")
title="Search organisations"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<form method="post" action="searchorgs.asp">
	<h2><input type="text" style="font-size:medium" name="n" size="40" value="<%=n%>">
	<%=MakeSelect("st",st,"l,Left match,a,Any match",True)%>
	<input type="submit" style="font-size:medium" value="search" name="search"></h2>
</form>
<%If n<>"" Then
	Call openEnigmaRs(con,rs)
	userID=Session("ID")
	uRank=con.Execute("SELECT maxRankLive('organisations',"&userID&")").Fields(0)
	If st="a" Then
		m = " AGAINST('+" & apos(join(split(n),"+")) & "' IN BOOLEAN MODE)"
		sql="MATCH name1" & m
	Else
		m= " LIKE '" & apos(n) & "%'"
		sql="name1" & m
	End If
	rs.Open "SELECT personID,Name1,everListCo(o.personID)hklist,incDate,disDate,cName,A2,friendly,o.userID,maxRank('organisations',o.UserID)uRank,u.name "&_
		"FROM Organisations o JOIN users u ON o.userID=u.ID LEFT JOIN domiciles d ON o.domicile=d.ID WHERE "&_
		sql&" ORDER BY name1 LIMIT "&limit,con%>
	<p>"*" = is or was HK-listed</p>
	<h3>Matches in current names</h3>
	<form method="post" action="<%=referer%>">
	<%If rs.EOF then
		Response.write "None"
	Else
		blnFnd=True%>
		<table class="txtable">
			<tr>
				<th colspan="<%=3-(tv>"")%>"></th>
				<th>Name</th>
				<th>Established</th>
				<th>Dissolved</th>
				<th>User</th>
				<th></th>
				<%If tv>"" Then%><th></th><%End If%>
			</tr>
			<%x=0
			Do Until rs.EOF
				x=x+1
				p=rs("personID")%>
				<tr>
					<td><%=x%></td>
					<td><%=IIF(rs("hklist"),"*","&nbsp;")%></td>
					<%If tv>"" Then%><td><input type="radio" name="<%=tv%>" value="<%=p%>"></td><%End If%>
					<td><span class="info"><%=rs("A2")%><span><%=rs("friendly")%></span></span></td>
					<td><a href='https://webb-site.com/dbpub/orgdata.asp?p=<%=rs("PersonID")%>' target="_blank"><%=rs("Name1")%></a></td>
					<td><%=MSdate(rs("incDate"))%></td>
					<td><%=MSdate(rs("disDate"))%></td>
					<td><%=rs("name")%></td>
					<td><%If rankingRs(rs,uRank) Then%><a href="org.asp?p=<%=p%>">Edit</a><%End If%></td>
					<%If tv>"" Then%><td><a href="<%=referer%>?<%=tv%>=<%=p%>">Use</a></td><%End If%>
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
	rs.Open "SELECT n.PersonID,OldName,name1,everListCo(o.personID)hklist,incDate,disDate,A2,friendly,dateChanged,o.userID,maxRank('organisations',o.userID)uRank,u.name "&_
		"FROM nameChanges n JOIN (organisations o,users u) on n.PersonID=o.personID AND o.userID=u.ID "&_
		"LEFT JOIN domiciles d ON o.domicile=d.ID WHERE "&sql&" ORDER BY name1 LIMIT "&limit,con
	%>
	<h3>Matches in old names</h3>
	<%If rs.EOF then
		Response.write "None"
	Else
		blnFnd=True%>
		<table class="txtable">
		<tr>
			<th colspan="<%=3-(tv>"")%>"></th>
			<th>Name</th>
			<th>Until</th>
			<th>Current name</th>
			<th>User</th>
			<th></th>
			<%If tv>"" Then%><th></th><%End If%>
		</tr>
		<%x=0
		Do Until rs.EOF
			x=x+1
			p=rs("personID")%>
			<tr>
				<td><%=x%></td>
				<td><%=IIF(rs("hklist"),"*","&nbsp;")%></td>
				<%If tv>"" Then%><td><input type="radio" name="<%=tv%>" value="<%=rs("PersonID")%>"></td><%End If%>
				<td><span class="info"><%=rs("A2")%><span><%=rs("friendly")%></span></span></td>
				<td><a href='https://webb-site.com/dbpub/orgdata.asp?p=<%=rs("PersonID")%>' target="_blank"><%=rs("oldName")%></a></td>
				<td><%=MSdate(rs("dateChanged"))%></td>		
				<td><%=rs("name1")%></td>
				<td><%=rs("name")%></td>
				<td><%If rankingRs(rs,uRank) Then%><a href="org.asp?p=<%=p%>">Edit</a><%End If%></td>
				<%If tv>"" Then%><td><a href="<%=referer%>?<%=tv%>=<%=p%>">Use</a></td><%End If%>
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
	If referer<>"" And blnFnd Then%>
		<p><input type="submit" name="submitBtn" value="Use selected organisation"></p>
	<%End If%>
	</form>
	<%If hasRole(con,4) Then 'orgs role%>
		<h3>Not what you are looking for?</h3>
		<form method="post" action="org.asp">
			<input type="hidden" name="tv" value="<%=tv%>">
			<input type="hidden" name="en" value="<%=n%>">
			<input type="submit" name="submitSrch" value="Add new organisation">
		</form>
	<%End If%>
	<%Call closeConRs(con,rs)
End If%>
<!--#include file="cofooter.asp"-->
</body>
</html>
