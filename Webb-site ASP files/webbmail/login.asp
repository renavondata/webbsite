<%Option explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<!--#include file="authentic.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%If session("ID")="" Then Call userBar(1) Else Call userBar(0) 'highlight the login button if not logged in%>
<h2><%=title%></h2>
<%If session("ID")="" Then%>
	<form action="login.asp" method="post">
		<p>E-mail address or username:<br><input name="e" type="text" class="ws" value="<%=e%>"></p>
		<p>Password:<br><input name="pwd" type="password" class="ws" value="<%=pwd%>"></p>
		<p>Keep me logged in: <%=makeSelect("d",CStr(d),"0,Don't,24,1 day,72,3 days,168,1 week,336,2 weeks,720,30 days",False)%></p>
		<%If robot Then%>
			<div class="g-recaptcha" data-sitekey="<%=GetKey("CaptchaSiteKey")%>"></div>
		<%End If%>
		<p><input type="submit" value="Log in to Webb-site"></p>
	</form>
	<p><a href="forgot.asp?e=<%=e%>">Forgot password?</a></p>
<%End If%>
<p><b><%=hint%></b></p>
<%If Session("editor") Then%>
	<p><a href="../dbeditor/">Edit the database!</a></p>
<%ElseIf Session("ID")>"" Then%>
	<p><b>Please help the Webb-site database to continue after David Webb steps back. <a href="username.asp">Click to volunteer to edit the database!</a></b></p>
<%End If%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>
