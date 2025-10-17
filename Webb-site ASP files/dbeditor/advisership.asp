<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
'developed from officer.asp
Call requireRoleExec
Dim sort,URL,firm,firmName,adviser,advName,hint,mhint,ready,title,org,submit,userName,role,personID,lastperson,samePerson,_
	ID,AddDate,AddAcc,RemDate,RemAcc,del,edit,s,sc,x,hide,hidesql,ob,reset,v,rs,d,u,tResd,recsFound,recList,lastx,where,con
Call prepMasterRs(conMaster,rs)
Call openEnigma(con)
sort=Request("sort")
hide=Request("hide")
d=Request("d")
u=getBool("u")

If d="" Then d=Session("snap")
If d="" Or Not isDate(d) Then d=Date
d=MSdate(d)
'tResd=resignation date for multi-update
tResd=getMSdef("tResd","")
If tResd="" And Not getBool("clear") Then tResd=Session("tResd")
Session("tResd")=tResd

If hide="" Then hide=Session("hide")
hidesql=" AND (isnull(addDate) or lowerDate(addDate,addAcc)<='"&d&"')"
If hide="Y" Then hidesql=hidesql&" AND (isnull(RemDate) or upperDate(RemDate,RemAcc)>'"&d&"' or RemDate='1000-01-01')" Else hide="N"
If u then hidesql=hidesql&" AND (isNull(RemDate) or RemDate<>'1000-01-01')"
Session("hide")=hide

ready=True

firm=getLng("firm",0)
adviser=getLng("adviser",0)
reset=getBool("reset")
sc=getLng("sc",0)
If sc>0 Then
	firm=SCorg(sc)
	adviser=Session("adviser")
ElseIf firm>0 Then
	If Not reset Then adviser=Session("adviser")
ElseIf adviser>0 Then
	If Not reset Then firm=Session("firm")
End If

submit=Request("submitAdv")
If submit="Update" or submit="Add record" Then
	'validate inputs
	role=CLng(Request("role"))
	addDate=getMSdef("addDate","")
	addAcc=getInt("addAcc",Null)
	addDate=midDate(addDate,addAcc)
	If addDate="" Then addAcc=Null	
	If CBool(con.Execute("SELECT oneTime FROM roles WHERE roleID="&role).Fields(0)) Then
		remDate=""
	Else
		remDate=getMSdef("remDate","")
		remAcc=getInt("remAcc",Null)
		remDate=midDate(remDate,remAcc)
	End If
	If remDate="" Then remAcc=Null
	If Not ApptBeforeRes(AddDate,RemDate,AddAcc,RemAcc) Then
		hint=hint&"Removal date cannot be before appointment date. "
		ready=False
	ElseIf submit="Add record" Then
		'capture the values for future use
		Session("addDate")=addDate
		Session("addAcc")=addAcc
		Session("remDate")=remDate
		Session("remAcc")=remAcc
		Session("role")=role	
	End If
End If

If submit="Update selected records" Then
	recList=Request("upd")
	If getBool("clear") Then tResd=""
	If recList>"" Then
		where="apptBeforeRes(addDate,"&sqv(tResd)&",addAcc,NULL) AND ID IN("&recList&")"
		rs.Open "SELECT ID FROM adviserships WHERE NOT "&where,conMaster
		mhint=IIF(rs.EOF,"All selected records updated. ","Could not update record(s) "&Join(GetRow(rs),",")&" because "&_
			"resignation date is before appointment date. Any other selected records where updated. ")
		rs.Close
		conMaster.Execute "UPDATE adviserships" & setSql("remDate,remAcc",Array(tResd,Null))&where
	Else
		mhint=mhint&"No records were selected for multi-update. "
	End If
