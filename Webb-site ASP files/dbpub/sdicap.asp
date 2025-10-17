<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,name,isOrg,cnt,i,stockName,posType,sdiID,relDate,awDate,signDate,settleDate,capBef,capAft,shsInv,shsOut,_
	longshs1,longShs2,shortShs1,shortShs2,longChg,shortChg,longStk1,longStk2,shortStk1,shortStk2,longStkChg,shortStkChg,reason,probReason,_
	hiPrice,avPrice,avCon,curr,consid,filing,high,low,vol,turn,VWAP,orgID,longShs,shortShs,con,rs
Call openEnigmaRs(con,rs)
sdiID=getLng("r",0)
If sdiID>0 Then
	rs.Open "SELECT fnamepsn(o.name1,pp.name1,pp.name2,o.cName,pp.cName) name,isNull(pp.name1) isOrg,"&_
		"dir,filing,serNo,s.issueID,relDate,awDate,signDate,longShs1,longShs2,shortShs1,shortShs2,"&_
		"longStk1,longStk2,shortStk1,shortStk2,shsOut,avPrice,hiPrice,avCon,currency,settleDate,high,low,vol,turn FROM sdi s JOIN persons p ON dir=p.personID "&_
		"LEFT JOIN organisations o ON p.personID=o.personID "&_
		"LEFT JOIN people pp ON p.personID=pp.personID "&_
		"LEFT JOIN (currencies c1,ccass.calendar c2,ccass.quotes q) "&_
		"ON curr=c1.ID AND relDate=c2.tradeDate AND relDate=q.atDate AND s.issueID=q.issueID "&_
		"WHERE s.id="&sdiID,con
	If Not rs.EOF Then
		filing=rs("filing")
		If isNull(filing) Then filing=rs("serNo")
		longShs1=rs("longShs1")
		If isNull(longShs1) Then longShs1=0
		longShs2=rs("longShs2")
		shortShs1=rs("shortShs1")
		shortShs2=rs("shortShs2")
		longStk1=rs("longStk1")
		If isNull(longStk1) Then longStk1=0
		longStk2=rs("longStk2")
		shortStk1=rs("shortStk1")
		shortStk2=rs("shortStk2")
		shsOut=rs("shsOut")
		curr=rs("currency")
		avPrice=rs("avPrice")
		hiPrice=rs("hiPrice")
		avCon=rs("avCon")
		person=rs("dir")
		name=rs("name")
		isOrg=rs("isOrg")
		i=rs("issueID")
		relDate=rs("relDate")
		awDate=rs("awDate")
		signDate=rs("signDate")
		settleDate=rs("settleDate")
		high=rs("high")
		low=rs("low")
		vol=rs("vol")
		If not isNull(vol) Then vol=Cdbl(vol)
		turn=rs("turn")
		If not isNull(turn) Then turn=Cdbl(turn)
		rs.Close
		rs.Open "SELECT name1 as org,personID as orgID,typeShort FROM issue JOIN (organisations,secTypes) "&_
		"ON issue.issuer=organisations.personID AND issue.typeID=secTypes.typeID "&_
		"WHERE ID1="&i,con
		If not rs.EOF Then
			stockName=rs("Org")&":"&rs("typeShort")
			orgID=rs("orgID")
		Else
			stockName="No such stock"
		End If
	Else
		Name="No such filing"
		sdiID=0
	End If
	rs.Close
Else
	Name="No filing was specified"
	person=0
End If%>
<title>Webb-site Database: filing by <%=Name%> in <%=stockName%></title>
<link rel="stylesheet" type="text/css" href="/templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If isOrg Then
	Call orgBar(name,person,0)
Else
	Call humanBar(name,person,0)
