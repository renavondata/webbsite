<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%If Not Session("master") Then Response.Redirect("/dbeditor/")
Dim rs,con,e,sort,ob,c,URL,title,live,mailOn,u
e=Request("e")
u=Request("u")
If u>"" Then e=""
sort=Request("sort")
live=getBool("live") 'restrict output to activated addresses
mailOn=getBool("mailOn") 'restrict output to mailOn only
Select case sort
	Case "joindn" ob="JoinTime DESC,mailaddr"
	Case "joinup" ob="JoinTime ASC,mailaddr"
	Case "emup" ob="mailaddr"
	Case "emdn" ob="mailaddr DESC"
	Case "emon" ob="mailOn DESC,mailaddr"
	Case "emoff" ob="mailOn,mailaddr"
	Case "namup" ob="name,mailAddr"
	Case "namdn" ob="name DESC,mailAddr"
	Case "logdn" ob="lastLogin DESC,mailAddr"
	Case "stkdn" ob="stocks DESC,mailAddr"
	Case Else
		If e>"" Then
			ob="mailAddr"
			sort="emup"
		Else
			ob="joinTime DESC,mailaddr"
			sort="joindn"
		End If
End Select
URL=Request.ServerVariables("URL")&"?e="&replace(e,"%","%25")&"&amp;live="&live&"&amp;mailOn="&mailOn
title="Search users"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include virtual="/dbeditor/cotop.inc"-->
<h2><%=title%></h2>
<%Call mailBar(3)%>
<p>Use % for wildcards. Leave address empty to show top 500 sorted by latest join-time or selected column.</p>
<form method="post" action="searchusers.asp">
	<p>Check e-mail <input type="text" id="e" name="e" size="40" value="<%=e%>"></p>
	<p>Check username <input type="text" id="u" name="u" size="40" value="<%=u%>"></p>
	<div class="inputs">
		<input type="checkbox" name="mailOn" value="1" <%=checked(mailOn)%>>Show mail-on only
		<input type="checkbox" name="live" value="1" <%=checked(live)%>>Show activated only
	</div>
	<div class="clear"></div>
	<div class="inputs">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="submit" value="Submit">
		<input type="button" value="Clear" onclick="e.value='';">
	</div>
	<div class="clear"></div>
</form>
<%Call openMailrs(con,rs)
rs.Open "SELECT *,(SELECT COUNT(*) FROM mystocks WHERE user=ID)stocks FROM liveList WHERE 1=1 "&IIF(e>""," AND mailAddr Like '"&e&"' ","") &_
	IIF(u>""," AND name='"&apos(u)&"'","") & IIF(mailOn," AND mailOn","")&IIF(live," AND everified","")&" ORDER BY "&ob&IIF(e=""," LIMIT 500",""),con
If rs.EOF Then%>
	<p>Address not found.</p>
<%Else%>
	<table class="txtable">
	<tr>
		<th></th>
		<th><%SL  "e-mail","emup","emdn"%></th>
		<th><%SL "Username","namdn","namdn"%></th>
		<%If Not live Then%><th>Act.</th><%End If%>
		<%If Not mailOn Then%><th><%SL  "Mail","emon","emoff"%></th><%End If%>
		<th><%SL "Stocks","stkdn","stkdn"%></th>
		<th>Join IP</th>
		<th><%SL  "Join time","joindn","joinup"%></th>
		<th>Leave IP</th>
		<th>Leave time</th>
		<th><%SL "Last login","logdn","logdn"%></th>
		<th>Pwd token sent</th>
		<th>Pwd changed</th>
	</tr>
	<%Do Until rs.EOF
		c=c+1%>
		<tr>
			<td><%=c%></td>
			<td><a href='mailchange.asp?o=<%=rs("mailaddr")%>'><%=rs("mailAddr")%></a></td>
			<td><%=rs("name")%></td>
			<%If Not live Then%><td class="center"><%=tick(rs("eVerified"))%></td><%End If%>
			<%If Not mailOn Then%><td class="center"><%=tick(rs("MailOn"))%></td><%End If%>
			<td><%=rs("stocks")%></td>
			<td><%=rs("JoinIP")%></td>
			<td><%=MSdateTime(rs("JoinTime"))%></td>
			<td><%=rs("LeaveIP")%></td>
			<td><%=MSdateTime(rs("LeaveTime"))%></td>
			<td><%=MSdateTime(rs("lastLogin"))%></td>
			<td><%=MSdateTime(rs("tokTime"))%></td>
			<td><%=MSdateTime(rs("pwdChanged"))%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/dbeditor/cofooter.asp"-->
</body>
</html>
