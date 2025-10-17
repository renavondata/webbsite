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
Dim firm,firmName,officer,oName,hint,ready,title,submit,userName,human,personID,lastperson,samePerson,canEdit,_
	recList,ID,joined,apptDate,apptAcc,resDate,resAcc,source,s,pos,listpos,sc,canDelete,reset,v,rs,hide,hidesql,URL,sort,ob,_
	d,u,tResd,recsFound,cnt,pRank,lastRank,con,where,ranks
Call prepMasterRs(conMaster,rs)
Call openEnigma(con)
ranks=GetRow(con.Execute("SELECT rankText FROM enigma.rank ORDER BY rankID"))
ready=True
canDelete=True

sort=Request("sort")
hide=Request("hide")
d=Request("d")
u=getBool("u")

If d="" Then d=Session("snap")
If d="" Or Not isDate(d) Then d=Date
d=MSdate(d)
'tResd=resignation date for multi-update
tResd=getMSdef("tResd","")
If tResd="" And Not getBool("clear") Then tResd=Session("tResd")
Session("tResd")=tResd

If hide="" Then hide=Session("hide")
hidesql=" AND (isnull(ApptDate) or lowerDate(ApptDate,ApptAcc)<='"&d&"')"
If hide="Y" Then hidesql=hidesql&" AND (isnull(ResDate) or upperDate(ResDate,ResAcc)>'"&d&"' or resDate='1000-01-01')" Else hide="N"
If u then hidesql=hidesql&" AND (isNull(ResDate) or ResDate<>'1000-01-01')"
Session("hide")=hide

firm=getLng("firm",0)
officer=getLng("officer",0)
sc=getLng("sc",0)
reset=getBool("reset")
If sc>0 Then
	firm=SCorg(sc)
	officer=Session("officer")	
ElseIf firm>0 Then
	If Not reset Then officer=Session("officer")
ElseIf officer>0 Then
	If Not reset Then firm=Session("firm")
End If

submit=Request("submitOff")

If submit="Update" or submit="Add record" Then
	'validate inputs
	pos=CLng(Request("pos"))
	apptDate=getMSdef("apptDate","")
	apptAcc=getInt("apptAcc",Null)
	apptDate=midDate(apptDate,apptAcc)			
	If apptDate="" Then apptAcc=Null
	resDate=getMSdef("resDate","")
	resAcc=getInt("resAcc",Null)
	resDate=midDate(resDate,resAcc)
	If resDate="" Then resAcc=Null
	joined=getLng("joined",Null)
	If Not ApptBeforeRes(ApptDate,ResDate,ApptAcc,ResAcc) Then
		hint=hint&"Removal date cannot be before appointment date. "
		ready=False
	ElseIf submit="Add record" Then
		'capture the values for future use
		Session("apptDate")=apptDate
		Session("apptAcc")=apptAcc
		Session("resDate")=resDate
		Session("resAcc")=resAcc
		Session("pos")=pos
		Session("joined")=joined
	End If
	If pos=394 or pos=395 Then
		hint=hint&"You cannot add SFC positions. "
		ready=False
	End if
End If

If submit="Update selected records" Then
	recList=Request("upd")
	If getBool("clear") Then tResd=""
	If recList>"" Then
		where="apptBeforeRes(apptDate,"&sqv(tResd)&",apptAcc,NULL) AND ID1 IN("&recList&")"
		rs.Open "SELECT ID1 FROM directorships WHERE NOT "&where,conMaster
		hint=IIF(rs.EOF,"All selected records updated. ","Could not update record(s) "&Join(GetRow(rs),",")&_
			" because resignation date is before appointment date. Any other selected records where updated. ")
		rs.Close
		conMaster.Execute "UPDATE directorships" & setSql("resDate,resAcc",Array(tResd,Null)) & where
	Else
		hint=hint&"No records were selected for multi-update. "
	End If
End If

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT * FROM directorships WHERE ID1="&ID,conMaster	
	If rs.EOF Then
		hint=hint&"No record found. "
	Else
		firm=CLng(rs("company"))
		officer=CLng(rs("director"))
		source=rs("source")
		If submit="Update" Then
			If ready Then
				conMaster.Execute "UPDATE directorships" & setsql("positionID,apptDate,apptAcc,resDate,resAcc,joinedY",Array(pos,apptDate,apptAcc,resDate,resAcc,joined)) & "ID1="&ID
				hint=hint&"Record updated. "
			End If
		Else
			'not Updating, so fetch values
			pos=CLng(rs("positionID"))
			joined=rs("joinedY")
			apptDate=MSdate(rs("apptDate"))
			apptAcc=IfNull(rs("apptAcc"),0)
			resDate=MSdate(rs("resDate"))
			resAcc=IfNull(rs("resAcc"),0)				
			If submit="Delete" or submit="CONFIRM DELETE" Then
				pos=CLng(rs("positionID"))
				If pos=394 or pos=395 Then
					hint=hint&"You cannot delete SFC positions. "
					canDelete=False
				ElseIf source=1 or source=2 Then
					hint=hint&"This position is sourced from the HK Law Society and cannot be deleted. "
					canDelete=False
				ElseIf submit="Delete" Then
					hint=hint&"Are you sure you want to delete this record? "
				Else
					conMaster.Execute "DELETE FROM directorships WHERE ID1="&ID
					hint=hint&"Record deleted. "
					ID=0
				End If
			End If
		End If
	End If
	rs.Close
