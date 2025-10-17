<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim roleID,roleName,conRole,rs,myID,myRank,e,targID,targName,targRank,live,userRank,mailDB,title,blnEditor,submit,con,_
	blnExist,sort,URL,ob,hint,conAuto
myID=Session("ID")
roleID=getInt("r",0)
Call openEnigma(con)
If roleID=0 Then
	'no role specified. pick the first role for which the user is an admin
	roleID=CInt(con.Execute("SELECT IFNULL((SELECT roleID FROM wsprivs WHERE uRank>=128 AND userID="&myID&" LIMIT 1),0)").Fields(0))
	If roleID=0 Then
		'user is not an admin for any role so bounce them
		call closeCon(con)
		Response.Redirect "default.asp"
	End If
Else
	roleName=con.Execute("SELECT IFNULL((SELECT MSuser FROM wsprivs p JOIN wsroles r ON p.roleID=r.ID WHERE roleID="&roleID&" AND uRank>=128 AND userID="&myID&"),'')").Fields(0)
	If roleName="" Then
		'user has specified an invalid role or one for which he isn't admin, probably hacking
		call closeCon(con)
		Response.Redirect "default.asp"
	End If
End If
Call closeCon(con)
'user is an admin in this role, so proceed
Call prepRole(roleID,conRole,rs,myID,myRank)
e=Request("e")
targID=getLng("u",0)
submit=Request("submitUA")
Call openMailrs(mailDB,rs)
If e>"" Or targID>0 Then
	rs.Open "SELECT ID,mailAddr,name FROM livelist WHERE "&IIF(e>"",IIF(Instr(e,"@")>0,"mailaddr","name")&"='"&apos(e)&"'","ID="&targID),mailDB
	If rs.EOF Then
		hint=hint&"User not found. "
		targID=0
	Else
		e=rs("mailAddr")
		targID=CLng(rs("ID"))
		targName=rs("name")
		If isNull(targName) Then
			hint=hint&"The user must pick a username before they can become an editor. "
			blnEditor=False
		Else
			blnEditor=CBool(mailDB.Execute("SELECT EXISTS(SELECT * FROM enigma.wsprivs WHERE userID="&targID&")").Fields(0))
		End If
	End If
	rs.Close
End If
If targName>"" Then
	Call prepAuto(conAuto)
	If submit="Add" Or submit="Update" Then
		If Not blnEditor Then
			'user was not previously an editor in any role, so add them to enigma.users
			conAuto.Execute "INSERT IGNORE INTO users(ID,name)"&valsql(Array(targID,targName))
			blnEditor=True
		End If
		'prevent demotion of someone who outranks the admin
		If CInt(conAuto.Execute("SELECT IFNULL((SELECT uRank FROM wsprivs WHERE roleID="&roleID&" AND userID="&targID&"),0)").Fields(0))>=myRank Then
			hint=hint&"You do not outrank this editor and cannot change their rank or active status. "
		ElseIf targID=myID Then
			hint=hint&"You cannot edit your own rank or status. "
		Else
			live=getBool("live")
			targRank=Min(getIntRange("targRank",1,0,254),myRank-1) 'admin cannot promote to his rank or higher
			If targRank=0 Then live=False 'active users must have rank 1 or higher
			conAuto.Execute "REPLACE INTO wsprivs(userID,roleID,uRank,live)"&valsql(Array(targID,roleID,targRank,live))
			blnExist=True
			hint=hint&"Role "&roleName&" granted to "&targName&" with rank "&targRank&" and set to "&IIF(Not live,"in","")&"active. "
		End If
	ElseIf blnEditor Then
		'could be fetching a record to edit
		If targID=myID Then
			hint=hint&"You cannot edit your own rank or status. "
		Else
			rs.Open "SELECT uRank,live FROM wsprivs WHERE userID="&targID&" AND roleID="&roleID,conAuto
			If Not rs.EOF Then
				blnExist=True
				targRank=rs("uRank")
				live=CBool(rs("live"))
			End If
			rs.Close
		End If
	End If
	Call closeCon(conAuto)
End If
Call closeCon(mailDB)
sort=Request("sort")
Select Case sort
	Case "livdn" ob="live DESC,uRank DESC,name"
	Case "livup" ob="live,uRank,name"
	Case "rnkdn" ob="uRank DESC,name"
	Case "rnkup" ob="uRank,name"
	Case "namdn" ob="name DESC"
	Case "namup" ob="name"
	Case Else
		sort="livdn"
		ob="live DESC,uRank DESC,name"
