<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<!--#include file="../webbmail/prepmsg.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Dim e,hint,mailDB,rs,msg,IP,member,title,token,m
m=botchk2()
Call cookiechk
member=False
e=Trim(Request("e"))
If e="" Then e=Session("e")
IP=Request.ServerVariables("REMOTE_ADDR")
title="Forgot password?"
hint="We don't know your password either. We only store a salted cryptographic hash of it. We can send you an e-mail with a link to reset your password."	
If e<>"" Then
	If eMailCheck(e)=False Then
		hint="The e-mail address is not valid. Please retype it. "
	ElseIf m<>"" Then 
		hint=m
	Else
		Call openMailrs(mailDB,rs)
		rs.Open "SELECT * FROM LiveList WHERE mailAddr='"&e&"'",MailDB
		If rs.EOF Then
			hint="Your address is not on our list. Check your typing or <a href='join.asp?e="&e&"'>Click here to sign up.</a>"
		ElseIf Request.ServerVariables("REQUEST_METHOD")="POST" Then
			member=True
			token=mailDB.Execute("SELECT genToken()").Fields(0)
			mailDB.Execute("UPDATE livelist SET tokHash=UNHEX(SHA2('"&token&"',256)),tokTime=NOW() WHERE ID="&rs("ID"))
			Set Msg=PrepMsg()
			Msg.From="Webb-site.com <"&GetKey("mailAccount")&">"
			Msg.To=e
			Msg.Subject="How to reset your Webb-site password"
			Msg.TextBody="If you wish to reset your password, click on the one-time link below. The link will expire in 12 hours. "&_
				"Please delete this e-mail if you didn't ask for it!"&vbCrLf&vbCrLF&_
				"https://webb-site.com/webbmail/reset.asp?t="&token&vbCrLF&vbCrLF&_
				"This system is automated, so please do not reply to this message."&vbCrLf&vbCrLf&_
				"Requested by IP: "&Request.ServerVariables("REMOTE_ADDR")
			Msg.Send
			Set Msg=Nothing
			hint="We have sent you an e-mail with a one-time link to reset your password. It will expire in 12 hours. "
			title="Please check your e-mail"
		End If
		Call CloseConRs(mailDB,rs)
	End If
End If
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(3)%>
<h2><%=title%></h2>
<%If member Then%>
	<p><b>We have sent you an e-mail with a link to reset your password. If you 
	cannot find it, please check your spam/junk folder and whitelist us. The 
	link will expire in 12 hours or when first used.</b></p>
<%Else%>
	<form method="post" action="forgot.asp">
	<p>E-mail address: <input type="text" name="e" class="ws" value="<%=e%>"></p>
	<p><b><%=hint%></b></p>
	<p><input type="submit" value="Send me a reset link"></p>
	</form>
<%End If%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>