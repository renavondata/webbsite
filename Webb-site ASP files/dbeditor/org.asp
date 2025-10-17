<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Function canDel(p,userID)
	Dim uRank 'internal version for testing rank on issue and sholders tables
	canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM stocklistings JOIN issue ON issueID=ID1 WHERE issuer="&p&")").Fields(0))
	If Not canDel Then
		hint=hint&"This organisation has listed securities and cannot be deleted. "
	Else
		uRank=conRole.Execute("SELECT maxRankLive('issue',"&userID&")").Fields(0)
		If uRank=0 Then
			canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM issue WHERE issuer="&p&")").Fields(0))
			If Not canDel Then hint=hint&"This organisation has issues and you don't have write privileges on issues, so you cannot delete it. "
		ElseIf uRank<255 Then
			canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT *,maxRank('issue',userID)uRank FROM issue WHERE "&_
				"issuer="&p&" AND userID<>"&userID&" HAVING uRank>="&uRank&")").Fields(0))
			If Not canDel Then hint=hint&"You didn't create or don't outrank the editor of an issue by this organisation, so you cannot delete it. "
		End If
		If canDel Then
			uRank=conRole.Execute("SELECT maxRankLive('sholdings',"&userID&")").Fields(0)
			If uRank=0 Then
				canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM sholdings WHERE holderID="&p&")").Fields(0))
				If Not canDel Then
					hint=hint&"This organisation has holdings and you don't have write privileges on holdings, so you cannot delete it. "
				Else
					canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM sholdings s JOIN issue i ON s.issueID=i.ID1 WHERE issuer="&p&")").Fields(0))
					If Not canDel Then hint=hint&"This organisation has issues with holders and you don't have write privileges on holders, so you cannot delete it. "
				End If
			ElseIf uRank<255 Then
				canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT *,maxRank('sholdings',userID)uRank FROM sholdings s WHERE holderID="&p&_
					" AND userID<>"&userID&" HAVING uRank>="&uRank&")").Fields(0))
				If Not canDel Then
					hint=hint&"You didn't create or don't outrank the editor of a holding by this organisation, so you cannot delete it. "
				Else
					canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT *,maxRank('sholdings',s.userID)uRank FROM sholdings s "&_
						"JOIN issue i ON s.issueID=i.ID1 WHERE issuer="&p&" AND s.userID<>"&userID&" HAVING uRank>="&uRank&")").Fields(0))
					If Not canDel Then hint=hint&"You didn't create or don't outrank the editor of a holding of securities issued by this organisation, "&_
						"so you cannot delete it. "
				End If
			End If
		End If
	End If
End Function

Sub nameRes(ByRef p,s,incDate,disDate,dom)
	'distinguish a new org (or one with an edited name) from any existing one with same name
	'this is a simplified version of the routine in Access, not using incID and not using recursion for multiple extensions
	's is the target name
	'p is the personID whose name is being edited, or 0 if a new org
	'incDate, disDate are strings
	'dom is integer (Null if none)
	Dim p2,p2disDate,p2incDate,p2Dom,p2Name,rs,conAuto
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT * FROM organisations WHERE name1="&apq(s)&" AND personID<>"&p,conRole
	If Not rs.EOF Then
		'found clash
		p2=rs("personID")
		p2incDate=MSdate(rs("incDate"))
		p2disDate=MSdate(rs("disDate"))
		p2Dom=rs("domicile")
		p2Name=s
		'first try using disDate
		If p2disDate<>disDate Then
			'at least one of them is dissolved, so distinguish that way
			If p2disDate>"" Then p2Name=p2Name&" (d"&p2disDate&")"
			If disDate>"" Then	s=s&" (d"&disDate&")"
		ElseIf p2Dom<>dom Or (isNull(p2Dom) Xor isNull(dom)) Then
			If p2Dom>0 Then
				p2Name=p2Name & " (" & conRole.Execute("SELECT A2 FROM domiciles WHERE ID=" & p2Dom).Fields(0) & ")"
			End If
			If dom>0 Then
				s=s & " (" & conRole.Execute("SELECT A2 FROM domiciles WHERE ID=" & dom).Fields(0) & ")"
			End If
		ElseIf p2incDate<>incDate Then
			If p2incDate>"" Then p2Name=p2Name&" (b"&p2incDate&")"
			If incDate>"" Then s=s&" ("&incDate&")"
		Else p=p2
			'unable to distinguish, so return the personID of the matching org
		End If
		If p2Name<>rs("name1") Then
			'a suffix will be added to the name of p2, if it doesn't cause another clash.
			rs.Close
			If Not CBool(conRole.Execute("SELECT EXISTS(SELECT * FROM organisations WHERE name1="&apq(p2Name)&")").Fields(0)) Then
				'use auto to avoid change of user in record
				Call prepAuto(conAuto)
				conAuto.Execute "UPDATE organisations SET name1="&apq(p2Name)&" WHERE personID="&p2
				Call closeCon(conAuto)
			End If
			'check if modified proposed name is in DB, and if so, return that org's personID (which may be p)
			rs.Open "SELECT * FROM organisations WHERE name1="&apq(s),conRole
			If Not rs.EOF Then p=rs("personID")
		End if
	End If
	rs.Close
	Set rs=Nothing
