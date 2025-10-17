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
Dim p,pName,hint,title,submit,host,hostName,regID,regDate,cesDate,sql,rs,ID,sc
Call prepMasterRs(conMaster,rs)
submit=Request("submitfreg")

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT * FROM freg WHERE ID="&ID,conMaster
	If rs.EOF Then
		hint=hint&"No such record. "
		ID=0
	Else
		'orgID, hostDom and regID cannot be changed
		p=CLng(rs("orgID"))
		host=CInt(rs("hostDom"))
		If submit="CONFIRM DELETE" And host<>1 Then
			sql="DELETE FROM freg WHERE ID="&ID
			conMaster.Execute sql
			hint=hint&"Deleted registration with our ID: "&ID&". "
			ID=0
			host=0
		Else
			regID=Trim(rs("regID"))
			If submit<>"Update" Or host=1 Then regDate=MSdate(rs("regDate"))
			If submit<>"Update" Then cesDate=MSdate(rs("cesDate"))
		End If
		If submit="Delete" Then hint=hint&"Are you sure you want to delete this registration with our ID "&ID&" and registry ID "&regID&"?"		
	End If
	rs.Close
Else
	sc=getLng("sc",0)
	If sc>0 Then
		p=SCorg(sc)
	Else
		p=getLng("p",0)
		If p>0 And submit="Add" Then
			host=getInt("host",0)
			regID=Trim(Request("regID"))
		End If
	End If
End If

If host>0 Then hostName=conMaster.Execute("SELECT friendly FROM domiciles WHERE ID="&host).Fields(0)
If p>0 Then pName=fNameOrg(p)

If p>0 And (submit="Add" or submit="Update") Then
	If host<>1 Then regDate=getMSdef("regDate","")
	cesDate=getMSdef("cesDate","")
	If cesDate>"" And cesDate<regDate Then
		hint=hint&"Registration date cannot be after the cessation date. "
	ElseIf host=0 Then
		hint=hint&"Specify a host domicile. "
	ElseIf regID="" Then
		hint=hint&"Specify the registration ID assigned by the host registry. "
	Else
		If submit="Add" Then
			If host=1 Then
				hint=hint&"We maintain HK registrations automatically. They cannot be added manually. "
			Else
				sql="SELECT EXISTS(SELECT * FROM freg WHERE hostDom="&host&" AND regID="&apq(regID)&" AND ID<>"&ID		
				If CBool(conMaster.Execute(sql &")").Fields(0)) Then
					hint=hint&"Another record has that registration ID and host domicile. "
				Else
					sql="INSERT INTO freg (orgID,hostDom,regID,regDate,cesDate)" & valsql(Array(p,host,regID,regDate,cesDate))
					conMaster.Execute sql
					ID=lastID(conMaster)
					hint=hint&"Registration added with host domicile "&hostName&" and registry ID "&regID&". "
				End If
			End If
		ElseIf ID>0 And submit="Update" Then
			If host=1 Then
				'HK registration dates cannot be changed
				sql="UPDATE freg" & setsql("cesDate",Array(cesDate)) & "ID="&ID
				hint=hint&"The cessation date was updated. "
			Else
				sql="UPDATE freg" & setsql("regDate,cesDate",Array(regDate,cesDate)) & "ID="&ID
				hint=hint&"The registration date and/or cessation date was updated. "
			End If
			conMaster.Execute sql
		End If
	End If
End If

If ID>0 Then
	title="Edit"
	If host<>1 Then title=title&" or delete"
Else
	title="Add"
End If
title=title&" a registration"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,11)
End If%>
<form method="post" action="freg.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find an organisation</a></p>
<h3><%=title%></h3>
<%If p>0 Then%>
	<form method="post" action="freg.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<table class="txtable">
			<tr>
				<th>Host domicile</th>
				<th>Registry ID</th>
				<th>Registered date</th>
				<th>Ceased date</th>
			</tr>
			<tr>
				<%If ID=0 Then%>
					<td><%=arrSelectZ("host",host,conMaster.Execute("SELECT ID, friendly FROM domiciles WHERE ID<>1 ORDER BY friendly").GetRows,False,True,0,"")%></td>
					<td><input type="text" name="regID" style="width:11em" maxlength="11" value="<%=regID%>"></td>
				<%Else%>
					<td><%=hostName%></td>
					<td><%=regID%></td>
				<%End If%>
				<%If ID>0 And host=1 Then%>
					<td><%=regDate%></td>
				<%Else%>
					<td><input type="date" name="regDate" value="<%=regDate%>"></td>
				<%End If%>
				<td><input type="date" name="cesDate" value="<%=cesDate%>"></td>
			</tr>
		</table>
		<p><b><%=hint%></b></p>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitfreg" value="Update">
			<%If submit="Delete" And host<>1 Then%>
				<input type="submit" name="submitfreg" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitfreg" value="Cancel">
			<%ElseIf host<>1 Then%>
				<input type="submit" name="submitfreg" value="Delete">
			<%End If
		Else%>
			<input type="submit" name="submitfreg" value="Add">	
		<%End If%>
	</form>
	<form method="post" action="freg.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitfreg" value="Clear form">
	</form>
	<h3>Foreign registrations of this organisation</h3>
	<%rs.Open "SELECT f.ID,friendly,regID,regDate,cesDate FROM freg f JOIN domiciles d ON f.hostDom=d.ID WHERE orgID="&p,conMaster
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="txtable">
			<tr>
				<th>Our ID</th>
				<th>Host domicile</th>
				<th>Registry ID</th>
				<th>Registered date</th>
				<th>Ceased date</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("ID")%></td>
					<td><%=rs("friendly")%></td>
					<td><%=rs("regID")%></td>
					<td><%=MSdate(rs("regDate"))%></td>
					<td><%=MSdate(rs("cesDate"))%></td>
					<td><a href='freg.asp?ID=<%=rs("ID")%>'>Edit</a></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
Call closeConRs(conMaster,rs)%>
<hr>
<h3>Rules</h3>
<ol>
	<li>Do not confuse a foreign registration with a 
	<a href="olddom.asp?p=<%=p%>">change of domicile</a>. This 
	page is 
	only for situations in which a company is domiciled in one jurisdiction and 
	additionally, registered in another.</li>
	<li>The "host domicile" is the place in which the foreign registration is 
	made (for example, a HK company registered in the UK has a host domicile of 
	United Kingdom).</li>
	<li>&nbsp;A company can have multiple foreign registrations, but only one in 
	each host domicile simultaneously. If it leaves, it can come back with a new 
	registration.</li>
	<li>After a registration has been added (requiring a host domicile and 
	Registry ID), those 2 parameters cannot be edited. If you've made a mistake 
	then delete the record and start again.</li>
	<li>The host domicile and Registry ID are a unique pair. You cannot add a 
	record with the same pair.</li>
	<li>HK registrations are maintained automatically, so you can't add or 
	delete them, but our system cannot collect the cessation date from the 
	registry, so you can edit that.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
