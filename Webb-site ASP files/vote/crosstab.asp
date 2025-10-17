<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="../dbpub/functions1.asp"-->
<%Dim MailDB,PID,StartTime,EndTime,NowTime,blnClosed,Qs,PQID,cmd,PollName,blnReady,Hint,Title,_
	pq1,pq2,Q1,Q2,A1cnt,A2cnt,cnt1,cnt2,score,rowTot,totSum,arrScore,arrA1,arrA2,type1,type2
blnReady=False
Dim rowCount,x,colTotal
Call openMailRs(mailDB,Qs)
pq1=Request("pq1")
pq2=Request("pq2")
If pq1="" Or Not isNumeric(pq1) Then pq1=0
If pq2="" Or Not isNumeric(pq2) Then pq2=0
Qs.Open "SELECT PID, Question,ListTypeID FROM pollquestions JOIN Questions ON pollquestions.QID=Questions.QID WHERE PQID="&pq1,MailDB
If Qs.EOF Then
	Hint="The first question does not exist. "
Else
	Q1=Qs("Question")
	PID=Qs("PID")
	type1=Qs("ListTypeID")
End If
Qs.Close
If PID<>"" Then
	Qs.Open "SELECT * FROM Polls WHERE PID="&PID,MailDB
	NowTime=Now()
	StartTime=Qs("StartTime")
	If NowTime<StartTime and Not IsNull(StartTime) Then
		Hint="That Poll has not yet started. "
	Else
		blnReady=True
		EndTime=Qs("EndTime")
		blnClosed=(NowTime>=EndTime)
		PollName=Qs("PollName")
	End If
	Qs.Close
End If
Qs.Open "SELECT PID, Question,ListTypeID FROM pollquestions JOIN Questions ON pollquestions.QID=Questions.QID WHERE PQID="&pq2,MailDB
If Qs.EOF Then
	Hint=Hint & "The second question does not exist. "
	blnReady=False
Else
	Q2=Qs("Question")
	type2=Qs("ListTypeID")
	If PID<>Qs("PID") Then Hint=Hint & "The second question is from a different poll. "
End If
Qs.Close
If type1=2 or type2=2 Then
	Hint=Hint & "One of the questions has an integer range as the answer, so it cannot be cross-tabbed. "
	blnReady=False
End If
If blnready Then
	Qs.Open "SELECT Answer FROM pollqanda JOIN Answers ON pollqanda.AID=Answers.AID WHERE PQID="&pq1&" ORDER BY AOrder"
	arrA1=Qs.getrows()
	Qs.Close
	A1cnt=Ubound(arrA1,2)+2
	'getrows is zero-based, and we also have the "no response" answer
	Qs.Open "SELECT Answer FROM pollqanda JOIN Answers ON pollqanda.AID=Answers.AID WHERE PQID="&pq2&" ORDER BY AOrder"
	arrA2=Qs.getrows()
	Qs.Close
	A2cnt=Ubound(arrA2,2)+2
	ReDim arrScore(A1cnt,A2cnt)
	'Use the first element of each array row (0,n) to hold the rowTot
	'Use the first element of each array column (n,0) to hold the colsum
End If
Title="Crosstab analysis of poll: "&PollName%>
<title><%=Title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<ul class="navlist">
	<li><a href="poll.asp?p=<%=PID%>">Poll</a></li>
	<li><a href="result.asp?p=<%=PID%>">Results</a></li>
	<li><a href="default.asp">More polls</a> </li>