End Sub

'MAIN PROC
Dim conRole,rs,userID,uRank,referer,tv,sql,p,en,cn,t,dom,hint,ready,submit,incDate,disDate,incID,edit,title,p2,x,y,targp,addON,olden,oldcn
Const roleID=4 'orgs
Call prepRole(roleID,conRole,rs,userID,uRank)
Call getReferer(referer,tv)
ready=True 'data validation check
edit=False 'whether the existing org can be edited (depends on user status, domicile & orgType etc)
title="Add an organisation"
submit=Request("submitOrg")
p=getLng("p",0)
p2=0
If submit="Add" Or submit="Update" Or Request("submitSrch")="Add new organisation" Then
	en=remSpace(Request("en"))
	If lcase(left(en,4))="the " Then en=Mid(en,5)&" (" & Left(en,3) & ")"
	cn=remSpace(Request("cn"))
	t=getInt("t",Null)
	incDate=MSdate(Request("incd"))
	disDate=MSdate(Request("disd"))
	incID=Trim(Request("incID"))
	dom=getInt("dom",Null)
	addON=getBool("addON")
	ready=domchk(dom,t) 'protect auto-maintained orgs, disallow additions
	If Not ready Then hint=hint&"Read the Rules. You cannot add entities incorporated in HK, England & Wales, Scotland, Northern Ireland or UK, as these are auto-maintained. "
End If
If p>0 Then
	'check whether we can edit
	rs.Open "SELECT *,maxRank('organisations',userID)uRank,CAST(cName AS NCHAR)cn FROM organisations WHERE personID="&p,conRole
	If rs.EOF Then
		hint=hint&"No such organisation. "
		p=0
	Else
		title="Edit organisation"
		If Not domchk(rs("domicile"),rs("orgtype")) Then
			'covered in the Rules below
		ElseIf Not rankingRs(rs,uRank) Then
			hint=hint&"You did not create this person and don't outrank the user who did, so you cannot edit it. "
		ElseIf Not isNull(rs("SFCID")) Then
			hint=hint&"You cannot edit or delete a company which has an SFC license history. "
		ElseIf (submit="Delete" or submit="CONFIRM DELETE") Then
			If canDel(p,userID) Then
				If submit="CONFIRM DELETE" Then
					sql="DELETE FROM persons WHERE personID="&p
					conRole.Execute sql
					hint=hint&"The organisation named '"&rs("name1")&"' with ID "&p&" has been deleted. "
					p=0
					edit=True
					title="Add an organisation"
				Else
					title="Delete an organisation"
					edit=True
					hint=hint&"Are you sure that you want to delete this organisation? "
				End If
			Else
				edit=True
				submit=""
			End If
		Else
			'the user can edit or delete this person
			edit=True
		End If
		If p>0 Then
			If submit="Update" Then
				'org was not deleted above, so get old names in case of name change
				olden=cleanName(rs("name1"))
				oldcn=cleanName(rs("cn"))
			End If
			If submit<>"Update" Or Not Edit Then
				'either editing was blocked or no update sent, so load values
				en=rs("name1")
				cn=rs("cn")
				incDate=MSdate(rs("incDate"))
				incID=rs("incID")
				dom=rs("domicile")
				t=rs("orgType")
			End If
			If submit<>"Update" Then
				'could still be changing disDate even if editing the rest is blocked
				disDate=MSdate(rs("disDate"))
			End If
		End If
	End If
	rs.Close
