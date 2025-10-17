<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="../webbmail/prepmsg.asp"-->
<%
Sub writeOption (value,compare)
'writes a select option and marks it as selected if it matches the compare value
Dim selected
If value=compare Then selected = " selected"
Response.Write "<option value='" & value & "'" & selected & ">" & value & "</option>"
End Sub

Function mailCount()
	'returns number of messages sent from this IP today
	mailCount=0
	Dim ip,con,rs
	ip=IPtoLng()
	Call openMailrs(con,rs)
	rs.Open "SELECT * FROM iplog.submit WHERE ip="&ip,con
	If Not rs.EOF Then
		If rs("subDate")=Date() Then mailCount=rs("subs")
	End If
	Call CloseConRs(con,rs)
End Function

Sub mailInc()
	'increment the mailCount for today
	Dim ip,con,rs,subDate
	ip=IPtoLng()
	Call openMailrs(con,rs)
	rs.Open "SELECT * FROM iplog.submit WHERE ip="&ip,con,,3 'adLockOptimistic
	If rs.EOF Then
		rs.addNew
		rs("ip")=ip
	Else
		If rs("subDate")=Date() Then
			rs("subs")=rs("subs")+1
		Else
			'first submission today
			rs("subDate")=Date()
			rs("subs")=1
		End If
	End If
	rs.Update
	Call CloseConRs(con,rs)
End Sub

Dim Msg,from,frome,sendCopy,subject,txt,lastPage,cTemp,passed,token,count
Const limit=3
frome=Request("senderEmail")
from=Request("senderName")
'disabled cc feature due to spam risk
'If Request("sendCopy")="ON" then sendCopy=" checked"
subject=Request("subject")
txt=Request("message")
lastPage=Request.ServerVariables("HTTP_REFERER")
count=mailCount()
%>
<script src='https://www.google.com/recaptcha/api.js' async defer></script>
<title>Contact Webb-site</title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%passed=False
If txt<>"" Then
	'a form was submitted and the message was not empty, so test the captcha
	lastpage=Request.Form("lastpage")
	passed=captcha(Request.Form("g-recaptcha-response"))
	If passed Then
		If count<limit Then
			Set Msg=PrepMsg()
			If frome="" Then frome="noaddress@webb-site.com"
			Msg.BodyPart.Charset="utf-8"
			Msg.From = from & "<" & frome & ">"
			Msg.Sender=GetKey("mailAccount")
			Msg.To = GetKey("mailAccount")
			Msg.Subject = subject
			Msg.TextBody = txt & vbCrLf & Request.ServerVariables("REMOTE_ADDR")
			Msg.TextBody = Msg.TextBody & vbCrLf & "Last page visited: " & lastpage
			Msg.Send
			Call mailInc
			%>
			<h2>Thank you!</h2>
			<p>Thank you for your message. <a href="/">Click here to return to the front page!</a></p>
		<%Else%>
			<h4>Daily message limit exceeded.</h4>
		<%End If
	End If
End If
If Not passed Then%>
	<h2>Contact Webb-site</h2>
	<p>If you have any comments or suggestions on how we can improve this 
	publication, 
	please let us know. If you want us to blow the whistle to <em>Webb-site Reports</em> on wrong-doing in your organisation, 
	then contact us in confidence. Your identity will be protected to the full 
	extent of the law.&nbsp;We regret that we cannot reply to requests for individual 
	investment advice. If you are looking for published reports or information on a particular company 
	or person, try 
	the <a href="../articles/"><em>Webb-site Reports</em> archive</a>, or 
	key in the stock code or name in the search boxes above to search <em>
	<a href="../dbpub">Webb-site 
	Who's Who</a></em>.</p>
	
	<p>You can contact <i>Webb-site</i> by e-mail using this form. If you give 
	us a fake or incorrect e-mail address, we will get the message but will be 
	unable to reply to you.</p>
	<%If count<limit Then%>
		<form method="post" action="default.asp">
			<p>Your name:<br>
			<input type="text" name="senderName" class="ws" value="<%=from%>"></p>
			<p>Your e-mail address (check it!):<br>
			<input type="text" name="senderEmail" class="ws" value="<%=frome%>"></p>
			<p>Subject: <select name="subject">
			<%
			writeOption "General comment/question",subject
			writeOption "Add to/update Webb-site database",subject
			writeOption "Error on Webb-site.com",subject
			writeOption "Media enquiry",subject
			writeOption "Journalist seat at shareholder meeting",subject
			writeOption "Suggested Opinion Poll",subject
			writeOption "Tip-off / whistle blower",subject
			%>
			</select></p>
			<p>Last page visited: <%=lastPage%></p>
			<p>Message:</p>
			<textarea rows="10" name="message" style="width:100%;font-family:Verdana;"><%=txt%></textarea><br>
			<input type="hidden" name="lastpage" value="<%=lastPage%>">
			<%If txt<>"" Then%>
				<p style="color:red;font-weight:bold">An error occurred with the CAPTCHA. Please try again.</p>
			<%End If%>
			<div class="g-recaptcha" data-size="compact" data-sitekey="<%=GetKey("CaptchaSiteKey")%>"></div>
			<input type="submit" value="Send">&nbsp;<input type="reset" value="Clear">
		</form>
	<%Else%>
		<h4>Sorry, you have already sent us <%=limit%> messages today. We suspect you are a spam-bot. Please try again tomorrow.</h4>	
	<%End If%>
<%End If%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>