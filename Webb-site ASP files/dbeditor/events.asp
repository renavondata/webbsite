<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Sub setLinkedPrice(con,i)
	'version from Enigma, modified for 1 issue
	'set the value of warrants/distributions attached to rights issues, per warrant only if not set before
	'view pre/post results in findLinkedWarrPrice query
	'con is an existing conMaster connection
	Dim rs,rs2,price,currID
	Set rs=Server.CreateObject("ADODB.Recordset")
	Set rs2=Server.CreateObject("ADODB.Recordset")

	rs.Open "SELECT * FROM events WHERE eventType IN(45,46,51) and not isnull(issue2) AND not isnull(cumDate) " & _
	    "AND isnull(cancelDate) AND isnull(price) AND issueID=" & i, con
	Do Until rs.EOF
	    rs2.Open "SELECT closing from ccass.quotes where issueID=" & rs("issue2") & " AND closing<>0 AND noclose=false AND atDate>='" & _
	        MSdate(rs("cumDate")) & "' ORDER BY atDate LIMIT 1", con
	    If Not rs2.EOF Then
	        Price = rs2("closing")
	        currID = con.Execute("SELECT IFNULL((SELECT SEHKcurr FROM issue WHERE ID1=" & rs("issue2") & "),0)").Fields(0)
	        con.Execute "UPDATE events" & setsql("price,currID",Array(price,currID)) & "eventID=" & rs("eventID")
	    End If
	    rs2.Close
	    rs.MoveNext
	Loop
	rs.Close
	'set value of distributions in specie (including warrants), on a per-share basis for the distributor
	'view pre/post results in findSpecie query
	rs.Open "SELECT * FROM events WHERE eventType IN(18,25,50) and not isnull(issue2) AND not isnull(cumDate) " & _
	    "AND isnull(cancelDate) AND isnull(price) AND issueID=" & i, con
	Do Until rs.EOF  
	    rs2.Open "SELECT closing from ccass.quotes where issueID=" & rs("issue2") & " AND closing<>0 AND noclose=false AND atDate>='" & _
	        MSdate(rs("cumDate")) & "' ORDER BY atDate LIMIT 1", con
	    If Not rs2.EOF Then
	        Price = Round(rs2("closing") * rs("New") / rs("Old"), 8)
	        currID = con.Execute("SELECT IFNULL((SELECT SEHKcurr FROM issue WHERE ID1=" & rs("issue2") & "),0)").Fields(0)
	        con.Execute "UPDATE events" & setsql("price,currID",Array(price,currID)) & "eventID=" & rs("eventID")
	    End If
	    rs2.Close
	    rs.MoveNext
	Loop
	rs.Close
	Set rs2 = Nothing
	Set rs = Nothing
End Sub

Sub setCumDateEv(con,e)
	'con is an open DB connection e=eventID
	'update the cumDate of an event after setting new exDate
	'run before calculating adjustments
	'exclude cancelled events unless they went ex-entitlement before being cancelled
	'exclude event if stock is not yet at the exDate.
	Dim maxDate,maxGEMdate,i,sql
	i=con.Execute("SELECT issueID FROM events WHERE eventID=" & e).Fields(0)
	maxDate = GetLog("MBquotesDate")
	maxGEMdate = GetLog("GEMquotesDate")
	If maxDate > maxGEMdate Then maxDate = maxGEMdate
	maxDate = MSdate(con.Execute("SELECT Min(tradeDate) FROM ccass.calendar WHERE tradeDate>" & apq(maxDate)).Fields(0))
	
	sql = "UPDATE events SET cumDate=(SELECT Max(atDate) FROM ccass.quotes WHERE issueID=" & i & " AND atDate<exDate and noclose=false)" & _
	    " WHERE eventID=" & e & " AND (isNull(cancelDate) OR exDate<cancelDate) AND exDate<=" & apq(maxDate)
	con.Execute sql
    'hint=hint&sql&"<br>"
	sql = "UPDATE events SET cumDate=Null,cumPrice=NULL,adjust=NULL WHERE eventID=" & e & " AND (isNull(exDate) or exDate>" & apq(maxDate) & ")"
	con.Execute sql
    'hint=hint&sql&"<br>"
End Sub

