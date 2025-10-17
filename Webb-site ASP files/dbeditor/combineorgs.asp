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
Dim p1,p2,p1name,p2name,hint,ready,title,submit,reset,sql,rs,rs2
Const adOpenKeySet=1
Const adLockOptimistic=3
Call prepMasterRs(conMaster,rs)
Set rs2=Server.CreateObject("ADODB.Recordset")
submit=Request("submitCO")
reset=getBool("reset")
ready=False
'collect orgs, from search or this form
p1=getLng("p1",0)
p2=getLng("p2",0)
If p1=0 And Not reset Then p1=Session("p1")
If p2=0 And Not reset Then p2=Session("p2")
If submit="Swap Persons" Then Call swap(p1,p2)
If p1>0 Then p1Name=fnameOrg(p1)
If p2>0 Then p2Name=fnameOrg(p2)
If p1Name="No record found" Then p1=0
If p2Name="No record found" Then p2=0

If p1>0 And p1=p2 Then
	hint=hint&"Pick two different organisations!"
ElseIf p1>0 And p2>0 Then
	If CBool(conMaster.Execute("SELECT EXISTS(SELECT * FROM issue WHERE issuer=" & p2 &")").Fields(0)) Then
		hint=hint&"Org 2 has issues and cannot be deleted. "
	ElseIf CBool(conMaster.Execute("SELECT EXISTS(SELECT * FROM orgdata WHERE PersonID=" & p2 & ")").Fields(0)) Then
		hint=hint&"Org 2 has orgdata and cannot be deleted unless you delete that first. "
	Else
		rs.Open "SELECT personID,domicile,SFCID,SFCupd,incID,orgType,incDate,incAcc,disDate,cName,disMode From Organisations WHERE PersonID="&p1,conMaster,adOpenKeyset,adLockOptimistic
		rs2.Open "SELECT personID,domicile,SFCID,SFCupd,incID,orgType,incDate,incAcc,disDate,cName,disMode From Organisations WHERE PersonID="&p2,conMaster,adOpenKeyset,adLockOptimistic
		If Not domChk(rs2("Domicile"),rs2("orgType")) Then
			hint=hint&"Org 2 is in an auto-maintained domicile. "
		ElseIf rs("Domicile") <> rs2("Domicile") Then
		    hint=hint&"They have different domiciles. "
		ElseIf rs("SFCID") <> rs2("SFCID") Then
		    hint=hint&"They have different SFCIDs. "
		ElseIf rs("incID") <> rs2("incID") Then
		    hint=hint&"They have different incorporation numbers. "
		ElseIf rs("orgType") <> rs2("orgType") Then
		    hint=hint&"They are of different types. "
		ElseIf rs("incDate") <> rs2("incDate") Then
		    hint=hint&"They have different formation dates. "
		ElseIf rs("disDate") <> rs2("disDate") Then
		    hint=hint&"They have different dissolution dates. "
		Else
			ready=True
		End If
	End If
	If Not ready Then hint=hint&"They cannot be combined. "
	If ready And submit<>"CONFIRM COMBINE" Then
		If rs("cName")<>rs2("cName") Then hint=hint&"They have different Chinese names. Are you sure? "
	End If
	If ready And submit="CONFIRM COMBINE" Then
		If IsNull(rs("orgType")) Then rs("orgType") = rs2("orgType")
		If IsNull(rs("cName")) Then rs("cName") = rs2("cName")
		If IsNull(rs("Domicile")) Then rs("Domicile") = rs2("Domicile")
		If IsNull(rs("SFCID")) Then rs("SFCID") = rs2("SFCID") : rs2("SFCID") = Null
		If IsNull(rs("SFCupd")) Then rs("SFCupd") = rs2("SFCupd")
		If IsNull(rs("incID")) Then rs("incID") = rs2("incID") : rs2("incID") = Null
		If IsNull(rs("incDate")) Then rs("incDate") = rs2("incDate"): rs("incAcc") = rs2("incAcc")
		If IsNull(rs("disDate")) Then rs("disDate") = rs2("disDate")
		If IsNull(rs("disMode")) Then rs("disMode") = rs2("disMode")
		'force an update run next time if person has SFCID
		rs("SFCupd") = Null
		rs2.Update
		rs2.Close
		rs.Update
		rs.Close
		conMaster.Execute "UPDATE comeets SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE comex SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE compos SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE directorships SET Company=" & p1 & " WHERE Company=" & p2
		conMaster.Execute "UPDATE documents SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE domchanges SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE ess SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE freg SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE licrec SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE lsemps SET personID=" & p1 & " WHERE personID=" & p2
		conMaster.Execute "UPDATE lsorgs SET personID=" & p1 & " WHERE personID=" & p2
		conMaster.Execute "UPDATE namechanges SET personID=" & p1 & " WHERE personID=" & p2
		conMaster.Execute "UPDATE ownerprof SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE ownerstks SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE oldcr SET personID=" & p1 & " WHERE personID=" & p2
		conMaster.Execute "UPDATE olicrec SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE pay SET orgID=" & p1 & " WHERE orgID=" & p2
		conMaster.Execute "UPDATE reorg SET fromOrg=" & p1 & " WHERE fromOrg=" & p2
		conMaster.Execute "UPDATE reorg SET toOrg=" & p1 & " WHERE toOrg=" & p2
		Call combinePersons(conMaster,p1,p2)
		'merge the categories
		conMaster.Execute "INSERT IGNORE INTO classifications(company,category) SELECT " & p1 & ",category FROM classifications WHERE company=" & p2
		conMaster.Execute "UPDATE adviserships SET Company=" & p1 & " WHERE Company=" & p2
		If CBool(conMaster.Execute("SELECT EXISTS(SELECT * FROM advisers WHERE personID=" & p2 & ")").Fields(0)) Then
		    conMaster.Execute "INSERT IGNORE INTO advisers (PersonID) VALUES(" & p1 & ")"
		    conMaster.Execute "UPDATE adviserships SET Adviser=" & p1 & " WHERE Adviser=" & p2
		End If
		'now delete p2
		conMaster.Execute "DELETE FROM Persons WHERE PersonID=" & p2
		'this will cascade to the Orgs table
		conMaster.Execute "INSERT INTO mergedpersons(oldp,newp) VALUES (" & p2 & "," & p1 & ")"
		p2=0
		p2Name=""
		hint=hint&"They were combined. "
	Else
		rs.Close
		rs2.Close
		'If ready Then hint=hint&"Please confirm. "
	End If
