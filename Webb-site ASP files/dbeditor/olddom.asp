<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Call requireRoleExec
Dim p,pName,hint,title,submit,od,odName,oldIncID,d,da,sql,rs,ID,sc
Call prepMasterRs(conMaster,rs)
submit=Request("submitOD")

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT orgID,dateChanged,dateAcc,oldDom,oldIncID,friendly FROM domchanges c JOIN domiciles d ON c.oldDom=d.ID WHERE c.ID="&ID,conMaster
	If rs.EOF Then
		hint=hint&"No such record. "
		ID=0
	Else
		p=CLng(rs("orgID"))
		If submit="CONFIRM DELETE" Then
			conMaster.Execute "DELETE FROM domchanges WHERE ID="&ID
			hint=hint&"Deleted record with ID "&ID&". "
			ID=0
		Else
			If submit<>"Update" Then
				d=MSdate(rs("dateChanged"))
				da=CInt(IfNull(rs("dateAcc"),0))
				od=CInt(rs("oldDom")) 'cannot be null
				oldIncID=rs("oldIncID")
				odName=rs("friendly")
			End If
		End If
	End If
	rs.Close
	If submit="Delete" Then hint=hint&"Are you sure you want to delete this old domicile in "&odName&" with date "&d&"?"		
Else	
	sc=getLng("sc",0)
	If sc>0 Then
		p=SCorg(sc)
	Else
		p=getLng("p",0)
	End If
End If

If p>0 Then pName=fNameOrg(p)

If p>0 And (submit="Add" or submit="Update") Then
	d=MSdate(Request("d"))
	da=getInt("da","")
	d=MidDate(d,da)
	od=getInt("od",0)
	oldIncID=Request("oldIncID")
	If od>0 Then odName=conMaster.Execute("SELECT friendly FROM domiciles WHERE ID="&od).Fields(0)
	sql="SELECT EXISTS(SELECT * FROM domchanges WHERE orgID="&p&" AND dateChanged="&apq(d)
	If d="" Then
		hint=hint&"Specify an Until date (the date the next domicile began). "
	ElseIf od=0 Then
		hint=hint&"Specify an old domicile. "
	ElseIf submit="Add" Then
		If CBool(conMaster.Execute(sql &")").Fields(0)) Then
			hint=hint&"Another record has that Until date. Edit that instead. "
		Else
			conMaster.Execute "INSERT INTO domchanges (orgID,dateChanged,dateAcc,oldDom,oldIncID)" & valsql(Array(p,d,da,od,oldIncID))
			ID=lastID(conMaster)
			hint=hint&"Record added with old domicile "&odName&" until "&d&". "
		End If
	ElseIf ID>0 And submit="Update" Then
		If CBool(conMaster.Execute(sql & "AND ID<>"&ID&")").Fields(0)) Then
			hint=hint&"Another record has that Until date. "
		Else
			conMaster.Execute "UPDATE domchanges" & setsql("dateChanged,dateAcc,oldDom,oldIncID",Array(d,da,od,oldIncID)) & "ID="&ID
			hint=hint&"The record was updated. "
		End If
	End If
End If

If ID>0 Then
	title="Edit or delete"
Else
	title="Add"
End If
title=title&" an old domicile"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,12)
End If%>
<form method="post" action="olddom.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find an organisation</a></p>
<h3><%=title%></h3>
<%If p>0 Then%>
	<form method="post" action="olddom.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<table class="txtable">
			<tr>
				<th>Until</th>
				<th>Accuracy</th>
				<th>Old domicile</th>
				<th>Old incID</th>
			</tr>
			<tr>
				<td><input type="date" name="d" value="<%=d%>"></td>
				<td><%=makeSelect("da",da,",,2,M,1,Y",False)%></td>
				<td><%=arrSelectZ("od",od,conMaster.Execute("SELECT ID, friendly FROM domiciles ORDER BY friendly").GetRows,False,True,"","")%></td>
				<td><input type="text" name="oldIncID" style="width:11em" maxlength="11" value="<%=oldIncID%>"></td>
			</tr>
		</table>
		<p><b><%=hint%></b></p>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitOD" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitOD" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitOD" value="Cancel">
			<%Else%>
				<input type="submit" name="submitOD" value="Delete">
			<%End If
		Else%>
			<input type="submit" name="submitOD" value="Add">	
		<%End If%>
	</form>
	<form method="post" action="olddom.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitOD" value="Clear form">
	</form>
	<h3>Old domiciles of this organisation</h3>
	<%rs.Open "SELECT c.ID,dateChanged,accText,friendly,oldIncID FROM domchanges c JOIN domiciles d ON c.oldDom=d.ID "&_
		"LEFT JOIN dateAccuracy da ON c.dateAcc=da.AccID WHERE orgID="&p,conMaster
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="txtable">
			<tr>
				<th>Our ID</th>
				<th>Until</th>
				<th>Accuracy</th>
				<th>Old domicile</th>
				<th>Old incID</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("ID")%></td>
					<td><%=MSdate(rs("dateChanged"))%></td>
					<td><%=rs("accText")%></td>
					<td><%=rs("friendly")%></td>
					<td><%=rs("oldIncID")%></td>
					<td><a href='olddom.asp?ID=<%=rs("ID")%>'>Edit</a></td>
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
	<li>Do not confuse a change of domicile with a <a href="freg.asp?p=<%=p%>">foreign registration</a> or 
	<a href="reorg.asp?p=<%=p%>">reorganisation</a>. This page is 
	only for situations in which a company has moved its domicile is domiciled 
	from one jurisdiction to another. Such a company will typically say that it 
	was "incorporated in X and continued in Y".</li>
	<li>The "Until" date is the first date of the new domicile, which is when 
	the old domicile ceases.</li>
	<li>An organisation can only change domicile once per day.</li>
	<li>As of 2023, HK doesn't have legislation for companies to migrate in or 
	out, so a company will never have an "old domicile" of HK, and a HK company 
	will never have an "old domicile" somewhere else. Instead, it may have been 
	"reorganised from" an old company in HK or to a new company in HK.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
