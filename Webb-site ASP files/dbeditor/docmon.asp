<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Call requireRoleExec
Dim p,pName,hint,ready,title,submit,ID,dtype,recDate,repDate,midDay,adv,dir,pay,sc,sort,URL,ob,s,rs,canDel
Call prepMasterRs(conMaster,rs)
submit=Request("submitDoc")
ready=True
sc=getLng("sc",0)
If sc>0 Then
	p=SCorg(sc)
Else
	p=getLng("p",0)
End If

If submit="Update" or submit="Add record" Then
	'validate inputs
	dtype=getLng("dtype",0)
	recDate=MSdate(Request("recDate"))
	repDate=MSdate(Request("repDate"))
	If repDate>"" And repDate<recDate Then
		hint=hint&"Report date cannot precede Record Date"
		ready=False
	End If
	midDay=getBool("midDay")
	adv=getBool("adv")
	dir=getBool("dir")
	pay=getBool("pay")
End If

ID=getLng("ID",0)
If ID>0 And submit<>"Add record" Then
	rs.Open "SELECT * FROM documents WHERE ID="&ID,conMaster	
	If rs.EOF Then
		hint=hint&"No record found. "
	Else
		p=CLng(rs("orgID"))
		If submit="Update" Then
			If ready Then
				s="UPDATE documents" &setsql("docTypeID,recordDate,reportDate,midDay,adv,dir,pay",Array(dtype,recDate,repDate,midDay,adv,dir,pay)) & "ID="&ID
				conMaster.Execute s
'				hint=hint&s&" "
				hint=hint&"Record updated. "
			End If
		Else
			'not Updating, so fetch values
			dtype=CLng(rs("DocTypeID"))
			recDate=MSdate(rs("recordDate"))
			repDate=MSdate(rs("reportDate"))
			midDay=CBool(rs("midDay"))
			adv=CBool(rs("adv"))
			dir=CBool(rs("dir"))
			pay=CBool(rs("pay"))
			canDel=(isNull(rs("repID")) And isNull(rs("resID")))
			If canDel And (submit="Delete" or submit="CONFIRM DELETE") Then
				If submit="Delete" Then
					hint=hint&"Are you sure you want to delete this record? "
				Else
					s="DELETE FROM documents WHERE ID="&ID
					conMaster.Execute s
'					hint=hint&s
					hint=hint&"Record with ID "&ID&" deleted. "
					ID=0
				End If
			End If
		End If
	End If
	rs.Close
End If

'fetch name of firm
pName=fNameOrg(p)

If submit="Add record" And ready And p>0 Then
	s="INSERT INTO documents(orgID,docTypeID,recordDate,reportDate,midDay,adv,dir,pay)" & valsql(Array(p,dtype,recDate,repDate,midDay,adv,dir,pay))
	conMaster.Execute s
'	hint=hint&s&" "
	ID=lastID(conMaster)
	hint=hint&"Record added with ID "&ID&". "
End If

sort=Request("sort")
Select case sort
	Case "typyup" ob="docShort,recordDate DESC"
	Case "typdn" ob="docShort DESC,recordDate DESC"
	Case "repup" ob="reportDate,docShort"
	Case "repdn" ob="reportDate DESC,docShort"
	Case "recup" ob="recordDate,docShort"
	Case Else
		sort="recdn"
		ob="recordDate DESC,docShort"
End Select
URL=Request.ServerVariables("URL")&"?p="&p

title="Add or edit a document"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgbar(p,4)
End If%>
<h3><%=title%></h3>

<form method="post" action="docmon.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<input type="button" value="Clear" onclick="window.location.href='docmon.asp'">
<p><a href="searchorgs.asp?tv=p">Find a firm</a></p>
<%If p>0 Then
	'produce an input form to edit or add a record
	%>
	<h3>Add or Update record</h3>
	<form method="post" action="docmon.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<table class="c5-8m numtable">
			<tr>
				<th>ID</th>
				<th>Type</th>
				<th>Record date</th>
				<th>Results date</th>
				<th>Mid-day</th>
				<th>Adv</th>
				<th>Pay</th>
				<th>Dir</th>
			</tr>
			<tr>
				<td><%=IIF(ID>0,ID,"")%></td>
				<td><%=arrSelect("dtype",dtype,conMaster.Execute("SELECT docTypeID,docShort FROM doctypes ORDER BY docShort").GetRows,False)%></td>
				<td><input type="date" name="recDate" value="<%=recDate%>"></td>
				<td><input type="date" name="repDate" value="<%=repDate%>"></td>
				<td><input type="checkbox" name="midDay" value="1" <%=checked(midDay)%>></td>
				<td><input type="checkbox" name="adv" value="1" <%=checked(adv)%>></td>
				<td><input type="checkbox" name="pay" value="1" <%=checked(pay)%>></td>
				<td><input type="checkbox" name="dir" value="1" <%=checked(dir)%>></td>
			</tr>
		</table>
		<p><b><%=hint%></b></p>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitDoc" value="Update">
			<%If canDel Then
				If submit="Delete" Then%>
					<input type="submit" name="submitDoc" style="color:red" value="CONFIRM DELETE">
					<input type="submit" name="submitDoc" value="Cancel">
				<%Else%>
					<input type="submit" name="submitDoc" value="Delete">
				<%End If
			End If
		End If
		If p>0 Then%>
			<input type="hidden" name="p" value="<%=p%>">
			<input type="submit" name="submitDoc" value="Add record">
		<%End If%>
	</form>
	<form method="post" action="docmon.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitDoc" value="Clear form">
	</form>
<%End If

If p>0 Then
	'display tables of documents
	rs.Open "SELECT * FROM documents d JOIN doctypes t ON d.docTypeID=t.docTypeID WHERE orgID="&p&" ORDER BY "&ob,conMaster
	%>
	<h3>Documents</h3>
	<p>Click the record date to edit.</p>
	<style>table.c5-8m td:nth-child(n+5):nth-child(-n+8) {text-align:center}</style>
	<table class="c5-8m numtable">
		<tr>
			<th>ID</th>
			<th><%SL "Type","typup","typdn"%></th>
			<th><%SL "Record date","recdn","recup"%></th>
			<th><%SL "Results date","repdn","repup"%></th>
			<th>Mid-day</th>
			<th>Adv</th>
			<th>Pay</th>
			<th>Dir</th>
			<th>repID</th>
			<th>resID</th>
		</tr>
		<%Do until rs.EOF%>
			<tr>
				<td><%=rs("ID")%></td>
				<td><%=rs("docShort")%></td>
				<td><a href="docmon.asp?sort=<%=sort%>&amp;ID=<%=rs("ID")%>"><%=MSdate(rs("recordDate"))%></a></td>
				<td><%=MSdate(rs("reportDate"))%></td>
				<td><%=tick(rs("midDay"))%></td>
				<td><%=tick(rs("adv"))%></td>
				<td><%=tick(rs("pay"))%></td>
				<td><%=tick(rs("dir"))%></td>
				<td><%=rs("repID")%></td>
				<td><%=rs("resID")%></td>
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