Else
	p=0
	edit=True
End If

'validate incID for uniqueness and length. An incID must have a domicile
If Len(incID)>11 Then
	hint=hint&"The incorporation ID exceeds 11 characters - please check it. "
	ready=False
ElseIf isNull(dom) And incID>"" Then
	hint=hint&"You can't specify an incorporation ID without a domicile. "
	ready=False
ElseIf dom>0 Then
	p2=CLng(conRole.Execute("SELECT IFNULL((SELECT personID FROM organisations WHERE domicile="&dom&" AND incID="&apq(incID)&" AND personID<>"&p&"),0)").Fields(0))
	If p2>0 Then
		hint=hint&"An organisation with that domicile and incorporation ID already exists. "
		ready=False
	End If
End If

'validate dates
If incDate>disDate And disDate>"" Then
	hint=hint&"The organisation cannot be formed after it was dissolved. "
	ready=False
End If

'validate English name
If len(en)<4 And en>"" Then
	hint=hint&"The English name must be at least 4 characters. "
	ready=False
End If
If ready Then
	If submit="Add" Then
		p=0
		Call nameRes(p,en,incDate,disDate,dom)
		If p=0 Then
			'any conflict was resolved, so we can add a new org with the resolved name
			conRole.Execute "INSERT INTO persons() VALUES()"
			p=lastID(conRole)
			sql="INSERT INTO organisations (userID,personID,Name1,cName,domicile,orgType,incDate,disDate,incID) "&valsql(Array(userID,p,en,cn,dom,t,incDate,disDate,incID))
			conRole.Execute sql
			hint=hint&"The organisation was added. "
			edit=True
			title="Edit an organisation"
		Else
			hint=hint&"A matching organisation exists in the database. "
			p2=p
			p=0
		End If
	ElseIf edit And submit="Update" Then
		targp=p
		Call nameRes(p,en,incDate,disDate,dom)
		If p=targp Then
			'No conflict or conflict resolved, so update an existing person
			sql="UPDATE organisations" &setsql("userID,name1,cName,orgType,domicile,incDate,disDate,incID",Array(userID,en,cn,t,dom,incDate,disDate,incID))&"personID="&p
			conRole.Execute sql
			hint=hint&"The organisation has been updated. "
			If addON And (cleanName(en)<>olden or cleanName(cn)<>oldcn) Then
				'record old names
				sql="INSERT IGNORE INTO namechanges(userID,personID,oldName,oldcName)" & valsql(Array(userID,p,en,cn))
				conRole.Execute sql
				hint=hint&"The old names were added to name changes. <a href='oldnames.asp?ID="& lastID(conRole) &"'>Click here</a> to add the change-date if you know it. "
			End If
		Else
			hint=hint&"A name conflict could not be resolved. Check the other organisation."
			p2=p
			p=targp
		End If
	ElseIf submit="Update" Then
		'limit update to dissolution date which may have changed or company may have been reinstated
		sql="UPDATE organisations" & setsql("userID,disDate",Array(userID,disDate))&"personID="&p
		conRole.Execute sql
		hint=hint&"The dissolution date was updated. "
	End If
End If%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=Trim(en&" "&cn)%></h2>
	<%Call orgBar(p,5)%>
