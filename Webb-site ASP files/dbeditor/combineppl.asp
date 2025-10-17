<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Call requireRoleExec
Dim h1,h2,h1name,h2name,hint,ready,title,submit,reset,sql,rs,rs2
Const adOpenKeySet=1
Const adLockOptimistic=3
Call prepMasterRs(conMaster,rs)
Set rs2=Server.CreateObject("ADODB.Recordset")
submit=Request("submitCH")
reset=getBool("reset")
ready=False
'collect humans, from search or this form
h1=getLng("h1",0)
h2=getLng("h2",0)
If h1=0 And Not reset Then h1=Session("h1")
If h2=0 And Not reset Then h2=Session("h2")
If submit="Swap Persons" Then Call swap(h1,h2)
If h1>0 Then h1Name=fnamePpl(h1)
If h2>0 Then h2Name=fnamePpl(h2)
If h1Name="No record found" Then h1=0
If h2Name="No record found" Then h2=0

If h1>0 And h1=h2 Then
	hint=hint&"Pick two different humans!"
ElseIf h1>0 And h2>0 Then
	rs.Open "SELECT * FROM people WHERE personID=" & h1,conMaster,adOpenKeySet,adLockOptimistic
	rs2.Open "SELECT * FROM people WHERE personID=" & h2,conMaster,adOpenKeySet,adLockOptimistic
	If rs("sex")<>rs2("sex") Then
		hint=hint&"They have different genders. "
	ElseIf rs("YOB")<>rs2("YOB") Or rs("MOB")<>rs2("MOB") Or rs("DOB")<>rs2("DOB") Then
		hint=hint&"They have different dates of birth. "
	ElseIf rs("YOD")<>rs2("YOD") Or rs("MonD")<>rs2("MonD") Or rs("DOD")<>rs2("DOD") Then
		hint=hint&"They have different dates of death. "
	ElseIf rs("SFCID")<>rs2("SFCID") Then
		hint=hint&"They have different SFCIDs. "
	ElseIf rs("HKID")<>rs2("HKID") Then
		hint=hint&"They have different HKIDs. "
	Else
		ready=True
	End If
	If Not ready Then hint=hint&"They cannot be combined. "
	If ready And submit<>"CONFIRM COMBINE" Then
		If rs("name1")<>rs2("name1") Then hint=hint&"They have different surnames. Are you sure? "
		If rs("cName")<>rs2("cName") Then hint=hint&"They have different Chinese names. Are you sure? "
	End If
	If ready And submit="CONFIRM COMBINE" Then
		If isNull(rs("SFCID")) Then
			rs("SFCID")=rs2("SFCID")
			rs2("SFCID")=Null
			rs("SFClastDate")= rs2("SFClastDate")
		End If
		If IsNull(rs("HKID")) Then
		    rs("HKID") = rs2("HKID")
		    rs2("HKID") = Null
		End If
		If IsNull(rs("cName")) Then rs("cName") = rs2("cName")
		If IsNull(rs("Sex")) Then rs("Sex") = rs2("Sex")
		If IsNull(rs("TitleID")) Then rs("TitleID") = rs2("TitleID")
		If IsNull(rs("YOB")) Then rs("YOB") = rs2("YOB")
		If IsNull(rs("MOB")) Then rs("MOB") = rs2("MOB")
		If IsNull(rs("DOB")) Then rs("DOB") = rs2("DOB")
		If IsNull(rs("YOD")) Then rs("YOD") = rs2("YOD")
		If IsNull(rs("MonD")) Then rs("MonD") = rs2("MonD")
		If IsNull(rs("DOD")) Then rs("DOD") = rs2("DOD")
		If IsNull(rs("HKIDsource")) Then rs("HKIDsource") = rs2("HKIDsource")
		'force an update run next time if person has SFCID
		rs("SFCupd") = Null
		rs2.Update
		rs2.Close
		rs.Update
		rs.Close
		conMaster.Execute "UPDATE alias SET personID=" & h1 & " WHERE personID=" & h2
		conMaster.Execute "UPDATE compos SET dirID=" & h1 & " WHERE dirID=" & h2
		conMaster.Execute "UPDATE licrec SET staffID=" & h1 & " WHERE staffID=" & h2
		conMaster.Execute "UPDATE lsppl SET personID=" & h1 & " WHERE personID=" & h2
		conMaster.Execute "UPDATE pay SET pplID=" & h1 & " WHERE pplID=" & h2		
		conMaster.Execute "UPDATE sdi SET dir=" & h1 & " WHERE dir=" & h2
		conMaster.Execute "UPDATE ukppl SET personID=" & h1 & " WHERE personID=" & h2
		rs.Open "SELECT * FROM relatives WHERE Rel1=" & h2, conMaster, adOpenKeyset, adLockOptimistic
		Do Until rs.EOF
		    rs2.Open "SELECT * FROM relatives WHERE (Rel1=" & h1 & " AND Rel2=" & rs("Rel2") & ") OR " & _
		        "(Rel1=" & rs("Rel2") & " AND Rel2=" & h1 & ")", conMaster
		    If rs2.EOF Then
		        'they are not already related
		        rs("Rel1") = h1
		        rs.Update
		    Else
		        'they are already related
		        rs.Delete
		    End If
		    rs2.Close
		    rs.MoveNext
		Loop
		rs.Close	
		rs.Open "SELECT * FROM relatives WHERE Rel2=" & h2, conMaster, adOpenKeyset, adLockOptimistic
		Do Until rs.EOF
		    rs2.Open "SELECT * FROM relatives WHERE (Rel2=" & h1 & " AND Rel1=" & rs("Rel1") & ") OR " & _
		        "(Rel1=" & rs("Rel1") & " AND Rel2=" & h1 & ")", conMaster
		    If rs2.EOF Then
		        'they are not already related
		        rs("Rel2") = h1
		        rs.Update
		    Else
		        'they are already related
		        rs.Delete
		    End If
		    rs2.Close
		    rs.MoveNext
		Loop
		rs.Close
	
		'combine p2 nationalities into p1
		'cascading delete of personID will take out the p2 nationalities at the end
		rs.Open "SELECT * FROM nationality WHERE personID=" & h2,conMaster
		Do Until rs.EOF
		    rs2.Open "SELECT * FROM nationality WHERE personID=" & h1 & " AND ukchnat=" & rs("UKCHnat"), conMaster, adOpenKeyset, adLockOptimistic
	        If rs2.EOF Then
	            rs2.addNew
	            rs2("PersonID") = h1
	            rs2("UKCHnat") = rs("UKCHnat")
	            rs2("latest") = rs("latest")
	            rs2.Update
	        ElseIf rs("latest") > rs2("latest") Then
	            rs2("latest") = rs("latest")
	            rs2.Update
	        End If
	        rs2.Close
		    rs.MoveNext
		Loop
		rs.Close
		Call combinePersons(conMaster,h1,h2)
		'now delete h2
		conMaster.Execute "DELETE FROM Persons WHERE PersonID=" & h2
		'this will cascade to the People table
		conMaster.Execute "INSERT INTO mergedpersons(oldp,newp) VALUES (" & h2 & "," & h1 & ")"
		'remove or add extensions
		Call n2ExtCheck(h1)
		h2=0
		h2Name=""
		hint=hint&"They were combined. "
	Else
		rs.Close
		rs2.Close
		If ready Then hint=hint&"Please confirm. "
	End If