End Select
title="User administration"
URL=Request.ServerVariables("URL")&"?r="&roleID%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<form method="post" action="useradmin.asp">
	<div class="inputs">
		Role: <%=arrSelect("r",roleID,conRole.Execute("SELECT roleID,MSuser FROM wsprivs p JOIN wsroles r ON p.roleID=r.ID WHERE uRank>=128 AND userID="&myID).GetRows,True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<hr>
<h3>Add a new editor from the mailing list</h3>
<form method="post" action="useradmin.asp">
	<input type="hidden" name="r" value="<%=roleID%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Username or e-mail address
		<input type="text" name="e" value="<%=e%>">
		<input type="submit" name="submitUA" value="Search">
	</div>
	<div class="clear"></div>
</form>
<hr>
<%If targID>0 And targID<>myID And myRank>targRank And targName>"" Then
	'a user was selected%>
	<h3>Add or update editor</h3>
	<form method="post" action="useradmin.asp">
		<input type="hidden" name="r" value="<%=roleID%>">
		<input type="hidden" name="u" value="<%=targID%>">
		<table class="txtable">
			<tr>
				<th>User ID</th>
				<th>Username</th>
				<th>Rank</th>
				<th>Live</th>
			</tr>
			<tr>
				<td><%=targID%></td>
				<td><%=targName%></td>
				<td><input type="number" step="1" min="0" max="<%=myRank-1%>" name="targRank" value="<%=targRank%>"></td>
				<td class="center"><input type="checkbox" name="live" value="1" <%=checked(live)%>></td>
			</tr>
		</table>
		<%If blnExist Then%>
			<input type="submit" name="submitUA" value="Update">
		<%Else%>
			<input type="submit" name="submitUA" value="Add">
		<%End If%>	
	</form>
<%End If%>
<%rs.Open "SELECT userID,name,uRank,live from wsprivs p JOIN users u ON p.userID=u.ID where roleID="&roleID&" ORDER BY "&ob,conRole
If rs.EOF Then%>
	<p>No users with that role. </p>
<%Else%>
	<h3>Editors for role: <%=roleName%></h3>
	<table class="txtable">
		<tr>
			<th>User ID</th>
			<th><%SL "Username","namup","namdn"%></th>
			<th><%SL "Rank","rnkdn","rnkup"%></th>
			<th><%SL "live","livdn","livup"%></th>
			<th></th>
		</tr>
		<%Do Until rs.EOF
			userRank=CInt(rs("uRank"))%>
			<tr>
				<td><%=rs("userID")%></td>
				<td><%=rs("name")%></td>
				<td><%=rs("uRank")%></td>
				<td><%=tick(rs("live"))%></td>
				<td>
					<%If myRank>userRank Then%>
					<a href="useradmin.asp?r=<%=roleID%>&amp;u=<%=rs("userID")%>">Edit</a>
					<%End If%>
				</td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call closeConRs(conRole,rs)%>
<p><b><%=hint%></b></p>
<hr>
<h3>Rules</h3>
<ol>
<li>Rank determines editing rights. An editor can only overwrite another editor's entries in the database if they outrank them. 
The lowest live rank is 1.</li>
	<li>To prevent an editor making any further changes, untick "live" and update. If you trust their previous 
	entries, then don't downgrade their ranking, otherwise users with higher ranking could overwrite them. 
	Alternatively, if you think their entries are unreliable, downgrade them to 0.</li>
	<li>You can only set an editor's rank to below your own rank. So if your rank is 128, you can set ranks up to 127.</li>
	<li>To be an admin for a role, your rank must be 128 or higher. This page will then be available to you. If you have 
	a rank above 128, then you can promote users to admins with ranks 128 or higher, and they can then be admins for 
	editors 
	below their rank.</li>
	<li>You cannot downgrade your own rank. Only an admin with higher rank can downgrade you.</li>
	<li>To add an editor to a role, they must first open a free user account on Webb-site with an email adddress and 
	then choose a username. When editing the database, we only display usernames. A user can change their username or 
	email address but their internal user ID will be permanent, so all their previous entries will show the current 
	username.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
