<%Option Explicit%>
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Call login%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Function nameCheck(n)
	'return boolean if name is OK
    Dim regEx
	nameCheck=False
    Set regEx = New RegExp
    regEx.Pattern = "^[\w\- ]*$"
    nameCheck = regEx.test(n)
End Function

Dim hint,mailDB,rs,title,ID,u,n,con,nameSet,active,submit,conAuto
ID=Session("ID")
u=Session("username")
nameSet=(u<>"")
title="Set or change your username and volunteer"
submit=Request("submitVol")
If submit="Volunteer" And nameSet Then
	n=u
	'volunteer button should only shows when not an editor already, or if he has no live status
	'if the editor exists but is not live then these queries won't restore his status.
	Call prepAuto(conAuto)
	'create the editor
	conAuto.Execute "INSERT IGNORE INTO users(ID,name)"&valsql(Array(ID,u))
	'set the Pay role
	conAuto.Execute "INSERT IGNORE INTO wsprivs(userID,roleID,uRank,live)"&valsql(Array(ID,1,1,True))
	Session("editor")=CBool(conAuto.Execute("SELECT EXISTS(SELECT * FROM enigma.wsprivs WHERE live AND userID="&ID&")").Fields(0))
	Call closecon(conAuto)
Else
	n=Trim(remSpace(Request("n")))
	If n="" Then
		n=u
	ElseIf n<>u Then
		If Len(n)<3 Then
			hint=hint&"Username must be at least 3 characters. "
		ElseIf Len(n)>15 Then
			hint="The name must be 15 characters or less. "
		ElseIf namecheck(n) Then
			Call openMailDB(mailDB)
			If mailDB.execute("SELECT EXISTS(SELECT * FROM livelist WHERE name='"&n&"') OR EXISTS(SELECT * FROM enigma.users WHERE name='"&n&"')").Fields(0) Then
				hint=hint&"Someone else has the username "&n&". Please pick another"
			Else
				mailDB.execute "UPDATE livelist SET name='"&n&"' WHERE ID="&ID
				Session("username")=n
				nameSet=True
				hint=hint&"Your username has been set to "&n&"."
				'update the username
				Call prepAuto(conAuto)
				conAuto.Execute("UPDATE users SET name='"&n&"' WHERE ID="&ID)
				Call closeCon(conAuto)
			End If
			Call closeCon(mailDB)
		Else
			hint=hint&"Username can only include A-Z, a-z, 0-9, space and hyphen"
		End If
	End If
End If
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(13)%>
<h2><%=title%></h2>
<%If Not nameSet Then%>
	<p><b>As David Webb steps back, the Webb-site database is moving to a crowd-sourced model in the hope of 
	continuing this system after his death. As our first project, please volunteer to contribute to the board-pay database!</b></p>
	<p>First choose a Username, which will only be shown to other editors on the editing pages.</p>
<%Else%>
	<p>Please enter your desired username, between 3 and 15 alphanumeric characters including single spaces. </p>
<%End If%>
<form method="post" action="username.asp">
	<div class="inputs">
		Username: <input type="text" name="n" size="15" value="<%=n%>">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If nameSet Then
	If Session("editor") Then%>
		<h3>Editor Zone</h3>
		<p><b>Thank you for contributing to transparency as a Webb-site editor. <a href="../dbeditor/">Click here</a> to edit the database.</b></p>
	<%Else%>
		<p><b>As David Webb steps back, the Webb-site database is moving to a crowd-sourced model in the hope of 
		continuing this system after his death. Please volunteer to contribute to the board-pay database! You username 
		will only be shown to other editors on the editing pages.</b></p>
		<form method="post" action="username.asp">
			<input type="submit" name="submitVol" value="Volunteer">
		</form>
	<%End If
End If%>
<p><b><%=Hint%></b></p>
<%If active Then%>
	<p><a href="../dbeditor/">Edit the database</a></p>
<%End If%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>