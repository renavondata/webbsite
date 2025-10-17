<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../vote/pollfunctions.asp"-->
<%Sub quickpoll(PID)
	'PID is the poll number
	Dim mailDB,startTime,endTime,nowTime,UserID,blnClosed,hint,blnReady,rst,pollName
	userID=Session("ID")
	Call openMailrs(mailDB,rst)
	blnReady=False
	nowTime=Now()
	rst.Open "SELECT * FROM Polls WHERE PID="&PID,MailDB
	StartTime=rst("StartTime")
	pollName=rst("pollName")
	If NowTime<StartTime and Not IsNull(StartTime) Then
		Hint="The Poll has not yet started. "
	Else
		blnReady=True
		EndTime=rst("EndTime")
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
				Hint="Thank you for voting! You can change your vote until the poll closes. "
				Qs.Close
				Set Qs=Nothing
			End If
		End If
	End If
	Call CloseConRs(mailDB,rst)%>
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=<%=PID%>'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		<%
		userID=Session("ID")
		If userID="" Then Session("referer")=LCase(Request.ServerVariables("URL"))&"?"&Request.ServerVariables("QUERY_STRING")
		If userID="" Then%>
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		<%Else%>
			<li><a href="../webbmail/login.asp?b=1">Log out</a></li>		
		<%End If%>
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: <%=pollName%></b></h3>
	<p><b><%=hint%></b></p>
	<%If blnReady Then
		If Not IsNull(EndTime) Then%>
			<p>	
			<%If blnClosed Then
				Response.Write "Poll closed: "&ForceTimeDate(EndTime)
			Else
				Response.Write "Time left: "&DiffTimeStr(NowTime,EndTime)
			End If%>
			</p>
		<%End If%>
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
		<form method="post" action="<%=Request.ServerVariables("URL")%>">
			<hr>
			<%Call GenPoll(PID,UserID,"")%>
			<p>
			<%If Not blnClosed Then%>
				<input type="submit" value="Vote" name="submitBtn">
			<%End If%>
			</p>
		</form>
	<%End If
End Sub%>