End If
If ID=0 Then
	If firm=0 Then firm=getLng("firm",0)
	If officer=0 Then officer=getLng("officer",0)
	If submit<>"Add record" Then
		'fetch stored values if any
		pos=Session("pos")
		apptDate=Session("apptDate")
		apptAcc=Session("apptAcc")
		resDate=Session("resDate")
		resAcc=Session("resAcc")
		joined=Session("joined")
	ElseIf submit="Add record" And ready And firm>0 And officer>0 Then
		conMaster.Execute "INSERT INTO directorships(company,director,positionID,apptDate,apptAcc,resDate,resAcc,joinedY)"&_
			valsql(Array(firm,officer,pos,apptDate,apptAcc,resDate,resAcc,joined))
		hint=hint&"Record added with ID "&lastID(conMaster)&". "
	End If
End If
If officer=0 or firm=0 Then
	Select Case sort
		Case "namup" ob="name,ApptDate"
		Case "namdn" ob="name DESC,ApptDate"
		Case "agedn" ob="YOB,name,ApptDate"
		Case "ageup" ob="YOB DESC,name,ApptDate"
		Case "sexup" ob="sex,name,ApptDate"
		Case "sexdn" ob="sex DESC,name,ApptDate"
		Case "appup" ob="ApptDate,name"
		Case "appdn" ob="ApptDate DESC,name"
		Case "resup" ob="ResDate,name"
		Case "resdn" ob="ResDate DESC,name"
		Case "posup" ob="posShort,name,ApptDate"
		Case "posdn" ob="posShort DESC,name,ApptDate"
		Case Else
			ob="name,ApptDate"
			sort="namup"
	End Select
Else
	'both firm and officer are specified, so no name field
	Select Case sort
		Case "appup" ob="ApptDate"
		Case "appdn" ob="ApptDate DESC"
		Case "resup" ob="ResDate"
		Case "resdn" ob="ResDate DESC"
		Case "posup" ob="posShort,ApptDate"
		Case "posdn" ob="posShort DESC,ApptDate"
		Case Else
			ob="ApptDate"
			sort="appup"
	End Select
End If
ob=" ORDER BY pRank,"&ob
'fetch names of firm and officer, and whether officer is human
If firm>0 Then firmName=fNameOrg(firm)
If officer>0 Then Call getPerson(officer,human,oName)
URL=Request.ServerVariables("URL")&"?ID="&ID&"&amp;firm="&firm&"&amp;officer="&officer&"&amp;u="&u&"&amp;d="&d

'store variables in case we divert to find people
Session("firm")=firm
Session("officer")=officer
Session("snap")=d
title="Add, edit or delete an officer at a firm"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If firm>0 Then%>
	<h2><%=firmName%></h2>
	<%Call orgBar(firm,3)
End If%>
<%If officer>0 Then%>
	<h2><%=oName%></h2>
	<%If human Then Call pplBar(officer,4)%>
<%End If%>
<%If firm=0 And officer=0 Then%>
	<h2><%=title%></h2>
<%End If%>
<%If firm=0 or officer=0 Then%>
	<%=writeNav(hide,"Y,N","Current,History",URL&"&amp;hide=")%>
