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
Dim e,verify,hint,mailDB,rs,msg,IP,pwd,pwd2,joined,title,passed,mailOn,body,ID,token
e=Trim(Request("e"))
verify=Trim(Request("verify"))
pwd=Left(Trim(Request.Form("pwd1")),256)
pwd2=Left(Trim(Request.Form("pwd2")),256)
If Request.Form("submitBtn")="Join" Then mailOn=Request("mailOn") Else mailOn=True
If mailOn="" Then mailOn=False
IP=Request.ServerVariables("REMOTE_ADDR")
passed=captcha(Request.Form("g-recaptcha-response"))
title="Sign up"
Call openMailrs(mailDB,rs)
If e<>"" Then
	If Not eMailCheck(e) Then
		Hint="The e-mail address is not valid. Please check it. "
	ElseIf verify="" Then
		Hint="Please re-enter your address in the second box, to reduce typing errors. "
	ElseIf e<>verify Then
		Hint="Your e-mail inputs do not match. Please check your typing. "
	Else
		'Start with the new email address, see if we can find it in the list
		rs.Open "SELECT * FROM LiveList WHERE mailAddr='"&e&"'",MailDB
		If Not rs.EOF Then
			If Not rs("eVerified") Then
				joined=True
				ID=rs("ID")
				hint="You have already applied for an account. We are sending you a replacement confirmation "&_
					"link and the previous one has been cancelled. "
			Else
				hint="You already have an account. <a href='forgot.asp?e="&e&"'>Forgot your password?</a> "
			End If
		ElseIf pwd="" Then
			Hint="Please choose a password or phrase. "
		ElseIf Len(pwd)<8 Then
			hint="Please choose a password or phrase with at least 8 characters. "
		ElseIf pwd2="" Then
			Hint="Please retype your password in the second password box, to reduce typing errors. "
		ElseIf pwd2<>pwd Then
			Hint="Your password inputs do not match. Please check your typing. "
		ElseIf Not passed Then
			Hint="Please complete the CAPTCHA. "
		Else
			joined=True
			hint="Thank you for applying. There's just one more step. "
			'MD5 produces a lower-case hex string. UNHEX converts it to a binary blob. HEX converts a blob back to upper-case hex.
			'So when checking on login, we need to take UNHEX(SHA2(CONCAT(pwd,LOWER(HEX(salt))))
			MailDB.Execute("INSERT INTO Livelist(mailAddr,joinIP,joinTime,MailOn,hash,salt) SELECT '"&e&"','"&IP&_
				"',NOW(),"&mailOn&",UNHEX(SHA2(CONCAT('"&apos(pwd)&"',salt),256)),UNHEX(salt) FROM (SELECT MD5(RAND()) AS salt) AS t1")
			ID=lastID(MailDB)
		End If
		rs.Close
	End If
End If
If joined Then
	token=mailDB.Execute("SELECT genToken()").Fields(0)
	mailDB.Execute "UPDATE livelist SET etokHash=UNHEX(SHA2('"&token&"',256)),etokTime=NOW() WHERE ID="&ID			
	title="Please check your e-mail to activate your account"
	Set Msg=PrepMsg()
	Msg.From="Webb-site.com <"&GetKey("mailAccount")&">"
	Msg.To=e
	Msg.Subject="Please activate your Webb-site account"
	body="Thank you for signing up to Webb-site.com with address "&e&". "&vbCrLf&vbCrLF&_
		"There's just one more step. Click the link below to verify your address, or you will never hear from us again. "&_
		"The link will expire in 72 hours or when used. "&vbCrLf&vbCrLF&_
		"https://webb-site.com/webbmail/verify.asp?t="&token&vbCrLF&vbCrLF&_
		"This system is automated, so please do not reply to this message."
	Msg.TextBody=body
	Msg.Send
	Set Msg=Nothing
End if
Call CloseConRs(mailDB,rs)%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(2)%>
<h2><%=title%></h2>
<%If joined Then%>
	<p><%=hint%>To activate your account, please check your e-mail inbox and hit the confirmation link. 
	If you cannot find it, then check your spam/junk folder and whitelist our address or add it to your "safe senders" list.</p>
<%Else%>
	<script src='https://www.google.com/recaptcha/api.js' async defer></script>
	<p>Please create an account which allows you to:</p>
<ul>
	<li>Receive our free newsletter (opt out any time)</li>
	<li>Store a list of stocks that you follow, with links to key data such as Webb-site Total Returns and director 
	dealings</li>
	<li>Volunteer to edit the board-pay database</li>
	<li>Vote in our opinion polls</li>
	<li>Contribute ratings to Webb-site 
	Governance Ratings or Webb-site Trust Ratings.</li>
</ul>
	<form method="post" action="join.asp">
		<p>E-mail address:<br><input type="text" name="e" class="ws" value="<%=e%>"></p>
		<p>Retype address:<br><input type="text" name="verify" class="ws" value="<%=verify%>"></p>
		<p>Password or phrase (minimum 8 characters):<br><input type="password" name="pwd1" class="ws" value="<%=pwd%>"></p>
		<p>Retype password or phrase:<br><input type="password" name="pwd2" class="ws" value="<%=pwd2%>"></p>
		<p>Get newsletter: <input type="checkbox" name="mailOn" value="1" <%If mailOn Then%>checked<%End If%>></p>
		<div class="g-recaptcha" data-size="compact" data-sitekey="<%=GetKey("CaptchaSiteKey")%>"></div>
		<p><b><%=Hint%></b></p>
		<p><input type="submit" name="submitBtn" value="Join"></p>
	</form>
	<p><a href="../webbmail/domainlist.asp">Who reads Webb-site.com?</a></p>
	<p><a href="../news">What do the newsletters look like?</a></p>
<%End If%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>