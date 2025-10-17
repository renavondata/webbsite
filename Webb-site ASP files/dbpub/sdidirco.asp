<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,isOrg,sort,URL,ob,hide,hideStr,name,title,cnt,i,stockName,posType,posLabel,_
	holding,shsInv,stake,stkChg,price,value,orgID,avCon,relDate,settleDate,con,rs
Call openEnigmaRs(con,rs)
person=getLng("p",0)
i=getLng("i",0)
sort=Request("sort")
Select Case sort
	Case "rsnup" ob="rsnSht,relDate DESC"
	Case "rsndn" ob="rsnSht DESC,relDate DESC"
	Case "pricup" ob="currency,price,relDate DESC"
	Case "pricdn" ob="currency DESC,price DESC,relDate DESC"
	Case "lvalup" ob="value,relDate DESC"
	Case "lvaldn" ob="value DESC,relDate DESC"
	Case "reldup" ob="relDate,posType"
	Case Else
		ob="relDate DESC,posType"
		sort="relddn"
End Select
If person<>0 Then
	Call fnamePsn(person,name,isOrg)
Else
	Name="No person was specified"
End If
Call issuename(i,stockName,orgID)
URL=Request.ServerVariables("URL")&"?p="&person&"&amp;i="&i
%>
<title>Webb-site Database: dealings by <%=Name%> in <%=stockName%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If isOrg Then
	Call orgBar(name,person,0)
Else
	Call humanBar(name,person,4)
End If%>
<ul class="navlist">
	<li><a target="_blank" href="sdiNotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<h3>Dealings in <a href="sdiissue.asp?i=<%=i%>"><%=stockName%></a></h3>
<%Call stockBar(i,0)
rs.Open "SELECT t1.id,posType,rsnSht,rsnLng,filing,relDate,shsInv,longShs1,longShs2,shortShs1,shortShs2,price,avCon,currency,longStk2,shortStk2"&_
	",IFNULL(price,avCon)*shsInv AS value,lngStkChg,shtStkChg,capShort,capLong,settleDate FROM"&_
	"(SELECT s.id,posType,rsnSht,rsnLng,filing,relDate,shsInv,longShs1,longShs2,shortShs1,shortShs2,IFNULL(capAfter,capBefore) AS capID"&_
	",IFNULL(avPrice,hiPrice) as price,avCon,currency,longStk2,longStk2-longStk1 AS lngStkChg,shortStk2,shortStk2-IFNULL(shortStk1,0) AS shtStkChg"&_
	" FROM sdi s JOIN (sdievent,sdireason) ON s.id=sdiID AND probReason=sdireason.id"&_
	" LEFT JOIN currencies c ON curr=c.id"&_
	" WHERE isnull(serNoSuper) AND issueID="&i&" AND dir="&person&") AS t1 LEFT JOIN (capacity c2,ccass.calendar c3) ON t1.capID=c2.ID AND t1.relDate=c3.tradeDate"&_
	" ORDER BY "&ob,con
If Not rs.EOF then%>
	<p>Click the date to see more details. L=Long, S=Short. Click the 
	on-exchange price to see the CCASS movements on the settlement date 
	corresponding to the relevant event, for trades after 22-Jun-2007.</p>
	<%=mobile(1)%>
	<table class="numtable">
	<tr>
		<th class="colHide1"></th>
		<th><%SL "Relevant<br>date<br>Y-M-D","relddn","reldup"%></th>
		<th class="left colHide3"><%SL "Probable<br/>reason","rsnup","rsndn"%></th>
		<th class="colHide3">L<br>/<br>S</th>
		<th>Shares<br/>involved</th>
		<th class="left colHide1"><span class="info">Capacity<span>Capacity of the shares involved</span></span></th>
		<th class="colHide1">Interest<br/>in shares</th>
		<th class="colHide1"><%SL "Curr","pricdn","pricup"%></th>
		<th><%SL "OnEx<br/>Price","pricdn","pricup"%></th>
		<th>OffEx<br/>Price</th>
		<th class="colHide3"><%SL "Value","lvaldn","lvalup"%></th>
		<th class="colHide3">Stake<br/>%</th>
		<th class="colHide3">Stake<br>&#x0394; %</th>
	</tr>
	<%cnt=1
	Do Until rs.EOF
		posType=rs("posType")
		shsInv=rs("shsInv")
		price=rs("price")
		avCon=rs("avCon")
		value=rs("value")
		relDate=rs("relDate")
		settleDate=rs("settleDate")
		If posType=1 then posLabel="L" Else posLabel="S"
		If posType=1 Then
			holding=rs("longShs2")
			stake=rs("longStk2")
			stkChg=rs("lngStkChg")
			If rs("longShs2")<rs("longShs1") and rs("rsnSht")<>"Acquire" Then
				shsInv=-shsInv
				value=-value
			End If
		Else
			holding=-rs("shortShs2")
			stake=-rs("shortStk2")
			stkChg=-rs("shtStkChg")
			If rs("shortShs2")>rs("shortShs1") or isNull(rs("shortShs1")) Then shsInv=-shsInv
		End If
		If not isNull(shsInv) Then shsInv=FormatNumber(shsInv,0)
		If not isnull(holding) Then holding=FormatNumber(holding,0)
		If not isNull(stake) Then stake=FormatNumber(stake,2)
		If not isNull(stkChg) Then stkChg=FormatNumber(stkChg,2)
		If not isNull(value) Then value=FormatNumber(value,0)
		If not isNull(price) Then price=formatNumber(price,3)
		If not isNull(avCon) Then avCon=formatNumber(avCon,3)
		%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td><a href="sdicap.asp?r=<%=rs("id")%>"><%=MSSDate(relDate)%></a></td>
			<td class="left colHide3"><span class="info"><%=rs("rsnSht")%><span><%=rs("rsnLng")%></span></span></td>
			<td class="colHide3"><%=posLabel%></td>
			<td><%=shsInv%></td>
			<td class="left colHide1"><span class="info"><%=rs("capShort")%><span><%=rs("capLong")%></span></span></td>
			<td class="colHide1"><%=holding%></td>
			<%If posType=1 Then%>
				<td class="colHide1"><%=rs("currency")%></td>
				<%if not isNull(price) and relDate>#22-Jun-2007# and settleDate+1.2<Now Then%>
					<td><a href="/ccass/chldchg.asp?i=<%=i%>&d=<%=MSdate(rs("settleDate"))%>"><%=price%></a></td>
				<%Else%>
					<td><%=price%></td>		
				<%End If%>
				<td><%=avCon%></td>
				<td class="colHide3"><%=value%></td>
			<%Else%>
				<td class="colHide1" style="background-color:gray"></td>
				<td style="background-color:gray" colspan="2"></td>
				<td class="colHide3" style="background-color:gray"></td>
			<%End If%>
			<td class="colHide3"><%=stake%></td>
			<td class="colHide3"><%=stkChg%></td>
		</tr>
		<%
		cnt=cnt+1
		rs.MoveNext
	Loop%>
	</table>
<%Else%>
	<p><b>None found.</b></p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>