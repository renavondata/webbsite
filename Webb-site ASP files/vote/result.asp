<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="../dbpub/functions1.asp"-->
<%Dim mailDB,PID,StartTime,EndTime,NowTime,rs,blnClosed,Qs,PQID,MinInt,Answers,Responses,PollName,PollIntro,blnReady,Hint,Title,qCnt,canCross
blnReady=False
canCross=0
Dim arrQ,arrAns,rowCount,x,y,colTotal
Call openMailRs(mailDB,rs)
PID=getLng("p",0)
If PID=0 Then
	Hint="No Poll was specified! "
Else
	rs.Open "SELECT * FROM Polls WHERE PID="&PID,MailDB
	If rs.EOF Then
		Hint="No such poll! "
	Else
		NowTime=Now()
		StartTime=rs("StartTime")
		If NowTime<StartTime and Not IsNull(StartTime) Then
			Hint="That Poll has not yet started. "
		Else
			blnReady=True
			EndTime=rs("EndTime")
			blnClosed=(NowTime>=EndTime)
			PollName=rs("PollName")
			PollIntro=rs("PollIntro")
		End If
	End If
	rs.Close
End If
Title="Poll results: "&PollName%>
<title><%=Title%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<ul class="navlist">
	<li><a href="poll.asp?p=<%=PID%>">Poll</a></li>
	<li id="livebutton">Results</li>
	<li><a href="default.asp">More polls</a> </li>
</ul>
<div class="clear"></div>
<h2><%=Title%></h2>
<p><b><%=Hint%></b></p>
<%If blnReady Then%>
	<table class="txtable">
	<tr><td>Current time: </td><td><%=MSdateTime(NowTime)%></td></tr>
	<tr><td>Closing time: </td><td>
	<%If IsNull(EndTime) Then
		Response.Write "Not yet set"
	Else
		Response.Write MSdateTime(EndTime)&"</td></tr><tr><td>Time remaining: </td><td><b>"
		If blnClosed Then
			Response.Write "Poll closed</b>"
		Else
			Response.Write DiffTimeStr(NowTime,EndTime)&"</b>"
		End If
	End If%>
	</td></tr></table>
	<%If isNull(EndTime) Or Not blnClosed Then%>
	<p><b>This poll is still open - <a href="poll.asp?p=<%=PID%>">click here</a> to vote or to change your vote!</b></p>
	<%End If
	If PollIntro<>"" Then%>
		<h3>Introduction</h3>
		<p><%=PollIntro%></p>
	<%End If
	Set Qs=Server.CreateObject("ADODB.Recordset")
	Set Answers=Server.CreateObject("ADODB.Recordset")
	Qs.Open "SELECT PQID,Question,MinInt,MaxInt FROM pollquestions JOIN questions on pollquestions.QID=Questions.QID WHERE PID="&PID&" ORDER BY Qorder",MailDB
	arrQ=Qs.Getrows()
	Qs.Close
	qCnt=UBound(arrQ,2)
	For y=0 to qCnt
		If isNull(arrQ(2,y)) Then canCross=canCross+1
	Next
	For y=0 to qCnt%>
		<hr>
		<p><b><%=1+y&". "&arrQ(1,y)%></b></p>
		<%PQID=arrQ(0,y)
		If IsNull(arrQ(2,y)) Then
			'MinInt is Null, so Question has an Answer list
			Answers.Open "SELECT Answer,Count(UserID) as score FROM pollqanda JOIN Answers ON pollqanda.AID=Answers.AID "&_
				"LEFT JOIN Responses ON PollQanda.PQID=Responses.PQID AND pollqanda.AID=Responses.AID "&_		
				"WHERE pollqanda.PQID="&PQID&" GROUP BY Answer ORDER BY Aorder",MailDB
		Else
			'Question had an integer range
			If arrQ(3,y)=100 Then
				'percentage
				Answers.Open "SELECT Count(AID) as count,AVG(AID) AS score FROM Responses WHERE PQID="&PQID,MailDB%>
				<p>Number of respondents: <%=Answers("count")%></p>
				<p>Average response: <%=FormatPercent(CDbl(Answers("score"))/100,1)%></p>
				<%Answers.MoveNext
			Else 
				Answers.Open "SELECT AID,Count(UserID) AS score FROM Responses WHERE PQID="&PQID&" GROUP BY AID ORDER BY AID",MailDB
			End If
		End If	
		If not Answers.EOF Then
			arrAns=Answers.Getrows()
			Answers.Close
			rowCount=UBound(arrAns,2)
			colTotal=ColSum(arrAns,1)
			%>
			<table class="numtable">
			<tr>
				<th class="left"><b>Answer</b></th>
				<th><b>Responses</b></th>
				<th><b>Share</b></th>
			</tr>
			<%For x=0 to rowCount%>
				<tr>
					<td class="left"><%=arrAns(0,x)%></td>
					<td><%=arrAns(1,x)%></td>
					<td>
					<%If ColTotal<>0 Then
						Response.Write FormatPercent(CInt(arrAns(1,x))/colTotal,1)
					Else
						Response.Write "-"
					End If%>
					</td></tr>
			<%Next%>
			<tr class="total">
				<td class="left">Total</td>
				<td><%=colTotal%></td>
				<td>100.0%</td>
			</tr>
			</table>
			<%If canCross>1 Then%>
				<form method="get" action="crosstab.asp">
				<input type="hidden" name="pq1" value="<%=PQID%>"/>
				<p>Crosstab with question: <select name="pq2" onchange="this.form.submit()">
					<%For x=0 to Ubound(arrQ,2)
						If x<>y And isNull(arrQ(2,x)) Then%>
						<option value="<%=arrQ(0,x)%>"><%=x+1%></option>
						<%End If
					Next%>
				</select>
				<input type="submit" value="Submit"/></p>
				</form>
			<%End If
		Else
			Answers.Close
		End If
	Next
	Set Qs=Nothing
	Set Answers=Nothing
End If
Call CloseConRs(mailDB,rs)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>