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
Dim voteDB,rs,QID,PID,pollName,title,hint
PID=getLng("PID",0)
Call openMailRs(voteDB,rs)
If PID=0 Then
	hint=hint&"No poll was specified. "
Else
	pollName=voteDB.Execute("SELECT IFNULL((SELECT pollName FROM polls WHERE PID="&PID&"),'')").Fields(0)
	If pollName="" Then
		hint=hint&"That poll does not exist. "
		PID=0
	End If
End If
title="Add existing question to poll"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call pollBar(PID,0,3)
If PID>0 Then%>
	<h3>Poll Name: <%=pollName%></h3>
	<table class="txtable">
		<tr>
			<th><b>Click to add question to poll</b></th>
		</tr>
		<%rs.Open "SELECT * FROM questions WHERE QID NOT IN(SELECT QID FROM pollquestions WHERE PID="&PID&") ORDER BY question",voteDB
		Do Until rs.EOF%>
			<tr><td><a href="editP.asp?QID=<%=rs("QID")%>&amp;PID=<%=PID%>"><%=rs("Question")%></a></td></tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call closeConRs(voteDB,rs)%>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>