<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,ID,p,pName,hint,title,submit,sc,d,da,en,cn,canEdit,sql
Const roleID=4 'orgs
Call prepRole(roleID,conRole,rs,userID,uRank)
submit=Request("submitON")
canEdit=True
sc=getLng("sc",0)
If sc>0 Then
	p=SCorg(sc)
Else
	p=getLng("p",0)
End If

If submit="Add" or submit="Update" Then
	en=Request("en")
	cn=Request("cn")
	d=getMSdef("d","")
	da=getInt("da","")
	d=MidDate(d,da)
End If

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT personID,oldName,CAST(oldcName AS NCHAR)cn,dateChanged,dateAcc,userID,maxRank('namechanges',userID)uRank "&_
		"FROM namechanges WHERE ID1="&ID,conRole
	If rs.EOF Then
		hint=hint&"Record not found. "
	Else
		canEdit=rankingRs(rs,uRank)
		If Not canEdit Then
			hint=hint&"You didn't create this record and don't outrank the user who did. "
		End If
		If submit<>"Update" Or Not canEdit Then
			p=CLng(rs("personID"))
			en=rs("oldName")
			cn=rs("cn")
			d=MSdate(rs("dateChanged"))
			da=rs("dateAcc")
		End If
	End If
	rs.Close
	If canEdit Then
		If submit="Update" Then
			sql="UPDATE namechanges"&setsql("userID,oldName,oldcName,datechanged,dateAcc",Array(userID,en,cn,d,da)) & "ID1="&ID
			conRole.Execute sql
			hint=hint&"Record with ID "&ID&" updated. "		
		ElseIf submit="Delete" Then
			hint=hint&"Are you sure you want to delete record with ID "&ID&"?"
		ElseIf submit="CONFIRM DELETE" Then
			sql="DELETE FROM namechanges WHERE ID1="&ID
			conRole.Execute sql
			hint=hint&"Record with ID "&ID&" deleted. "
			ID=0		
		End If
	End If
End if				
'fetch name of organisation
If p>0 Then
	pName=fNameOrg(p)
	If pName="" Then
		p=0
		hint=hint&"No such organisation. "
	End If
End If

If p>0 And submit="Add" Then
	sql="INSERT INTO namechanges(userID,personID,oldName,oldcName,dateChanged,dateAcc)" & valsql(Array(userID,p,en,cn,d,da))
	conRole.Execute sql
	ID=lastID(conRole)
	hint=hint&"Old name added with ID "&ID
	canEdit=True
End If

title="Name changes of an organisation"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,9)
End If%>
<h3><%=title%></h3>
<form method="post" action="oldnames.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find an organisation</a></p>
<%If p>0 Then%>
	<%If ID>0 Then%>
		<h3>Edit an old name</h3>
		<p><b>Record ID: <%=ID%></b></p>
	<%Else%>
		<h3>Add an old name</h3>
	<%End If%>
	<form method="post" action="oldnames.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<table class="txtable">
			<tr>
				<td>English name:</td>
				<td><input type="text" name="en" style="width:40em" value="<%=en%>"></td>
			</tr>
			<tr>
				<td>Chinese name:</td>
				<td><input type="text" name="cn" style="width:40em" value="<%=cn%>"></td>
			</tr>
			<tr>
				<td>Date changed:</td>
				<td><input type="date" name="d" value="<%=d%>"></td>
			</tr>
			<tr>
				<td>Date accuracy:</td>
				<td><%=makeSelect("da",da,",,1,Y,2,M",False)%></td>
			</tr>
		</table>
		<p><b><%=hint%></b></p>
		<%If ID>0 And canEdit Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitON" value="Update">		
			<%If submit="Delete" Then%>
				<input type="submit" name="submitON" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitON" value="Cancel">
			<%Else%>
				<input type="submit" name="submitON" value="Delete">
			<%End If%>
		<%ElseIf ID=0 Then%>
			<input type="submit" name="submitON" value="Add">
		<%End If%>
	</form>
	<form method="post" action="oldnames.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitON" value="Clear Form">
	</form>
	<h3>Name changes of this organisation</h3>
	<%rs.Open "SELECT ID1 ID,oldName,CAST(oldcName AS NCHAR)cn,dateChanged,accText,userID,maxRank('namechanges',userID)uRank FROM namechanges n "&_
		"JOIN users u ON n.userID=u.ID LEFT JOIN dateaccuracy da ON n.dateAcc=da.accID "&_
		"WHERE personID="&p&" ORDER BY dateChanged DESC",conRole
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="txtable fcr">
			<tr>
				<th>ID</th>
				<th>Old English name</th>
				<th>Old Chinese name</th>
				<th>Date changed</th>
				<th>Accuracy</th>
				<th></th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("ID")%></td>
					<td><%=rs("oldName")%></td>
					<td><%=rs("cn")%></td>
					<td><%=MSdate(rs("dateChanged"))%></td>
					<td><%=rs("accText")%></td>
					<td><%If rankingRs(rs,uRank) Then%><a href="oldnames.asp?ID=<%=rs("ID")%>">Edit</a></td><%End If%>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
Call closeConRs(conRole,rs)%>
<hr>
<h3>Rules</h3>
<ol>
	<li>If a company has both English and Chinese names, add both to the old names table even if only one of them has changed. </li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
