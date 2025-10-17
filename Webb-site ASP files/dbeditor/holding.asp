<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim targDate,i,issueID,targShares,strTargShares,outstanding,issuedMod,issuedUser,submit,issuerID,newIssue,knownDate,_
	name,typeShort,typeLong,holderID,holderName,targHolder,holdType,org,heldAs,heldAsTxt,recID,_
	shares,sumShares,ppl,listed,x,targStake,strTargStake,stake,sumStake,pc,pURL,atDate,orgCnt,expand,title,recList,_
	hint,lastListed,recShares,recStake,recUser,recModified,canEdit,done,sql,human,iName,conRole,rs,userID,uRank
Const roleID=3 'HKUteam
Call prepRole(roleID,conRole,rs,userID,uRank)
done=False
recID=getLng("r",0)
submit=Request("submitBtn")
'returning from search pages?
org=getLng("org",0)
ppl=getLng("ppl",0)
issuerID=getLng("issuer",0)
i=getLng("i",0)

knownDate=Request("kd")
If knownDate>"" Then targDate=knownDate Else targDate=Request("targDate")
If submit="Update records" Then
	recList=Request("updRec")
	If recList<>"" Then
		sql="INSERT INTO sholdings (userID,holderID,issueID,atDate,heldAs,shares,stake) SELECT "&userID&",holderID,issueID,'"&MSdate(targDate)&"',heldAs,shares,stake "&_
			"FROM sholdings WHERE ID IN("&recList&")"
			conRole.Execute sql
		hint=hint&"Records updated to "&MSdate(targDate)&". "
	Else
		hint=hint&"No records were selected to update. "
	End If
ElseIf submit="Update and zero" Then
	recList=Request("updRec")
	If recList<>"" Then
		sql="INSERT INTO sholdings(userID,holderID,issueID,atDate,heldAs,shares,stake) SELECT "&userID&",holderID,issueID,'"&MSdate(targDate)&"',heldAs,0,NULL "&_
			"FROM sholdings WHERE ID IN("&recList&")"
			conRole.Execute sql
		hint=hint&"Records updated to "&MSdate(targDate)&" and set to zero shares. "
	Else
		hint=hint&"No records were selected to update and zero. "
	End If
ElseIf submit="Delete records" Then
	recList=Request("delRec")
	If recList<>"" Then
		sql="DELETE FROM sholdings WHERE ID IN("&recList&")"
		conRole.Execute sql
		hint=hint&"Records deleted. "
	Else
		hint=hint&"No records were selected to delete. "
	End If
ElseIf recID>0 Then
	rs.Open "SELECT * FROM sholdings WHERE ID="&recID,conRole
	If rs.EOF Then
		hint=hint&"No such record. "
	Else
		i=CLng(rs("issueID"))
		targHolder=rs("holderID")
		targShares=rs("shares")
		targStake=rs("stake")
		heldAs=rs("heldAs")
		holdType=2
		If targDate="" Then targDate=rs("atDate")
	End If
	rs.Close
ElseIf org>0 or ppl>0 or issuerID>0 Then
	'returning from a search for org or human holder or adding new issue
	targDate=Session("targDate")
	heldAs=Session("ha")
	If org>0 Then
		'returning from searchorgs.asp with a holder
		i=Session("i")
		targHolder=org
		holdType=3
	ElseIf ppl>0 Then
		'returning from adding a human
		i=Session("i")
		targHolder=ppl
		holdType=4
	End If
Else
	holdType=Request("ht")
	heldAs=Request("ha")
	Select case holdType
		Case 1,2,3,4
			targHolder=getLng("h"&holdType,0)
		Case Else
			targHolder=getLng("h4",0)
	End Select
	If submit="Confirm" or submit="Change shares" Then
		targShares=Request("targShares")
		If isNumeric(targShares) And targShares<>"" Then
			targShares=CDbl(targShares)
			targStake=Null
		Else
			targShares=Null
			targStake=Request("targStake")
			If targStake="" Then
				targStake=Null
			Else
				pc=1
				If right(targStake,1)="%" Then
					pc=100
					targStake=Left(targStake,Len(targStake)-1)
				End if
				If isNumeric(targStake) Then
					targStake=CSng(targStake)/pc
					If targStake<0 or targStake>1 Then targStake=Null
				Else
					targStake=Null
				End If
			End If
		End If
	End if
