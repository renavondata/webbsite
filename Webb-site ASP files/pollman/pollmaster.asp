<%Sub pollBar(PID,PQID,t)%>
	<ul class="navlist">
		<%=btn(1,"default.asp","List polls",t)%>
		<%If PID>0 Then%>
			<%=btn(2,"editP.asp?PID="&PID,"Edit poll",t)%>
			<%=btn(3,"listQ.asp?PID="&PID,"Pick question",t)%>
			<%=btn(5,"poll.asp?PID="&PID,"Preview poll",t)%>
		<%End If%>
		<%=btn(6,"editP.asp","Add poll",t)%>
		<%If PQID>0 Then%>
			<%=btn(7,"editP.asp?PQID="&PQID,"Edit question",t)%>
		<%End If%>
		<%If PQID>0 Then%>
			<%=btn(4,"listA.asp?PQID="&PQID,"Pick answer",t)%>
		<%End If%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub questionBar(PID,PQID,t)%>
	<ul class="navlist">
		<%If PQID>0 Then%>
			<%=btn(1,"editP.asp","Edit question",t)%>
		<%End If%>
		<%=btn(2,"editP.asp?PID="&PID,"New question",t)%>
		<%=btn(3,"listQ.asp?PID="&PID,"Add existing question",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub answerBar(PQID,AID,t)%>
	<ul class="navlist">
		<%If PQID>0 And AID>0 Then%>
			<%=btn(1,"editP.asp?PQID="&PQID&"&amp;AID="&AID,"Edit answer",t)%>
		<%End If%>
		<%=btn(2,"editP.asp?PQID="&PQID,"New answer",t)%>
		<%=btn(3,"listA.asp?PQID="&PQID,"Add existing answer",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Function GetAnswer(AID)
	If AID<>"" Then
		GetAnswer=voteDB.Execute("SELECT IFNULL((SELECT answer FROM answers WHERE AID="&AID&"),'')").Fields(0)
	End If
End Function

Function GetQuestion(QID)
	If QID>0 Then
		GetQuestion=voteDB.Execute("SELECT IFNULL((SELECT question FROM questions WHERE QID="&QID&"),'')").Fields(0)
	End If
End Function

Function GetPollName(PID)
	If PID<>"" Then
		GetPollName=voteDB.Execute("SELECT IFNULL((SELECT pollName FROM Polls WHERE PID="&PID&"),'')").Fields(0)
	End If
End Function

Function RenumberQ(PID)
	'renumber the Questions in a Poll and return next number
	If PID>0 Then
		Dim voteDB,rs
		Call openMailRs(voteDB,rs)
		RenumberQ=1
		rs.Open "SELECT PQID FROM PollQuestions WHERE PID="&PID&" ORDER BY qOrder",voteDB
		Do Until rs.EOF
			voteDB.Execute "UPDATE PollQuestions SET qOrder="&RenumberQ&" WHERE PQID="&rs("PQID")
			RenumberQ=RenumberQ+1
			rs.MoveNext
		Loop
		Call closeConRs(voteDB,rs)
	End If
End Function

Function RenumberA(PQID)
	'renumber the Answers in a Poll Question to close gaps and return next number
	If PQID>0 Then
		Dim voteDB,rs,AID
		Call openMailrs(voteDB,rs)
		RenumberA=1
		rs.Open "SELECT AID FROM PollQandA WHERE PQID="&PQID&" ORDER BY aOrder",voteDB
		Do Until rs.EOF
			voteDB.Execute "UPDATE PollQandA SET aOrder="&RenumberA&" WHERE PQID="&PQID&" AND AID="&rs("AID")
			RenumberA=RenumberA+1
			rs.MoveNext
		Loop
		Call closeConRs(voteDB,rs)
	End If
End Function

Sub MoveQ(PID,o,dir)
	'move question number Order up or down the list
	'assumes Qs are numbered 1..n to start with
	Dim voteDB,last
	Call openMailDB(voteDB)
	If dir="up" And o>1 Then
		voteDB.Execute "UPDATE PollQuestions SET qOrder=0 WHERE PID="&PID&" AND qOrder="&(o-1)
		voteDB.Execute "UPDATE PollQuestions SET qOrder="&(o-1)&" WHERE PID="&PID&" AND qOrder="&o
		voteDB.Execute "UPDATE PollQuestions SET qOrder="&o&" WHERE PID="&PID&" AND qOrder=0"
	ElseIf dir="dn" Then
		last=CLng(voteDB.Execute("SELECT Max(qOrder) FROM PollQuestions WHERE PID="&PID).Fields(0))
		If o<last Then
			voteDB.Execute "UPDATE PollQuestions SET qOrder=0 WHERE PID="&PID&" AND qOrder="&(o+1)
			voteDB.Execute "UPDATE PollQuestions SET qOrder="&(o+1)&" WHERE PID="&PID&" AND qOrder="&o
			voteDB.Execute "UPDATE PollQuestions SET qOrder="&o&" WHERE PID="&PID&" AND qOrder=0"
		End If
	End If
	Call closeCon(voteDB)
End Sub

Sub MoveA(PQID,o,dir)
	'move Answer number Order up or down the list
	'assumes Answers are numbered 1..n to start with
	Dim voteDB,last
	Call openMailDB(voteDB)
	If dir="up" And o>1 Then
		voteDB.Execute "UPDATE PollQandA SET aOrder=0 WHERE PQID="&PQID&" AND aOrder="&(o-1)
		voteDB.Execute "UPDATE PollQandA SET aOrder="&(o-1)&" WHERE PQID="&PQID&" AND aOrder="&o
		voteDB.Execute "UPDATE PollQandA SET aOrder="&o&" WHERE PQID="&PQID&" AND aOrder=0"
	ElseIf dir="dn" Then
		last=CInt(voteDB.Execute("SELECT IFNULL(Max(aOrder),0) FROM pollqanda WHERE PQID="&PQID).Fields(0))
		If o<last Then
			voteDB.Execute "UPDATE PollQandA SET aOrder=0 WHERE PQID="&PQID&" AND aOrder="&(o+1)
			voteDB.Execute "UPDATE PollQandA SET aOrder="&(o+1)&" WHERE PQID="&PQID&" AND aOrder="&o
			voteDB.Execute "UPDATE PollQandA SET aOrder="&o&" WHERE PQID="&PQID&" AND aOrder=0"
		End If
	End If
	Call closeCon(voteDB)
End Sub

Function Answered(PQID)
	Answered=CBool(voteDB.Execute("SELECT EXISTS(SELECT 1 FROM responses WHERE PQID="&PQID&")").Fields(0))
End Function

Function nextQ(PID)
	'return next question number to add
	nextQ=1+CLng(voteDB.Execute("SELECT IFNULL(Max(qOrder),0) FROM pollquestions WHERE PID="&PID).Fields(0))
End Function

Function nextA(PQID)
	'return next answer number to add
	nextA=1+CLng(voteDB.Execute("SELECT IFNULL(Max(aOrder),0) FROM pollqanda WHERE PQID="&PQID).Fields(0))
End Function

Sub purgeAID
	voteDB.Execute "DELETE FROM answers WHERE AID NOT IN(SELECT DISTINCT AID FROM pollqanda)"
End Sub

Sub purgeQID
	voteDB.execute "DELETE FROM questions WHERE QID NOT IN(SELECT DISTINCT QID FROM pollquestions)"
End Sub
%>