Sub setAdj(e)
	'adjust for one eventID (modified from one issue in Access version). First make sure cumDates are correct
	Dim con,rs,sql,eventID,i,eType,cumDate,exDate,canD,adjust,price,qprice,cumPrice,newS,oldS,factor,SEHKcurr,currID,dist,afterEv
	Call prepMasterRs(con,rs)
	Call setCumDateEv(con,e)
	rs.Open "SELECT * FROM events WHERE eventID="&e,con
	i=rs("issueID")
	'set the price of bonus warrants, divs in specie, warrants attached to rights etc
	Call setLinkedPrice(con,i)
	SEHKcurr = con.Execute("SELECT SEHKcurr FROM issue WHERE ID1=" & i).Fields(0)
	If IsNull(SEHKcurr) Then SEHKcurr = 0 'HKD
	eType=rs("eventType")
	newS=rs("new")
	oldS=rs("old")
    currID = rs("currID")
	price=rs("price")
	qprice=rs("priceHKD")
	cumDate=MSdate(rs("cumDate"))
	exDate=MSDate(rs("exDate"))
	If cumDate>"" Then cumPrice=Round(CDbl(con.Execute("SELECT closing FROM ccass.quotes WHERE issueID="&i&" AND atDate="&apq(cumDate)).Fields(0)),3)
	canD=MSdate(rs("cancelDate"))
	afterEv=rs("afterEvent")
	rs.Close
	dist=CBool(con.Execute("SELECT dist FROM capchangetypes WHERE capchangetype=" & eType).Fields(0))
	If eType=4 Then
		'splits & consols
	    adjust = oldS / newS
	    sql = "UPDATE events SET adjust=" & adjust & " WHERE eventID=" & e
	    con.Execute sql
	    'hint=hint&sql&"<br>"
	ElseIf eType=5 Or eType=15 And Not isNull(newS) And Not isNull(oldS) Then
		'bonus issues and scrip-only dividends
	    adjust = oldS / (newS + oldS)
	    sql = "UPDATE enigma.events SET adjust=" & adjust & " WHERE eventID=" & e
	    con.Execute sql
	    'hint=hint&sql&"<br>"
	ElseIf dist And cumDate>"" And price<>0 And canD="" Then
		'distributions
	    If currID <> SEHKcurr Then
	        'different distribution currency to quote currency
	        'qprice is the distribution value in quoted currency
		    If Not IsNull(qprice) Then price = qprice Else price = 0
	    End If
		If price <> 0 Then
		    cumPrice = cumPrice * suspFactor(con, cumDate, ExDate, i, e, True)
		    adjust = 1 - price / cumPrice
		    If adjust<=0 Then adjust=Null
		    sql = "UPDATE events" & setsql("cumPrice,adjust",Array(cumPrice,adjust)) & "eventID=" & e
		    con.Execute sql
		    'hint=hint&sql&"<br>"
		End If
	ElseIf (eType=2 or eType=8) And cumDate>"" And price>0 Then
		'rights issues and open offers
		adjust=1
		If Not isNull(afterEv) Then
			'the open offer or rights was simultaneous with another ex-date. That is no longer allowed, e.g. a bonus issue (see 0439.HK xd 2012-03-30)
			adjust=CDbl(con.Execute ("SELECT IFNULL((SELECT adjust FROM events WHERE eventID=" & afterEv & "),1)").Fields(0))
		End If
		If Not IsNull(qprice) Then price = qprice  
		cumPrice = cumPrice * suspFactor(con, cumDate, exDate, i, e, False)
		'now adjust subscription price for value of any bonus warrants or distributions attached to the rights
		sql = "SELECT sum(new*price/old) FROM events WHERE afterEvent=" & e & " AND eventType IN (45,46,51)" & _
		    " AND isNull(cancelDate) GROUP BY afterEvent"
		'hint=hint&sql&"<br>"
		price=price-CDbl(con.Execute("SELECT IFNULL(("&sql&"),0)").Fields(0))
		adjust = (newS*Price/cumPrice/adjust + oldS)/(newS+oldS)
		If adjust > 1 Then adjust = 1 'no take-up if strike is above market
		If adjust<=0 Then adjust=Null
		sql = "UPDATE events" & setsql("cumPrice,adjust",Array(cumPrice,adjust)) & "eventID=" & e
		con.Execute sql
		'hint=hint&sql&"<br>"
	End If
	Call setCumAdj(con,i)
	Call closeConRs(con,rs)
End Sub

