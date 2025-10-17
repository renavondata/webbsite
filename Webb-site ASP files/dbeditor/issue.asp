<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,referer,tv,hint,submit,p,s,i,orgName,org,title,canDelete,exp,sql,curr,priced,n,canExpire
Const roleID=4 'orgs
Call prepRole(roleID,conRole,rs,userID,uRank)
Call getReferer(referer,tv)
Call findStock(i,n,p)
canDelete=False
submit=Request("submitIss")
s=getInt("s",0) 'security type, default Ordinary Shares
exp=MSdate(Request("exp")) 'warrant or bond expiry date
curr=getInt("curr",Null) 'currency,default null
If i>0 Then
	'we have a target issue, which implies a target person
	rs.Open "SELECT i.typeID,issuer,userID,maxRank('issue',userID)uRank,priced(ID1) priced,SEHKcurr,expmat,canExpire FROM "&_
		"issue i JOIN secTypes s ON i.typeID=s.typeID WHERE ID1="&i,conRole
	If rs.EOF Then
		hint=hint&"No such issue. "
		i=0
	Else
		p=rs("issuer")
		s=rs("typeID")
		curr=rs("SEHKcurr")
		exp=MSdate(rs("expmat"))
		canExpire=CBool(rs("canExpire"))
		priced=CBool(rs("priced"))
		If Not priced Then
			'issue has no SEHK prices
			If rankingRs(rs,uRank) Then
				If submit="Update" Then
					'update the warrant expiry date or the traded currency. Don't allow update to issue type.
					If canExpire Then
						If exp>"" Then conRole.Execute("UPDATE issue"&setsql("userID,expmat",Array(userID,exp))&"ID1="&i) 'don't allow perpetual warrant
					End If
					If curr>-1 Then conRole.Execute("UPDATE issue"&setsql("userID,SEHKcurr",Array(userID,curr))&"ID1="&i)
				Else
					curr=rs("SEHKcurr")
					exp=MSdate(rs("expmat"))
				End If
			 	canDelete=Not CBool(conRole.Execute("SELECT EXISTS(SELECT * FROM sholdings WHERE issueID="&i&")").Fields(0))
			 	If canDelete Then
				 	canDelete=Not CBool(conRole.Execute("SELECT EXISTS(SELECT * FROM stocklistings WHERE issueID="&i&")").Fields(0))
				 	If canDelete Then	
				 		If submit="Delete" Then
				 			hint=hint&"Are you sure you want to delete issue with ID "&i&"?"
				 		ElseIf submit="CONFIRM DELETE" Then
							conRole.Execute("DELETE FROM issue WHERE ID1="&i)
							hint=hint&"Issue with ID "&i&" was deleted."
							i=0
				 		End If
				 	ElseIf submit="Delete" Then
				 		hint=hint&"This issue has a stock listing and cannot be deleted until you delete the listing. "
				 	End If
			 	ElseIf submit="Delete" Then
			 		hint=hint&"This issue has holders and cannot be deleted until you delete those. "
			 	End If
			Else
				hint=hint&"You didn't create this issue and don't outrank the person who did. "
			End if
		Else
			hint=hint&"The issue cannot be edited or deleted because it has begun trading. "
		End If	
	End If
	rs.Close
Else
	i=0
End If
If i=0 Then p=getLng("p",0) 'issuer
If p>0 Then
	orgName=fnameOrg(p)
	If orgName="No such organisation" Then
		p=0
		hint=hint&orgName
	End If
End If
If submit="Add" And p>0 And s>-1 Then
	sql="SELECT * FROM issue i LEFT JOIN currencies c ON i.SEHKcurr=c.ID JOIN users u ON i.userID=u.ID WHERE issuer="&p&" AND typeID="&s	
	If exp>"" Then sql=sql&" AND expmat="&apq(exp)
	If isNull(curr) Then
		sql=sql&" AND (isNull(SEHKcurr) OR SEHKcurr=0)"
	Else
		sql=sql&" AND SEHKcurr="&curr
	End If
	rs.Open sql,conRole
	If rs.EOF Then
		'add the issue
		conRole.Execute "INSERT INTO issue (userID,issuer,typeID,expmat,SEHKcurr)" & valsql(Array(userID,p,s,exp,curr))
		i=lastID(conRole)
		hint=hint&"The issue was added with ID "&i&". "
		canDelete=True
		Call issueName(i,n,p)
	Else
		hint=hint&"We cannot add this issue because it conflicts with existing issue with ID "&rs("ID1")&". "
	End If
	rs.Close