<%End If%>
<h3>Search</h3>
<table class="txtable">
	<tr>
		<th>Select</th>
		<th>Name</th>
	</tr>
	<tr>
		<td><a href="searchorgs.asp?tv=firm">Firm</a></td>
		<td>
			<%If firm>0 Then%>
				<a href="officer.asp?reset=1&amp;firm=<%=firm%>"><%=firmName%></a>
			<%End If%>
		</td>
	</tr>
	<tr>
		<td><a href="searchpeople.asp?tv=officer">Human officer</a></td>
		<td>
			<%If officer>0 And human Then%>
				<a href="officer.asp?reset=1&amp;officer=<%=officer%>"><%=oName%></a>
			<%End If%>
		</td>
	</tr>
	<tr>
		<td><a href="searchorgs.asp?tv=officer">Non-human officer</a></td>
		<td>
			<%If officer>0 And Not human Then%>
				<a href="officer.asp?reset=1&amp;officer=<%=officer%>"><%=oName%></a>
			<%End If%>
		</td>
	</tr>
	<%If pos>0 Then
		rs.Open "SELECT * FROM positions p JOIN `rank` r ON p.rank=r.rankID LEFT JOIN status s ON p.status=s.statusID WHERE positionID="&pos,con
		%>
		<tr><td>Position</td><td><span class="info"><%=rs("posShort")%><span><%=rs("posLong")%></span></span></td></tr>
		<tr><td>Status</td><td><%=rs("statustext")%></td></tr>
		<tr><td>Rank</td><td><%=rs("ranktext")%></td></tr>
		<%rs.close
	End If%>
</table>
<form method="post" action="officer.asp">
	<input type="hidden" name="officer" value="<%=officer%>">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<form method="post" action="officer.asp">
	<input type="hidden" name="officer" value="<%=officer%>">
	<input type="hidden" name="firm" value="<%=firm%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" id="d" name="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="checkbox" id="u" name="u" value="1" <%=checked(u)%> onchange="this.form.submit()"> exclude unknown removal dates
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='<%=MSdate(Date)%>';document.getElementById('u').checked=false;">
	</div>
	<div class="clear"></div>
</form>

<%If officer>0 Or firm>0 Then%>
	<form method="post" action="officer.asp">
		<input type="hidden" name="officer" value="<%=officer%>">
		<input type="hidden" name="firm" value="<%=firm%>">
		<%If officer=0 Then v="officer" Else v="firm"
		'display tables of existing positions by rank
		recsFound=False
		s="ID1,source,joinedY,d.positionID,posShort,posLong,MSdateAcc(apptDate,apptAcc)apptDate,MSdateAcc(resDate,resAcc)resDate,`rank` pRank "&_
			"FROM directorships d JOIN positions pn ON d.positionID=pn.positionID "
		If officer=0 Then
			'only firm is specified
			s="SELECT ISNULL(o.personID) human,director,CAST(fnamepsn(o.name1,p.name1,p.name2,o.cname,p.cname) AS NCHAR) name,"&_
				"sex,IFNULL(YEAR(NOW())-YOB,'') age,"&s&_
				"LEFT JOIN people p ON d.director=p.personID LEFT JOIN organisations o ON d.director=o.personID "&_
				"WHERE company="&firm&hidesql&ob
		ElseIf firm=0 Then
			'only officer is specified
			s="SELECT company,name1 name,"&s&"JOIN organisations o ON d.company=o.personID "&_
				"WHERE director="&officer&hidesql&ob
		Else
			'officer and firm are specified
			s="SELECT "&s&"WHERE company="&firm&" AND director="&officer&ob
		End If
		'fetch existing positions
		rs.Open s,conMaster
		If Not rs.EOF Then
			recsFound=True
			%>
			<table class="opltable">
				<tr>
					<th>Record ID</th>
					<%If officer=0 or firm=0 Then%><th></th><%End If%>
					<%If firm=0 Then%>
						<th><%SL "Firm","namup","namdn"%></th>
					<%ElseIf officer=0 Then%>
						<th><%SL "Officer","namup","namdn"%></th>
						<th style="font-size:large"><%SL "&#x26A5;","sexup","sexdn"%></th>
						<th class="right"><%SL "Age","agedn","ageup"%></th>
					<%End If%>
					<th><%SL "Position","posup","posdn"%></th>
					<th><%SL "ApptDate","appup","appdn"%></th>
					<th><%SL "ResDate","resup","resdn"%></th>
					<th>Select</th>
					<th>Delete</th>
					<th>Make new</th>
					<th>Multi-<br>Update</th>
				</tr>
				<%lastPerson=0
				lastRank=-1
				Do until rs.EOF
					listpos=CLng(rs("positionID"))
					source=rs("source")
					canEdit=(listpos<394 or listpos>395) AND (isNull(source) or source>2) 
					source=rs("source")
					If officer=0 Then
						personID=rs("director")
					ElseIf firm=0 Then
						personID=rs("company")
					End If
					samePerson=((officer=0 or firm=0) And personID=lastPerson)
					pRank=rs("pRank")
					If pRank<>lastRank Then
						cnt=0%>
						<tr>
							<td colspan="6"><h3><%=ranks(pRank)%></h3></td>
						</tr>
					<%End If%>
					<tr <%If Not samePerson Then%> class="total"<%End If%>>
						<td><%=rs("ID1")%></td>
						<%If officer=0 or Firm=0 Then
							If Not samePerson Then
								cnt=cnt+1%>
								<td class="right"><%=cnt%></td>
								<td><a href="officer.asp?reset=1&amp;<%=v&"="&personID%>"><%=rs("name")%></a></td>
							<%Else%>
								<td colspan="2"></td>
							<%End If
						End If
						If officer=0 Then%>
							<td class="right"><%If Not samePerson Then Response.Write rs("sex")%></td>
							<td class="right"><%If Not samePerson Then Response.Write rs("age")%></td>
						<%End If%>
						<td><span class="info"><%=rs("posShort")%><span><%=rs("posLong")%></span></span></td>
						<td><%=rs("apptDate")%></td>
						<td><%=rs("resDate")%></td>
						<td>
							<%If listpos<394 or listpos>395 Then%>
								<a href="officer.asp?ID=<%=rs("ID1")%>">Select</a>
							<%Else%>
								SFC
							<%End If%>
						</td>
						<td>
							<%If canEdit Then%>
								<a href="officer.asp?ID=<%=rs("ID1")%>&amp;submitOff=Delete">Delete</a>					
							<%End If%>
						</td>
						<td>
							<%If officer=0 Then%>
								<a href="officer.asp?reset=1&amp;firm=<%=firm%>&amp;officer=<%=personID%>">Make new</a>
							<%ElseIf firm=0 Then%>
								<a href="officer.asp?reset=1&amp;firm=<%=personID%>&amp;officer=<%=officer%>">Make new</a>
							<%Else%>
								<a href="officer.asp?reset=1&amp;firm=<%=firm%>&amp;officer=<%=officer%>">Make new</a>
							<%End If%>
						</td>
						<td>
							<%If canEdit Then%>
								<input type="checkbox" name="upd" value="<%=rs("ID1")%>">
							<%End If%>
						</td>
					</tr>
					<%lastPerson=personID
					lastRank=pRank
					rs.MoveNext
				Loop%>
			</table>
		<%End If
		rs.Close
		If recsFound Then%>
			<div class="inputs">
				<label for="tResd">Multi-update ResDate: </label><input type="date" id="tResd" name="tResd" value="<%=tResd%>">
				<label for="clear">Clear date </label><input type="checkbox" id="clear" name="clear" value="1">
				<input type="submit" name="submitOff" value="Update selected records">
			</div>
			<div class="clear"></div>
		<%End If%>
	</form>
