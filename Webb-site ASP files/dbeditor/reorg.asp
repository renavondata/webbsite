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
Dim p,pName,hint,title,submit,od,frName,d,da,sql,rs,frOrg,sc,found
Call prepMasterRs(conMaster,rs)
submit=Request("submitReo")

sc=getLng("sc",0)
If sc>0 Then
	p=SCorg(sc)
Else
	p=getLng("p",0)
End If
frOrg=getLng("frOrg",0)
If frOrg>0 And p=0 Then p=Session("toOrg")

If p>0 Then pName=fNameOrg(p)

If p>0 And frOrg>0 Then
	frName=fNameOrg(frOrg)
	'the two orgs in a record cannot be changed
	If submit="Add" or submit="Update" Then
		d=getMSdef("d","")
		da=getInt("da","")
		d=MidDate(d,da)
	End If
	rs.Open "SELECT effDate,effAcc FROM reorg WHERE toOrg="&p&" AND fromOrg="&frOrg,conMaster
	If rs.EOF Then
		If submit="Add" Then
			If d="" Then
				hint=hint&"Specify a reorganisation date. "
			Else
				sql="INSERT INTO reorg (fromOrg,toOrg,effDate,effAcc)" & valsql(Array(frOrg,p,d,da))
				conMaster.Execute sql
				hint=hint&"Reorganisation from "&frName&" on "&d&" added. "
				found=True
			End If
		End If
	Else
		found=True
		If submit="CONFIRM DELETE" Then
			sql="DELETE FROM reorg WHERE fromOrg="&frOrg&" AND toOrg="&p
			conMaster.Execute sql
			hint=hint&"Deleted reorganisation from org "&frName&". "
			frOrg=0
		ElseIf submit="Update" Then
			sql="UPDATE reorg" & setsql("effDate,effAcc",Array(d,da)) & "fromOrg="&frOrg&" AND toOrg="&p
			conMaster.Execute sql
			hint=hint&"Record updated with date "&d&". "
		Else
			d=MSdate(rs("effDate"))
			da=rs("effAcc")
		End If
	End If
	rs.Close
	If submit="Delete" Then hint=hint&"Are you sure you want to delete the reorganisation from "&frName&" with date "&d&"?"		
End If
Session("toOrg")=p
title="Add, edit or delete a reorganisation"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,13)
End If%>
<form method="post" action="reorg.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find a "to" organisation</a></p>
<h3><%=title%></h3>
<p><a href="searchorgs.asp?tv=frOrg">Find a "from" organisation</a></p>
<p><b><%=hint%></b></p>
<%If p>0 And frOrg>0 Then%>
	<form method="post" action="reorg.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="hidden" name="frOrg" value="<%=frOrg%>">
		<table class="txtable">
			<tr>
				<th>From organisation</th>
				<th>Effective date</th>
				<th>Date accuracy</th>
			</tr>
			<tr>
				<td><%=frName%></td>
				<td><input type="date" name="d" value="<%=d%>"></td>
				<td><%=makeSelect("da",da,",,2,M,1,Y",False)%></td>
			</tr>
		</table>
		<%If found Then%>
			<input type="submit" name="submitReo" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitReo" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitReo" value="Cancel">
			<%Else%>
				<input type="submit" name="submitReo" value="Delete">
			<%End If
		Else%>
			<input type="submit" name="submitReo" value="Add">	
		<%End If%>
	</form>
<%End If
If p>0 Then%>
	<h3>Reorgansiations to this organisation</h3>
	<%rs.Open "SELECT r.fromOrg,o.name1,r.effDate,da.accText FROM reorg r JOIN organisations o ON r.fromOrg=o.personID "&_
		"LEFT JOIN dateAccuracy da ON r.effAcc=da.AccID WHERE toOrg="&p,conMaster
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="txtable">
			<tr>
				<th>From organisation</th>
				<th>Effective date</th>
				<th>Accuracy</th>
				<th></th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><a href="org.asp?p=<%=rs("fromOrg")%>"><%=rs("name1")%></a></td>
					<td><%=MSdate(rs("effDate"))%></td>
					<td><%=rs("accText")%></td>
					<td><a href='reorg.asp?p=<%=p%>&amp;frOrg=<%=rs("fromOrg")%>'>Edit</a></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
Call closeConRs(conMaster,rs)%>
<hr>
<h3>Rules</h3>
<ol>
	<li>Do not confuse a reorgansiation with a <a href="olddom.asp?p=<%=p%>">change of domicile</a> 
	or a <a href="freg.asp?p=<%=p%>">foreign registration</a>. This page is 
	only for situations in which one company has been superceded by another, for 
	example, when all the shares of a HK company are swapped for shares of a new 
	Cayman company (without existing shares), confusingly known as a redomicile. 
	That is typically done by scheme of arrangement. For example, in 1989, all 
	the shares of Nanyang Cotton Mill Limited (HK) were swapped for shares of 
	Nanyang Holdings Ltd (Bermuda).</li>
	<li>For listed company situations, if there is a straight 1:1 swap then we 
	carry over all the directors and advisers to create a continuous record. 
	Currently (2023) this has to be done manually.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
