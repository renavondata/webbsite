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
Dim hint,mailDB,rs,ID,pwd,pwd2,member,changed,title,token,tokMatch,e,newe
token=Request("t")
e=""
Call openMailrs(mailDB,rs)
If token<>"" Then
	'check the token and find the email address if link has not expired
	rs.Open "SELECT ID,mailaddr,newaddr,TIMESTAMPDIFF(MINUTE,etokTime,NOW())>=4320 AS expired FROM liveList "&_
		"WHERE UNHEX(SHA2('"&apos(token)&"',256))=etokHash",mailDB
	If rs.EOF Then
		title="Confirmation link invalid"
		hint="Your confirmation link is invalid or has already been used. <a href='join.asp'>Sign up</a> or <a href='login.asp'>log in</a>. "
	ElseIf rs("expired") Then
		e=rs("mailAddr")
		title="Link expired"
		hint="Your confirmation link has expired. <a href='join.asp?e="&e&"&amp;verify="&e&"'>Click here to get a new one</a>. "
	ElseIf Not isNull(rs("newaddr")) Then
		'verifying change of address
		e=rs("mailAddr")
		newe=rs("newaddr")
		ID=rs("ID")
		'final check in case user has activated a new account with the new address since requesting this change
		rs.Close
		rs.Open "SELECT * FROM livelist WHERE mailaddr='"&newe&"'"
		If Not rs.EOF Then
			If rs("eVerified") Then
				hint="You already have a verified account with address "&newe&". Your change request for account "&e&" has been cancelled. "&_
					"<a href='login.asp?e"&newe&"'>Please log in</a>."
				e=newe
				mailDB.Execute "UPDATE livelist"&setsql("etokHash,etokTime,newAddr",Array(Null,Null,Null))&"ID="&ID
			Else
				'new account was never activated
				mailDB.Execute "DELETE FROM livelist WHERE ID="&rs("ID")
				hint="We've found an unactivated account and deleted it. Your new address "&newe&" is confirmed. "
				changed=True
			End If
		Else
			changed=True
			hint="Thank you, your new address "&newe&" is confirmed. "
		End If
		If changed Then
			mailDB.Execute "UPDATE livelist"&setsql("eVerified,mailAddr,newAddr,etokHash,etokTime",Array(True,newe,Null,Null,Null))&"ID="&ID
			mailDB.Execute "INSERT INTO echanges(userID,olde)"&valsql(Array(ID,e))
			e=newe
			If Session("e")<>"" Then Session("e")=e 'change logged in address, if any.			
		End If		
	Else
		e=rs("mailAddr")
		mailDB.Execute "UPDATE livelist set etokHash=NULL,etokTime=NULL,eVerified=True WHERE ID="&rs("ID")
		hint="Thank you, your account has been activated. Please <a href='login.asp?e="&e&"'>log in</a>. "
		title="Your account has been activated"
	End If
	rs.Close
Else
	hint="No token was presented. Please <a href='join.asp'>sign up or get a new confirmation link</a>. "
End If
Call CloseConRs(mailDB,rs)%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call userbar(0)%>
<h2><%=title%></h2>
<p><b><%=hint%></b></p>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>