End If

targDate=MSdate(targDate)
outstanding=Null

If i>0 Then
	Call issueName(i,iName,issuerID)
	rs.Open "SELECT issuer,typeShort,typeLong FROM issue i JOIN secTypes s ON i.typeID=s.typeID WHERE i.ID1="&i,conRole
	If not rs.EOF Then
		typeShort=rs("typeShort")
		typeLong=rs("typeLong")
	End If
	rs.Close
	If targDate<>"" Then
		rs.Open "SELECT outstanding,modified,name FROM issuedshares JOIN users on userID=ID WHERE issueID="&i&" AND atDate='"&targDate&"'",conRole
		If Not rs.EOF Then
			outstanding=CDbl(rs("outstanding"))
			issuedMod=MSdatetime(rs("modified"))
			issuedUser=rs("name")
		End If
		rs.Close
		listed=CBool(conRole.Execute("SELECT "&i&" IN (SELECT issueID FROM stocklistings "&_
			"WHERE (isNull(firstTradeDate) Or firstTradeDate<='"&targDate&"') "&_
			"AND (isNull(delistDate) Or delistDate>'"&targDate&"') AND stockExID IN(1,20,22,23))").Fields(0))
	End If
End If

If issuerID>0 Then
	rs.Open "SELECT name1 FROM organisations WHERE personID="&issuerID,conRole
	If Not rs.EOF Then name=rs("name1")
	rs.Close
End If

If targHolder>0 Then
	Call getPerson(targHolder,human,holderName)
	If human Then pURL="natperson.asp" Else pURL="orgdata.asp"
	pURL=pURL&"?p="&targHolder
	If heldAs<>"" And isNumeric(heldAs) Then
		rs.Open "SELECT heldAsTxt FROM heldAs WHERE ID=" & heldAs,conRole
		If rs.EOF Then
			heldAs=""
		Else
			heldAsTxt=rs("heldAsTxt")
			rs.Close
			rs.Open "SELECT s.ID,userID,u.name,maxRank('sholdings',userID)uRank,shares,stake,modified FROM sholdings s JOIN users u ON s.userID=u.ID "&_
				"WHERE issueID="&i&" AND holderID="&targHolder&" AND atDate='"&targDate&"' AND heldAs=" & heldAs,conRole
			If rs.EOF Then
				canEdit=True
				recID=0 'remove any submitted recID
			Else
				recID=rs("ID")
				recShares=rs("shares")
				recStake=rs("stake")
				If submit<>"Confirm" Then
					targShares=recShares
					targStake=recStake
				End If
				recUser=rs("name")
				recModified=MSdateTime(rs("modified"))
				canEdit=rankingRs(rs,uRank)
				If Not canEdit Then hint=hint&"You did not enter this holding and don't outrank the user who did, so you cannot edit it. "
			End If
			If submit="Delete" And canEdit Then
				conRole.Execute "DELETE FROM sholdings WHERE ID="&recID
				hint=hint&"The record has been deleted. "
				recID=0
			ElseIf submit="Confirm" And canEdit Then
				If isNull(targShares) and isNull(targStake) And listed Then
					hint=hint&"You must enter the number of shares for a listed company. "
				Else
					sql="REPLACE INTO sholdings(userID,holderID,issueID,atDate,heldAs,shares,stake)" & valsql(Array(userID,targHolder,i,targDate,heldAs,targShares,targStake))
					conRole.Execute sql
					done=True
					hint=hint&"The record has been added or amended. "
					holdType=2
				End If
			End If
		End If
		rs.Close
	Else
		heldAs=""
	End if
