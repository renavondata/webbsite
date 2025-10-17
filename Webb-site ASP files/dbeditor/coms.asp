<%Option Explicit
Session.Timeout=60%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<script type="text/javascript" src="coms.js"></script>
<%Dim conRole,rs,userID,uRank,d,submit,p,knownDate,dir,posn,com,comName,name,x,title,nocom,comTot,hint,c,copyDate,rs2,atDate,rank,sql,ar,user,modified,mtngs,startDate,i
Const roleID=3 'HKUteam
Call prepRole(roleID,conRole,rs,userID,uRank)
Set rs2=Server.CreateObject("ADODB.Recordset")
submit=Request("submitBtn")
c=getLng("c",-1) 'additional committee ID
p=getLng("p",0) 'orgID
knownDate=getMSdef("kd","")
If knownDate>"" Then d=knownDate Else d=getMSdef("d","")
nocom=Request("nocom")
If p>0 Then
	rs.Open "SELECT name1 FROM organisations WHERE personID="&p,conRole
	If Not rs.EOF Then name=rs("name1")
	rs.Close
	'only look for inputs if they were submitted from the form, otherwise empty nocom would remove excluded committees
	If d<>"" Then
		startDate=d
		ar=conRole.Execute("SELECT EXISTS (SELECT * FROM documents WHERE docTypeID=0 AND recordDate='"&d&"' AND orgID="&p&")").Fields(0)
		If ar Then
			'find the previous annual report or prospectus date if none, for director window
			'find previous report date
			startDate=conRole.Execute("SELECT Max(recordDate) FROM documents WHERE docTypeID=0 AND recordDate<'"&d&"' AND orgID="&p).Fields(0)
			'if no previous report, then look for IPO or Introduction document
			If isNull(startDate) Then startDate=conRole.Execute("SELECT Max(recordDate) FROM documents WHERE docTypeID IN(3,4) AND recordDate<'"&d&"' AND orgID="&p).Fields(0)
			If isNull(startDate) Then startDate=d Else startDate=MSdate(startDate)
		End If
		copyDate=MSdate(conRole.Execute("SELECT Max(atDate) as copyDate FROM compos WHERE posn>0 AND orgID="&p&" AND atDate<'"&d&"'").Fields(0))
		If submit="Copy previous" And copyDate<>"" Then
			'copy the last snapshot to this one, if permitted
			rs.Open "SELECT dirID,comID,posn FROM compos WHERE posn>0 AND comID>0 AND comID<>8 AND orgID="&p&" AND atDate='"&copyDate&"' AND dirID IN "&_
				"(SELECT DISTINCT director FROM directorships d JOIN positions pn ON d.positionID=pn.positionID "&_
			    "WHERE pn.rank=1 AND company="&p&" AND (isNull(apptDate) OR apptDate<='"&d&"') AND (isNull(resDate) OR resDate>'"&startDate&"'))",conRole
			If rs.EOF Then
				If ar Then
					hint=hint&"None of the previous committee members were directors during the period. "
				Else
					hint=hint&"None of the previous committee members are still directors. "
				End If
			Else
				hint="All the previous records have been copied or are the same. Now check your committees. "
				Do Until rs.EOF
					dir=rs("dirID")
					com=rs("comID")
					posn=rs("posn")
					sql=" orgID="&p&" AND atDate='"&d&"' AND dirID="&dir&" AND comID="&com 
					rs2.Open "SELECT *,maxRank('compos',userID)uRank FROM compos c WHERE"&sql,conRole
					If rs2.EOF Then
						conRole.Execute "INSERT INTO compos(userID,orgID,dirID,comID,atDate,posn)"&valsql(Array(userID,p,dir,com,d,posn))
					Else
						If rs2("posn")<>posn Then
							If rankingRs(rs2,uRank) Then
								conRole.Execute "UPDATE compos"&setsql("userID,posn",Array(userID,posn))&sql
							Else
								hint="1 or more records conflicted with the record of a more senior user and was not copied. Now check your committees. "
							End If
						End If
					End If
					rs2.Close
					rs.MoveNext
				Loop
				'now set missing committees
				For x=1 to 3
					If conRole.Execute("SELECT IFNULL(SUM(posn),0) FROM compos WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&x).Fields(0)="0" Then
						conRole.Execute "INSERT INTO comex(orgID,atDate,comID)"&valsql(Array(p,d,x))
					Else
						conRole.Execute "DELETE FROM comex WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&x					
					End If
				Next
			End If
			rs.Close
		ElseIf Request.Form("f")=1 Then  
			'check for excluded committees
			For Each x in split(nocom,",")
				comTot=conRole.Execute("SELECT IFNULL(sum(posn),0) FROM compos WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&x).Fields(0)
				If comTot="0" Then
					'can exclude it. Record exclusion for the top 3 committees
					If x<4 And x>0 Then	conRole.Execute "INSERT IGNORE INTO comex(orgID,atDate,comID)"&valsql(Array(p,d,x))
					'erase any records of that committee
					conRole.Execute "DELETE FROM compos WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&x
					conRole.Execute "DELETE FROM comeets WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&x
				Else
					comName=conRole.Execute("SELECT comName FROM coms WHERE ID="&x).Fields(0)
					hint=hint&"The "&comName&" Committee has members so it exists. "
				End If
			Next
			If nocom="" Then nocom="-1"
			conRole.Execute "DELETE FROM comex WHERE orgID="&p&" AND atDate='"&d&"' AND comID NOT IN("&nocom&")"
		End If
	End If
End If
title="Enter committees"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<div id="hint"><b><%=hint%></b></div>
<form action="coms.asp" method="post">
	<%If p=0 Then%>
		<h3>Select company</h3>
		<div class="inputs">
			<%=arrSelectZ("p","",conRole.Execute("SELECT DISTINCT personID,name FROM listingsforhku ORDER BY name").GetRows,True,True,0,"Select")%>
		</div>
		<div class="clear"></div>
	<%Else%>
		<input type="hidden" name="p" value="<%=p%>">
		<table class="txtable">
			<tr>
				<td>Company:</td>
				<td><a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>"><%=name%></a></td>
				<td><a href="coms.asp">Clear</a></td>
			</tr>
		</table>
		<%If d="" Then%>
			<div class="inputs">Snapshot date: 
				<input type="date" name="d" value="<%=d%>" onblur="this.form.submit()">
				<%If p>0 Then
					rs.Open "SELECT DISTINCT DATE_FORMAT(atDate,'%Y-%m-%d'),DATE_FORMAT(atDate,'%Y-%m-%d') FROM (SELECT DISTINCT atDate FROM sholdings s JOIN issue i ON s.issueID=i.ID1 "&_
						"WHERE Not isNull(atDate) AND i.issuer="&p&" UNION SELECT DISTINCT atDate FROM compos WHERE orgID="&p&" ORDER BY atDate)t1",conRole
					If Not rs.EOF Then Response.Write arrSelectZ("kd","",rs.GetRows,True,True,"","Known dates")
					rs.Close
				End If%>
			</div>
			<div class="clear"></div>
		<%Else%>
			<input type="hidden" name="d" value="<%=d%>">
			<input type="hidden" name="f" value="1">
			<table class="txtable">
				<tr>
					<td>Snapshot date:</td>
					<td><%=d%></td>
					<td><a href="coms.asp?p=<%=p%>">Clear</a></td>
				</tr>
			</table>
			<%If copyDate<>"" Then%>
				<p>Previous snapshot: <%=copyDate%></p>
				<input type="submit" name="submitBtn" value="Copy previous">
			<%End If%>
			<p><a target="_blank" href="snaplog.asp?j=1&p=<%=p%>&d=<%=d%>">Log this snapshot</a></p>
			<%rs.Open "SELECT ID,comName,SUM(posn) AS t,x.comID FROM coms LEFT JOIN comPos ON orgID="&p&" AND atDate='"&d&"' AND ID=comID "&_
				"LEFT JOIN comex x ON x.orgID="&p&" AND x.atDate='"&d&"' AND ID=x.comID WHERE ID>0 GROUP BY ID HAVING (ID<4 AND (isNull(t) or t=0)) Or (ID>3 AND t=0)",conRole
			If Not rs.EOF Then%>
				<p>No committees:
				<%Do Until rs.EOF%>
					<input type="checkbox" name="nocom" value="<%=rs("ID")%>" <%=checked(Not isNull(rs("comID")))%> onchange="this.form.submit()"><%=rs("comName")%>&nbsp;
					<%rs.MoveNext
				Loop
				%>
				</p>
			<%
			End If
			rs.Close
			rs.Open "SELECT ID,comName FROM coms WHERE ID>3 AND ID NOT IN (SELECT DISTINCT comID FROM compos WHERE orgID="&p&" AND atDate='"&d&"') ORDER BY comName",conRole
			If Not rs.EOF Then%>
				<p>Add a committee	<%=arrSelectZ("c","",rs.GetRows,True,True,0,"Select")%></p>
			<%End If
			rs.Close
		End If
	End If
	%>
	<input type="submit" name="submitBtn" value="Go">
</form>
<%If p>0 And d>"" Then
	If ar Then
		sql=""%>
		<p>This is an annual report date. Please enter numbers of meetings during the financial year, where known. </p>
	<%Else
		sql=" AND ID>0"
	End If	
	'present inputs
	rs2.Open "SELECT ID,comName FROM coms LEFT JOIN compos p ON orgID="&p&" AND atDate='"&d&"' AND ID=comID "&_
		"LEFT JOIN comex x ON x.orgID="&p&" AND x.atDate='"&d&"' AND ID=x.comID "&_
		"WHERE isNull(x.comID) AND (ID<4 OR ID=8 OR ID="&c&" OR Not isNull(p.comID))"&sql&" GROUP BY ID",conRole
	Do Until rs2.EOF
		com=rs2("ID")
		comName=rs2("comName")
		If com>0 And com<>8 Then comName=comName & " Committee"
		%>
		<h3><%=comName%></h3>
		<%
		If ar Then
			rs.Open "SELECT * FROM comeets c JOIN users u ON c.userID=u.ID WHERE orgID="&p&" AND atDate='"&d&"' AND comID="&com,conRole
			If rs.EOF Then
				mtngs=""
				user=""
				modified=""
			Else
				mtngs=rs("mtngs")
				user=rs("name")
				modified=MSdateTime(rs("modified"))
			End If
			rs.Close
			%>
			<table class="txtable">
				<tr>
					<td>Meetings:</td>
					<td><input type="number" width="3" min="0" max="255" title="0-255" required id="c<%=com%>mtngs" value="<%=mtngs%>" onblur="setComeets(<%=p%>,<%=com%>,'<%=d%>',value)"></td>
					<td id="c<%=com%>mod"><%=modified%></td>
					<td id="c<%=com%>u"><%=user%></td>
				</tr>
			</table>
			<%
		End If
		rs.Open "SELECT DISTINCT director,CAST(fnameppl(name1,name2,cname) AS NCHAR) AS name,c.posn,c.modified,u.name AS user,attend,mtngs FROM directorships d JOIN (people p,positions pn) "&_
			"ON d.director=p.personID AND d.positionID=pn.positionID LEFT JOIN compos c ON d.company=c.orgID AND d.director=c.dirID AND c.atDate='"&d&"' AND comID="&com&_
			" JOIN users u ON c.userID=u.ID "&_
			" WHERE pn.rank=1 AND (isNull(apptDate) OR apptDate<='"&d&"') AND (isNull(resDate) OR resDate>'"&startDate&"') AND company="&p&_
			" ORDER BY name;",conRole
		%>
		<table class="txtable">
			<tr>
				<th>Member</th>
				<%If com>0 And com<>8 Then%>
					<th class="center">N</th>
					<th class="center">M</th>
					<th class="center">C</th>
				<%End If%>
				<th>Modified</th>
				<th>Last user</th>
				<%If ar Then%>
					<th>Attended</th>
					<th>Out of</th>
				<%End If%>
			</tr>
		<%
		Do Until rs.EOF
			dir=rs("director")
			posn=rs("posn")%>
			<tr>
				<td><%=rs("name")%></td>
				<%If com>0 And com<>8 Then%>
					<%For x=0 to 2%>
						<td class="center"><input type="radio" name="d<%=dir%>c<%=com%>v" id="d<%=dir%>c<%=com%>v<%=x%>" value="<%=x%>" <%=checked(x=posn)%>
							onclick="setCompos(<%=p%>,<%=dir%>,<%=com%>,'<%=d%>',<%=x%>)"></td>
					<%Next
				End If%>
				<td id="d<%=dir%>c<%=com%>m"><%=MSdateTime(rs("modified"))%></td>
				<td id="d<%=dir%>c<%=com%>u"><%=rs("user")%></td>
				<%If ar Then%>
					<td><input id="d<%=dir%>c<%=com%>att" type="number" min="0" max="255" value="<%=rs("attend")%>" onblur="setAttend(<%=p%>,<%=dir%>,<%=com%>,'<%=d%>',value)"></td>
					<td><input id="d<%=dir%>c<%=com%>mtngs" type="number" min="0" max="255" value="<%=rs("mtngs")%>" onblur="setAttend(<%=p%>,<%=dir%>,<%=com%>,'<%=d%>','',value)"></td>
				<%End If%>
			</tr>
			<%
			rs.MoveNext
		Loop
		rs.Close
		%>
		</table>
		<%rs2.MoveNext
	Loop
	rs2.Close
End If
If p>0 Then
	rs.Open "SELECT OldName,oldcName,MSdateAcc(dateChanged,dateAcc)chg FROM nameChanges WHERE personID="&p&" ORDER BY DateChanged DESC",conRole
	%>
	<h3>Name history</h3>
	<%If rs.EOF then%>
		<p>None found.</p>
	<%Else%>	
		<table class="txtable">
			<tr>
				<th>Old English name</th>
				<th>Old Chinese name</th>
				<th class="right"><b>Until</b></th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("OldName")%>&nbsp;</td>
					<td><%=rs("oldcName")%>&nbsp;</td>		
					<td class="right"><%=rs("chg")%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
	rs2.Open "SELECT DISTINCT issueID FROM stocklistings s JOIN issue i ON s.issueID=i.ID1 "&_
		"WHERE stockExID IN(1,20) AND typeID IN(0,6,7,8,10,42) AND NOT 2ndCtr AND issuer="&p,conRole
	If Not rs2.EOF Then%>
		<h3>Listings</h3>
		<%Do Until rs2.EOF
			i=rs2("issueID")
			Call HKlistings(i)
			rs2.moveNext
		Loop
	End If
	rs2.Close%>
	<p><a target="_blank" href="snaplog.asp?j=1&p=<%=p%>">Snapshot logs for this issuer</a></p>
	<p><a target="_blank" href="https://webb-site.com/dbpub/docs.asp?p=<%=p%>">View documents for this issuer</a></p>
<%End If
Set rs2=Nothing
Call CloseConRs(conRole,rs)
%>
<!--#include file="cofooter.asp"-->
</body>
</html>
