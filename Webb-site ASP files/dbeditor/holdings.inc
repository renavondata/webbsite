<%Sub holdingsGen(person,level)
	Dim issuer,rs,x,found,typeShort,nameStr,atDate,recID
	Set rs=Server.CreateObject("ADODB.Recordset")
	'stored procedure was causing a MySQL 8.0.2 error "Commands out of sync", possibly due to recursion with open recordsets
	'rs.Open "Call holdingsdate("&person&",'"&targDate&"')",conRole
	rs.Open "SELECT s.ID as recID,s.issueID,s.atDate,s.heldAs,heldAsTxt,shares,stake,"&_
		"s.userID,maxRank('sholdings',s.userID)uRank,u.name as user,i.issuer,CONCAT(name1,':',typeShort) as issueName,"&_
		"IF(isNull(stake),shares/outstanding(s.issueID,s.atDate),stake) as stakeComp,"&_
		"washklistco(i.issuer,'"& targDate & "') AS hklistco "&_
		"FROM sholdings s JOIN "&_
		"(SELECT issueID,heldAs,Max(atDate) as maxDate FROM sholdings WHERE holderID=" & person & " AND atDate<='" & targDate & "' GROUP by issueID) as t1"&_
		" ON s.issueID=t1.issueID and s.heldAs=t1.heldAs and s.atDate=t1.maxDate and holderID=" & person &_
		" JOIN (issue i,organisations o,sectypes st,heldAs ha,users u) ON s.issueID=i.ID1"&_
		" AND i.issuer=o.personID AND i.typeID=st.typeID AND s.heldAs=ha.ID AND s.userID=u.ID"&_
		" ORDER BY issueName;",conRole
	Do Until rs.EOF
		issuer=rs("issuer")
		stake=rs("stakeComp")
		atDate=rs("atDate")
		recID=rs("recID")
		found=False
		If orgcnt>0 Then
			For x=0 to Ubound(orgArr)
				If orgArr(x)=issuer Then
					found=True
					Exit For
				End If
			Next
		End if
		If found=False Then
			orgcnt=orgcnt+1
			Redim Preserve orgArr(orgcnt)
			orgArr(orgcnt)=issuer
		End if
		nameStr=rs("issueName")
		If rs("hklistco") Then nameStr="<b>"&nameStr&"</b>"%>	
		<div style="float:left;width:40px;"><%If found=False Then response.write "<a name='D" & orgcnt & "'></a>"&orgcnt%>&nbsp;</div>
		<div style="float:left;min-width:80px"><%=spDate(atDate)%></div>
		<div style="float:left;width:60px;text-align:center">
			<%If isNull(atDate) or atDate<cDate(targDate) Then%>
				<input type="checkbox" name="updRec" value="<%=recID%>">
			<%Else%>
				&nbsp;
			<%End If%>
		</div>	
		<div style="float:left;width:40px;text-align:center">
			<a href="holding.asp?r=<%=recID%>&targDate=<%=targDate%>">Edit</a>
		</div>
		<div style="float:left;width:60px;text-align:center">
			<%If rankingRs(rs,uRank) Then%>
				<input type="checkbox" name="delRec" value="<%=recID%>">
			<%Else%>
				&nbsp;
			<%End If%>
		</div>
		<div style="text-align:right;float:left;width:<%=level*60+60%>px;padding-right:5px"><%=pcStr(stake)%></div>
		<div style="float:left"><a target="_blank" href='https://webb-site.com/dbpub/orgdata.asp?p=<%=rs("issuer")%>'><%=nameStr%></a>
			<%If found=True Then%>
				&nbsp;see <a href="#D<%=x%>">line <%=x%></a>
			<%End If%></div>
		<div style="clear:both"></div>
		<%If found=False And not rs("hklistco") Then Call holdingsGen(issuer,level+1)
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

'MAIN CODE
Redim orgArr(0)
orgArr(0)=CLng(issuerID)
orgcnt=0%>
<div style="float:left;width:40px;">&nbsp;</div>
<div style="float:left;width:80px;"><b>Date</b></div>
<div style="float:left;width:60px;text-align:center"><b>Update</b></div>
<div style="float:left;width:40px;text-align:center"><b>Edit</b></div>
<div style="float:left;width:60px;text-align:center"><b>Delete</b></div>
<div style="text-align:right;float:left;width:60px;padding-right:5px"><b>Stake</b></div>
<div><b>Issue</b></div>
<form method="post" action="holding.asp">
	<input type="hidden" name="targIssue" value="<%=issueID%>">
	<input type="hidden" name="targDate" value="<%=targDate%>">	
	<%Call holdingsGen(issuerID,0)%>
	<br>
	<input type="submit" name="submitBtn" style="color:red" value="Update records">
	<input type="submit" name="submitBtn" style="color:blue" value="Update and zero">
	<input type="submit" name="submitBtn" style="color:red" value="Delete records">
</form>