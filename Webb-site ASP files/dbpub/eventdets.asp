<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim i,title,price,priceHKD,eventID,notes,newsecs,cancelDate,cumDate,cumPrice,bookCloseFr,bookCloseTo,_
	eventType,issue2,curr,adjust,FXdate,afterEvent,p,distDate,con,rs,sql
Call openEnigmaRs(con,rs)
eventID=getLng("e",1)
i=CLng(con.Execute("SELECT IFNULL((SELECT issueID FROM events WHERE eventID="&eventID&"),0)").Fields(0))
Call issueName(i,title,p)%>
<title>Event details: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call orgBar(title,p,0)
Call stockBar(i,0)%>
<ul class="navlist">
	<li><a href="TRnotes.asp" target="_blank">Notes</a></li>
</ul>
<div class="clear"></div>
<%rs.Open "SELECT * FROM events JOIN capchangetypes ON eventType=CapChangeType LEFT JOIN currencies ON currID=ID WHERE eventID="&eventID,con
If Not rs.EOF Then
	price=rs("price")
	priceHKD=rs("priceHKD")
	cumPrice=rs("cumPrice")
	If price=0 then price="-"
	newsecs=rs("new")
	cancelDate=rs("cancelDate")
	bookCloseFr=rs("bookCloseFr")
	bookCloseTo=rs("bookCloseTo")
	eventType=rs("eventType")
	issue2=rs("issue2")
	notes=rs("notes")
	curr=rs("currency")
	adjust=rs("adjust")
	cumDate=rs("cumDate")
	FXdate=rs("FXdate")
	distDate=rs("distDate")
	afterEvent=rs("afterEvent")%>
	<h3>Event details</h3>
	<p><b>Please  
	<a href="/contact">report</a> errors or missing data.</b></p>
	<table class="numtable fcl">
		<tr><td>Announced:</td><td><%=MSdate(rs("Announced"))%></td></tr>
		<tr><td>Year-end:</td><td><%=MSdate(rs("yearEnd"))%></td></tr>
		<tr><td>Type:</td><td><%=rs("Change")%></td></tr>
		<%If not isNull(afterEvent) And (eventType=45 or eventType=46) Then%>
			<tr><td>With event:</td>
			<td style="text-align:right"><a href="eventdets.asp?e=<%=afterEvent%>">
			<%If eventType=45 Then%>Open offer<%Else%>Rights issue<%End If%></a></td></tr>
		<%End If%>
		<tr><td>Currency:</td><td><%=curr%></td></tr>
		<tr>
			<td><%If eventType=45 or eventType=46 Then%>Warrant value:<%Else%>Price or amount:<%End if%></td>
			<td style="text-align:right"><%=price%></td>
		</tr>
		<%If curr<>"HKD" Then%>
			<tr>
				<td>Price in quoted currency<%If Not isNull(FXdate) Then %> (estimated)<%End If%>:</td>
				<td><%=priceHKD%></td>
			</tr>
		<%End If
		If not isnull(newsecs) Then%>
			<tr><td>New</td><td><%=newsecs%></td></tr>
			<tr><td>Old</td><td><%=rs("old")%></td></tr>
		<%End If%>
		<%If not isnull(cumDate) Then%>
			<tr><td>Last cum date</td><td><%=MSdate(cumDate)%></td></tr>
		<%End If%>
		<%If not isnull(cumPrice) Then%>
			<tr><td>Last cum price</td><td><%=cumPrice%></td></tr>
		<%End If%>
		<%If eventType=4 or eventType=48 Then%>
			<tr>
				<td>Effective date:</td>
				<td style="text-align:right"><%=MSdate(rs("exDate"))%></td>
			</tr>
		<%Else%>
			<tr><td>Ex-entitlement date:</td><td><%=MSdate(rs("exDate"))%></td></tr>
		<%End If
		If not isNull(bookCloseFr) Then
			If isNull(bookCloseTo) Then%>
				<tr><td>Record date:</td><td><%=MSdate(bookCloseFr)%></td></tr>
			<%Else%>
				<tr><td>Book closed from:</td><td><%=MSdate(bookCloseFr)%></td></tr>
				<tr><td>Book closed to:</td><td><%=MSdate(bookCloseTo)%></td></tr>
			<%End If
		End If
		If not isNull(adjust) Then%>
		<tr><td>Adjustment factor to prior prices:</td><td><%=FormatNumber(adjust,6)%></td></tr>
		<%End If
		Select Case eventType
			Case 2,8,47,49,52,54%>
			<tr><td>Acceptance date:</td><td><%=MSdate(rs("acceptDate"))%></td></tr>
		<%End Select%>
		<tr>
			<td>Distribution/delivery date:</td>
			<td>
				<%=MSdate(distDate)%>
				<%If (eventType=2 Or eventType=5 Or eventType=8 Or eventType=15) And Date()>distDate And distDate>#26-Jun-2007# Then%>
					<br><a href="../ccass/chldchg.asp?sort=chngdn&i=<%=i%>&d=<%=MSdate(rs("distDate"))%>">See CCASS changes</a>
				<%End If%>
			</td>
		</tr>
		<%If Not isNull(issue2) Then
			Call issueName(issue2,title,p)%>
			<tr><td>Subject security:</td><td><a href="orgdata.asp?p=<%=p%>"><%=title%></a></td></tr>		
		<%End If
		If not isNull(cancelDate) Then%>
			<tr><td><b>Event cancelled:</b></td><td><%=MSdate(cancelDate)%></td></tr>
		<%End If
		If notes<>"" Then%>
			<tr><td>Notes:</td><td><%=notes%></td></tr>
		<%End If%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>