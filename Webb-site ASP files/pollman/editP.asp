<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include file="pollmaster.asp"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim voteDB,startTime,endTime,rs,PID,QID,QID2,AID,AID2,PQID,PQID2,pollName,pollIntro,hint,question,answer,qOrder,aOrder,dir,_
	maxInt,minInt,listType,listTypeID,submit,title,a,x,blnAns
Call openMailRs(voteDB,rs)
submit=Request("submitEP")
PQID=getLng("PQID",0)
If PQID>0 Then
	'validate PQID and PID
	PID=CLng(voteDB.execute("SELECT IFNULL((SELECT PID FROM pollquestions WHERE PQID="&PQID&"),0)").Fields(0))
	If PID=0 Then PQID=0
	If PQID>0 Then blnAns=Answered(PQID)
Else
	'validate PID
	PID=getLng("PID",0)
	pollName=getPollName(PID)
	If pollName="" Then PID=0
End If

If submit="Add poll" Or submit="Update poll" Then
	pollName=Request("pollName")
	pollIntro=Request("pollIntro")
	startTime=MSdateTime(Request("startTime"))
	endTime=MSdateTime(Request("endTime"))
	listTypeID=1
	If pollName="" Then
		hint="The Poll Name cannot be blank. "
	ElseIf CBool(voteDB.Execute("SELECT EXISTS(SELECT PID FROM Polls WHERE pollName='"&apos(pollName)&"' AND PID<>"&PID&")").Fields(0)) Then
		hint="An existing poll has that name. Pick a different name. "
	ElseIf startTime>=endTime And endTime<>"" Then
		hint="WARNING: The Poll cannot end before it starts. Please change the time(s). "
	ElseIf PID=0 Then
		voteDB.Execute "INSERT INTO Polls(pollName,pollIntro,startTime,endTime)"&valsql(Array(pollName,pollIntro,startTime,endTime))
		PID=lastID(voteDB)
		hint=hint&"The poll has been added. "
	Else
		voteDB.execute "UPDATE Polls"&setsql("pollName,pollIntro,startTime,endTime",Array(pollName,pollIntro,startTime,endTime))&"PID="&PID
		hint=hint&"The poll has been amended. "
	End If