<%End If%>
<%If ID>0 Or (firm>0 And officer>0) Then
	'produce an input form to update or add a record
	If ID>0 Then%>
		<h3>Update or delete existing record</h3>
		<p><b>Record ID: <%=ID%></b></p>
	<%Else%>
		<h3>Add a new record</h3>
	<%End If%>
	<form method="post" action="officer.asp">
		<table style="font-size:large">
			<tr>
				<th>Position</th>
				<th>Joined</th>
				<th>Appointed</th>
				<th>ApptAcc</th>
				<th>Resigned</th>
				<th>ResAcc</th>
			</tr>
			<tr>
				<td><%=arrSelect("pos",pos,con.Execute("SELECT positionID,posShort FROM positions ORDER BY posShort").GetRows,False)%></td>
				<td><input type="text" name="joined" maxlength="4" style="width:40px" value="<%=joined%>"></td>		
				<td><input type="date" name="apptDate" value="<%=apptDate%>"></td>
				<td><%=makeSelect("apptAcc",apptAcc,",,2,M,1,Y",False)%></td>
				<td><input type="date" name="resDate" value="<%=resDate%>"></td>
				<td><%=makeSelect("resAcc",resAcc,",,2,M,1,Y,3,U",False)%></td>			
			</tr>
		</table>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitOff" value="Update">
			<%If canDelete Then
				If submit="Delete" Then%>
					<input type="submit" name="submitOff" style="color:red" value="CONFIRM DELETE">
					<input type="submit" name="submitOff" value="Cancel">
				<%Else%>
					<input type="submit" name="submitOff" value="Delete">
				<%End If
			End If
		Else%>
			<input type="hidden" name="firm" value="<%=firm%>">
			<input type="hidden" name="officer" value="<%=officer%>">
			<input type="submit" name="submitOff" value="Add record">
		<%End If%>
	</form>
	<input type="button" value="Clear form" onclick="window.location.href='officer.asp'">
<%End If
Call closeConRs(conMaster,rs)
Call closeCon(con)
%>
<p><b><%=hint%></b></p>
<hr>
<h3>Rules</h3>
<ol>
	<li>A person can only have 1 Main Board or Supervisory position at a time.</li>
	<li>The date of removal is the first day on which a person does NOT hold the position.</li>
	<li>You can't add, edit or delete SFC positions.</li>
	<li>You can't delete positions if they were added by the Law Society system.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
