<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Sub getName(h,name,YOB)
	'get name and YOB of person or return h=0 and YOB=Null
	If h>0 Then
		rs.Open "SELECT YOB,CAST(fnameppl(name1,name2,cName) AS NCHAR) AS name FROM people WHERE personID="&h,conRole
		If rs.EOF Then
			h=0
			name=""
			YOB=Null
		Else
			name=rs("name")
			YOB=rs("YOB")
		End If
		rs.Close
	Else
		h=0
	End if
End Sub

Sub genTable(p,h)
	'4 possibilities
	'p=1 to find upward relatives, 2 to find downward relatives
	'h=h1 for person on left, h2 for person on right of displayed pair
	rs.Open "SELECT personID,relID,CAST(fnameppl(name1,name2,cName) AS NCHAR)name,v.userID,maxRank('relatives',v.userID)uRank,"&IIF(p=1,"invRel","relation")&" rel"&_
		" FROM relatives v JOIN(people p,relationships r) ON v.relID=r.ID AND v.rel"&p&"=p.personID WHERE rel"&(3-p)&"="&h&" ORDER BY rel,name",conRole
	If Not rs.EOF Then%>
		<h3><%="Person " & IIF(h=h1,"A","B") & ", Non-lineal and " & IIF(p=1,"upwards","downwards")%></h3>
		<table class="txtable">
			<tr>
				<th>Relationship</th>
				<th>Name</th>
				<th>Edit</th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("rel")%></td>
				<td><%=rs("name")%></td>
				<td>
					<%If rankingRs(rs,uRank) Then
						'no need to specify the correct order of h1/h2, as my query will find the pair%>
						<a href="relatives.asp?submitRel=Edit&amp;h1=<%=h%>&amp;h2=<%=rs("personID")%>">Edit</a>
					<%End If%>
				</td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
End Sub

'MAIN SCRIPT
Dim conRole,rs,userID,uRank,h1,h2,YOB1,YOB2,r,h1name,h2name,x,hint,ready,title,found,oldRel,newRel,submit,userName,reset
Const roleID=2 'people
Call prepRole(roleID,conRole,rs,userID,uRank)
submit=Request("submitRel")
reset=getBool("reset")
ready=True
found=False
'collect humans, from search or this form
h1=getLng("h1",0)
h2=getLng("h2",0)
If h1=0 And Not reset Then h1=Session("h1")
If h2=0 And Not reset Then h2=Session("h2")
If submit="Swap Persons" Then Call swap(h1,h2)
r=getInt("r",-1)
If h1>0 And h2>0 Then
	'are they already related?
	rs.Open "SELECT *,maxRank('relatives',userID)uRank FROM relatives v JOIN (relationships r,users u) ON v.relID=r.ID AND v.userID=u.ID "&_
		"WHERE (rel1="& h1&" AND rel2="& h2&") OR (rel1="& h2&" AND rel2="& h1&")",conRole
	If Not rs.EOF Then
		found=True
		If Not rankingRs(rs,uRank) Then
			hint=hint&"You did not create this relationship and don't outrank the user who did, so you cannot edit it. "
			ready=False
		End If
		'get them in the right order
		h1=CLng(rs("rel1"))
		h2=CLng(rs("rel2"))
		oldRel=rs("relation")
		userName=rs("name")
		If r=-1 Then r=CInt(rs("relID"))
	End If
	rs.Close
Else
	ready=False
	If submit="Add" Then hint=hint&"It takes two to make a relationship. "
End If
Call getName(h1,h1name,YOB1)
Call getName(h2,h2name,YOB2)
If submit="Add" or submit="Update" Then
	'validate inputs
	If h1>0 And h1=h2 Then
		hint=hint & "A person cannot be related to himself. "
		h2=0
		ready=False
	ElseIf r>-1 And h1<>h2 And Not isNull(YOB1) And Not isNull(YOB2) Then
		If YOB1+12>YOB2 And r=0 Then
			hint=hint&"Person A is too young to be a parent of Person B. "
			ready=False
		End If
	End If
End If
If r=-1 Then
	If submit="Add" Then
		hint=hint&"Pick a relationship. "
		ready=False
	Else
		If Not reset Then r=Session("r")
		If r="" Or isNull(r) Then r=-1
	End If	
