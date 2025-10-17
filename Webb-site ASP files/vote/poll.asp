<%Option Explicit%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../vote/pollfunctions.asp"-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%Dim mailDB,rst,PID,pollName,pollIntro,startTime,endTime,nowTime,userID,blnClosed,hint,blnReady
Call cookiechk
userID=Session("ID")
If userID="" Then Session("referer")=LCase(Request.ServerVariables("URL"))&"?"&Request.ServerVariables("QUERY_STRING")
Call openMailRs(mailDB,rst)
blnReady=False
PID=Request.Querystring("p")
If PID="" Then PID=Request.Form("PID")
NowTime=Now()
If PID="" Or Not IsNumeric(PID) Then
	Hint="No Poll was specified. "
Else
	rst.Open "SELECT * FROM Polls WHERE PID="&PID,MailDB
	If rst.EOF Then
		Hint="No such Poll! "
	Else
		StartTime=rst("StartTime")
		If NowTime<StartTime and Not IsNull(StartTime) Then
			hint="That Poll has not yet started. "
		Else
			'poll has started, so set flag to display details
			blnReady=True
			EndTime=rst("EndTime")
			PollName=rst("PollName")
			PollIntro=rst("PollIntro")
			If NowTime>=EndTime Then blnClosed=True Else blnClosed=False
			If userID="" Then
				hint="Please <a href='../webbmail/login.asp'>log in</a> "
				If blnClosed Then
					hint=hint&"to see how you voted, if you did. "
				Else
					hint=hint&"to vote. "
				End If
			Else
				hint=hint&"You are logged in as "&session("e")&". "
				If blnClosed Then
					hint=hint&"The poll is closed. Your votes are shown below. "
				ElseIf Request.Form("submitBtn")="Vote" Then
					'Update the responses table
					Dim Answer,Qs,PQID
					Set Qs=Server.CreateObject("ADODB.Recordset")
					Qs.Open "SELECT * FROM WebQuestions WHERE PID="&PID,MailDB
					Do Until Qs.EOF
						rst.Close
						PQID=Qs("PQID")
						Answer=Request.Form(CStr(PQID))
						rst.Open "SELECT * FROM Responses WHERE UserID="&UserID&" AND PQID="&PQID,MailDB
						If Answer<>"" Then
							If rst.EOF Then
								'User answers this poll question for the first time
								MailDB.Execute "INSERT INTO Responses (UserID,PQID,AID) VALUES ("&UserID&","&PQID&","&Answer&")"
							Else
								'user changes previous response to another answer
								MailDB.Execute "UPDATE Responses SET AID="&Answer&" WHERE UserID="&UserID&" AND PQID="&PQID
							End If
						Else
							'user withdraws previous response
							If Not rst.EOF Then MailDB.Execute "DELETE FROM Responses WHERE UserID="&UserID&" AND PQID="&PQID
						End If
						Qs.MoveNext
					Loop
					Qs.Close
					Set Qs=Nothing
					hint=hint&"Thank you for voting! You can change your vote until the poll closes. "
				Else
					hint=hint&"You can vote or change your vote below. "
				End If
			End If
		End If
	End If
	rst.Close
End If%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>Poll</title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<ul class="navlist">
	<li id="livebutton">Poll</li>
	<li><a href='../vote/result.asp?p=<%=PID%>'>Results</a></li>
	<li><a href="../vote/default.asp">More polls</a></li>
	<%If userID="" Then%>
		<li><a href="../webbmail/login.asp">Log in</a></li>
		<li><a href="../webbmail/join.asp">Sign up</a></li>
	<%Else%>
		<li><a href="../webbmail/login.asp?b=1">Log out</a></li>		
	<%End If%>
</ul>
<div class="clear"></div>
<h2>Poll: <%=PollName%></h2>
<p><b><%=Hint%></b></p>

<%If blnReady Then%>
	<table class="txtable">
		<tr>
			<td>Current time:</td>
			<td><%=MSdateTime(NowTime)%></td>
		</tr>
		<tr>
			<td>Closing time:</td>
		<%If IsNull(EndTime) Then%>
			<td>Not yet set, please vote!</td>
		<%Else%>
			<td><%=MSdateTime(EndTime)%></td>
			</tr>
			<tr>
			<td>Time left:</td>
				<%If blnClosed Then%>
					<td><b>Poll closed</b></td>
				<%Else%>
					<td><%=DiffTimeStr(NowTime,EndTime)%></td>
				<%End If%>
			</tr>
		<%End If%>
	</table>
	<script type="text/javascript">
	function NoEnter(e)
	{
		var key;
		if(window.event)
			key = window.event.keyCode;     //IE
		else
			key = e.which;     //firefox
		if(key == 13)
			return false;
		else
		return true;
	}
	</script>
	<form method="post" action="poll.asp">
		<input type="hidden" name="PID" value="<%=PID%>">
		<%If PollIntro<>"" Then%>
			<h3>Introduction</h3>
			<p><%=PollIntro%></p>
		<%End If%>
		<h3>Questions</h3>
		<%Call GenPoll(PID,UserID,"")
		If Not blnClosed Then
			If userID="" Then%>
				<p><b>Please <a href="../webbmail/login.asp">log in</a> to vote</b></p>
			<%Else%>
				<p><b>Check your answers, and submit your vote. You do not have to answer every question. The identity of voters will not be disclosed.</b></p>
				<p><input type="submit" value="Vote" name="submitBtn"></p>
			<%End If
		End If%>
	</form>
<%End If
Call CloseConRs(mailDB,rst)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>