<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Call login%>
<!--#include file="../webbmail/prepmsg.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<%
Dim email,verify,hint,mailDB,rs,title,ID,e,changed,token,msg,body
ID=Session("ID")
e=Session("e")
email=Trim(Request("newe"))
verify=Trim(Request.Form("verify"))
title="Change your e-mail address"
If email="" Then
	hint="Please enter your new e-mail address twice. "
ElseIf Not eMailCheck(email) Then
	hint="The e-mail address is not valid. Please check it. "
ElseIf verify="" Then
	hint="Please enter your address in the second box, to reduce typing errors. "
ElseIf email<>verify Then
	hint="Your new e-mail inputs do not match. Please check your typing. "
ElseIf email=e Then
	hint="What's new? The new e-mail address is the same as the old one!"
Else
	Call openMailrs(mailDB,rs)
	rs.Open "SELECT * FROM liveList WHERE mailAddr='"&apos(eMail)&"'",MailDB
	If rs.EOF Then
		changed=True
	ElseIf rs("eVerified") Then
		hint="Your new address already has an account. <a href='login.asp?b=1&amp;e="&email&"'>Switch accounts</a>. "
	Else
		hint="There is an unactivated account with your new address. If you proceed with this change, then that account will be deleted. "
		changed=True
	End if
	If changed Then
		token=mailDB.Execute("SELECT genToken()").Fields(0)
		mailDB.Execute "UPDATE livelist SET newaddr='"&apos(email)&"',etokHash=UNHEX(SHA2('"&token&"',256)),etokTime=NOW() WHERE ID="&ID
		title="Please check your e-mail and confirm your new address"
		hint=hint&"Please check your email inbox and hit the confirmation link to verify your new email address. "&_
			"The change will not take effect until you do. "
		Set Msg=PrepMsg()
		Msg.From="Webb-site.com <"&GetKey("mailAccount")&">"
		Msg.To=eMail
		Msg.Subject="Please confirm your new e-mail address."
		body="Please click the link below to verify your new e-mail address for your Webb-site account. "&_
			"Your old address will remain effective until you do. "&_
			"This link will expire in 72 hours or when used. "&vbCrLf&vbCrLF&_
			"https://webb-site.com/webbmail/verify.asp?t="&token&vbCrLF&vbCrLF&_
			"This system is automated, so please do not reply to this message."
		Msg.TextBody=body
		Msg.Send
		Set Msg=Nothing
	End If
	Call CloseConRs(mailDB,rs)
End If%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(4)%>
<h2><%=title%></h2>
<%If Not changed Then%>
	<form method="post" action="changeaddr.asp">
		<table>
			<tr>
				<td>Current address:</td>
				<td><%=session("e")%></td>
			</tr>
			<tr>
				<td>New address:</td>
				<td><input type="text" name="newe" size="40" value="<%=email%>"></td>
			</tr>
			<tr>
				<td>Retype new address:</td>
				<td><input type="text" name="verify" size="40" value="<%=verify%>"></td>
			</tr>
		</table>
		<p><input type="submit" value="Change address"></p>
	</form>
<%End If%>
<p><b><%=Hint%></b></p>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>