End If
If r>-1 Then newRel=conRole.Execute("SELECT relation FROM relationships WHERE ID="&r).Fields(0)
If ready Then
	If submit="Delete" Then
		hint=hint&"Are you sure you want to delete this relationship? "
	ElseIf submit="CONFIRM DELETE" Then
		conRole.Execute "DELETE FROM relatives WHERE rel1="& h1&" AND rel2=" & h2
		hint=hint&"The record has been deleted. "
		found=False
	ElseIf submit="Update" Then
		conRole.Execute "UPDATE relatives"&setsql("userID,relID",Array(userID,r))&"rel1="& h1&" AND rel2="& h2
		hint="The relationship has been updated. "
		oldRel=newRel
		userName=Session("username")
	ElseIf submit="Add" Then
		conRole.Execute "INSERT INTO relatives(userID,rel1,relID,rel2)" & valsql(Array(userID,h1,r,h2))
		hint=hint&"The relationship has been added. "
		found=True
		oldRel=newRel
		userName=Session("username")
	End If
End If
'store variables in case we divert to find people
Session("h1")=h1
Session("h2")=h2
Session("r")=r
title="Add a family relationship"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If h1>0 Then%>
	<h2><%=h1Name%></h2>
	<%Call pplBar(h1,3)%>
<%ElseIf h2>0 Then%>
	<h2><%=h2Name%></h2>
	<%Call pplBar(h2,3)%>
<%Else%>
	<h2><%=title%></h2>
<%End If%>
<h3>Rules:</h3>
<ol>
	<li>Vertical relationships take priority (e.g. A is the parent of B and C rather than B is the sibling of C).</li>
	<li>Direct relationships are better, e.g. add A is the parent of B and B is the spouse of C rather than A is the parent-in-law of C.</li>
	<li>Don't add relationships which can be inferred from existing records. E.g. if A is the parent of B and C, then don't enter them as siblings.</li>
	<li>If you don't know any parents of siblings, then add the siblings 
	pairwise (e.g. if A, B and C are siblings, then add A-B, A-C and B-C; 
	similarly if A, B, C and D are siblings, then add A-B, A-C, A-D, B-C, B-D 
	and C-D).</li>
</ol>
<hr>
<form action="relatives.asp" method="post">
	<input type="hidden" name="h1" value="<%=h1%>">
	<input type="hidden" name="h2" value="<%=h2%>">
	<%If found Then%>
		<h3>Existing record</h3>
		<table class="txtable">
		<tr>
			<th>Person A</th>
			<th>A is the ? of B</th>
			<th>Person B</th>
			<th>User</th>
		</tr>
		<tr>
			<td><%=h1name%></td>
			<td><%=oldRel%></td>
			<td><%=h2name%></td>
			<td><%=userName%></td>
		</tr>
		</table>
		<br>
	<%End If%>
	<h3>Enter the relationship</h3>
	<p>Click on the column headings to select an existing or new human as a relative.</p>
	<table class="txtable">
		<tr>
			<th><a href="searchpeople.asp?tv=h1">Person A</a></th>
			<th>A is the ? of B</th>
			<th><a href="searchpeople.asp?tv=h2">Person B</a></th>
		</tr>
		<tr>
			<td><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=h1%>"><%=h1Name%></a></td>
			<td><%=arrSelectZ("r",r,conRole.Execute("SELECT ID,relation FROM relationships ORDER BY relation").GetRows,False,True,"","?")%></td>
			<td><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=h2%>"><%=h2Name%></a></td>
		</tr>
	</table>
	<p><b><%=hint%></b></p>
	<p>
	<%If found Then
		If ready Then%>
			<input type="submit" name="submitRel" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitRel" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitRel" value="Cancel">
			<%Else%>
				<input type="submit" name="submitRel" value="Delete">
			<%End If
		End If
	Else%>
		<input type="submit" name="submitRel" value="Add">
		<%If h1>0 Or h2>0 And Not found Then%>
			<input type="submit" name="submitRel" value="Swap Persons">
		<%End If
	End If%>
	</p>
</form>
<form method="post" action="relatives.asp?reset=1"><input type="submit" value="Clear form"></form>
<%
Call genTable(2,h1)
Call genTable(1,h1)
Call genTable(2,h2)
Call genTable(1,h2)
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
