<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Call login%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%Dim hint,mailDB,mailOn,ID,title,e
ID=Session("ID")
e=Session("e")
Call openMailDB(mailDB)
If Request.ServerVariables("REQUEST_METHOD")="POST" Then
	mailOn=Request.Form("mailOn")
	If mailOn="1" Then mailOn=True Else mailOn=False
	If mailOn Then
		mailDB.Execute("UPDATE livelist SET mailOn=TRUE WHERE ID="&ID)
		hint="You will receive newsletters. "
	Else
		mailDB.Execute("UPDATE livelist SET mailOn=FALSE,leaveTime=NOW(),leaveIP='"&Request.ServerVariables("REMOTE_ADDR")&"' WHERE ID="&ID)
		hint="You will not receive newsletters. "
	End If
Else
	mailOn=mailDB.Execute("SELECT mailOn FROM livelist WHERE ID="&ID).Fields(0)
End If
Call CloseCon(mailDB)
title="Mail on/off"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userBar(6)%>
<h2><%=title%></h2>
<p>Your are logged in as <%=e%>.</p>
<%If ID<>"" Then%>
	<form method="post" action="mailpref.asp">
		<p><input type="checkbox" name="mailOn" value="1" <%If mailOn Then%>checked<%End If%>>Receive newsletters</p>
		<p><input type="submit" value="Update preference"></p>
	</form>
<%End If%>
<p><b><%=hint%></b></p>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>