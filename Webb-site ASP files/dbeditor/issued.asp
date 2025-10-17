<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,d,i,n,p,shares,outstanding,submit,issue,name,typeShort,title,where,found,sql,hint,oschange,canEdit,userName
Const roleID=4 'orgs
Call prepRole(roleID,conRole,rs,userID,uRank)
Call findStock(i,n,p)
d=getMSdef("d","")
shares=getDbl("shares",0)
submit=Request("submitOS")
found=False
If d>MSdate(Date) Then hint=hint&"You are setting outstanding shares for a future date "&d&". "
If i>0 And d>"" Then
	If (submit="Add" or Submit="Update") And shares<=0 Then
		hint=hint&"Enter outstanding shares. "
	Else
		where=" issueID="&i&" AND atDate="&apq(d)
		rs.Open "SELECT outstanding,userID,maxRank('issuedshares',userID)uRank FROM issuedshares WHERE "&where,conRole
		If rs.EOF Then
			outstanding=shares
			If submit="Add" And shares>0 Then
				sql="INSERT INTO issuedshares(userID,issueID,atDate,outstanding)" & valsql(Array(userID,i,d,shares))
				conRole.Execute sql
				hint=hint&"The record was added for date "&d&". "
				found=True
			ElseIf submit="Update" or submit="Delete" or submit="CONFIRM DELETE" Then
				hint=hint&"Record not found. "
			End If
		Else
			found=True
			outstanding=CDbl(rs("outstanding"))
			If Not rankingRs(rs,uRank) Then
				hint=hint&"You didn't create this entry and don't outrank the user who did. "
			ElseIf submit="Update" or submit="Add" Then
				sql="UPDATE issuedshares"&setsql("userID,outstanding",Array(userID,shares))&where
				conRole.Execute sql
				outstanding=shares
				hint=hint&"Record updated for date "&d&". "
			ElseIf submit="Delete" Then
				hint=hint&"Are you sure you want to delete this record? "
			ElseIf submit="CONFIRM DELETE" Then
				sql="DELETE FROM issuedshares WHERE"&where
				conRole.Execute sql
				hint=hint&"Record deleted for date "&d&". "
				d=""
				outstanding=""
				found=False
			End If
		End If
		rs.Close
	End If
ElseIf i>0 And submit="Add" Then
	hint=hint&"Specify a date."
End If
title="Enter issued shares"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=n%></h2>
	<%Call orgbar(p,8)
	If i>0 Then	Call issueBar(i,2)
End If%>
<form method="post" action="issued.asp">
	Enter stock code: <input type="number" name="sc" min="1" max="999999" step="1" maxlength="6" size="6">
</form>
<p>Or <a href="issue.asp?tv=i">pick an issue</a></p>
<h3><%=title%></h3>
<p>This form allows outstanding shares to be entered or corrected. For HK-listed shares, please 
make a rebuttable assumption that records on or after 31-Dec-2006 are correct as 
these were collected automatically from HKEx. However, HKEx sometimes makes 
errors, for example, by expanding the share count when a rights issue begins 
rather than when the issue closes and shares are actually allotted!</p>
<%If i>0 Then%>
	<form action="issued.asp" method="post">
		<input type="hidden" name="i" value="<%=i%>">
		<h3>Issue: <%=n%></h3>
		<p>At date: <input type="date" name="d" value="<%=d%>"></p>
		<p>Outstanding shares: <input type="number" name="shares" min="1" step="1" value="<%=outstanding%>"></p>
		<p><b><%=hint%></b></p>

		<%If found Then%>
			<input type="submit" name="submitOS" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitOS" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitOS" value="Cancel">
			<%Else%>
				<input type="submit" name="submitOS" value="Delete">
			<%End If%>
		<%Else%>
			<input type="submit" name="submitOS" value="Add">
		<%End If%>
	</form>
	<form method="post" action="issued.asp">
		<input type="hidden" name="i" value="<%=i%>">
		<input type="submit" name="submitList" value="Clear form">
	</form>
	<hr>
	<h3>Existing records</h3>
	<%rs.Open "SELECT *,maxRank('issuedshares',userID)uRank FROM issuedshares i JOIN users u ON i.userID=u.ID WHERE issueID="&i&" ORDER BY atDate DESC",conRole
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="numtable fcl">
			<tr>
				<th>At date</th>
				<th>Outstanding</th>
				<th>Change</th>
				<th>User</th>
				<th></th>
				<th></th>
			</tr>
		<%Do Until rs.EOF
			d=MSdate(rs("atDate"))
			outstanding=Cdbl(rs("outstanding"))
			userName=rs("name")
			canEdit=rankingRs(rs,uRank)
			rs.MoveNext
			If Not rs.EOF Then oschange=FormatNumber(outstanding-CDbl(rs("outstanding")),0) Else oschange=""				
			%>
			<tr>
				<td><%=d%></td>
				<td><%=FormatNumber(outstanding,0)%></td>
				<td><%=oschange%></td>
				<td><%=userName%></td>
				<td><%If canEdit Then%><a href="issued.asp?i=<%=i%>&amp;d=<%=d%>">Edit</a><%End If%></td>
				<td><a href="holding.asp?i=<%=i%>&amp;targDate=<%=d%>">Holders</a></td>
			</tr>		
		<%Loop%>
		</table>
	<%End If
	rs.Close
End If
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
