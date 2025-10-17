<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim ob,sort,URL,posType,posLabel,shsInv,holding,stake,stkChg,price,avCon,value,relDate,settleDate,i,n,p,con,rs
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
sort=Request("sort")
Select Case sort
	Case "nameup" ob="name,relDate DESC"
	Case "namedn" ob="name DESC,relDate DESC"
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
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>Webb-site Database: dealings in <%=n%></title>
<link rel="stylesheet" type="text/css" href="/templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Directors' dealings in an issue</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call stockBar(i,9)
End If%>
<ul class="navlist">
	<li><a target="_blank" href="sdiNotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<form method="get" action="sdiissue.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>Directors' dealings</h3>
	<%rs.Open "SELECT name,posType,rsnSht,rsnLng,filing,relDate,shsInv,longShs1,longShs2,shortShs1,shortShs2,price,avCon,currency,"&_
		"longStk2,shortStk2,IFNULL(price,avCon)*shsInv AS value,lngStkChg,shtStkChg,personID,settleDate,t1.ID FROM "&_
		"(SELECT s.id,filing,relDate,posType,rsnSht,rsnLng,CAST(fnamepsn(o.name1,pp.name1,pp.name2,o.cName,pp.cName)AS NCHAR) name,p.personID,"&_
		"shsInv,longShs1,longShs2,longstk2,shortShs1,shortShs2,shortStk2,"&_
		"IFNULL(avPrice,hiPrice) as price,avCon,currency,longStk2-longStk1 AS lngStkChg,shortStk2-IFNULL(shortStk1,0) AS shtStkChg "&_
		"FROM sdi s JOIN (persons p,sdievent,sdireason r) "&_
		"ON dir=p.personID AND sdiID=s.ID AND probReason=r.id "&_
		"LEFT JOIN people pp on p.personID=pp.personID LEFT JOIN organisations o ON p.personID=o.personID "&_
		"LEFT JOIN currencies c ON curr=c.id "&_
		"WHERE isnull(serNoSuper) AND issueID="&i&") AS t1 LEFT JOIN ccass.calendar c3 ON t1.relDate=c3.tradeDate ORDER BY "&ob,con
	If not rs.EOF Then%>
		<p>Click the date to see more details. Click on a name to see 
		dealings by that person. L=Long, S=Short. Click the on-exchange price to 
		see the CCASS movements on the settlement date corresponding to the 
		relevant event, for trades after 22-Jun-2007.</p>
		<%=mobile(1)%>
		<table class="numtable">
		<tr>
			<th class="nowrap"><%SL "Rel.<br/>date<br>Y-M-D","relddn","reldup"%></th>
			<th class="left"><%SL "Name","nameup","namedn"%></th>
			<th class="left colHide3"><%SL "Probable<br/>reason","rsnup","rsndn"%></th>
			<th class="colHide3">L<br>/<br>S</th>
			<th>Shares<br/>involved</th>
			<th class="colHide1">Interest<br/>in shares</th>
			<th class="colHide1"><%SL "Curr","pricdn","pricup"%></th>
			<th><%SL "OnEx<br/>Price","pricdn","pricup"%></th>
			<th>OffEx<br/>Price</th>
			<th class="colHide1"><%SL "Value","lvaldn","lvalup"%></th>
			<th class="colHide3">Stake<br/>%</th>
			<th class="colHide3">Stake<br>&#x0394; %</th>
		</tr>
		<%Do Until rs.EOF
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
				If rs("longShs2")<rs("longShs1") Then
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
			If not isNull(avCon) Then avCon=formatNumber(avCon,3)%>
			<tr>
				<td class="nowrap"><a href="sdicap.asp?r=<%=rs("id")%>"><%=MSSDate(relDate)%></a></td>
				<td class="left"><a href="sdidirco.asp?p=<%=rs("personID")%>&i=<%=i%>"><%=rs("name")%></a></td>
				<td class="left colHide3"><span class="info"><%=rs("rsnSht")%><span><%=rs("rsnLng")%></span></span></td>
				<td class="colHide3"><%=posLabel%></td>
				<td><%=shsInv%></td>
				<td class="colHide1"><%=holding%></td>
			<%If posType=1 Then%>
				<td class="colHide1"><%=rs("currency")%></td>
				<%if not isNull(price) and relDate>#22-Jun-2007# And settleDate+1.2<Now Then%>
					<td><a href="/ccass/chldchg.asp?i=<%=i%>&d=<%=MSdate(settleDate)%>"><%=price%></a></td>
				<%Else%>
					<td><%=price%></td>		
				<%End If%>
				<td><%=avCon%></td>
				<td class="colHide1"><%=value%></td>
			<%Else%>
				<td class="colHide1"></td>
				<td style="background-color:gray" colspan="2"></td>
				<td class="colHide1"></td>
			<%End If%>
				<td class="colHide3"><%=stake%></td>
				<td class="colHide3"><%=stkChg%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>