<%Option Explicit
'Redirect must happen before headers are sent to browser, which happens if buffer is off
If Not Session("master") Then Response.Redirect("/dbeditor/")
'stream the output, don't wait for complete page
Response.buffer=false
'allow a page to run for an hour, not the 90 seconds default
Server.ScriptTimeout=3600%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/webbmail/prepmsg.asp"-->
<%Function testUrl(url)
	Dim o
    Set o = CreateObject("MSXML2.XMLHTTP")
    On Error Resume Next
    o.open "GET", url, False
    o.send
    If o.Status = 200 Then testUrl = True
    On Error Goto 0 
    Set o=Nothing
End Function

Dim x,start,endm,e,newsH,msg,MailDB,bodyPos,headStr,mainStr,personalStr,fname,subject,a,hint,title,test,retry,ready
fname=Request("filename")
Subject=Request("subject")
test=getBool("test")
retry=getBool("retry")
start=getInt("start",1)
If fname="" Then
	hint=hint&"Please enter filename and subject. "
ElseIf subject="" Then
	hint=hint&"Please enter subject. "
Else
	'test the filename
	If testURL("https://webb-site.com/news/"&fname) Then
		Call openMailDB(mailDB)
		a=mailDB.Execute("SELECT mailAddr FROM LiveList WHERE MailOn AND eVerified"&_
			IIF(test," AND ID IN(58056,65952,77201,80694)","")&IIF(retry," AND retry","")&" ORDER BY ID").GetRows
		Call closeCon(mailDB)
		endm=getInt("end",Ubound(a,2)+1)
		ready=True
	Else
		hint=hint&"Cannot find that file. "
	End If
End If
title="Send a newsletter"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call mailBar(4)%>
<form method="post" action="sendletter.asp">
	<table class="txtable">
		<tr>
			<td>Name of htm file on webb-site.com:</td>
			<td>https://webb-site.com/news/<input type="text" name="filename" size="20" value="<%=fname%>"></td>	
		</tr>
		<tr>
			<td>Subject:</td>
			<td><input type="text" name="subject" size="56" value="<%=subject%>"></td>
		</tr>
		<tr>
			<td>Send test</td>
			<td><input type="checkbox" name="test" value="1" checked></td>
		</tr>
		<tr>
			<td>Retries only</td>
			<td><input type="checkbox" name="retry" value="1" <%=checked(retry)%>></td>
		</tr>
		<tr>
			<td>Start mail at line number:</td>
			<td><input type="text" name="start" size="10" value="<%=start%>"></td>
		</tr>
		<tr>
			<td>End mail at line number:</td>
			<td><input type="text" name="end" size="10"></td>
		</tr>
	</table>
	<input type="submit" value="Send">
</form>
<%If ready Then
	Set msg=PrepMsg()
	msg.Subject=subject
	msg.BodyPart.Charset="utf-8"
	msg.From="Webb-site Reports <"&GetKey("mailAccount")&">"
	msg.CreateMHTMLBody "https://webb-site.com/news/" & fname
	newsH=msg.HTMLBody
	bodyPos=Instr(newsH,"<body>")+7	'N.B. we must allow an extra character for return, or domainkeys fails
	headStr=Left(newsH,bodyPos)
	mainStr=Right(newsH,Len(newsH)-bodyPos)
	For x=start To endm
		e=a(0,x-1)
		msg.To = e
		personalStr="<p>You subscribed to this newsletter as "&e&". To leave the list, "&_
		"<a href='https://webb-site.com/webbmail/mailpref.asp'>click here</a>, log in and turn off.</p><hr>"
		msg.HTMLBody=headStr & personalStr & mainStr
		msg.Send
		Response.write x&" "&e&"<br>"
	Next
	Response.Write "<p>Done!</p>"
	Set msg=Nothing
End If%>
<%If hint<>"" Then%>
	<p><b><%=hint%></b></p>
<%End If%>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>
