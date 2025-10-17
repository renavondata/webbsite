<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,price,priceHKD,i,n,p,con,rs,sql
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
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
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>Events: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Events of an issue</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call stockBar(i,8)
End If%>
<ul class="navlist">
	<li><a href="TRnotes.asp" target="_blank">Notes</a></li>
</ul>
<div class="clear"></div>
<form method="get" action="events.asp">
	<input type="hidden" name="s" value="<%=sort%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>Events</h3>
	<%sql="SELECT * FROM events JOIN capchangetypes ON eventType=CapChangeType LEFT JOIN currencies ON currID=ID "&_
		"WHERE issueID="&i&" ORDER BY "&ob
	rs.Open sql, con
	If not rs.EOF Then%>
		<p><b>Please 
		<a href="/contact">report</a> any errors or desired features.</b></p>
		<%=mobile(1)%>
		<style>table.c4-6r td:nth-child(n+4):nth-child(-n+6) {text-align:right} th:nth-child(n+4):nth-child(-n+6) {text-align:right};</style>
		<table class="txtable c4-6r">
			<tr>
				<th class="colHide3"><%SL "Announced","annddn","anndup"%></th>
				<th class="colHide3">Year-end</th>
				<th><%SL "Type","evntup","evntdn"%></th>
				<th>Amount</th>
				<th class="colHide3">Value<br>in quote<br>curr.</th>
				<th>New:<br>Old</th>
				<th><%SL "ex-Date","exdtdn","exdtup"%></th>
				<th class="colHide1">Distri-<br>bution</th>
				<th class="colHide1">Notes</th>
			</tr>
		<%Do Until rs.EOF
			price=rs("price")
			priceHKD=rs("priceHKD")
			If Not isNull(price) then price=FormatNumber(price,4)
			If Not isNull(priceHKD) then priceHKD=FormatNumber(priceHKD,4)
			If price=0 then price="-"
			%>
			<tr>
				<td class="colHide3"><%=MSdate(rs("Announced"))%></td>
				<td class="colHide3" style="white-space:nowrap"><%=MSdate(rs("yearEnd"))%></td>
				<td <%=IIF(isNull(rs("cancelDate")),"","style='text-decoration:line-through;'")%>><a href="eventdets.asp?e=<%=rs("eventID")%>"><%=rs("Change")%></a></td>
				<td><%=rs("Currency")&" "&price%></td>
				<td class="colHide3"><%=priceHKD%><%=IIF(isNull(rs("FXdate")),"","*")%></td>
				<td><%=IIF(isNull(rs("new")),"",rs("new")&":"&rs("old"))%></td>
				<td style="white-space:nowrap"><%=MSdate(rs("exDate"))%></td>
				<td class="colHide1"><%=MSdate(rs("distDate"))%></td>
				<td class="colHide1" style="max-width:120px"><%=rs("notes")%></td>
			</tr>
		<%rs.MoveNext
		Loop%>
		</table>
		<p>*=estimated equivalent in the currency in which the share price is quoted, nearly always HKD.</p>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>