End If
ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT * FROM adviserships WHERE ID="&ID,conMaster
	If rs.EOF Then
		hint=hint&"No record found. "
		ID=0
	Else
		firm=CLng(rs("company"))
		adviser=CLng(rs("adviser"))
		If submit="CONFIRM DELETE" Then
			conMaster.Execute "DELETE FROM adviserships WHERE ID="&ID
			hint=hint&"Record with ID "&ID&" deleted. "
			ID=0
		ElseIf submit="Update" Then
			If ready Then
				conMaster.Execute "UPDATE adviserships" & setsql("role,addDate,addAcc,remDate,remAcc",Array(role,addDate,addAcc,remDate,remAcc)) & "ID="&ID
				hint=hint&"Record with ID "&ID&" updated. "
			End If
		Else
			If submit="Delete" Then	hint=hint&"Are you sure you want to delete this record? "
			'not updating, so fetch DB values
			AddDate=MSdate(rs("AddDate"))
			AddAcc=IfNull(rs("AddAcc"),0)
			RemDate=MSdate(rs("RemDate"))
			RemAcc=IFNull(rs("RemAcc"),0)
			role=rs("role")
		End If
	End If
	rs.Close
End If
If ID=0 Then
	If firm=0 Then firm=getLng("firm",0)
	If adviser=0 Then adviser=getLng("adviser",0)
	If submit<>"Add record" Then
		'fetch stored values if any
		role=Session("role")
		addDate=Session("addDate")
		addAcc=Session("addAcc")
		remDate=Session("remDate")
		remAcc=Session("remAcc")
	ElseIf submit="Add record" And ready And firm>0 And adviser>0 Then
		conMaster.Execute "INSERT INTO adviserships(company,adviser,role,AddDate,AddAcc,RemDate,RemAcc)" & valsql(Array(firm,adviser,role,addDate,addAcc,remDate,remAcc))
		ID=lastID(conMaster)
		hint=hint&"Record added with ID "&ID&". "
	End If
End If

sort=Request("sort")
If firm=0 or adviser=0 Then
	Select Case sort
		Case "namup" ob="name1,addDate"
		Case "namdn" ob="name1 DESC,addDate"
		Case "rolup" ob="roleShort,name1,addDate"
		Case "roldn" ob="roleShort DESC,name1,addDate"
		Case "addup" ob="addDate,name1"
		Case "adddn" ob="addDate DESC,name1"
		Case "remup" ob="remDate,name1"
		Case "remdn" ob="remDate DESC,name1"
		Case Else
			ob="name1,addDate"
			sort="namup"
	End Select
Else
		'both firm and adviser are selected, so no names shown
	Select Case sort
		Case "rolup" ob="roleShort,addDate"
		Case "roldn" ob="roleShort DESC,addDate"
		Case "addup" ob="addDate,roleShort"
		Case "adddn" ob="addDate DESC,roleShort"
		Case "remup" ob="remDate,roleShort"
		Case "remdn" ob="remDate DESC,roleShort"
		Case Else
			ob="addDate,roleShort"
			sort="addup"
	End Select
End If
ob=" ORDER BY oneTime,"&ob
URL=Request.ServerVariables("URL")&"?ID="&ID&"&amp;firm="&firm&"&amp;adviser="&adviser
'fetch names of firm and adviser
If firm>0 Then firmName=fNameOrg(firm)
If adviser>0 Then advName=fNameOrg(adviser)

'store variables in case we divert to find firm/adviser
Session("firm")=firm
Session("adviser")=adviser
Session("snap")=d
title="Add, edit or delete an adviser of a firm"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If firm>0 Then%>
	<h2><%=firmName%></h2>
	<%Call orgBar(firm,1)
End If
If adviser>0 Then%>
	<h2><%=advName%></h2>
	<%Call orgBar(adviser,2)
End If%>
<%If firm=0 And adviser=0 Then%>
	<h2><%=title%></h2>
<%End If%>
<%If firm=0 or adviser=0 Then%>
	<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<%End If%>
