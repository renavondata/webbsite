<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,p,ID,n1,n2,cn,hint,ready,submit,title,canEdit,sql,fka
Const roleID=2 'people
Call prepRole(roleID,conRole,rs,userID,uRank)
canEdit=False
submit=Request("submitAli")
ID=getLng("ID",0)
p=getLng("p",0)
If ID>0 Then
	title="Alias of a human"
	'check whether we can edit this alias
	rs.Open "SELECT personID,n1,n2,cn,alias,userID,maxRank('alias',userID)uRank FROM alias WHERE ID="&ID,conRole
	If rs.EOF Then
		hint=hint&"No such alias. "
		ID=0
	ElseIf Not rankingRs(rs,uRank) Then
		hint=hint&"You did not create this alias and don't outrank the user who did, so you cannot edit it. "
	Else
		canEdit=True 'and can also delete as aliases don't lead anywhere
		If submit="Delete" Then
			title="Delete an alias"
			hint=hint&"Are you sure you want to delete this alias? "
		ElseIf submit="CONFIRM DELETE" Then
			sql="DELETE FROM alias WHERE ID="&ID
			conRole.Execute sql
			hint=hint&"The alias with ID "&ID&" has been deleted. "
			ID=0
			canEdit=False
		End If
	End If	
	If submit<>"Update" And submit<>"Add" And ID>0 Then
		p=CLng(rs("personID"))
		n1=rs("n1")
		n2=rs("n2")
		cn=rs("cn")
		fka=Not CBool(rs("alias"))
	End If
	rs.Close
Else
	ID=0
	title="Add an alias"
End If
If submit="Update" Or submit="Add" Then
	n1=Trim(Request("n1"))
	n2=Trim(replace(Request("n2"),","," "))
	cn=Request("cn")
	fka=getBool("fka")
End If
If submit="Add" or submit="Update" And p>0 Then
	'validate entry
	If n1="" Then
		hint=hint&"Family name cannot be blank. "
	ElseIf p>0 Then
		If ID=0 Then
			conRole.Execute "INSERT INTO alias (userID,personID,n1,n2,cn,alias)" & valsql(Array(userID,p,n1,n2,cn,Not fka))
			ID=lastID(conRole)
			canEdit=True
			hint=hint&"The alias was added. "
		Else
			conRole.Execute "UPDATE alias" & setsql("userID,n1,n2,cn,alias",Array(userID,n1,n2,cn,Not fka)) & "ID="&ID
			hint=hint&"The alias was upated. "
		End If
	End If
End If%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<%'If p>0 Then%>
	<h2><%=fnamePpl(p)%></h2>
<%'End If%>
<%Call pplBar(p,2)%>
<p><b>Person ID: <%=p%></b></p>
<h3><%=title%></h3>
<%If ID>0 Then%>
	<p><b>Alias ID: <%=ID%></b></p>	
<%End If%>
<p>In given names, put English names first and do not use hyphens in Romanised Chinese given names. For example, use "David Wai Keung", not 
&quot;Wai Keung David&quot; and not "David Wai-Keung". For married Chinese women, the 
husband's family name (if used) comes first. The Chinese name box is for Asian 
scripts, including Chinese, Japanese and Korean.</p>
<%If p>0 Then%>
	<form method="post" action="alias.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<table>
			<tr><td>Family name:</td><td><input type="text" name="n1" size="30" value="<%=n1%>"></td></tr>
			<tr><td>Given names (English first):</td><td><input type="text" name="n2" size="30" value="<%=n2%>"></td></tr>
			<tr><td>Chinese name:</td><td><input type="text" size="30" name="cn" value="<%=cn%>"></td></tr>
			<tr><td></td><td><input type="radio" name="fka" id="alias" value="0" <%=checked(Not fka)%>><label for="alias">Alias</label></td></tr>
			<tr><td></td><td><input type="radio" name="fka" id="fka" value="1" <%=checked(fka)%>><label for="fka">Former name</label></td></tr>
		</table>
		<%If Hint>"" Then%>
			<p><b><%=Hint%></b></p>
		<%End If%>
		<p>
		<%If ID=0 Then%>
			<input type="submit" name="submitAli" value="Add">
		<%Else%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<%If canEdit Then%>
				<input type="submit" name="submitAli" value="Update">
				<%If submit="Delete" Then%>
					<input type="submit" name="submitAli" value="CONFIRM DELETE" style="color:red">
					<input type="submit" name="submitAli" value="Cancel">
				<%Else%>
					<input type="submit" name="submitAli" value="Delete">
				<%End If
			End If
		End If%>
		</p>
	</form>
	<%If ID>0 Then%>
		<form method="post" action="alias.asp">
			<input type="hidden" name="p" value="<%=p%>">
			<input type="submit" name="submit" value="Add another alias">
		</form>
	<%End If%>
	<form method="post" action="searchpeople.asp">
		<input type="hidden" name="tv" value="p">
		<input type="submit" name="submit" value="Find another human">
	</form>	
	<p><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=p%>">View the human in Webb-site Database</a></p>
	<p><a href="relatives.asp?h1=<%=p%>">Add spouse or descendant</a></p>
	<p><a href="relatives.asp?h2=<%=p%>">Add spouse or ancestor</a></p>
	<h3>Alias or former names of this human</h3>
	<%rs.Open "SELECT a.ID,n1,n2,cn,alias,userID,maxRank('alias',userID)uRank,u.name FROM alias a JOIN users u ON a.userID=u.ID WHERE personID="&p,conRole
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<style>table.c5-6m td:nth-child(n+5):nth-child(-n+6){text-align:center}</style>
		<table class="txtable c5-6m fcr">
			<tr>
				<th>ID</th>
				<th>Family name</th>
				<th>Given names</th>
				<th>Chinese name</th>
				<th>Alias</th>
				<th>Former</th>
				<th>User</th>
				<th></th>
			</tr>
			<%Do Until rs.EOF
				fka=Not CBool(rs("alias"))%>
				<tr>
					<td><%=rs("ID")%></td>
					<td><%=rs("n1")%></td>
					<td><%=rs("n2")%></td>
					<td><%=rs("cn")%></td>
					<td><%=IIF(Not fka,"&#10004;","")%></td>
					<td><%=IIF(fka,"&#10004;","")%></td>
					<td><%=rs("name")%></td>
					<td>
						<%If rankingRs(rs,uRank) Then%>
							<a href="alias.asp?ID=<%=rs("ID")%>">Edit</a>
						<%Else%>
							<%=rs("name")%>
						<%End If%>
					</td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
Else%>
	<p><a href="searchpeople.asp?tv=p">Find a human</a></p>
<%End If
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>