Function suspFactor(con,cumDate,exDate,i,e,dist)
	'con is existing DB connection
	'dates are strings, i=issueID e=eventID dist=Boolean, whether a distribution
	'calculate adjustment factor to cumPrice for events prior to the target event but after the cumDate
	Dim sql
	'get combined adjustment for prior events (any type) with same cumDate and EARLIER exDate
	'this could happen if the stock is suspended between two or more successive exDates
	sql = "SELECT EXP(SUM(LOG(adjust))) FROM events" & _
	    " WHERE (Not isNull(adjust)) AND isNull(cancelDate) AND issueID=" & i & _
	    " AND cumDate=" & apq(cumDate) & " AND exDate<" & apq(ExDate) & " GROUP BY issueID,cumDate"
	suspFactor=CDbl(con.Execute("SELECT IFNULL(("&sql&"),1)").Fields(0))

	'now adjust for distributions (but not other events) with same cumDate and SAME exDate
	'if dist=False then this is a rights or open offer, so include all distributions, otherwise just those with lower eventID
	'we calculate adjustments in order of eventID, so this works in sequence
	'bonus shares, splits, rights issues are assumed not to rank for distributions with same ex-date
	'because the bonus shares or rights shares have not yet been issued
	'so we must manually adjust the distribution amount if they do
	sql = "SELECT EXP(SUM(LOG(adjust))) FROM events e JOIN capchangetypes c ON e.eventType=c.CapChangeType" & _
	    " WHERE (Not isNull(adjust)) AND isNull(cancelDate) AND dist AND issueID=" & i & _
	    " AND cumDate=" & apq(cumDate) & " AND exDate=" & apq(ExDate)
	If dist Then sql = sql & " AND eventID<" & e
	sql = sql & " GROUP BY issueID,cumDate"
	'hint=hint&sql&"<br>"
	suspFactor=CDbl(con.Execute("SELECT IFNULL(("&sql&"),1)").Fields(0))*suspfactor
End Function

Sub setCumAdj(con,i)
	'calculate cumulative adjustment factors
	'call this after adding, removing or editing events of an issue
	Call prepMasterRs(con,rs)
	Dim rs,x,cumAdjust,exDate,sql
	Set rs=Server.CreateObject("ADODB.RecordSet")
	x = 0
	cumAdjust = 1
	sql = "DELETE FROM adjustments WHERE issueID=" & i
	con.Execute sql
	'hint=hint&sql&"<br>"
	rs.Open "SELECT exDate,EXP(SUM(LOG(adjust))) product FROM events WHERE issueID=" & i & _
	    " AND isNull(cancelDate) AND exDate<=CURDATE() AND Not isNull(adjust) " & _
	    "GROUP BY exDate ORDER BY exDate", con
	Do Until rs.EOF
	    x = x + 1
	    cumAdjust = cumAdjust * rs("product")
	    exDate = MSdate(rs("exDate"))
	    'hint=hint & i & " " & exDate & " " & cumAdjust & "<br>"
	    sql = "INSERT INTO adjustments(issueID,exDate,cumAdjust)" & valsql(Array(i,exDate,cumAdjust))
	    con.Execute sql
		'hint=hint&sql&"<br>"
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

'MAIN PROC
Call requireRoleExec
Dim i,n,p,hint,ready,title,submit,URL,sort,ob,rs,s,fields,_
	ID,eType,announced,yearEnd,exDate,bcFr,bcTo,accept,distDate,canD,newS,old,curr,price,qprice,FXdate,cumDate,cumPrice,adjust,notes
Call findStock(i,n,p)
Call prepMasterRs(conMaster,rs)
submit=Request("submitEv")
ready=False

If submit="Update" Then
	'fetch inputs and validate
	eType=getLng("eType",Null)
	announced=getMSdef("announced",Null)
	yearEnd=getMSdef("yearEnd",Null)
	exDate=getMSdef("exDate",Null)
	bcFr=getMSdef("bcFr",Null)
	bcTo=getMSdef("bcTo",Null)
	accept=getMSdef("accept",Null)
	distDate=getMSdef("distDate",Null)
	canD=getMSdef("canD",Null)
	newS=getDbl("newS",Null)
	old=getDbl("old",Null)
	curr=getInt("curr",Null)
	price=getDbl("price",Null)
	qprice=getDbl("qprice",Null)
	notes=Request("notes")
	If isNull(eType) Then
		hint=hint&"Event type cannot be null. "
	ElseIf isNull(announced) Then
		'test each date against each successor
		hint=hint&"Announcement date cannot be null. "
	ElseIf announced>=accept Then
		hint=hint&"Announcement date must be before acceptance deadline. "
	ElseIf announced>=distDate Then
		hint=hint&"Announcement date must be before distribution date. "
	ElseIf exDate>=bcFr Then
		hint=hint&"Ex date must be before book closure or record date."
	ElseIf exDate>=accept Then
		hint=hint&"Ex date must be before acceptance deadline. "
	ElseIf exDate>=distDate Then
		hint=hint&"Ex date must be before distribution date. "
	ElseIf bcFr>bcTo Then
		hint=hint&"Book close period cannot end before it starts. "
	ElseIf isNull(bcFr) And Not isNull(bcTo) Then
		hint=hint&"Book close period must start before it can end. Set a from-date or just a record date if the same. "
	ElseIf bcFr>=distDate Then
		hint=hint&"Book close/record date must be before distribution date. "
	ElseIf accept>=distDate Then
		hint=hint&"Acceptance deadline must be before Distribution date. "
	ElseIf canD<announced Then
		hint=hint&"Cancel date cannot be before announcement date. "
	Else
		ready=True
	End If
