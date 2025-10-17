<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Dim hint,mailDB,rs,msg,ID,pwd,pwd2,changed,title,token,tokMatch,e,oldpwd,eVerified
If session("e")="" Then Call cookiechk
token=Request("t")
e=Session("e")
oldpwd=Request.Form("oldpwd")
pwd=Request.Form("pwd1")
pwd2=Request.Form("pwd2")
title="Change your password"
Call openMailRs(mailDB,rs)
If token<>"" Then
	'check the token and find the email address if link has not expired
	rs.Open "SELECT ID,mailaddr,eVerified,TIMESTAMPDIFF(MINUTE,tokTime,NOW())>=720 AS expired FROM liveList "&_
		"WHERE UNHEX(SHA2('"&Replace(token,"'","''")&"',256))=tokHash",mailDB
	If rs.EOF Then
		hint=hint&"Your reset link is invalid. "
		token=""
	ElseIf rs("expired") Then
		hint=hint&"Your reset link has been used or expired. "
		token=""
		e=rs("mailAddr")
	Else
		e=rs("mailAddr")
		ID=rs("ID")
		'the token verifies the e-mail address so it activates the account
		If Not rs("eVerified") Then
			mailDB.Execute "UPDATE livelist SET eVerified=TRUE WHERE ID="&ID
			hint=hint&"Your account has been activated. "
		End If
		tokMatch=True
	End If
	rs.Close
ElseIf e="" Then
	Session("referer")="reset.asp"
	Response.redirect "login.asp"
Else
	ID=Session("ID")
	If oldpwd="" Then
		hint=hint&"Please enter your current password. "
	Else
		tokMatch=MailDB.Execute("SELECT SHA2(CONCAT('"&Replace(oldpwd,"'","''")&"',LOWER(HEX(salt))),256)=LOWER(HEX(hash)) AS tokmatch FROM livelist WHERE ID="&ID).Fields(0)
		If CLng(tokMatch)=0 Then 'NB you get type mismatch without the conversion
			hint="Your old password is incorrect. "
			tokMatch=False
		Else
			tokMatch=True
		End If
	End If
End If
If tokMatch Then
	If pwd="" Then
		hint=hint&"Please choose a password"
	ElseIf Len(pwd)<8 Then
		hint=hint&"Please choose a password or phrase with at least 8 characters. "
	ElseIf pwd2="" Then
		hint=hint&"Please retype your password in the second password box, to reduce typing errors. "
	ElseIf pwd2<>pwd Then
		hint=hint&"Your password inputs do not match. Please enter them again. "
		pwd=""
		pwd2=""
	Else
		MailDB.Execute "UPDATE Livelist SET salt=UNHEX(MD5(RAND())),lastLogin=NOW(),pwdChanged=NOW() WHERE ID="&ID
		MailDB.Execute "UPDATE Livelist SET hash=UNHEX(SHA2(CONCAT('"&apos(pwd)&"',LOWER(HEX(salt))),256)),tokHash=NULL,tokTime=NULL WHERE ID="&ID
		title="Password changed"
		changed=True
		If Session("ID")="" Then
			Session("editor")=CBool(mailDB.Execute("SELECT EXISTS(SELECT * FROM enigma.wsprivs WHERE live AND userID="&ID&")").Fields(0))
			Session("ID")=ID
			Session("pwd")=pwd 'used for prepMaster on dbexec pages
			Session("e")=e
			Session("username")=mailDB.execute("SELECT IFNULL((SELECT name FROM livelist WHERE ID="&ID&"),'')").Fields(0)
			Session("master")=(ID=2) 'DavidOnline, used in events.asp and story.asp
			Session.Timeout=60 'minutes
		End If
		hint=hint&"You have changed your password. You are logged in as "&e&_
			". Please help the Webb-site database to continue after David Webb steps back. <a href='username.asp'>Click to volunteer to edit the database!</a>"
	End if
End If
Call CloseConRs(mailDB,rs)%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(5)%>
<h2><%=title%></h2>
<%If not changed Then%>
	<form method="post" action="reset.asp">
		<%If Session("e")<>"" And token="" Then%>
			<p>E-mail address: <%=e%></p>
			<p>Current password or phrase:<br><input type="password" name="oldpwd" class="ws" value="<%=oldpwd%>"></p>
		<%End If%>
		<p>New password or phrase (minimum 8 characters):<br><input type="password" name="pwd1" class="ws" value="<%=pwd%>"></p>
		<p>Retype new password or phrase:<br><input type="password" name="pwd2" class="ws" value="<%=pwd2%>"></p>
		<input type="hidden" name="t" value="<%=token%>">
		<p><input type="submit" value="Change password"></p>
	</form>
<%End If%>
<p><b><%=hint%></b></p>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>