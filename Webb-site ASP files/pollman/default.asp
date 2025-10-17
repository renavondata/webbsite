<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include file="pollmaster.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim title,voteDB,StartTime,EndTime,NowTime,rs,blnClosed,PID
NowTime=Now()
title="Polls"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call pollBar(0,0,1)%>
<p><b>Hong Kong time: <%=Force24Time(NowTime)&" "&ForceDate(NowTime)%></b></p>
<h3>Live polls</h3>
<table class="txtable">
	<tr>
		<th><b>Poll name</b></th>
		<th><b>Start time</b></th>
		<th><b>Closing time</b></th>
		<th><b>Time remaining</b></th>
	</tr>
	<%Call openMailRs(voteDB,rs)
	rs.Open "SELECT * FROM Polls WHERE IsNull(EndTime) OR EndTime>Now() ORDER BY EndTime,PollName",voteDB
	Do Until rs.EOF
		PID=rs("PID")%>
		<tr>
			<td><a href='editP.asp?PID=<%=PID%>'><%=rs("PollName")%></a></td>
			<td>
				<%StartTime=rs("StartTime")
				If IsNull(StartTime) Then
					Response.Write "Not set "
				Else
					Response.Write MSdateTime(StartTime)
				End If%>
			</td>
			<td>
				<%EndTime=rs("EndTime")
				If IsNull(EndTime) Then
					Response.Write "Not set "
				Else
					Response.Write MSdateTime(EndTime)
				End If%>
			</td>
			<td>
				<%If StartTime>NowTime Then
					Response.Write "Not started"
				Elseif EndTime<NowTime Then
					Response.Write "Closed"
				Elseif NowTime<EndTime Then
					Response.Write DiffTimeStr(NowTime,EndTime)
				Else
					Response.Write "Open"
				End If%>
			</td>
		</tr>
		<%rs.MoveNext
	Loop
	rs.Close%>
</table>
<h3>Closed Polls</h3>
<table class="txtable">
	<tr>
		<td><b>Poll name</b></td>
		<td><b>Started time</b></td>
		<td><b>Closed time</b></td>
	</tr>
	<%rs.Open "SELECT * FROM Polls WHERE EndTime<Now() ORDER BY EndTime DESC,PollName",voteDB
	Do Until rs.EOF
		PID=rs("PID")
		StartTime=rs("StartTime")
		EndTime=rs("EndTime")%>
		<tr>
			<td><a href='editP.asp?PID=<%=PID%>'><%=rs("PollName")%> </a></td>
			<td><%=MSdateTime(StartTime)%></td>
			<td><%=MSdateTime(EndTime)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	Call closeConRs(voteDB,rs)%>
</table>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>