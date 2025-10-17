<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/webbmail/prepmsg.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim MailDB,rs,olde,newe,verify,readye,hint,ID,msg,submit,mailOn,title
Call openMailrs(mailDB,rs)
readye=False
newe=Lcase(Trim(Request("e")))
olde=Lcase(Trim(Request("o")))
verify=Lcase(Trim(Request("verify")))
submit=Request("submitMC")

If olde<>"" Then
	If eMailCheck(olde)=False Then
		Hint="The old e-mail address is not valid. Please retype it. "
	Else
		rs.Open "SELECT ID,mailOn FROM livelist WHERE mailAddr='"&olde&"'",mailDB
		If rs.EOF Then
			Hint=Hint & "Your old address is not in our list. "
		Else
			ID=rs("ID")
			If submit="Update status" Then
				mailOn=getBool("mailOn")
				mailDB.execute "UPDATE livelist SET mailOn="&mailOn&" WHERE ID="&ID
				hint=hint&"User "&olde&" will "&IIF(mailOn,"","not ")&"receive newsletters. "
			Else
				mailOn=rs("mailOn")
				If submit="Change address" Then
					If newe="" Then
						hint=hint & "Please enter your new address. "
					ElseIf Not eMailCheck(newe) Then
						hint=hint & "The new e-mail address is not valid. Please retype it. "
					ElseIf verify="" Then
						hint=hint & "Please re-enter your address in the second box, to reduce typing errors. "
					ElseIf newe<>verify Then
						hint=hint & "Your new e-mail inputs do not match. Please check your typing. "
					ElseIf newe=olde Then
						hint=hint & "Your old and new addresses cannot be the same! "
					Else
						rs.Close
						rs.Open "SELECT * FROM liveList WHERE mailAddr='"&newe&"'",MailDB
						If rs.EOF Then
							readye=True
						ElseIf rs("eVerified") Then
							hint=hint & "The new address already has an activated account, so you cannot make this change."
						Else
							mailDB.Execute "DELETE FROM liveList WHERE ID="&rs("ID")
							hint=hint & "An unactivated account with the new address has been deleted. "
							readye=True
						End If
						If readye Then
							Set Msg=PrepMsg()
							mailDB.Execute "UPDATE Livelist"&setsql("mailAddr",Array(newe))&"ID="&ID
							mailDB.Execute "INSERT INTO echanges (userID,olde)"&valsql(Array(ID,olde))
							Msg.From="Webb-site.com <"&GetKey("mailAccount")&">"
							Msg.Subject="Your Webb-site account e-mail address has been changed."
							Msg.To=newe
							Msg.TextBody=_
								"As requested, we have changed your Webb-site account as follows:"&vbcrlf&vbcrlf&_
								"Old e-mail: "&olde&vbcrlf&_
								"New e-mail: "&newe&vbCrLf&vbcrlf&_
								"This system is automated, so please do not reply to this message. To make any further "&_
									"changes, visit:"&vbCrLf&vbCrLf&"https://webb-site.com/webbmail/changeaddr.asp?e="&newe
							Msg.Send
							hint=hint & "Confirmation sent."
							olde=newe
							newe=""
						End If
					End If
				End If
			End If
		End If
		rs.Close
	End If
End If
Call CloseConRs(mailDB,rs)
title="Change e-mail address or mail status"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call mailBar(1)%>
<form method="post" action="mailchange.asp">
	<table class="txtable">
		<tr>
			<td>Old address:</td>
			<td><input type="text" name="o" size="40" value="<%=olde%>"></td>
		</tr>
		<tr>
			<td>Mail on?</td>
			<td><input type="checkbox" name="mailOn" value="1" <%=checked(mailOn)%>></td>
		</tr>
		<tr>
			<td>New address:</td>
			<td><input type="text" name="e" size="40" value="<%=newe%>"></td>
		</tr>
		<tr>
			<td>Retype new address:</td>
			<td><input type="text" name="verify" size="40" value="<%=verify%>"></td>
		</tr>
	</table>
	<p><b><%=hint%></b></p>
	<div class="inputs">
		<input type="submit" name="submitMC" value="Change address">
		<input type="submit" name="submitMC" value="Check status">
		<input type="submit" name="submitMC" value="Update status">
	</div>
	<div class="clear"></div>
</form>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>