End If
If Not isNull(targStake) Then strTargStake=FormatPercent(targStake,4)
If Not isNull(targShares) Then strTargShares=FormatNumber(targShares,0)
'store session variables in case we divert to add an issuer or holder
Session("i")=i
Session("targDate")=targDate
Session("ha")=heldAs
If listed Then Session("lastListed")=i
lastListed=Session("lastListed")
title="Enter shareholdings"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%
If i>0 Then%>
	<h2><%=iName%></h2>
	<%Call orgBar(issuerID,8)
	Call issueBar(i,4)
ElseIf issuerID>0 Then%>
	<h2><%=name%></h2>
	<%Call orgBar(issuerID,8)
End If
%>
<h2><%=title%></h2>
<h3>Issue</h3>
<form action="holding.asp" method="post" name="myform">
	<%If issuerID=0 Then%>
		<p>Listed:
		<%=arrSelectZ("i","",conRole.Execute("SELECT DISTINCT issueID,CONCAT(name,':',typeShort) FROM issuesforhku").GetRows,True,True,0,"Select")%>
		</p>
		<p>Unlisted: <a href="searchorgs.asp?tv=issuer">Find or add an issuer</a></p>
		<%If Not listed And lastListed<>"" Then%>
			<p><a href="holding.asp?i=<%=lastListed%>&amp;targDate=<%=targDate%>">Use last listed issue</a></p>
		<%End If%>	
	<%Else%>
		<input type="hidden" name="ti" value="<%=issuerID%>">
		<table class="txtable">
			<tr>
				<td>Issuer:</td>
				<td><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=issuerID%>"><%=name%></a></td>
				<td><a href="holding.asp?targDate=<%=targDate%>">Clear</a></td>
			</tr>
			<tr>
				<td>Issuer ID:</td>
				<td><%=issuerID%></td>
				<td></td>
			</tr>
			<%If i>0 Then%>
				<tr>
					<td>Issue:</td>
					<td>
						<%=typeShort%>:<%=typeLong%>
						<input type="hidden" name="i" value="<%=i%>">
					</td>
					<td><a href="holding.asp?targDate=<%=targDate%>&amp;issuer=<%=issuerID%>">Clear</a></td>
				</tr>
				<tr>
					<td>Issue ID:</td>
					<td><%=i%></td>
					<td></td>
				</tr>
				<tr>
					<td>Listed:</td>
					<td><%=listed%></td>
					<td>
						<%If Not listed And lastListed<>"" Then%>
							<a href="holding.asp?i=<%=lastListed%>&amp;targDate=<%=targDate%>">Use last listed issue</a>
						<%End If%>
					</td>
				</tr>
			<%Else%>
				<tr>
					<td>Issue:</td>					
					<td>
						<%sql="SELECT ID1,CONCAT(typeShort,':',typeLong) FROM issue i JOIN secTypes s ON i.typeID=s.typeID WHERE i.typeID NOT IN(1,2,41) AND issuer="&issuerID
						rs.Open sql,conRole
						If Not rs.EOF Then Response.Write arrSelect("i",i,rs.GetRows,True)
						rs.Close%>
					</td>
					<td><a href="issue.asp?tv=i&amp;p=<%=issuerID%>">Add or delete an issue for this organisation.</a></td>
				</tr>			
			<%End If%>
		</table>
	<%End If%>
	<p>Snapshot date: 
		<input type="date" name="targDate" value="<%=targDate%>" onblur="this.form.submit()">	
		<%If issuerID>0 Then
			sql="SELECT DISTINCT DATE_FORMAT(atDate,'%Y-%m-%d'),DATE_FORMAT(atDate,'%Y-%m-%d') FROM sholdings s JOIN issue i ON s.issueID=i.ID1 WHERE Not isNull(atDate) AND i.issuer="&issuerID&" ORDER BY atDate"
			rs.Open sql,conRole
			If Not rs.EOF Then Response.Write arrSelectZ("kd","",rs.GetRows,True,True,"","Known dates")
			rs.Close
		End If%>
		<input type="submit" value="Go">
	</p>
	<%If listed and targDate<>"" Then%>
		<p><a target="_blank" href="snaplog.asp?j=0&p=<%=issuerID%>&d=<%=targDate%>">Log this snapshot</a></p>
	<%End If%>
	<%If Not isNull(outstanding) Then%>
		<h4>Outstanding shares</h4>
		<table class="numtable fcl">
		<tr>
			<th>Date</th>
			<th>Outstanding shares</th>
			<th>Entered on</th>
			<th>User</th>
			<th></th>
		</tr>
		<tr>
			<td><%=targDate%></td>
			<td><%=FormatNumber(outstanding,0)%></td>
			<td><%=issuedMod%></td>
			<td><%=issuedUser%></td>
			<td><a href="issued.asp?i=<%=i%>&d=<%=targDate%>" target="_blank">Edit</a></td>
		</tr>
		</table>
	<%Else%>
		<p><a href="issued.asp?i=<%=i%>&d=<%=targDate%>" target="_blank">Enter issued shares</a></p>
	<%End If%>