End If

'store variables in case we divert to find people
Session("p1")=p1
Session("p2")=p2
title="Combine organisations"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p1>0 Then%>
	<h2><%=p1Name%></h2>
	<%Call orgBar(p1,14)%>
<%ElseIf p2>0 Then%>
	<p2><%=p2Name%></p2>
	<%Call orgBar(p2,14)%>
<%Else%>
	<h2><%=title%></h2>
<%End If%>
<h3>Rules</h3>
<ol>
	<li>You cannot delete an organisation which has any 
	issues of securities or any OrgData, as the addresses or year-ends could 
	conflict. Delete the orgData of Org 2 first.</li>
	<li>You cannot delete an organisation which is auto-maintained, including 
	companies incorporated in HK, England &amp; Wales, Scotland and Northern 
	Ireland.</li>
</ol>
<hr>
<form action="combineorgs.asp" method="post">
	<input type="hidden" name="p1" value="<%=p1%>">
	<input type="hidden" name="p2" value="<%=p2%>">
	<table class="txtable">
		<tr>
			<th>Select</th>
			<th>Name</th>
		</tr>
		<tr>
			<td><a href="searchorgs.asp?tv=p1">Organisation 1 (survivor)</a></td>
			<td><a href="org.asp?p=<%=p1%>"><%=p1Name%></a></td>
		</tr>
		<tr>
			<td><a href="searchorgs.asp?tv=p2">Organisation 2 (to be deleted)</td>
			<td><a href="org.asp?p=<%=p2%>"><%=p2Name%></a></td>
		</tr>
	</table>
	<p><b><%=hint%></b></p>
	<%If ready Then%>
		<%If submit="Combine" Then%>
			<input type="submit" name="submitCO" style="color:red" value="CONFIRM COMBINE">
			<input type="submit" name="submitCO" value="Cancel">
		<%Else%>
			<input type="submit" name="submitCO" value="Combine">
		<%End If
	End If
	If p1>0 Or p2>0 Then%>
		<input type="submit" name="submitCO" value="Swap Persons">
	<%End If%>
</form>
<form method="post" action="combineorgs.asp?reset=1"><input type="submit" value="Clear form"></form>
<%Set rs2=Nothing
Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
