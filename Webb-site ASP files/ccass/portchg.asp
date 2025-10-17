<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Dim sort,URL,con,rs,issue,issued,issuedDate,hldchg,person,linkPage,p,e,m,o,z,cnt,d1,d2,issueID,holding,lastDate,stake,stkchg,valchg,name,isOrg
m=botchk2()%>
<title>CCASS changes of a participant</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If m<>"" Then%>
	<p><b><%=m%></b></p>
<%Else
	'inputs d1 is start date, d is end date (becomes d2), p is our participant (partID)
	Call openEnigmaRs(con,rs)
	z=getBool("z")
	p=getLng("p",1)
	sort=Request("sort")
	Select Case sort
		Case "codeup" o="stockCode,stockName"
		Case "codedn" o="stockCode DESC,stockName"
		Case "nameup" o="stockName"
		Case "namedn" o="stockName DESC"
		Case "holddn" o="holding DESC,stockName"
		Case "holdup" o="holding,stockName"
		Case "chngdn" o="hldchg DESC,stockName"
		Case "chngup" o="hldchg,stockName"
		Case "stakdn" o="stake DESC,stockName"
		Case "stakup" o="stake,stockName"
		Case "stkcdn" o="stkchg DESC,stockName"
		Case "stkcup" o="stkchg,stockName"
		Case "lastdn" o="lastDate DESC,stockName"
		Case "lastup" o="lastDate,stockName"
		Case "valcdn" o="valchg DESC,stockName"
		Case "valcup" o="valchg,stockName"
		Case Else
			sort="valcdn"
			o="valchg DESC,stockName"
	End Select
	If z then e="WHERE holding<>0 " ELSE e="HAVING hldchg<>0 "
	e=e&"ORDER BY "&o
	rs.Open "SELECT partName,personID from ccass.participants WHERE partID="&p,con
	If Not rs.EOF Then
		name=rs("partName")
		person=rs("personID")
	Else
		p=1
		person=1453
	End If
	rs.Close
	If Not isNull(person) Then Call fNamePsn(person,name,isOrg)
	d2=Min(getMSdateRange("d","2007-06-27",MSdate(Date-1)),GetLog("CCASSdateDone"))
	d1=getMSdateRange("d1","2007-06-27",MSdate(Cdate(d2)-1))
	If d1>=d2 Then d1=MSdate(Cdate(d2)-1)
	rs.Open "SELECT max(settleDate) as d1 FROM ccass.calendar WHERE settleDate<='"&d1&"'",con
	d1=MSdate(rs("d1"))
	rs.Close
	URL=Request.ServerVariables("URL")&"?p="&p&"&amp;d1="&d1&"&amp;d="&d2&"&amp;z="&z
	If person<>"" Then
		If isOrg Then
			Call orgBar(name,person,7)
		Else
			Call humanBar(name,person,5)
		End If
	Else%>
		<h2><%=name%></h2>
	<%End If
	Call ccassbarpart(p,d2,2)%>

	<h3>CCASS holding changes from <%=d1%> to <%=d2%></h3>
	<form method="get" action="portchg.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="hidden" name="p" value="<%=p%>">
		<div class="inputs">
			From <input type="date" name="d1" id="d1" value="<%=d1%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			to <input type="date" name="d" id="d2" value="<%=d2%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<%=checkbox("z",z,True)%> Show unchanged holdings
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="Clear" onclick="document.getElementById('d1').value='';document.getElementById('d2').value='';document.getElementById('z').checked=false;">
		</div>
		<div class="clear"></div>
	</form>
	<p>"Value change" is the value of the holding change at the closing price at the end of the period. Hit the "stake change" to see history.
		&quot;*&quot;=stock is suspended or in parallel trading. Last close on this counter is used.</p>
	<%=mobile(1)%>
	<table class="optable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th><%SL "Last<br>code","codeup","codedn"%></th>
			<th class="left"><%SL "Name","nameup","namedn"%></th>
			<th class="colHide1"><%SL "Holding","holddn","holdup"%></th>
			<th class="colHide1"><%SL "Change", "chngdn","chngup"%></th>
			<th><%SL "Stake<br>%","stakdn","stakup"%></th>
			<th><%SL "Stake<br>&#x0394; %","stkcdn","stkcup"%></th>
			<th class="colHide3"><%SL "Value<br>change","valcdn","valcup"%></th>
			<th></th>
			<th class="colHide3"><%SL "Last<br>holding","lastdn","lastup"%></th>
		</tr>
		<%
		cnt=0
		rs.Open "Call ccass.portchgext3("&p&",'"&d1&"','"&d2&"','"&e&"')",con
		Do Until rs.EOF
			holding=Cdbl(rs("holding"))
			hldchg=Cdbl(rs("hldchg"))
			issueID=rs("issueID")
			lastDate=rs("lastDate")
			stake=rs("stake")*100
			If isnull(stake) Then stake="-" Else stake=FormatNumber(stake,2)
			stkchg=rs("stkchg")*100
			If isnull(stkchg) Then stkchg="-" Else stkchg=FormatNumber(stkchg,2)
			valchg=rs("valchg")
			If isnull(valchg) Then valchg="-" Else valchg=FormatNumber(valchg,0)
			cnt=cnt+1%>
			<tr>
				<td class="colHide1"><%=cnt%></td>
				<td><%=rs("stockCode")%></td>
				<td class="left"><a href="chldchg.asp?i=<%=issueID%>&d1=<%=d1%>&d=<%=d2%>"><%=rs("stockName")%></a></td>
				<td class="colHide1"><%=FormatNumber(holding,0)%></td>
				<td class="colHide1"><%=FormatNumber(hldchg,0)%></td>
				<td><%=stake%></td>
				<td><a href="chistory.asp?i=<%=issueID%>&part=<%=p%>"><%=stkchg%></a></td>
				<td class="colHide3"><%=valchg%></td>
				<td><%If rs("susp") Then Response.Write "*"%></td>
				<td class="colHide3" style="white-space:nowrap"><%=MSdate(lastDate)%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
	<%Call CloseConRs(con,rs)
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>