End If

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT * FROM events WHERE eventID="&ID,conMaster	
	If rs.EOF Then
		hint=hint&"No record found. "
	Else
		i=CLng(rs("issueID"))
		Call issueName(i,n,p)
		If submit="Update" Then
			If ready Then
				fields="eventType,announced,yearEnd,exDate,bookCloseFr,bookCloseTo,acceptDate,distDate,cancelDate,new,old,currID,price,priceHKD,notes"
				s="UPDATE events" &setsql(fields,Array(eType,announced,yearEnd,exDate,bcFr,bcTo,accept,distDate,canD,newS,old,curr,price,qprice,notes)) & "eventID="&ID
				conMaster.Execute s
				'hint=hint&s&"<br>"
				hint=hint&"Record updated. "
				Call setAdj(ID)
			End If
		Else
			'not Updating, so fetch values
			eType=CLng(rs("eventType"))
			announced=MSdate(rs("announced"))
			yearEnd=MSdate(rs("yearEnd"))
			exDate=MSdate(rs("exDate"))
			bcFr=MSdate(rs("bookCloseFr"))
			bcTo=MSdate(rs("bookCloseTo"))
			accept=MSdate(rs("acceptDate"))
			distDate=MSdate(rs("distDate"))
			canD=MSdate(rs("cancelDate"))
			newS=rs("new")
			old=rs("old")
			curr=rs("currID")
			price=rs("price")
			qprice=rs("priceHKD")
			notes=rs("notes")
			If (submit="Delete" or submit="CONFIRM DELETE") And Session("master") Then 'only for DavidOnline
				If submit="Delete" Then
					hint=hint&"Are you sure you want to delete this record? "
				Else
					s="DELETE FROM events WHERE ID="&ID
					conMaster.Execute s
					'hint=hint&s&"<br>"
					hint=hint&"Record with ID "&ID&" deleted. "
					ID=0
					Call setCumAdj(conMaster,i)
				End If
			End If
		End If
		'items for display only
		cumDate=MSdate(rs("cumDate"))
		cumPrice=rs("cumPrice")
		adjust=rs("adjust")
		FXdate=MSdate(rs("FXdate"))
	End If
	rs.Close
End If

sort=Request("sort")
Select Case sort
	Case "anndup" ob="announced,exDate,yearEnd"
	Case "annddn" ob="announced DESC,exDate DESC,yearEnd DESC"
	Case "evntup" ob="`Change`,announced DESC,yearEnd DESC"
	Case "evntdn" ob="`Change` DESC,announced DESC,yearEnd DESC"
	Case "exdtdn" ob="exDate DESC,announced DESC,yearEnd DESC"
	Case "exdtup" ob="exDate,announced,yearEnd"
	Case Else
		ob="announced DESC,exDate DESC,yearEnd DESC"
		sort="annddn"
End Select
URL=Request.ServerVariables("URL")&"?i="&i

title="Edit event"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If i>0 Then%>
	<h2><%=n%></h2>
	<%Call orgbar(p,8)
	Call issueBar(i,6)
