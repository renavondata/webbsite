<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include file="pollmaster.asp"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/vote/pollfunctions.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim mailDB,rs,PID,pollName,pollIntro,startTime,endTime,nowTime,userID,blnClosed,hint,title
Call openMailRs(mailDB,rs)
PID=getLng("PID",0)
NowTime=Now()
If PID=0 Then
	hint="No Poll was specified. "
Else
	rs.Open "SELECT * FROM Polls WHERE PID="&PID,MailDB
	If rs.EOF Then
		hint="Poll not found. "
		PID=0
	Else
		startTime=rs("startTime")
		If NowTime<startTime and Not IsNull(startTime) Then	hint="Warning: that Poll has not yet started. "
		endTime=rs("endTime")
		pollName=rs("pollName")
		PollIntro=rs("PollIntro")
		If NowTime>=endTime Then blnClosed=True Else blnClosed=False
	End If
	rs.Close
End If
title="Preview poll"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call pollBar(PID,0,5)%>
<h2>Poll: <%=pollName%></h2>
<p><b><%=hint%></b></p>
<table class="txtable">
	<tr>
		<td>Current time:</td>
		<td><%=MSdateTime(NowTime)%></td>
	</tr>
	<tr>
		<td>Closing time:</td>
	<%If IsNull(endTime) Then%>
		<td>Not yet set, please vote!</td>
	<%Else%>
		<td><%=MSdateTime(endTime)%></td>
		</tr>
		<tr>
		<td>Time left:</td>
			<%If blnClosed Then%>
				<td><b>Poll closed</b></td>
			<%Else%>
				<td><%=DiffTimeStr(NowTime,endTime)%></td>
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
	<%Call GenPoll(PID,UserID,"")%>
</form>
<%Call CloseConRs(mailDB,rs)%>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>