End If
title="Add, edit or delete an issue"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="cotop.inc"-->
<%If i>0 Then%>
	<h2><%=n%></h2>
	<%Call orgbar(p,8)
	Call issueBar(i,1)
ElseIf p>0 Then%>
	<h2><%=orgName%></h2>
	<%Call orgbar(p,8)
Else%>
	<h2><%=title%></h2>
<%End If%>
<%If p>0 Then%>
	<form method="post" action="issue.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<%If i>0 Then%>
			<h3>Edit issue</h3>
			<p>Issue ID: <%=i%></p>
			<p>Issue type: <%=conRole.Execute("SELECT typeLong FROM secTypes WHERE typeID="&s).Fields(0)%></p>
		<%Else%>
			<div class="inputs">Issue type: <%=arrSelect("s",s,conRole.Execute("SELECT typeID,typeLong FROM secTypes WHERE typeID NOT IN(2,40,41,46) ORDER BY typeLong").GetRows,True)%></div>	
		<%End If%>
		<div class="inputs">SEHK currency: <%=arrSelectZ("curr",curr,conRole.Execute("SELECT ID,currency FROM currencies ORDER BY currency").GetRows,False,True,"","")%> (leave blank if unlisted)</div>
		<div class="clear"></div>
		<%If canExpire Then%>
			<div class="inputs">Expiry date: <input type="date" name="exp" value="<%=exp%>"></div>
			<div class="clear"></div>
		<%End If
		If hint<>"" Then%>
			<p><b><%=Hint%></b></p>
		<%End If
		'make buttons
		If i>0 Then%>
			<input type="hidden" name="i" value="<%=i%>">
			<%If Not priced Then%>
				<input type="submit" name="submitIss" value="Update">
				<%If canDelete Then%>
					<%If submit="Delete" Then%>
						<input type="submit" name="submitIss" style="color:red" value="CONFIRM DELETE">
						<input type="submit" name="submitIss" value="Cancel">
					<%Else%>
						<input type="submit" name="submitIss" value="Delete">
					<%End If%>
				<%End If
			End If
		Else%>
			<input type="submit" name="submitIss" value="Add">
		<%End If%>
	</form>
	<form method="post" action="issue.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="submit" name="submitIss" value="Clear form">
	</form>
	<%If referer>"" And i>0 Then%>
		<form method="post" action="<%=referer%>">
			<input type="hidden" name="<%=tv%>" value="<%=i%>">
			<p><input type="submit" name="submitBtn" value="Use this issue"></p>
		</form>
	<%End If	
	rs.Open "SELECT *,maxRank('issue',i.userID)uRank,priced(i.ID1) priced FROM issue i JOIN secTypes s ON i.typeID=s.typeID "&_
		"JOIN users u ON i.userID=u.ID LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE issuer="&p&" ORDER BY listOrd,expmat",conRole
	If Not rs.EOF Then%>
		<h3>Existing issues</h3>
		<table class="txtable">
			<tr>
				<th>Issue ID</th>
				<th>Type</th>
				<th>SEHK<br>currency</th>
				<th>Expiry</th>
				<th>User</th>
				<th colspan="2"></th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("ID1")%></td>
				<td><%=rs("typeLong")%></td>
				<td><%=rs("currency")%></td>
				<td><%=MSdate(rs("expmat"))%></td>
				<td><%=rs("name")%></td>
				<td><a href="issue.asp?i=<%=rs("ID1")%>">Select</a></td>
				<%If Not CBool(rs("priced")) And rankingRs(rs,uRank) Then%>
					<td><a href="issue.asp?submitIss=Delete&amp;i=<%=rs("ID1")%>">Delete</a></td>
				<%Else%>
					<td></td>
				<%End If%>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
End If%>
<p><a href="searchorgs.asp?tv=p">Find or add an issuer</a></p>
<form method="post" action="issue.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<%Call closeConRs(conRole,rs)%>
<hr>
<h3>Rules</h3>
<ul>
	<li>You cannot edit or delete an issue if it has been traded on SEHK.</li>
	<li>You cannot edit or delete an issue unless you created it or outrank the 
	person who did, or have the highest rank.</li>
	<li>You cannot change the type of an issue. If needed, delete it and create 
	a new one.</li>
	<li>You cannot delete an issue which has holders. Delete those first, if you 
	have sufficient rank.</li>
	<li>Leave the SEHK currency blank if an issue has not and will not be listed 
	on SEHK.</li>
	<li>For stocks such as ETFs with multi-currency trading on SEHK, different 
	currencies have different issues IDs.</li>
</ul>
<!--#include file="cofooter.asp"-->
</body>
</html>