</ul>
<div class="clear"></div>
<h2><%=Title%></h2>
<p><b><%=Hint%></b></p>
<%If blnReady Then%>
	<table class="txtable">
	<tr><td>Current time: </td><td><%=MSdateTime(NowTime)%></td></tr>
	<tr><td>Closing time: </td><td>
	<%
	If IsNull(EndTime) Then
		Response.Write "Not yet set"
	Else
		Response.Write MSdateTime(EndTime)&"</td></tr><tr><td>Time remaining: </td><td><b>"
		If blnClosed Then
			Response.Write "Poll closed</b>"
		Else
			Response.Write DiffTimeStr(NowTime,EndTime)&"</b>"
		End If
	End If
	%>
	</td></tr></table>
	<%If isNull(EndTime) Or Not blnClosed Then%>
		<p><b>This poll is still open - <a href="poll.asp?p=<%=PID%>">click here</a> to vote or to change your vote!</b></p>
	<%End If%>
	<hr/>
	<h3>By votes cast</h3>
	<table class="numtable">
		<tr><td colspan="2" rowspan="2"></td><td colspan="<%=A1cnt%>" style="text-align:center"><%=Q1%></td></tr>
		<tr>
			<td>No response</td>
			<%For cnt1=0 to Ubound(arrA1,2)%>
				<td><%=arrA1(0,cnt1)%></td>
			<%Next%>
			<td>Total</td>
		</tr>
		<%
		Qs.Open "Call crosstab("&pq1&","&pq2&")",mailDB
		'First row is special because it contains Q2 and the double no-response cell%>
		<tr>
			<td rowspan="<%=A2cnt+1%>" class="left" style="vertical-align:middle"><%=Q2%></td>
			<td>No response</td>
			<td></td>
			<%rowTot=0
			Qs.MoveNext
			For cnt1=2 to A1cnt
				score=CInt(Qs("Score"))
				arrScore(cnt1,1)=score
				rowTot=rowTot+score
				arrScore(cnt1,0)=arrScore(cnt1,0)+score%>
				<td><%=score%></td>
				<%Qs.MoveNext
			Next
			arrScore(0,1)=rowTot
			totSum=rowTot%>
			<td><%=rowTot%></td>
		</tr>
		<%For cnt2=2 to A2cnt%>
			<tr>
			<td><%=arrA2(0,cnt2-2)%></td>
			<%rowTot=0
			For cnt1=1 to A1cnt
				score=CInt(Qs("Score"))
				arrScore(cnt1,cnt2)=score
				rowTot=rowTot+score
				arrScore(cnt1,0)=arrScore(cnt1,0)+score%>
				<td><%=score%></td>
				<%Qs.MoveNext
			Next
			arrScore(0,cnt2)=rowTot
			totSum=totSum+rowTot%>
			<td><%=rowTot%></td></tr>
		<%Next%>
		<tr class="total">
			<td>Total</td>
			<%For cnt1=1 to A1cnt%>
				<td><%=arrScore(cnt1,0)%></td>
			<%Next%>
			<td><b><%=totSum%></b></td>
		</tr>
	</table>
	<h3>Percentage share of X-question</h3>
	<table class="numtable">
		<tr><td colspan="2" rowspan="2"></td><td colspan="<%=A1cnt%>" style="text-align:center"><%=Q1%></td></tr>
		<tr>
			<td>No response</td>
			<%For cnt1=0 to Ubound(arrA1,2)%>
				<td><%=arrA1(0,cnt1)%></td>
			<%Next%>
		</tr>
		<tr>
		<td rowspan="<%=A2cnt+1%>" class="left" style="vertical-align:middle"><%=Q2%></td>
		<td>No response</td>
		<td></td>
		<%For cnt1=2 to A1cnt
			If arrScore(cnt1,0)<>0 Then%>
				<td><%=FormatPercent(arrScore(cnt1,1)/arrScore(cnt1,0),1)%></td>
			<%Else%>
				<td>NA</td>
			<%End If
		Next%>
		</tr>
		<%For cnt2=2 to A2cnt%>
		<tr>
			<td><%=arrA2(0,cnt2-2)%></td>
			<%For cnt1=1 to A1cnt
				If arrScore(cnt1,0)<>0 Then%>
					<td><%=FormatPercent(arrScore(cnt1,cnt2)/arrScore(cnt1,0),1)%></td>
				<%Else%>
					<td>NA</td>
				<%End If
			Next%>
		</tr>
		<%Next%>
		<tr class="total"><td>Total</td>
		<%For cnt1=1 to A1cnt%>
			<td>100.0%</td>
		<%Next%>
		</tr>
	</table>
	<h3>Percentage share of Y-question</h3>
	<table class="numtable">
		<tr><td colspan="2" rowspan="2"></td><td colspan="<%=A1cnt%>" style="text-align:center"><%=Q1%></td></tr>
		<tr>
			<td>No response</td>
			<%For cnt1=0 to Ubound(arrA1,2)%>
				<td><%=arrA1(0,cnt1)%></td>
			<%Next%>
			<td>Total</td>
		</tr>
		<tr>
			<td rowspan="<%=A2cnt%>" class="left" style="vertical-align:middle"><%=Q2%></td>
			<td>No response</td>
			<td></td>
			<%For cnt1=2 to A1cnt
				If arrScore(0,1)<>0 Then%>
					<td><%=FormatPercent(arrScore(cnt1,1)/arrScore(0,1),1)%></td>
				<%Else%>
					<td>NA</td>
				<%End If
			Next%>
			<td>100.0%</td>
		</tr>
		<%For cnt2=2 to A2cnt%>
		<tr>
			<td><%=arrA2(0,cnt2-2)%></td>
			<%For cnt1=1 to A1cnt
				If arrScore(0,cnt2)<>0 Then%>
					<td><%=FormatPercent(arrScore(cnt1,cnt2)/arrScore(0,cnt2),1)%></td>
				<%Else%>
					<td>NA</td>
				<%End If
			Next%>
			<td>100.0%</td>
		</tr>
		<%Next%>
	</table>
	<p><a href="result.asp?p=<%=PID%>">Back to poll results</a></p>
	<%Qs.Close
End If
Call CloseConRs(mailDB,Qs)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>