<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>Opinion polls</title>
<!--#include file="../dbpub/functions1.asp"-->
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2>Opinion polls</h2>
<%Dim mailDB,StartTime,EndTime,NowTime,rs,blnClosed,PID
NowTime=Now()%>
<p><b>Hong Kong time: <%=Left(MSdateTime(NowTime),16)%></b></p>
<p>Welcome to <i>Webb-site.com</i> polls, where your vote can help change policy-making. 
Anyone can view the questions and the results, but to vote you will need to
<a href="../webbmail/login.asp">log in</a> with your Webb-site Account, or
<a href="../webbmail/join.asp">sign up</a> for one. You can change your vote at any time prior to the closing 
time, if any. Your e-mail address and individual votes will not be published.</p>

<%Call openMailrs(mailDB,rs)
rs.Open "SELECT * FROM Polls WHERE (IsNull(StartTime) OR StartTime<Now()) AND (IsNull(EndTime) OR EndTime>Now()) ORDER BY EndTime,PollName",MailDB%>
<h3>Live polls</h3>
<table class="txtable">
	<tr>
		<td><b>Poll name</b></td>
		<td><b>Start time</b></td>
		<td><b>Closing time</b></td>
		<td><b>Time remaining</b></td>
	</tr>
	<%Do Until rs.EOF
		EndTime=rs("EndTime")%>
		<tr>
			<td><a href='../vote/poll.asp?p=<%=rs("PID")%>'><%=rs("PollName")%></a></td>
			<td><%=Left(MSdateTime(rs("StartTime")),16)%></td>
			<%If IsNull(EndTime) Then%>
				<td>Not set, please vote!</td>
				<td>Open</td>
			<%Else%>
				<td><%=MSdateTime(EndTime)%></td>
				<td><%If EndTime>NowTime Then
					Response.Write DiffTimeStr(NowTime,EndTime)
				Else
					Response.Write "Closed"
				End If%></td>
			<%End If%>
		</tr>
		<%rs.MoveNext
	Loop
	rs.Close%>
</table>
<h3>Closed polls</h3>
<table class="txtable">
	<tr>
		<td><b>Poll name</b></td>
		<td><b>Start time</b></td>
		<td><b>Closed time</b></td>
		<td></td>
	</tr>
	<%rs.Open "SELECT * FROM Polls WHERE EndTime<Now() ORDER BY EndTime DESC,PollName",MailDB
	Do Until rs.EOF
		PID=rs("PID")%>
		<tr>
			<td><a href='../vote/poll.asp?p=<%=PID%>'><%=rs("PollName")%></a></td>
			<td><%=Left(MSdateTime(rs("StartTime")),16)%></td>
			<td><%=Left(MSdateTime(rs("EndTime")),16)%></td>
			<td><a href="result.asp?p=<%=PID%>">Result</a></td>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(mailDB,rs)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>