<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Call requireRoleExec
Dim p,pName,hint,title,submit,cat,catName,sc,ob,rs
Call prepMasterRs(conMaster,rs)
submit=Request("submitcat")

sc=getLng("sc",0)
If sc>0 Then
	p=SCorg(sc)
Else
	p=getLng("p",0)
End If
If p>0 Then pName=fNameOrg(p)

cat=getInt("cat",0)
If cat>0 Then
	rs.Open "SELECT name FROM categories WHERE ID="&cat,conMaster
	If rs.EOF Then
		cat=0
		hint=hint&"No such category. "
	Else
		catName=rs("name")
	End If
	rs.Close
End If

If p>0 And cat>0 Then
	If submit="Add" Then
		If CBool(conMaster.Execute("SELECT EXISTS(SELECT * FROM classifications WHERE company="&p&" AND category="&cat&")").Fields(0)) Then
			hint=hint&"The firm already has that category. "
		Else
			conMaster.Execute("INSERT INTO classifications (company,category)" & valsql(Array(p,cat)))
			hint=hint&"Category added:"&catName
		End If
	ElseIf submit="Remove" Then
		hint=hint&"Are you sure you want to remove category: " & catName & "? "
	ElseIf submit="CONFIRM REMOVE" Then
		conMaster.Execute("DELETE FROM classifications WHERE company="&p&" AND category="&cat)
		hint=hint&"Removed category: "&catName&". "
	End If
End If

title="Add or remove a category from a firm"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,7)
End If%>
<h3><%=title%></h3>
<form method="post" action="classifications.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find a firm</a></p>
<%If p>0 Then%>
	<h3>Add a category</h3>
	<form method="post" action="classifications.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<%=arrSelect("cat",cat,conMaster.Execute("SELECT ID,name FROM categories ORDER BY name").GetRows,False)%>
		<p><b><%=hint%></b></p>
		<%If submit="Remove" Then%>
			<input type="submit" name="submitcat" style="color:red" value="CONFIRM REMOVE">
			<input type="submit" name="submitcat" value="Cancel">
		<%Else%>
			<input type="submit" name="submitcat" value="Add">		
		<%End If%>
	</form>
	<%rs.Open "SELECT * FROM classifications JOIN categories ON category=ID WHERE company="&p,conMaster%>
	<h3>Categories of this firm</h3>
	<table class="txtable">
		<tr>
			<th>Category</th>
			<th></th>
		</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("name")%></td>
				<td><a href="classifications.asp?submitcat=Remove&amp;p=<%=p%>&amp;cat=<%=rs("category")%>">Remove</a></td>
			</tr>
			<%rs.MoveNext
		Loop
		rs.Close%>
	</table>
<%End If
Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