End If%>
<ul class="navlist">
	<li><a target="_blank" href="sdiNotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<%If sdiID>0 Then%>
	<h3>Filing in <a href="sdidirco.asp?p=<%=person%>&i=<%=i%>"><%=stockName%></a></h3>
	<%Call stockBar(i,0)%>
	<%=mobile(3)%>
	<h4>Filing data</h4>
	<table class="txtable">
		<tr><td>Date of relevant event:</td><td><%=MSdate(relDate)%></td></tr>
		<tr><td>Awareness date (if later):</td><td><%=MSdate(awDate)%></td></tr>
		<tr><td>Filing date:</td><td><%=MSdate(signDate)%></td></tr>
		<tr>
			<td>Original filing:</td>
			<td><a target="_blank" href="https://di.hkex.com.hk/di/NSForm3A.aspx?fn=<%=filing%>">Click here</a></td>
		</tr>
		<tr><td>Shares in issue as filed:</td><td><%=FormatNumber(shsOut,0)%></td></tr>
	</table>
	<%rs.Open "SELECT shsInv,posType,c1.capLong as capBef,c2.capLong as capAft,r1.rsnLng AS rsnLng1,r2.rsnLng AS rsnLng2 "&_
		"FROM sdievent JOIN (sdireason r1,sdireason r2) ON reason=r1.ID AND probReason=r2.ID "&_
		"LEFT JOIN capacity c1 ON capbefore=c1.ID LEFT JOIN capacity c2 ON capafter=c2.ID WHERE sdiID="&sdiID&" order by posType",con
	Do until rs.EOF
		capBef=rs("capBef")
		capAft=rs("capAft")
		shsInv=rs("shsInv")
		If isNull(shsInv) Then shsInv=0
		reason=rs("rsnLng1")
		probReason=rs("rsnLng2")
		If rs("posType")=1 Then
			consid=avPrice
			If isNull(consid) Then consid=hiPrice
			If isNull(consid) Then consid=avCon
			If Not isNull(consid) Then consid=round(cdbl(consid),3)*shsInv
			%>
			<h4>Long event</h4>
			<table class="txtable">
			<tr><td>Stated disclosure reason:</td><td><%=reason%></td></tr>
			<%If reason<>probReason Then%>
			<tr><td>Probable disclosure reason:</td><td><%=probReason%></td></tr>
			<%End If%>
			<%If Not isNull(capBef) Then%>
				<tr><td>Capacity before:</td><td><%=capBef%></td></tr>
			<%End If
			If Not isNull(capAft) Then%>
				<tr><td>Capacity after:</td><td><%=capAft%></td></tr>
			<%End If
			If not isnull(shsInv) Then%>
			<tr><td>Shares involved:</td><td><%=FormatNumber(shsInv,0)%></td></tr>
			<%End If
			If not isnull(curr) Then%>
			<tr><td>Currency:</td><td><%=curr%></td></tr>
			<%End If
			If not isnull(hiPrice) Then%>
				<tr><td>Highest on-exchange price:</td><td><%=FormatNumber(hiPrice,3)%></td></tr>
			<%End If%>
			<%If not isnull(avPrice) Then%>
				<tr><td>Average on-exchange price:</td><td><%=FormatNumber(avPrice,3)%></td></tr>
			<%End If%>
			<%If not isnull(avCon) Then%>
				<tr><td>Average off-exchange consideration:</td><td><%=FormatNumber(avCon,3)%></td></tr>
			<%End If
			If not isNull(consid) Then%>
				<tr><td>Implied total value:</td><td><%=FormatNumber(consid,0)%></td></tr>	
			<%End If
			If not isNull(settleDate) And (not isNull(avPrice) or not isNull(hiPrice)) Then%>
				<tr><td>On-exchange settlement date:</td><td><%=MSdate(settledate)%></td></tr>
				<%If relDate>#22-Jun-2007# and settleDate+1.2<Now Then%>
				<tr>
					<td>CCASS changes on settlement date:</td>
					<td><a href="../ccass/chldchg.asp?i=<%=i%>&d=<%=MSdate(settleDate)%>">Click here</a></td>
				</tr>
				<%End if
			End If%>		
			</table>
			<%If (not isNull(avPrice) or not isnull(hiPrice)) And not isNull(high) Then
				If isNull(avPrice) Then avPrice=hiPrice
				If isNull(hiPrice) Then hiPrice=avPrice
				If vol>0 Then VWAP=Cdbl(turn)/vol Else VWAP=null%>
				<br/>
				<table class="numtable">
				<tr><th></th><th>Filer</th><th>Market</th><th>Prem/(disc)<br/>or share</th></tr>
				<tr>
					<td class="left">Highest price</td>
					<td><%=FormatNumber(hiPrice,3)%></td>
					<td><%If high<>0 Then Response.Write FormatNumber(high,3) Else Response.Write "-"%></td>
					<td><%If high<>0 Then Response.Write FormatPercent(hiPrice/high-1) Else Response.Write "-"%></td>
				</tr>
				<tr>
					<td class="left">Average price</td>
					<td><%=FormatNumber(avPrice,3)%></td>
					<%If not isNull(VWAP) Then%>
						<td><%=FormatNumber(VWAP,3)%></td>
						<td><%=FormatPercent(avPrice/VWAP-1)%></td>
					<%Else%>
						<td>-</td>
						<td>-</td>
					<%End If%>
					</tr>
				<tr>
					<td class="left">Volume</td><td><%=FormatNumber(shsInv,0)%></td>
					<td><%=FormatNumber(vol,0)%></td>
					<td><%If vol>0 Then Response.Write FormatPercent(shsInv/vol,2) Else Response.Write "-"%></td>
				</tr>
				<tr>
					<td class="left">Turnover</td><td><%=FormatNumber(consid,0)%></td>
					<%If not isNull(turn) Then%>
						<td><%=FormatNumber(turn,0)%></td>
						<td><%If turn=0 Then Response.Write"-" Else Response.Write FormatPercent(consid/turn)%></td>
					<%Else%>
						<td>-</td>
						<td>-</td>
					<%End If%>
				</tr>			
				</table>
			<%End if
		ElseIf rs("posType")=2 Then
			%>
			<h4>Short event</h4>	
			<table class="txtable">
			<tr><td>Disclosure reason:</td><td><%=reason%></td></tr>
			<%If reason<>probReason Then%>
			<tr><td>Probable disclosure reason:</td><td><%=probReason%></td></tr>
			<%End If%>
			<%If Not isNull(capBef) Then%>
				<tr><td>Capacity before:</td><td><%=capBef%></td></tr>
			<%End If
			If Not isNull(capAft) Then%>
				<tr><td>Capacity after:</td><td><%=capAft%></td></tr>
			<%End If
			If not isnull(shsInv) Then%>
			<tr><td>Shares involved:</td><td><%=FormatNumber(shsInv,0)%></td></tr>
			<%End If%>
			</table>
		<%End If
		rs.MoveNext
	Loop
	rs.close
	If isNull(shortShs2) Then shortShs2=0
	If isNull(shortStk2) Then shortStk2=0
	If isNull(longShs2) Then longShs2=0
	If isNull(longStk2) Then longStk2=0
	longChg=longShs2-longShs1
	shortChg=shortShs1-shortShs2
	longStkChg=(longStk2-longStk1)/100
	shortStkChg=(shortStk1-shortStk2)/100%>
	<h4>Positions before and after the event</h4>
	<table class="numtable">
		<tr>
			<th></th>
			<th class="center" colspan="3">Interest in shares</th>
		</tr>
		<tr>
			<th>Position</th>
			<th>Before</th>
			<th>After</th>
			<th class="colHide3">Change</th>
		</tr>
		<%If Not isNull(longShs1) Then%>
		<tr>
			<td class="left">Long</td>
			<td><%If Not isNull(longShs1) Then Response.Write FormatNumber(longShs1,0)%></td>
			<td><%=FormatNumber(longShs2,0)%></td>
			<td class="colHide3"><%=FormatNumber(longShs2-longShs1,0)%></td>
		</tr>
		<%End If%>
		<%If Not isNull(shortShs1) Then%>
		<tr>
			<td class="left">Short</td>
			<td><%=FormatNumber(-shortShs1,0)%></td>
			<td><%=FormatNumber(-shortShs2,0)%></td>
			<td class="colHide3"><%=FormatNumber(shortChg,0)%></td>
		</tr>
		<tr>
			<td class="left">Net</td>
			<td><%=FormatNumber(longShs1-shortShs1,0)%></td>
			<td><%=FormatNumber(longShs2-shortShs2,0)%></td>
			<td class="colHide3"><%=FormatNumber(longChg+shortChg,0)%></td>	
		</tr>
		<%End If%>
	</table>
	<br>
	<table class="numtable">
		<tr>
			<th></th>
			<th class="center" colspan="3">Percent of issued</th>
		</tr>
		<tr>
			<th>Position</th>
			<th>Before</th>
			<th>After</th>
			<th>Change</th>
		</tr>
		<%If Not isNull(longShs1) Then%>
		<tr>
			<td class="left">Long</td>
			<td><%=FormatPercent(longStk1/100,2)%></td>
			<td><%=FormatPercent(longStk2/100,2)%></td>
			<td><%=FormatPercent(longStkChg,2)%></td>
		</tr>
		<%End If%>
		<%If Not isNull(shortShs1) Then%>
		<tr>
			<td class="left">Short</td>
			<td><%=FormatPercent(-shortStk1/100,2)%></td>
			<td><%=FormatPercent(-shortStk2/100,2)%></td>
			<td><%=FormatPercent(shortStkChg,2)%></td>
		</tr>
		<tr>
			<td class="left">Net</td>
			<td><%=FormatPercent((longStk1-shortStk1)/100,2)%></td>
			<td><%=FormatPercent((longStk2-shortStk2)/100,2)%></td>
			<td><%=FormatPercent(longStkChg+shortStkChg,2)%></td>
		</tr>
		<%End If%>
	</table>
	<%rs.Open "SELECT * FROM sdicap JOIN capacity ON capID=id WHERE sdiID="&sdiID&" ORDER BY capID,posType",con
	If not rs.EOF then%>
		<h4>Capacity of interests after the event</h4>
		<table class="numtable">
			<tr>
				<th></th>
				<th colspan="3" class="center">Interest in shares</th>
			</tr>
			<tr>
				<th class="left">Capacity</th>
				<th class="colHide3">Long</th>
				<th class="colHide3">Short</th>
				<th>Net</th>
			</tr>
		<%Do Until rs.EOF
			posType=rs("posType")%>
			<tr>
				<td class="left"><%=rs("capLong")%></td>
			<%If posType=1 Then
				longShs=rs("shares")%>
				<td class="colHide3"><%=FormatNumber(longShs,0)%></td>
				<%rs.MoveNext
				If not rs.EOF Then posType=rs("posType")
			Else
				longShs=0%>
				<td class="colHide3">0</td>
			<%End If
			If posType=2 Then
				shortShs=rs("shares")%>
				<td class="colHide3"><%=FormatNumber(-shortShs,0)%></td>
				<%rs.MoveNext
			Else
				shortShs=0%>
				<td class="colHide3">0</td>
			<%End If%>
				<td><%=FormatNumber(longShs-shortShs,0)%></td>
			</tr>
			<%
		Loop
		rs.MoveFirst%>
		</table>
		<br>	
		<table class="numtable">
			<tr>
				<th></th>
				<th colspan="3" class="center">Percent of issued</th>
			</tr>
			<tr>
				<th class="left">Capacity</th>
				<th>Long</th>
				<th>Short</th>
				<th>Net</th>	
			</tr>
		<%Do Until rs.EOF
			posType=rs("posType")%>
			<tr>
				<td class="left"><%=rs("capLong")%></td>
			<%If posType=1 Then
				longShs=rs("shares")
				rs.MoveNext
				If not rs.EOF Then posType=rs("posType")
			Else
				longShs=0
			End If
			If posType=2 Then
				shortShs=rs("shares")
				rs.MoveNext
			Else
				shortShs=0
			End If%>
				<td><%=FormatPercent(longShs/shsOut,2)%></td>
				<td><%=FormatPercent(-shortShs/shsOut,2)%></td>
				<td><%=FormatPercent((longShs-shortShs)/shsOut,2)%></td>
			</tr>
		<%Loop%>
		</table>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>