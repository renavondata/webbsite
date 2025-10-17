<%Sub GenPoll(PID,UserID,format)
	Dim PQID,MinInt,ListTypeID,Qs,Answers,AID,SelectedAID,Answer,savedAnswers,mailDB
	Call openMailDB(mailDB)
	Set Qs=Server.CreateObject ("ADODB.Recordset")
	Set Answers=Server.CreateObject ("ADODB.Recordset")
	Set savedAnswers=Server.CreateObject ("ADODB.Recordset")
	Qs.Open "SELECT * FROM WebQuestions WHERE PID="&PID&" ORDER BY Qorder",MailDB
	Do until Qs.EOF
		PQID=Qs("PQID")
		MinInt=Qs("MinInt")
		ListTypeID=Qs("ListTypeID")
		'get last answer for this question, if any
		SelectedAID=Request.Form(Cstr(PQID))
		If SelectedAID<>"" Then SelectedAID=CLng(SelectedAID)
		
		If UserID<>"" Then
			'retrieve previous answer, if any, from responses
			savedAnswers.Open "SELECT AID FROM Responses WHERE UserID="&UserID&" AND PQID="&PQID,MailDB
			If savedAnswers.EOF Then
				SelectedAID=""
			Else
				SelectedAID=savedAnswers("AID")
			End If
			savedAnswers.Close
		End If
		Response.Write "<p class='"&format&"'>"&Qs("Qorder")&". "&Qs("Question")&"</p>"
		If MinInt<>"" Then
			'Generate integer list in drop-down box
			Response.Write "<p><select name='"&PQID&"' class='"&format&"'><option value=''>Select</option>"
			For Answer=MinInt to Qs("MaxInt")
				Response.Write "<option value='"&Answer&"'"
				If Answer=SelectedAID And selectedAID<>"" Then Response.Write " selected"
				Response.Write ">"&Answer&"</option>"
			Next
			Response.Write "</select></p>"
		Else
			'Generate answer list
			Response.Write "<p class='"&format&"'>"
			Answers.Open "SELECT * FROM Webanswers WHERE PQID="&PQID&" ORDER BY AOrder",MailDB
			If ListTypeID=1 Then
				'drop-down list
				Response.Write "<select name='"&PQID&"' class='"&format&"'><option value=''>Select</option>"
				Do until Answers.EOF
					AID=Answers("AID")
					Response.Write "<option value='"&AID&"'"
					If AID=SelectedAID Then Response.Write " selected"
					Response.Write ">"&Answers("Answer")&"</option>"
					Answers.Movenext
				Loop
				Response.Write "</select>"
			Else
				'radio button list
				Do until Answers.EOF
					AID=Answers("AID")
					Response.Write "<input type='radio' name='"&PQID&"' value='"&AID&"'"
					If AID=SelectedAID Then Response.Write " checked"
					Response.Write ">"&Answers("Answer")&"<br>"
					Answers.Movenext
				Loop
				Response.Write "<input type='radio' name='"&PQID&"' value=''"
				If SelectedAID="" Then Response.Write " checked"
				Response.Write ">(clear response)<br>"
			End If
			Answers.Close
			Response.Write "</p>"	
		End If
		Qs.Movenext
	Loop
	Qs.close
	Set Qs=Nothing
	Set Answers=Nothing
	Set savedAnswers=Nothing
	mailDB.Close
	Set mailDB=Nothing
End Sub%>
