<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim eMail,newMail,currentDomain,newDomain,rs,MailDB,title,ID,hint
currentDomain=Trim(Request("currentDomain"))
newDomain=Trim(Request("newDomain"))
title="Change e-mail domains"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call mailBar(2)%>
<p>Use this form to update all e-mail addresses ending in the specified domain. 
If the new domain is left blank, then we just print a list of current addresses 
and make no change. Check your typing carefully - mistakes cannot be reversed!</p>
<form method="post" action="domainchange.asp">
	<table class="txtable">
		<tr>
			<td>Current domain</td>
			<td><input type="text" name="currentDomain" size="40" value="<%=currentDomain%>"></td>
		</tr>
		<tr>
			<td>New domain</td>
			<td><input type="text" name="newDomain" size="40"></td>
		</tr>
	</table>
	<p><input type="submit" value="Submit"></p>
</form>
<%If currentDomain="" Then
	hint=hint&"Enter current domain. "
ElseIf newDomain=currentDomain Then
	hint=hint&"You cannot change to the same domain. "
Else%>
	<table>
	<%Call openMailrs(mailDB,rs)
	rs.Open "SELECT ID,mailAddr FROM LiveList WHERE Mid(mailAddr,InStr(mailAddr,'@')+1)='"&currentDomain&"'",MailDB
	Do Until rs.EOF
		ID=rs("ID")
		eMail=rs("mailAddr")%>
		<tr>
			<td><%=eMail%></td>
			<td>
			<%If newDomain>"" Then
				newMail=Left(eMail,Instr(eMail,"@"))&newDomain
				If mailDB.Execute("SELECT EXISTS(SELECT 1 FROM livelist WHERE mailAddr='"&newMail&"')").Fields(0) Then
					'new email is already in DB, but we cannot delete old one because it might be a DB editor
					Response.Write " ALREADY EXISTS: "&newMail
					MailDB.Execute "UPDATE livelist SET mailOn=False WHERE ID="&ID
				Else
					'new email is not in DB, so update old one
					MailDB.Execute "UPDATE LiveList SET mailAddr='"&newMail&"' WHERE ID="&ID
					MailDB.Execute "INSERT INTO eChanges(userID,olde)"&valsql(Array(ID,eMail))
					Response.write " CHANGED TO: "&newMail
				End If
			End If%>
			</td>
		</tr>
		<%rs.MoveNext
	Loop
	Call CloseConRs(mailDB,rs)%>
	</table>
<%End If%>
<p><b><%=hint%></b></p>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>
