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
Dim voteDB,rs,AID,PID,QID,PQID,pollName,question,blnFound,aOrder,Hint,listTypeID,title,answer
Call openMailRs(voteDB,rs)
PQID=getLng("PQID",0)
If PQID=0 Then
	hint=hint&"Poll question not specified. "
Else
	rs.Open "SELECT p.PID,q.QID,listTypeID,pollName,question From pollquestions pq JOIN (polls p,questions q) "&_
		"ON pq.PID=p.PID AND pq.QID=q.QID WHERE PQID="&PQID,voteDB
	If rs.EOF Then
		hint="Poll question not found. "
		PQID=0
	Else
		PID=rs("PID")
		QID=rs("QID")
		pollName=rs("pollName")
		question=rs("question")
		If CInt(rs("ListTypeID"))=2 Then
			hint="That poll question has an integer range answer type. Change the answer type before trying to add an answer. "
		Else
			AID=getLng("AID",0)
			If AID>0 Then
				answer=getAnswer(AID)
				If answer="" Then
					hint=hint&"Answer not found. "
					AID=0
				Else
					'now try to add it to the PollQandA if not already in there
					If CBool(voteDB.Execute("SELECT EXISTS(SELECT 1 FROM pollqanda WHERE PQID="&PQID&" AND AID="&AID&")").Fields(0)) Then
						hint="That answer is already in the poll question. "
					Else
						aOrder=1+CLng(voteDB.Execute("SELECT IFNULL(Max(aOrder),0) FROM pollqanda WHERE PQID="&PQID).Fields(0))
						voteDB.execute "INSERT INTO pollqanda(PQID,AID,aOrder)"&valsql(Array(PQID,AID,aOrder))
						hint="Answer added to poll question. "
					End If
				End If
			End If
		End If
	End If
	rs.Close
End If
title="Pick answer for question"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call pollBar(PID,PQID,4)%>
<p><b><%=hint%></b></p>
<table class="txtable">
	<tr>
		<td>Poll name:</td>
		<td><%=pollName%></td>
	</tr>
	<tr>
		<td>Question:</td>
		<td><%=question%></td>
	</tr>
	<%If AID>0 Then%>
		<tr>
			<td>Answer:</td>
			<td><%=answer%></td>
		</tr>
	<%End If%>
</table>
<table class="txtable">
	<tr>
		<th><b>Click to select answer for question</b></th>
	</tr>
	<%rs.Open "SELECT * FROM answers ORDER BY answer",voteDB
	Do Until rs.EOF
		AID=rs("AID")%>
		<tr>
			<td><a href="listA.asp?AID=<%=AID%>&amp;PQID=<%=PQID%>"><%=rs("answer")%></a></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call closeConRs(voteDB,rs)%>
</table>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>