ElseIf PID>0 Then
	If submit="Confirm delete poll" Then
		'this will cascade to delete pollquestions, which cascades to delete pollqanda and responses containing PQID
		voteDB.Execute "DELETE FROM polls WHERE PID="&PID
		Call purgeQID 'purge orphaned questions
		Call purgeAID 'purge orphaned answers
		hint="That Poll has been deleted. "
		PID=0
	Else
		'not changing poll details, so retrieve those
		rs.Open "SELECT * FROM polls WHERE PID="&PID,voteDB
		pollName=rs("pollName")
		pollIntro=rs("pollIntro")
		startTime=MSdateTime(rs("startTime"))
		endTime=MSdateTime(rs("endTime"))
		dir=Request("dir")
		qOrder=getInt("qo",0)
		AID=getLng("AID",0)
		aOrder=getInt("ao",0)
		listTypeID=1
		QID=getInt("QID",0)
		If submit="Delete poll" Then
			hint=hint&"Are you sure you want to delete this poll? All corresponding records and Responses will be deleted."
		ElseIf dir>"" And qOrder>0 Then
			Call MoveQ(PID,qOrder,dir)
		ElseIf PQID>0 And aOrder>0 And dir>"" Then
			Call MoveA(PQID,aOrder,dir)
		ElseIf submit="Add question" Then
			'no PQID
			question=Trim(Request("question"))
			listTypeID=getInt("listTypeID",1)
			MaxInt=getInt("MaxInt","")
			MinInt=getInt("MinInt","")
			If question="" Then
				hint=hint&"The question cannot be blank. "
			ElseIf listTypeID=2 And (minInt="" or maxInt="") Then
				hint=hint&"Please specify a minimum and maximum. "
			ElseIf listTypeID=2 And maxInt<=minInt Then
				hint=hint&"Please specify a minimum and maximum. "
			Else
				'validated
				If listTypeID<>2 Then
					minInt=""
					maxInt=""
				End If
				QID=CLng(voteDB.Execute("SELECT IFNULL((SELECT QID FROM questions WHERE question='"&apos(question)&"'),0)").Fields(0))
				If QID=0 Then
					voteDB.Execute "INSERT INTO questions(question)"&valsql(Array(question))
					QID=CLng(lastID(voteDB))
				Else
					qOrder=CLng(voteDB.Execute("SELECT IFNULL((SELECT qOrder FROM pollquestions WHERE PID="&PID&" AND QID="&QID&"),0)").Fields(0))				
				End If
				'now try to add it to the Poll if not already in there
				If qOrder>0 Then
					hint=hint&"The question is already in the poll, question number "&qOrder&". "
				Else
					qOrder=nextQ(PID)
					voteDB.Execute "INSERT INTO pollquestions(PID,QID,qOrder,listTypeID,minInt,maxInt)"&valsql(Array(PID,QID,qOrder,listTypeID,minInt,maxInt))
					PQID=lastID(voteDB)
					hint=hint&" The question has been added to the Poll. "
				End If
			End If
		ElseIf QID>0 Then
			'adding question from question list
			question=getQuestion(QID)
			If question="" Then
				hint=hint&"Question not found. "
				QID=0
			Else
				qOrder=CLng(voteDB.execute("SELECT IFNULL((SELECT qOrder FROM pollquestions WHERE PID="&PID&" AND QID="&QID&"),0)").Fields(0))
				If qOrder>0 Then
					hint=hint&"That question is already in the poll, number "&qOrder&". "
				Else
					qOrder=nextQ(PID)
					voteDB.execute "INSERT INTO pollquestions(PID,QID,qOrder)"&valsql(Array(PID,QID,qOrder))
					PQID=lastID(voteDB)
					hint=hint&"The question was added, number "&qOrder&". "
					listTypeID=1 'default
				End If
			End If
		ElseIf PQID>0 Then
			If submit="Confirm remove question" Then
				'this cascades to delete from pollqanda and responses
				voteDB.execute "DELETE FROM pollquestions WHERE PQID="&PQID
				Call purgeQID 'purge question if orphaned
				Call purgeAID 'purge orphaned answers
				hint=hint&"The question has been removed from the poll and any responses were deleted. "
				PQID=0
				qOrder=RenumberQ(PID)
			Else
				'not removing poll question, so load details
				rs.Close
				rs.Open "SELECT pq.QID,maxInt,minInt,pq.listTypeID,question,qOrder FROM pollquestions pq JOIN questions q "&_
				"ON pq.QID=q.QID WHERE PQID="&PQID,voteDB
				QID=rs("QID")
				question=rs("question")
				listTypeID=rs("listTypeID")
				maxInt=rs("maxInt")
				minInt=rs("minInt")
				qOrder=rs("qOrder")
				PQID2=getLng("PQID2",0)
				If submit="Remove question" Then
					hint=hint&"Are you sure you want to remove this question from the poll? All corresponding responses will be deleted. "
				ElseIf submit="Update question" Then
					If blnAns Then
						'question has responses but we still allow changes to listType from radio to drop-down or vice versa
						If listTypeID<>2 Then
							listTypeID=getInt("listTypeID",1)
							If listTypeID<>rs("listTypeID") Then
								voteDB.Execute "UPDATE pollquestions"&setsql("listTypeID",Array(listTypeID))&"PQID="&PQID
								hint=hint&"The list type was changed. "
							End If
						End If
					Else
						'question has no responses, so we can change anything
						question=Trim(Request("question"))
						If question="" Then
							question=rs("question")
							hint=hint&"The question cannot be blank. "
						ElseIf question<>rs("question") Then
							QID2=CLng(voteDB.Execute("SELECT IFNULL((SELECT QID FROM questions WHERE question='"&apos(question)&"'),0)").Fields(0))
							If QID2>0 Then
								'Edited question matches another
								If CBool(voteDB.Execute("SELECT EXISTS(SELECT 1 FROM pollquestions WHERE PID="&PID&" AND QID="&QID2&")").Fields(0)) Then
									'QID is already in the Poll
									hint=hint&"That text matches another question in this poll. No changes have been made. "
									question=rs("question")
								Else
									voteDB.Execute "UPDATE pollquestions SET QID="&QID2&" WHERE PQID="&PQID
									hint=hint&"The question has been changed. "
									Call purgeQID 'purge question if old QID not used elsewhere
									QID=QID2
								End If
							Else
								If CLng(voteDB.Execute("SELECT COUNT(PQID) FROM pollquestions WHERE QID="&QID).Fields(0))>1 Then
									'another P uses that QID with its original text, so create a new one for the new text
									voteDB.Execute "INSERT INTO questions(question)"&valsql(Array(question))
									QID=lastID(voteDB)
									hint="The question has been amended with a new QID. "
								Else
									voteDB.Execute "UPDATE questions"&setsql("question",Array(question))&"QID="&QID
									hint="The question has been amended. "
								End If
							End If
						End If
						'now configure the poll question
						listTypeID=getInt("listTypeID",2)
						MaxInt=getInt("MaxInt","")
						MinInt=getInt("MinInt","")
						If listTypeID<>rs("listTypeID") Then
							If listTypeID=2 Then
								'on changing to integer range, the first submission won't have inputs
								If MinInt="" Or MaxInt="" Then
									hint=hint&"Please specify a minimum and maximum. "
									If CBool(voteDB.execute("SELECT EXISTS(SELECT 1 FROM pollqanda WHERE PQID="&PQID&")").Fields(0)) Then _
										hint=hint&"WARNING: If you do this then the answer list will be deleted. "
								ElseIf MaxInt<=MinInt Then
									hint=hint&"Try again:maximum must be greater than minimum. "
								Else
									voteDB.execute "UPDATE pollquestions"&setsql("listTypeID,MinInt,MaxInt",Array(2,MinInt,MaxInt))&"PQID="&PQID
									hint=hint&"Integer range added. "
									'delete orphaned Q&A
									voteDB.execute "DELETE FROM pollqanda WHERE PQID="&PQID
									Call purgeAID 'purge any orphaned answers
								End If
							Else
								'answer list (drop-down or radio), so nullify any integer range
								voteDB.execute "UPDATE pollquestions"&setsql("listTypeID,MinInt,MaxInt",Array(listTypeID,Null,Null))&"PQID="&PQID
								hint=hint&"The answer type has been changed. "
							End If
						ElseIf listTypeID=2 Then
							'type hasn't changed but min-max may have
							If MinInt="" Or MaxInt="" Then
								hint=hint&"Please specify a minimum and maximum. "
							ElseIf MaxInt<=MinInt Then
								hint=hint&"Try again:maximum must be greater than Minimum. "
							ElseIf maxInt<>rs("maxInt") Or minInt<>rs("minInt") Then
								voteDB.execute "UPDATE pollquestions"&setsql("MinInt,MaxInt",Array(MinInt,MaxInt))&"PQID="&PQID
								hint=hint&"Integer range amended. "
							End If
						End If
					End If
				ElseIf submit="Add answer" Then
					'no AID
					answer=Trim(Request.Form("answer"))
					If answer="" Then
						hint=hint&"The answer cannot be blank. "
					Else
						AID=CLng(voteDB.Execute("SELECT IFNULL((SELECT AID FROM answers WHERE answer='"&apos(answer)&"'),0)").Fields(0))
						If AID=0 Then
							voteDB.Execute "INSERT INTO answers(answer)"&valsql(Array(answer))
							AID=lastID(voteDB)
						End If
						'now try to add it to the poll question if not already in there
						aOrder=CLng(voteDB.Execute("SELECT IFNULL((SELECT aOrder FROM pollqanda WHERE PQID="&PQID&" AND AID="&AID&"),0)").Fields(0))
						If aOrder>0 Then
							hint=hint&"The answer is already in the list with number "&aOrder&". "
						Else
							aOrder=nextA(PQID)
							voteDB.Execute "INSERT INTO pollqanda(PQID,AID,aOrder)"&valsql(Array(PQID,AID,aOrder))				
							hint=hint&" The answer has been added to the list. "
						End If
						AID=0
						answer=""
					End If
				ElseIf PQID2>0 And listTypeID<>2 Then
					'import answers from another same question in another poll
					rs.Close
					rs.Open "SELECT AID FROM pollqanda WHERE PQID="&PQID2&" AND AID NOT IN(SELECT AID FROM pollqanda WHERE PQID="&PQID&" ORDER BY aOrder)",voteDB
					If rs.EOF Then
						hint=hint&"No answers found to import. "
					Else
						aOrder=nextA(PQID)
						Do Until rs.EOF
							voteDB.Execute "INSERT INTO pollqanda(PQID,AID,aOrder)"&valsql(Array(PQID,rs("AID"),aOrder))
							aOrder=aOrder+1
							rs.MoveNext
						Loop
						hint=hint&"Answers imported. "
					End If
				ElseIf AID>0 Then
					'edit or remove an answer
					rs.Close
					rs.Open "SELECT answer,aOrder FROM pollqanda pqa JOIN answers a ON pqa.AID=a.AID WHERE pqa.PQID="&PQID&" AND pqa.AID="&AID,voteDB
					If rs.EOF Then
						hint="No such answer in this poll question. "
						AID=0
					Else
						answer=rs("answer")
						aOrder=rs("aOrder")
						If blnAns Then
							hint="That poll question has already been answered by one or more respondents. "&_
								"For poll integrity, the answer cannot be amended or removed. You can only remove the question. "
							AID=0
						ElseIf submit="Remove answer" Then
							voteDB.Execute "DELETE FROM pollqanda WHERE PQID="&PQID&" AND AID="&AID
							aOrder=RenumberA(PQID)
							hint=hint&"The answer has been removed from the question. "
							Call purgeAID 'delete answer if orphaned
							AID=0
						ElseIf submit="Update answer" Then
							answer=Trim(Request("answer"))
							If answer="" Then
								answer=rs("answer")
								hint=hint&"The answer cannot be blank. No change was made. "
							ElseIf answer=rs("answer") Then
								hint=hint&"No change was submitted. "
							Else
								AID2=CLng(voteDB.execute("SELECT IFNULL((SELECT AID FROM answers WHERE answer='"&apos(answer)&"'),0)").Fields(0))
								If AID2>0 Then
									'matches another answer in DB
									If CBool(voteDB.Execute("SELECT EXISTS(SELECT 1 FROM pollqanda WHERE PQID="&PQID&" AND AID="&AID2&")").Fields(0)) Then
										hint="That text matches another answer to this question. No changes have been made. "
									Else
										voteDB.Execute "UPDATE pollqanda"&setsql("AID",Array(AID2))&"PQID="&PQID&" AND AID="&AID
										hint=hint&"The answer has been changed. "
										Call purgeAID
										AID=0
										answer=""
									End If
								ElseIf CBool(voteDB.Execute("SELECT EXISTS(SELECT 1 FROM pollqanda WHERE PQID<>"&PQID&" AND AID="&AID&")").Fields(0)) Then
									'another PQ uses that AID, so create a new one for the new text
									voteDB.Execute "INSERT INTO answers (answer)"&valsql(Array(answer))
									AID2=lastID(voteDB)
									voteDB.Execute "UPDATE pollqanda"&setsql("AID",Array(AID2))&"PQID="&PQID&" AND AID="&AID
									AID=0
									answer=""
									hint=hint&"The old answer is used by another question so it has been amended with a new AID. "
								Else
									voteDB.Execute "UPDATE answers"&setsql("answer",Array(answer))&"AID="&AID
									hint=hint&"The answer has been amended. "
									AID=0
									answer=""
								End If
							End If
						End If
					End If
				End If
			End If
		End If
		rs.Close
	End If
