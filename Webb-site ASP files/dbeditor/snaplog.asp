<%@ CodePage="65001"%>
<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,p,d,a,t,j,orgName,title,notes,approved,submit,hint,where,role,found,sql
Const roleID=3 'HKUteam
Call prepRole(roleID,conRole,rs,userID,uRank)
p=getLng("p",0)
d=getMSdef("d","")
a=getBool("a")
t=getBool("t")
j=getLng("j",0) 'project code
notes=Trim(Request("notes"))
submit=Request("submitBtn")
Session("targDate")=d
If p>0 Then orgName=fNameOrg(p)
If p>0 and d>"" Then
	where=" orgID="&p&" AND snapDate='"&d&"' AND userID="&userID&" AND project="&j
	'check for record
	rs.Open "SELECT * FROM snaplog WHERE"&where,conRole
	found=Not rs.EOF
	If submit="Add" And Not found Then
		conRole.Execute "INSERT INTO snaplog(orgID,snapDate,userID,project,done,status,notes)" & valsql(Array(p,d,userID,j,a,t,notes))
		hint=hint&"Your entry has been added. "
		found=True
	ElseIf submit="Update" And found Then
		conRole.Execute "UPDATE snaplog" & setsql("done,status,notes",Array(a,t,notes)) & where
		hint=hint&"Your entry has been updated. "
	ElseIf submit="Delete my record" Then
		notes=""
		found=False
		conRole.Execute "DELETE FROM snaplog WHERE"&where
		hint=hint&"Your record was deleted. "
	ElseIf found Then
		If rs("done") Then a=1 Else a=0
		If rs("status") Then t=1 Else t=0
		notes=rs("notes")
	End If
	rs.Close
End If
title="Snapshot log"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%If p="" or d="" or j="" Then%>
<form method="post" action="snaplog.asp">
	<%sql="SELECT DISTINCT personID,name1 FROM organisations o JOIN (issue i,stocklistings s) "&_
		"ON o.personID=i.issuer AND i.ID1=s.issueID WHERE "&_
		"stockExID IN(1,20) and typeID NOT IN(1,2,40,41,46) ORDER BY name1"%>
	<%=arrSelect("p",p,conRole.Execute(sql).GetRows,True)%>
	<p>Snapshot date: <input type="date" name="d" id="d" value="<%=d%>"></p>
	<p>Project: <input type="radio" name="j" value="0" onchange="this.form.submit()" <%=checked(j=0)%>>Holdings
	<input type="radio" name="j" value="1" onchange="this.form.submit()" <%=checked(j=1)%>>Committees</p>
	</form>
<%Else%>
	<table class="txtable">
		<tr>
			<td>Issuer:</td>
			<td><%=orgName%></td>
		</tr>
		<tr>
			<td>Snapshot date: </td>
			<td><%=d%></td>
		</tr>
		<tr>
			<td>Project:</td>
			<td><%If j=1 Then Response.Write "Committees" Else Response.Write "Holdings"%>
			</td>
		</tr>
	</table>
	<%If j=0 Then%>
		<p>Project: holdings</p>
		<h4>View holdings</h4>
		<%rs.Open "SELECT * FROM issue i JOIN sectypes s on i.typeID=s.typeID WHERE i.typeID NOT IN(1,2,40,41,46) AND issuer="&p,conRole
		If not rs.EOF Then
			Do until rs.EOF%>
				<p><a target="_blank" href="holding.asp?i=<%=rs("ID1")%>&amp;targDate=<%=d%>"><%=rs("typeLong")%></a></p>
				<%rs.MoveNext
			Loop
		Else%>
			<p><b>None found.</b></p>
		<%End If
		rs.close
	Else%>
		<p><a href="coms.asp?p=<%=p%>&d=<%=d%>" target="_blank">View committees</a></p>
	<%End If
	rs.Open "SELECT * FROM snaplog JOIN users ON userID=ID WHERE orgID="&p&" AND snapDate='"&d&"' AND project="&j,conRole
	If Not rs.EOF Then%>
		<h3>Records for this snapshot</h3>
		<table class="txtable">
			<tr>
				<th>User</th>
				<th>Role</th>
				<th>Log entered</th>
				<th>Log updated</th>
				<th>Approved?</th>
				<th>Notes</th>
			</tr>
			<%Do until rs.EOF
				If rs("done") Then approved="Yes" Else approved="No"
				If rs("status") Then role="Reviewer" Else role="Author"%>
				<tr>
				<td><%=rs("name")%></td>
				<td><%=role%></td>
				<td><%=MSdateTime(rs("entered"))%></td>			
				<td><%=MSdateTime(rs("modified"))%></td>
				<td><%=approved%></td>
				<td><%=rs("notes")%></td>
				</tr>
				<%rs.moveNext
			Loop%>
		</table>			
	<%End If
	rs.Close%>
	<form method="post" action="snaplog.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="hidden" name="d" value="<%=d%>">
		<input type="hidden" name="j" value="<%=j%>">
		<input type="hidden" name="u" value="<%=userID%>">
		<p><b>Are you the author or reviewer of this snapshot?</b></p>
		<p><input type="radio" name="t" value="0" <%=checked(Not t)%>>Author
		<input type="radio" name="t" value="1" <%=checked(t)%>>Reviewer</p>
		<p><b>Do you <%=Session("userName")%> approve this snapshot?</b></p>
		<p><input type="radio" name="a" value="1" <%=checked(a)%>>Yes
		<input type="radio" name="a" value="0" <%=checked(Not a)%>>No</p>
		<p><b>User notes</b></p>
		<textarea rows="10" name="notes" style="width:100%"><%=notes%></textarea><br>
		<%If found Then%>
			<input type="submit" name="submitBtn" value="Update">
			<input type="submit" name="submitBtn" value="Delete my record">
		<%Else%>
			<input type="submit" name="submitBtn" value="Add">
		<%End If%>
	</form>
	<%If hint<>"" Then%>
		<p><b><%=hint%></b></p>
	<%End If%>
	<p><a href="snaplog.asp?p=<%=p%>&j=<%=j%>">Do another date</a></p>
<%End If
If p<>"" Then%>
	<hr>
	<h3>Snapshots for this issuer</h3>
	<%rs.Open "SELECT DISTINCT snapDate FROM snaplog WHERE orgID="&p&" AND project="&j&" ORDER BY snapdate",conRole
	If Not rs.EOF Then%>
		<table>
		<%Do until rs.EOF
			d=MSdate(rs("snapDate"))%>
			<tr><td><a href="snaplog.asp?p=<%=p%>&d=<%=d%>&j=<%=j%>"><%=d%></a></td></tr>		
			<%rs.MoveNext
		Loop%>
		</table>
	<%Else%>
		<p>None found.</p>
	<%End If
	rs.Close
End If
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