</form>
<%If i>0 And targDate<>"" Then
	If targHolder<>"" And heldAs<>"" And submit<>"Cancel" And Not Done Then
		If recID>0 And Not Done Then%>
			<h4>Existing record</h4>
			<table class="numtable">
			<tr>
				<th class="left">Holder</th>
				<th class="left">Date</th>
				<th class="left">Held as</th>
				<th style="width:120px">Shares held</th>
				<th style="width:70px">Stake</th>
				<th>User</th>
				<th>Timestamp</th>
			</tr>
			<tr>
				<td><%=holderName%></td>
				<td><%=targDate%></td>
				<td><%=heldAsTxt%></td>
				<td><%=intStr(recShares)%></td>
				<td>
				<%If Not isNull(outstanding) And Not isNull(recShares) Then
					Response.Write FormatPercent(recShares/outstanding,4)
				ElseIf Not isNull(recStake) Then
					Response.Write FormatPercent(recStake,4)
				End If%>
				</td>
				<td><%=recUser%></td>
				<td><%=recModified%></td>
			</tr>
			</table>
			<%If canEdit Then%>
				<form action="holding.asp" method="post">
					<input type="hidden" name="r" value="<%=recID%>">
					<input type="hidden" name="i" value="<%=i%>">
					<input type="hidden" name="targDate" value="<%=targDate%>">
					<input type="hidden" name="h<%=holdType%>" value="<%=targHolder%>">
					<input type="hidden" name="ht" value="<%=holdType%>">
					<input type="hidden" name="ha" value="<%=heldAs%>">
					<input type="hidden" name="targShares" value="<%=targShares%>">
					<input type="hidden" name="targStake" value="<%=targStake%>">
					<p><input type="submit" name="submitBtn" value="Delete"></p>
				</form>
			<%End If
		End If
		If canEdit And Not Done Then
			'allow an input%>
			<form action="holding.asp" method="post">
				<input type="hidden" name="targDate" value="<%=targDate%>">
				<input type="hidden" name="h<%=holdType%>" value="<%=targHolder%>">
				<input type="hidden" name="i" value="<%=i%>">
				<input type="hidden" name="ht" value="<%=holdType%>">
				<input type="hidden" name="ha" value="<%=heldAs%>">
				<h4>Proposed record</h4>
				<table class="numtable">
					<tr>
						<th class="left">Holder</th>
						<th class="left">Date</th>
						<th class="left">Held as</th>
						<th style="width:120px">Shares held</th>
						<th style="width:70px">Stake</th>
					</tr>
					<tr>
						<td><a target="_blank" href="https://webb-site.com/dbpub/<%=pURL%>"><%=holderName%></a></td>
						<td><%=targDate%></td>
						<td class="left"><%=heldAsTxt%></td>
						<%If targShares=0 Then strTargShares=""
						If targStake=0 Then strTargStake=""%>
						<td><input type="text" name="targShares" style="text-align:right;width:114px" value="<%=strTargShares%>"></td>
						<td>
							<%If Not listed Then%><input type="text" name="targStake" style="text-align:right;width:64px" value="<%=strTargStake%>"><%End If%>
						</td>
					</tr>
				</table>
				<p>
					<input type="submit" name="submitBtn" value="Confirm">&nbsp;
					<input type="submit" name="submitBtn" value="Cancel">
				</p>
			</form>
		<%End If
	Else
		'select holder and heldAs%>
		<form action="holding.asp" method="post">
			<input type="hidden" name="i" value="<%=i%>">
			<input type="hidden" name="targDate" value="<%=targDate%>">
			<h3>Holder</h3>
			<%'list of directors
			sql="SELECT distinct director as holderID,fnameppl(name1,name2,cname) as name FROM directorships JOIN people "&_
				"ON director=personID WHERE company="&issuerID&" AND (isNull(apptDate) or apptDate<='"&targDate&_
				"') AND (isNull(resDate) OR resDate>'"&targDate&"') ORDER BY name"
			rs.Open sql,conRole
			%>
			<p>
				<input type="radio" id="rb1" name="ht" value="1"<%=checked(holdType=1)%>>
				Director/senior manager: 
				<%If rs.EOF Then
					Response.Write "None found."
				Else%>
					<%=arrSelectOnchZ("h1",targHolder,rs.GetRows,"document.getElementById('rb1').checked=true;",True,"","")%>
				<%End If
				rs.Close%>
			</p>
			<%'list of known shareholders
			rs.Open "SELECT DISTINCT holderID, namepsn(o.name1,p.name1,name2) AS name,CAST(p.cName AS CHAR) AS cName "&_
				"FROM sholdings LEFT JOIN organisations o ON holderID=o.personID "&_
				"LEFT JOIN people p on holderID=p.personID "&_
				"WHERE issueID="&i&" ORDER BY name",conRole%>
			<p>
				<input type="radio" id="rb2" name="ht" value="2"<%=checked(holdType=2)%>>
				Known shareholders: 
				<%IF rs.EOF Then
					Response.Write "None found."
				Else%>
					<%=arrSelectOnchZ("h2",targHolder,rs.GetRows,"document.getElementById('rb2').checked=true;",True,"","")%>
				<%End If
				rs.Close%>
			</p>
			<p>
				<input type="radio" id="rb3" name="ht" value="3"<%=checked(holdType=3)%>>
				<%If holdType=3 And targHolder<>"" Then
					'we've just found or added an org%>
					<a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=targHolder%>"><%=holderName%></a>
					<input type="hidden" name="h3" value="<%=targHolder%>">
					</p><p><a href="searchorgs.asp?tv=org">Find another organisation</a>
				<%Else%>
					<a href="searchorgs.asp?tv=org">Find or add an organisation</a>
				<%End If%>
			</p>
			<p>
				<input type="radio" id="rb4" name="ht" value="4"<%=checked(holdType=4)%>>
				<%If holdType=4 And targHolder<>"" Then
					'we've just added a human%>
					<a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=targHolder%>"><%=holderName%></a>
					<input type="hidden" name="h4" value="<%=targHolder%>">
					</p><p><a href="searchpeople.asp?tv=ppl">Find another human</a>
				<%Else%>
					<a href="searchpeople.asp?tv=ppl">Find or add a human</a>
				<%End If%>		
			</p>
			<h3>Holding Type</h3>
			<p><%=arrSelect("ha",heldAs,conRole.Execute("SELECT ID,heldAsTxt FROM heldAs ORDER BY heldAsTxt").GetRows,True)%></p>
			<p><input type="submit" name="submitBtn" value="Next step"></p>
		</form>
	<%End If
