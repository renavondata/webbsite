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
Dim d,lot,hint,submit,sql,found,i,n,p,rs,where
Call findStock(i,n,p)

Call prepMasterRs(conMaster,rs)
submit=Request("submitLot")
d=getMSdef("d","")
lot=getLng("lot",0)
If i>0 And d>"" Then
	If (submit="Add" or Submit="Update") And lot<=0 Then
		hint=hint&"Specify the board lot size. "
	Else
		where=" issueID="&i&" AND until="&apq(d)
		rs.Open "SELECT lot FROM oldlots WHERE"&where,conMaster
		If rs.EOF Then
			If submit="Add" Then
				sql="INSERT INTO oldlots(issueID,until,lot)" & valsql(Array(i,d,lot))
				conMaster.Execute sql
				hint=hint&"The board lot of "&lot&" until "&d&" was added. "
			ElseIf submit="Update" or submit="Delete" or submit="CONFIRM DELETE" Then
				hint=hint&"Record not found. "
			End If
		Else
			found=True
			If submit="Add" Then
				hint=hint&"A record for that date already exists. "
			ElseIf submit="Update" Then
				sql="UPDATE oldlots SET lot="&lot&" WHERE"&where
				conMaster.Execute sql
				hint=hint&"The board lot until "&d&" was updated to "&lot&". "
			ElseIf submit="Delete" Then
				hint=hint&"Are you sure you want to delete the board lot until "&d&"?"
				lot=rs("lot")
			ElseIf submit="CONFIRM DELETE" Then
				sql="DELETE FROM oldlots WHERE"&where
				conMaster.Execute sql
				hint=hint&"The board lot of "&lot&" until "&d&" was deleted. "
				d=""
				lot=""
			Else
				lot=rs("lot")
			End If
		End If
		rs.Close
	End If
ElseIf i>0 And submit="Add" Then
	hint=hint&"Specify a date. "
End If
%>
<title><%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=n%></h2>
	<%Call orgbar(p,8)
	If i>0 Then	Call issueBar(i,3)
End If%>
<h3>Rules</h3>
<ul>
	<li>Our system checks board lots on HKEX web site daily and captures the 
	current board lot. However, we need to make manual entries to cover parallel 
	trading during a consolidation or split of shares (e.g, consolidation of 50 
	to 1, or split of 1 to 10).</li>
	<li>The first relevant date (Date1) is the date on which the original 
	counter for the existing shares temporarily closes and a new counter (with a 
	temporary stock code) for the adjusted shares opens. For example, in a 50:1 
	consolidation, if the board lot was 2,000 until Date1, then enter 2,000 
	shares until Date 1. The second date (Date2) is when the original counter 
	reopens (NOT when the temporary counter closes). That is typically 2 weeks 
	after the original counter closed, but may vary with public holidays. We 
	enter that the board lot is 40 shares until Date2.</li>
</ul>
<hr>
<%If i>0 Then%>
	<form method="post" action="oldlots.asp">
		<input type="hidden" name="i" value="<%=i%>">
		<p>Until: <input type="date" name="d" value="<%=d%>"></p>
		<p>Lot size: <input type="number" min="1" name="lot" value="<%=lot%>"></p>
		<%If hint<>"" Then%><p><b><%=Hint%></b></p><%End If%>
		<%If found Then%>
			<input type="submit" name="submitLot" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitLot" style="color:red" value="CONFIRM DELETE">
			<%Else%>
				<input type="submit" name="submitLot" value="Delete">
			<%End If%>
		<%Else%>
			<input type="submit" name="submitLot" value="Add">
		<%End If%>
	</form>
	<h3>Old lots of this issue</h3>
	<%rs.Open "SELECT * FROM oldlots WHERE issueID="&i&" ORDER BY until DESC",conMaster
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<table class="numtable">
			<tr>
				<th>Until</th>
				<th>Board lot</th>
			</tr>
			<%Do Until rs.EOF
				d=MSdate(rs("until"))%>
				<tr>
					<td><a href="oldlots.asp?i=<%=i%>&amp;d=<%=d%>"><%=d%></a></td>
					<td><%=FormatNumber(rs("lot"),0)%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>	
	<%End If
	rs.Close
End If%>
<form method="post" action="oldlots.asp">
	Enter stock code: <input type="number" name="sc" min="1" max="999999" step="1" maxlength="6" size="6">
</form>
<%Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