<h3>Search</h3>
<table class="txtable">
	<tr>
		<th>Select</th>
		<th>Name</th>
	</tr>
	<tr>
		<td><a href="searchorgs.asp?tv=firm">Firm</a></td>
		<td>
			<%If firm>0 Then%>
				<a href="advisership.asp?reset=1&amp;firm=<%=firm%>"><%=firmName%></a>
			<%End If%>
		</td>
	</tr>
	<tr>
		<td><a href="searchadvisers.asp?tv=adviser">Adviser</a></td>
		<td>
			<%If adviser>0 Then%>
				<a href="advisership.asp?reset=1&amp;adviser=<%=adviser%>"><%=advName%></a>
			<%End If%>
		</td>
	</tr>
</table>
<form method="post" action="advisership.asp">
	<input type="hidden" name="adviser" value="<%=adviser%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<form method="post" action="advisership.asp">
	<input type="hidden" name="adviser" value="<%=adviser%>">
	<input type="hidden" name="firm" value="<%=firm%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" id="d" name="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="checkbox" id="u" name="u" value="1" <%=checked(u)%> onchange="this.form.submit()"> exclude unknown removal dates
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='<%=MSdate(Date)%>';document.getElementById('u').checked=false;">
	</div>
	<div class="clear"></div>
</form>

<%If adviser>0 Or firm>0 Then
	If adviser=0 Then v="adviser" Else v="firm"
	'display table of existing adviserships
	s="ID,a.role roleID,r.role roleShort,roleLong,oneTime,AddDate,RemDate,da1.accText aa,da2.accText ra "&_
		"FROM adviserships a JOIN roles r ON a.role=r.roleID "&_
		"LEFT JOIN dateaccuracy da1 ON AddAcc=da1.AccID LEFT JOIN dateaccuracy da2 ON RemAcc=da2.AccID "
	If adviser=0 Then
		'only firm is specified
		s="SELECT adviser,name1,"&s&"JOIN organisations o ON a.adviser=o.personID "&_
			"WHERE company="&firm&hidesql&ob
	ElseIf firm=0 Then
		'only adviser is specified
		s="SELECT company,name1,"&s&"JOIN organisations o ON a.company=o.personID "&_
			"WHERE adviser="&adviser&hidesql&ob
	Else
		'adviser and firm are specified
		s="SELECT "&s&"WHERE company="&firm&" AND adviser="&adviser&ob
	End If
	rs.Open s,conMaster
	If Not rs.EOF Then
		x=rs("oneTime")
		lastx=x
		Do Until rs.EOF
			If x Then%>
				<h3>One-time roles</h3>
			<%Else%>
				<h3>Regular roles</h3>
				<form method="post">
					<input type="hidden" name="firm" value="<%=firm%>">
					<input type="hidden" name="adviser" value="<%=adviser%>">
			<%End If%>
			<table class="opltable">
				<tr>
					<th>Record ID</th>
					<%If firm=0 Then%><th><%SL "Firm","namup","namdn"%></th><%End If%>
					<%If adviser=0 Then%><th><%SL "Adviser","namup","namdn"%></th><%End If%>				
					<th><%SL "Role","rolup","roldn"%></th>
					<th><%SL "AddDate","addup","adddn"%></th>
					<th>AddAcc</th>
					<%If Not x Then%>
						<th><%SL "RemDate","remup","remdn"%></th>
						<th>RemAcc</th>
					<%End If%>
					<th>Select</th>
					<th>Delete</th>
					<th>Make new</th>
					<%If Not x Then%><th>Multi-<br>update</th><%End If%>
				</tr>
				<%lastPerson=0
				Do until rs.EOF
					If adviser=0 Then
						personID=rs("adviser")
					ElseIf firm=0 Then
						personID=rs("company")
					End If
					If adviser=0 Or firm=0 Then samePerson=(personID=lastPerson)					
					%>
					<tr <%If Not samePerson Then%> class="total" <%End If%>>
						<td><%=rs("ID")%></td>
						<%If (firm=0 Or adviser=0) Then%>
							<td><%If Not samePerson Then%><a href="advisership.asp?reset=1&amp;<%=v&"="&personID%>"><%=rs("name1")%></a><%End If%></td>
						<%End If%>
						<td><span class="info"><%=rs("roleShort")%><span><%=rs("roleLong")%></span></span></td>
						<td><%=MSdate(rs("AddDate"))%></td>
						<td><%=rs("aa")%></td>
						<%If Not x Then%>
							<td><%=MSdate(rs("RemDate"))%></td>
							<td><%=rs("ra")%></td>
						<%End If%>
						<td><a href='advisership.asp?ID=<%=rs("ID")%>'>Select</a></td>
						<td><a href='advisership.asp?ID=<%=rs("ID")%>&amp;submitAdv=Delete'>Delete</a></td>
						<td>
							<%If adviser=0 Then%>
								<a href="advisership.asp?firm=<%=firm%>&amp;adviser=<%=personID%>">Make new</a>
							<%ElseIf firm=0 Then%>
								<a href="advisership.asp?firm=<%=personID%>&amp;adviser=<%=adviser%>">Make new</a>
							<%Else%>
								<a href="advisership.asp?firm=<%=firm%>&amp;adviser=<%=adviser%>">Make new</a>
							<%End If%>
						</td>
						<%If Not x Then%>
							<td>
								<input type="checkbox" name="upd" value="<%=rs("ID")%>">
							</td>
						<%End If%>
					</tr>
					<%
					If firm=0 or adviser=0 Then lastPerson=personID
					rs.MoveNext
					If Not rs.EOF Then
						x=rs("oneTime")
						If x<>lastx Then Exit Do
						lastx=x
					End If
				Loop%>
			</table>
			<%If Not lastx Then%>
				<div class="inputs">
					<label for="tResd">Multi-update ResDate: </label><input type="date" id="tResd" name="tResd" value="<%=tResd%>">
					<label for="clear">Clear date </label><input type="checkbox" id="clear" name="clear" value="1">
					<input type="submit" name="submitAdv" value="Update selected records">
				</div>
				<div class="clear"></div>
				</form>
			<%End If
			lastx=x
		Loop%>
		<p><b><%=mhint%></b></p>
	<%End If