End If
If hint<>"" Then%>
	<p><b><%=hint%></b></p>
<%End If%>
<%If targDate<>"" and i>0 Then%>
	<hr>
	<h3>Latest direct holders on or before <%=targDate%></h3>
	<%
	Set rs=conRole.Execute("Call holdersdate("&i&",'"&targDate&"')")
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<form method="post" action="holding.asp">
			<input type="hidden" name="targDate" value="<%=targDate%>">
			<input type="hidden" name="i" value="<%=i%>">
			<table class="numtable">
			<tr>
				<th class="left">Holder (click for history)</th>
				<th class="left">Date</th>
				<th>Update</th>
				<th>Edit</th>
				<th>Delete</th>
				<th class="left">Held as</th>
				<th>Shares held</th>
				<th>Stake</th>
				<th>User</th>
				<th>Timestamp</th>
				<th></th>
			</tr>
			<%
			Do Until rs.EOF
				stake=Null
				recID=rs("recID")
				atDate=rs("atDate")
				shares=rs("shares")
				holderName=rs("holderName")&" "&rs("cName")
				If rs("hklistco") Then holderName="<b>"&holderName&"</b>"
				If isNull(shares) Then
					stake=rs("stake")
					If Not isNull(stake) Then sumStake=stake+sumStake
				Else
					sumShares=sumShares+shares
					If outstanding<>0 Then
						stake=shares/outstanding
						sumStake=stake+sumStake
					End If
				End If
				%>
				<tr>
					<td class="left"><a target="_blank" href='holdinghist.asp?p=<%=issuerID%>&amp;h=<%=rs("holderID")%>'><%=holderName%></a></td>
					<td><%=MSdate(atDate)%></td>
					<td style="text-align:center">
						<%If isNull(atDate) or atDate<cDate(targDate) Then%>
							<input type="checkbox" name="updRec" value="<%=recID%>">
						<%End If%>
					</td>
					<td><a href="holding.asp?r=<%=recID%>&amp;targDate=<%=targDate%>">Edit</a></td>
					<td class="center">
						<%If rankingRs(rs,uRank) Then%>
							<input type="checkbox" name="delRec" value="<%=recID%>">
						<%End If%>
					</td>
					<td><%=rs("heldAsTxt")%></td>
					<td><%If Not isNull(shares) Then Response.Write FormatNumber(shares,0)%></td>
					<td><%If Not isNull(stake) Then Response.Write FormatPercent(stake,4)%></td>
					<td><%=rs("user")%></td>
					<td><%=MSdateTime(rs("modified"))%></td>
					<td>
					<%If rs("ht")="O" Then%>
					<a href='holding.asp?issuer=<%=rs("holderID")%>&amp;d=<%=targDate%>'>Ownership</a>
					<%End If%>
					</td>
				</tr>
				<%rs.MoveNext
			Loop%>
			<tr>
				<td class="left" colspan="6">Total</td>
				<td><%If sumShares<>"" Then Response.Write FormatNumber(sumShares,0)%></td>
				<td><%If sumStake<>"" Then Response.Write FormatPercent(sumStake,4)%></td>
			</tr>
			</table>
			<br>
			<input type="submit" name="submitBtn" style="color:red" value="Update records">
			<input type="submit" name="submitBtn" style="color:blue" value="Update and zero">
			<input type="submit" name="submitBtn" style="color:red" value="Delete records">
		</form>
	<%End If
	rs.Close%>
	<hr>
	<h3>Ownership tree on or before <%=targDate%></h3>
	<!--#include file="holders.inc"-->
	<hr>
	<h3>Holdings tree on or before <%=targDate%></h3>
	<!--#include file="holdings.inc"-->
	<hr>
<%End  If
If i>0 Then%>
	<p><a target="_blank" href="snaplog.asp?p=<%=issuerID%>">Snapshot logs for this issuer</a></p>
	<p><a target="_blank" href="https://webb-site.com/dbpub/docs.asp?p=<%=issuerID%>">View financial reports for this issuer</a></p>
<%End If
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