<%End If%>
<h3><%=title%></h3>
<form method="post" name="myform" action="org.asp">
	<%'the form fields remain open unless displaying a protected org%>
	<table class="txtable">
		<tr>
			<td>Name</td>
			<td><%If edit Then%>
				<input type="text" name="en" size="50" value="<%=en%>">
			<%Else%>
				<%=en%>
			<%End If%></td>
		</tr>
		<tr>
			<td>Chinese name</td>
			<td><%If edit Then%>
				<input type="text" name="cn" size="50" value="<%=cn%>">
			<%Else%>
				<%=cn%>
			<%End If%></td>
		</tr>
		<tr>
			<td>Domicile</td>
			<td><%If edit Then%>
				<%=arrSelectZ("dom",dom,conRole.Execute("SELECT ID,friendly FROM domiciles WHERE ID<>29 ORDER BY friendly").GetRows,False,True,"","")%>
			<%ElseIf dom>0 Then%>
				<%=conRole.Execute("SELECT friendly FROM domiciles WHERE ID="&dom).Fields(0)%>
			<%End If%></td>
		</tr>
		<tr>
			<td>Organisation type</td>
			<td><%If edit Then%>
				<%=arrSelectZ("t",t,conRole.Execute("SELECT orgType,typeName FROM orgtypes ORDER BY typeName").GetRows,False,True,"","")%>
			<%ElseIf t>0 Then%>
				<%=conRole.Execute("SELECT typeName FROM orgtypes WHERE orgType="&t).Fields(0)%>
			<%End If%></td>
		</tr>
		<tr>
			<td>Formation date</td>
			<td><%If edit Then%>
				<input type="date" name="incd" value="<%=incDate%>">
			<%Else%>
				<%=incDate%>
			<%End If%></td>
		</tr>
		<tr><%'can always edit this, even for protected dom-orgType%>
			<td>Dissolution date</td>
			<td><input type="date" name="disd" value="<%=MSdate(disDate)%>"></td>
		</tr>
		<tr>
			<td>Incorporation ID</td>
			<td><%If edit Then%>
				<input type="text" name="incID" maxlength="14" value="<%=incID%>">
			<%Else%>
				<%=incID%>
			<%End If%></td>
		</tr>
		<%If edit And p>0 Then%>
			<tr>
				<td>Add old names to name changes</td>
				<td><input type="checkbox" name="addON" value="1" <%=checked(addON)%>></td>
			</tr>
		<%End If%>
	</table>
	<%If Hint<>"" Then%>
		<p><b><%=Hint%></b></p>
	<%End If
	If p>0 Then%>
		<p><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>">View the organisation in Webb-site Who's Who</a></p>
	<%End If
	If p2>0 Then%>
		<p><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p2%>">View the other organisation in Webb-site Who's Who</a></p>
	<%End If%>
	<p>
	<%If p=0 Then%>
		<input type="submit" name="submitOrg" value="Add">
	<%ElseIf edit Then%>
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitOrg" value="Update">
		<%If submit="Delete" And edit Then%>
			<input type="submit" name="submitOrg" style="color:red" value="CONFIRM DELETE">
			<input type="submit" name="submitOrg" value="Cancel">			
		<%ElseIf edit Then%>
			<input type="submit" name="submitOrg" value="Delete">
		<%End If
	End If%>
</form>
<%If p2>0 Then%>
	<form method="post" action="org.asp">
		<input type="hidden" name="p" value="<%=p2%>">
		<input type="submit" name="submitOrg" value="Edit existing org">
	</form>
<%End If%>

<form method="post" action="org.asp"><input type="submit" value="Clear form"></form>

<%If referer>"" And p>0 Then%>
	<form method="post" action="<%=referer%>">
		<input type="hidden" name="<%=tv%>" value="<%=p%>">
		<input type="submit" name="submitOrg" value="Use this organisation">
	</form>
<%End If
Call closeConRs(conRole,rs)%>
<hr>
<h3>Rules</h3>
<ol>
<li>You cannot add, edit or delete companies incorporated in HK, England &amp; 
Wales, Scotland, Northern Ireland or UK, as these are auto-maintained, except 
for dissolution dates.</li>
	<li>Always perform an "any match" search on the <a href="searchorgs.asp">
	search page</a> before adding new organisations. Otherwise subtle variations 
	such as a period (.), a space between two initials (A. B. rather than A.B.), 
	or "Ltd" instead of "Limited", may cause you to miss an existing entity.</li>
	<li>If you are adding or updating and a name-collision is found, then our 
	system silently tries to resolve the conflict, adding extensions to the 
	names of the new entity and/or the existing entity (such as their different 
	domicile, incorporation date or dissolution date). If it cannot resolve the 
	conflict, then it will display a link to the existing entity.</li>
	<li>Two entities can never have the same Incorporation ID in the same 
	domicile. This is Pauli's Exclusion Principle for companies.</li>
	<li>If you are American, be careful with dates. The date/month order in the 
	date-picker may depend on your system settings and choice of browser. 
	Internally our dates are all YYYY-MM-DD (the
	<a href="https://en.wikipedia.org/wiki/ISO_8601" target="_blank">ISO 8601</a> 
	standard).</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>