End If
If ID>0 Or (firm>0 And adviser>0) Then
	'produce an input form to edit or add a record
	If ID>0 Then%>
		<h3>Update or delete existing record</h3>
		<p><b>Record ID:<%=ID%></b></p>
	<%Else%>
		<h3>Add a new record</h3>	
	<%End If%>
	<form method="post" action="advisership.asp">
		<table class="txtable" >
			<tr>
				<th>Role</th>
				<th>Appointed</th>
				<th>AddAcc</th>
				<th>Resigned</th>
				<th>RemAcc</th>
			</tr>
			<tr>
				<td><%=arrSelect("role",role,con.Execute("SELECT roleID,role FROM roles ORDER BY role").GetRows,False)%></td>
				<td><input type="date" name="AddDate" value="<%=AddDate%>"></td>
				<td><%=makeSelect("AddAcc",AddAcc,",,2,M,1,Y",False)%></td>
				<td><input type="date" name="RemDate" value="<%=RemDate%>"></td>
				<td><%=makeSelect("RemAcc",RemAcc,",,2,M,1,Y,3,U",False)%></td>
			</tr>
		</table>
		<br>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitAdv" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitAdv" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitAdv" value="Cancel">
			<%Else%>
				<input type="submit" name="submitAdv" value="Delete">
			<%End If
		Else%>
			<input type="hidden" name="firm" value="<%=firm%>">
			<input type="hidden" name="adviser" value="<%=adviser%>">
			<input type="submit" name="submitAdv" value="Add record">
		<%End If%>
		<input type="button" value="Clear form" onclick="window.location.href='advisership.asp'">
	</form>
<%End If
Call closeConRs(conMaster,rs)
Call closeCon(con)%>
<p><b><%=hint%></b></p>
<hr>
<h3>Rules</h3>
<ol>
	<li>The date of removal is the first day on which an adviser does NOT hold the role.</li>
	<li>For data in annual reports, the addition or removal date is the date of the directors' report, usually stated on 
	the last page of that report or the date of the auditors' report, not the filing date.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