End If%>
<form method="post" action="events.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="issue.asp?tv=i">Find an issue</a></p>
<%If ID>0 Then
	'produce an input form to edit a record%>
	<h3><%=title%></h3>
	<form method="post" action="events.asp">
		<input type="hidden" name="ID" value="<%=ID%>">
		<table class="txtable">
			<tr>
				<td>Event ID</td>
				<td><%=ID%></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><%=arrSelect("eType",eType,conMaster.Execute("SELECT capchangetype,`change` FROM capchangetypes ORDER BY `change`").GetRows,False)%></td>
			</tr>
			<tr>
				<td>Announced</td>
				<td><input type="date" name="announced" value="<%=announced%>"></td>
			</tr>
			<tr>
				<td>Year-end</td>
				<td><input type="date" name="yearEnd" value="<%=yearEnd%>"></td>
			</tr>
			<tr>
				<td>Last cum date</td>
				<td><%=cumDate%></td>
			</tr>
			<tr>
				<td>ex-Date</td>
				<td><input type="date" name="exDate" value="<%=exDate%>"></td>
			</tr>				
			<tr>
				<td>Book closed from<br>/record date</td>
				<td><input type="date" name="bcFr" value="<%=bcFr%>"></td>
			</tr>
			<tr>
				<td>Book closed to</td>
				<td><input type="date" name="bcTo" value="<%=bcTo%>"></td>
			</tr>
			<tr>
				<td>Acceptance deadline</td>
				<td><input type="date" name="accept" value="<%=accept%>"></td>
			</tr>
			<tr>
				<td>Payout/dispatch date</td>
				<td><input type="date" name="distDate" value="<%=distDate%>"></td>
			</tr>
			<tr>
				<td>Cancelled on</td>
				<td><input type="date" name="canD" value="<%=canD%>"></td>
			</tr>
			<tr>
				<td>New shares...</td>
				<td><input type="number" step="any" name="newS" value="<%=newS%>"></td>
			</tr>
			<tr>
				<td>...for old shares</td>
				<td><input type="number" step="any" name="old" value="<%=old%>"></td>
			</tr>
			<tr>
				<td>Currency</td>
				<td><%=arrSelectZ("curr",curr,conMaster.Execute("SELECT ID,currency FROM currencies ORDER BY currency").GetRows,False,True,"","")%></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="number" step="any" name="price" value="<%=price%>"></td>
			</tr>
			<tr>
				<td>Price in quoted currency</td>
				<td><input type="number" step="any" name="qprice" value="<%=qprice%>"></td>
			</tr>
			<tr>
				<td>FXdate (for auto convert)</td>
				<td><%=FXdate%></td>
			</tr>
			<tr>
				<td>Last cum price</td>
				<td><%=cumPrice%></td>
			</tr>
			<tr>
				<td>Adjustment factor</td>
				<td><%=adjust%></td>
			</tr>
			<tr>
				<td>Notes</td>
				<td><textarea name="notes"><%=notes%></textarea></td>
			</tr>
		</table>
		<input type="submit" name="submitEv" value="Update">
		<%If Session("master") Then
			If submit="Delete" Then%>
				<input type="submit" name="submitEv" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitEv" value="Cancel">
			<%Else%>
				<input type="submit" name="submitEv" value="Delete">
			<%End If
		End If%>
	</form>
<%End If%>
<p><b><%=hint%></b></p>

<%If i>0 Then
	'display tables of events
	rs.Open "SELECT * FROM events e JOIN capchangetypes c ON e.eventType=c.capChangeType LEFT JOIN currencies cu "&_
		"ON e.currID=cu.ID WHERE issueID="&i&" ORDER BY "&ob,conMaster
	%>
	<h3>Events</h3>
	<style>table.c5-7r td:nth-child(n+5):nth-child(-n+7) {text-align:right} th:nth-child(n+5):nth-child(-n+7) {text-align:right};</style>
	<table class="txtable c5-7r">
		<tr>
			<th>ID</th>
			<th><%SL "Announced","anndup","annddn"%></th>
			<th>Year-end</th>
			<th><%SL "Type","evntup","evntdn"%></th>
			<th>Amount</th>
			<th>Val<br>in quote<br>curr.</th>
			<th>New:<br>Old</th>
			<th><%SL "ex-Date","exdtdn","exdtup"%></th>
			<th>Distribution</th>
			<th>Notes</th>
		</tr>
		<%Do until rs.EOF
			price=rs("price")
			qprice=rs("priceHKD")
			If Not isNull(price) then price=FormatNumber(price,4)
			If Not isNull(qprice) then qprice=FormatNumber(qprice,4)
			If price=0 then price="-"
			%>
			<tr>
				<td><%=rs("eventID")%></td>
				<td><%=MSdate(rs("Announced"))%></td>
				<td><%=MSdate(rs("yearEnd"))%></td>
				<td <%=IIF(isNull(rs("cancelDate")),"","style='text-decoration:line-through;'")%>><a href="events.asp?ID=<%=rs("eventID")%>"><%=rs("Change")%></a></td>
				<td><%=rs("Currency")&" "&price%></td>
				<td><%=qprice%><%=IIF(isNull(rs("FXdate")),"","*")%></td>
				<td><%=IIF(isNull(rs("new")),"",rs("new")&":"&rs("old"))%></td>
				<td style="white-space:nowrap"><%=MSdate(rs("exDate"))%></td>
				<td><%=MSdate(rs("distDate"))%></td>
				<td style="max-width:120px"><%=rs("notes")%></td>
			</tr>
			<%rs.MoveNext
		Loop
		rs.Close%>
		</table>
<%End If
Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