End If
title=IIF(PID>0,"Edit","Add")&" Poll"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call pollBar(PID,PQID,IIF(PID=0,6,2))%>
<p><b><%=hint%></b></p>
<%If PID>0 Then%><p><b>Poll ID:<%=PID%></b></p><%End If%>
<form method="post" action="editP.asp">
	<p>Poll name <input type="text" name="pollName" size="40" value="<%=pollName%>"></p>
	<p>Start time <input type="datetime-local" name="startTime" value="<%=startTime%>"> 
	End time <input type="datetime-local" name="endTime" value="<%=endTime%>"></p>
	<p>Introduction</p>
	<p><textarea rows="7" name="pollIntro" cols="99"><%=pollIntro%></textarea></p>
	<p>
	<%If PID>0 Then %>
		<input type="hidden" name="PID" value="<%=PID%>">
		<input type="submit" name="submitEP" value="Update poll">
		<%If submit="Delete poll" Then%>
			<input type="submit" name="submitEP" style="color:red" value="Confirm delete poll">
		<%Else%>
			<input type="submit" name="submitEP" value="Delete poll">
		<%End If%>
	<%Else%>
		<input type="submit" name="submitEP" value="Add poll">
	<%End If%>
	</p>
</form>
<%If PID>0 Then%>
	<h3>Questions</h3>
	<%rs.Open "SELECT PQID,qOrder,question,listType,MinInt,MaxInt FROM pollquestions pq JOIN (questions q,listtypes l)"&_
		"ON pq.QID=q.QID AND pq.listTypeID=l.listTypeID WHERE PID="&PID&" ORDER BY qOrder",voteDB
	If rs.EOF Then%>
		<p>None found. </p>
	<%Else
		a=rs.GetRows%>
		<table class="txtable lcr l2cr">
			<tr>
				<th colspan="<%=IIF(Ubound(a,2)>0,3,1)%>"></th>
				<th><b>Click to edit</b></th>
				<th><b>Type</b></th>
				<th><b>Min Int</b></th>
				<th><b>Max Int</b></th>
			</tr>
			<%For x=0 to Ubound(a,2)%>
				<tr>
					<%If Ubound(a,2)>0 Then%>
						<td>
							<%If x>0 Then%>
								<a href="editP.asp?PID=<%=PID%>&amp;qo=<%=a(1,x)%>&amp;dir=up">Move up</a>
							<%End If%>
						</td>
						<td>
							<%If x<Ubound(a,2) Then%>
								<a href="editP.asp?PID=<%=PID%>&amp;qo=<%=a(1,x)%>&amp;dir=dn">Move down</a>
							<%End If%>
						</td>
					<%End If%>
					<td><%=a(1,x)%></td>
					<td><a href="editP.asp?PQID=<%=a(0,x)%>"><%=a(2,x)%></a></td>
					<td><%=a(3,x)%></td>
					<td><%=a(4,x)%></td>
					<td><%=a(5,x)%></td>
				</tr>
			<%Next%>
		</table>
	<%End If
	rs.close
	Call questionBar(PID,PQID,IIF(PQID>0,1,2))%>
	<%=IIF(PQID>0,"<p>Question number: "&qOrder&"</p>","")%>
	<form method="post" action="editP.asp">
		<input type="hidden" name="PID" value="<%=PID%>">
		<div class="inputs">
			<%If Not blnAns Then%>
				<p>Answer type: <%=arrSelect("listTypeID",listTypeID,voteDB.Execute("SELECT * FROM listtypes").GetRows,False)%></p>			
			<%ElseIf listTypeID<>2 Then 'allow change in answered question from drop-down to radio or vice versa%>
				<p>Answer type: <%=arrSelect("listTypeID",listTypeID,voteDB.Execute("SELECT * FROM listtypes WHERE listTypeID<>2").GetRows,False)%></p>
			<%Else%>
				<input type="hidden" name="listTypeID" value="<%=listTypeID%>">
			<%End If%>
		</div>
		<div class="clear"></div>
		<%If PQID=0 Or Not blnAns Then%>
			<div class="inputs">
				<input type="text" name="question" size="70" value="<%=htmlEnt(question)%>">
			</div>
		<%Else%>
			<p><b>Question: <%=question%></b></p>
		<%End If%>
		<div class="clear"></div>
		<%If PQID=0 Or (listTypeID=2 And Not blnAns) Then%>
			<div class="inputs">
				<p>Minimum: <input type="number" step="1" min="-32768" max="32766" name="MinInt" size="6" value="<%=MinInt%>"> 
				Maximum: <input type="number" step="1" min="-32767" max="32767" name="MaxInt" size="6" value="<%=MaxInt%>">
				</p>
			</div>
			<div class="clear"></div>
		<%End If%>
		<div class="inputs">
			<%If PQID=0 Then%>
				<input type="submit" name="submitEP" value="Add question">
			<%Else%>
				<input type="hidden" name="PQID" value="<%=PQID%>">
				<%If Not blnAns Or listTypeID<>2 Then%>
					<input type="submit" name="submitEP" value="Update question">
				<%End If%>
				<%If submit="Remove question" Then%>
					<input type="submit" name="submitEP" style="color:red" value="Confirm remove question">
				<%Else%>
					<input type="submit" name="submitEP" value="Remove question">
				<%End If%>
			<%End If%>
		</div>
		<div class="clear"></div>
	</form>
	<%If PQID>0 And listTypeID<>2 Then%>
		<h3>Answers</h3>
		<%rs.Open "SELECT p.AID,answer,aOrder FROM pollqanda p JOIN answers a ON p.AID=a.AID WHERE PQID="&PQID&" ORDER BY aOrder",voteDB
		If rs.EOF Then%>
			<p>None found. </p>
		<%Else
			a=rs.GetRows%>
			<table class="txtable">
				<tr>
					<th colspan="<%=IIF(Ubound(a,2)>0,3,1)%>"></th>
					<th>Click to edit</th>
				</tr>
				<%For x=0 to Ubound(a,2)%>
					<tr>
						<%If Ubound(a,2)>0 Then%>
							<td>
								<%If a(2,x)>1 Then%>
									<a href="editP.asp?PQID=<%=PQID%>&dir=up&amp;ao=<%=a(2,x)%>">Move up</a>
								<%End If%>
							</td>
							<td>
								<%If x<Ubound(a,2) Then%>
									<a href="editP.asp?PQID=<%=PQID%>&dir=dn&amp;ao=<%=a(2,x)%>">Move down</a>
								<%End If%>
							</td>
						<%End If%>
						<td><%=a(2,x)%></td>
						<td><a href="editP.asp?AID=<%=a(0,x)%>&amp;PQID=<%=PQID%>"><%=a(1,x)%></a></td>
					</tr>
				<%Next%>
			</table>
		<%End If
		rs.Close
		rs.Open "SELECT pq.PQID,pq.PID,pollName,COUNT(*)cnt FROM pollquestions pq JOIN (polls p,pollqanda pqa) ON pq.PID=p.PID AND "&_
			"pq.PQID=pqa.PQID WHERE listTypeID<>2 AND pq.PID<>"&PID&" AND pq.QID="&QID&" AND pqa.AID NOT IN "&_
			"(SELECT AID FROM pollqanda WHERE PQID="&PQID&") GROUP BY PQID HAVING cnt>0",voteDB
		If Not rs.EOF Then%>
			<p>This question is in other polls with answers that you haven't added. Select to import.</p>
			<table class="numtable fcl">
				<tr>
					<th>Click to view poll</th>
					<th>Number of answers</th>
					<th></th>
				</tr>
				<%Do Until rs.EOF%>
					<tr>
						<td><a target="_blank" href='poll.asp?PID=<%=rs("PID")%>'><%=rs("pollName")%></a></td>
						<td><%=rs("cnt")%></td>
						<td><a href="editP.asp?PQID=<%=PQID%>&amp;PQID2=<%=rs("PQID")%>">Import</a></td>						
					</tr>
					<%rs.MoveNext
				Loop%>
			</table>
		<%End If
		rs.Close
		Call answerBar(PQID,AID,IIF(AID>0,1,2))%>
		<%=IIF(AID>0,"<p>Answer number: "&aOrder&"</p>","")%>
		<form method="post" action="editP.asp">
			<input type="hidden" name="PQID" value="<%=PQID%>">
			<%If AID=0 Or Not blnAns Then%>
				<div class="inputs">
					<input type="text" name="answer" size="70" value="<%=htmlEnt(answer)%>">
				</div>
				<div class="clear"></div>
			<%Else%>
				<p><b>Answer: <%=answer%></b></p>
			<%End If%>
			<div class="inputs">
				<%If AID=0 Then%>
					<input type="submit" name="submitEP" value="Add answer">
				<%Else%>
					<input type="hidden" name="AID" value="<%=AID%>">
					<%If Not blnAns Then%>
						<input type="submit" name="submitEP" value="Update answer">
					<%End If%>
					<input type="submit" name="submitEP" value="Remove answer">
				<%End If%>
			</div>
			<div class="clear"></div>
		</form>
	<%End If
End If%>
<%Call closeConRs(voteDB,rs)%>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>