End If

'store variables in case we divert to find people
Session("h1")=h1
Session("h2")=h2
title="Combine people"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If h1>0 Then%>
	<h2><%=h1Name%></h2>
	<%Call pplBar(h1,6)%>
<%ElseIf h2>0 Then%>
	<h2><%=h2Name%></h2>
	<%Call pplBar(h2,6)%>
<%Else%>
	<h2><%=title%></h2>
<%End If%>
<h3>Rules</h3>
<ol>
	<li>When combining 2 humans, make the survivor the one with the most 
	detailed name, for example with a middle name that the other one does not 
	show.</li>
	<li>You can't combine people with conflicting date of birth, date of death, 
	HKID or SFCID.</li>
</ol>
<hr>
<form action="combineppl.asp" method="post">
	<input type="hidden" name="h1" value="<%=h1%>">
	<input type="hidden" name="h2" value="<%=h2%>">
	<table class="txtable">
		<tr>
			<th>Select</th>
			<th>Name</th>
		</tr>
		<tr>
			<td><a href="searchpeople.asp?tv=h1">Human 1 (survivor)</a></td>
			<td><a href="human.asp?p=<%=h1%>"><%=h1Name%></a></td>
		</tr>
		<tr>
			<td><a href="searchpeople.asp?tv=h2">Human 2 (to be deleted)</td>
			<td><a href="human.asp?p=<%=h2%>"><%=h2Name%></a></td>
		</tr>
	</table>
	<p><b><%=hint%></b></p>
	<%If ready Then%>
		<%If submit="Combine" Then%>
			<input type="submit" name="submitCH" style="color:red" value="CONFIRM COMBINE">
			<input type="submit" name="submitCH" value="Cancel">
		<%Else%>
			<input type="submit" name="submitCH" value="Combine">
		<%End If
	End If
	If h1>0 Or h2>0 Then%>
		<input type="submit" name="submitCH" value="Swap Persons">
	<%End If%>
</form>
<form method="post" action="combineppl.asp?reset=1"><input type="submit" value="Clear form"></form>
<%Set rs2=Nothing
Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
