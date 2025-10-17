<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%Dim con,rs,partID,issued,issuedchg,issuedpc,issuedDate,oldissued,sumhold,hldchg,sumhldchg,_
	sort,URL,e,cnt,d1,d2,atDate,prevhldg,holding,lastDate,stake,stkchg,adj,sa,_
	NCIPhldg,NCIPcnt,nonCCASS,NCIPchg,nonCCASSchg,intermedHldg,intermedCnt,CIPcnt,CIPhldg,ctot,unchhldg,namhldg,t1,t2,vol,turn,i,n,p,m%>
<title>CCASS holding changes</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%m=botchk2()
If m<>"" Then%>
	<p><b><%=m%></b></p>
<%Else
	'input d1 is the start date, d is the end date (becomes d2)
	Call openEnigmaRs(con,rs)
	Call findStock(i,n,p)
	sort=Request("sort")
	Select Case sort
		Case "nameup" e="partName"
		Case "namedn" e="partName DESC"
		Case "ccidup" e="CCASSID,partName"
		Case "cciddn" e="CCASSID DESC,partName DESC"
		Case "holdup" e="holding,partName"
		Case "holddn" e="holding DESC,partName"
		Case "lastdn" e="lastDate DESC,partName"
		Case "lastup" e="lastDate,partName"
		Case "chngup" e="hldchg,partName"
		Case Else
			sort="chngdn"
			e="hldchg DESC,partName"
	End Select
	d2=getMSdateRange("d","2007-06-27",MSdate(Date-1))
	d1=getMSdef("d1",MSdate(Cdate(d2)-1))
	If i=0 Then%>
		<h2>CCASS holding changes</h2>
		<p><b><%=n%></b></p>
	<%Else
		Call orgBar(n,p,0)
		call ccassbar(i,d2,2)
		'constrain d2 to actual history
		rs.Open "SELECT Max(atDate) as MaxDate FROM ccass.dailylog WHERE issueID="&i&" AND atDate<='"&d2&"'", con
		d2=MSdate(rs("MaxDate"))
		rs.Close
		If d2="" Then
			rs.Open "SELECT Min(atDate) as MinDate FROM ccass.dailylog WHERE issueID="&i,con
			d2=MSdate(rs("MinDate"))
			rs.Close
		End If
		If d2="" Then%>
			<p><b>There are no records of CCASS holdings.</b></p>
		<%Else
			'only proceed if this issue has CCASS records
			If d1>=d2 Then d1=MSdate(Cdate(d2)-1)
			rs.Open "SELECT Max(atDate) as MaxDate from ccass.dailylog WHERE issueID="&i&" AND atDate<='"&d1&"'",con
			d1=MSdate(rs("maxDate"))
			rs.Close
			If d1="" Then
				rs.Open "SELECT Min(atDate) as MinDate FROM ccass.dailylog WHERE issueID="&i,con
				d1=MSdate(rs("minDate"))
				rs.Close
			End If
		End If
	End If%>
	<form method="get" action="chldchg.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="hidden" name="i" value="<%=i%>">
		<div class="inputs">
			Stock code: <input type="text" name="sc" size="5" value="">
		</div>
		<div class="inputs">
			From <input type="date" name="d1" id="d1" value="<%=d1%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			to <input type="date" name="d" id="d2" value="<%=d2%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="Clear" onclick="document.getElementById('d1').value='';document.getElementById('d2').value=''">
		</div>
		<div class="clear"></div>
	</form>
	<%If i<>0 And Not isNull(d2) Then
		URL=Request.ServerVariables("URL")&"?i="&i&"&d1="&d1&"&d="&d2
		%>
		<h3>CCASS holding changes from <%=d1%> to <%=d2%></h3>
		<%
		rs.Open "SELECT atDate,outstanding FROM issuedshares WHERE IssueID="&i& _
			" AND atDate<='"&d2&"' ORDER BY atDate DESC",con
		issued=0
		If not rs.EOF Then
			issued=Cdbl(rs("outstanding"))
			issuedDate=rs("atDate")
		End If
		rs.Close
		adj=con.Execute("SELECT ifnull((SELECT EXP(SUM(LOG(adjust))) FROM events WHERE issueID="&i&" AND exDate>'"&d1&_
			"' AND exDate<='"&d2&"' AND isnull(cancelDate) AND eventType IN(4,5)),1)").Fields(0)
		oldissued=con.Execute("SELECT IFNULL(outstanding("&i&",'"&d1&"'),0)").Fields(0)
		sa=con.Execute("SELECT IFNULL((SELECT adjust FROM events WHERE issueID="&i&" AND eventType=4 AND isnull(cancelDate) AND exDate='"&d2&"'),1)").Fields(0)
		oldissued=oldissued/adj
		issuedchg=issued-oldissued
		If oldissued>0 Then issuedpc=issuedchg/oldissued Else issuedpc=0
		rs.Open "Call ccass.hldchgext2("&i&",'"&d1&"','"&d2&"','"&e&"')",con
		%>
		<p>Hit the "stake change" to see the holder's history.</p>
		<%If adj<>1 Then%>
			<p>Prior holdings are adjusted for splits and/or bonus issues</p>
		<%End If%>
		<p class="widthAlert1">Some data are hidden to fit your display. <span class="portrait"> Rotate?</span></p>
		<table class="optable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th class="colHide3"><%SL "CCASS ID","ccidup","cciddn"%></th>
			<th class="left"><%SL "Name","nameup","namedn"%></th>
			<th class="colHide3"><%SL "Holding","holddn","holdup"%></th>
			<th class="colHide3"><%SL "Change", "chngdn","chngup"%></th>
			<th><%SL "Stake<br>%","holddn","holdup"%></th>
			<th><%SL "Stake<br>&#x0394; %","chngdn","chngup"%></th>
			<th class="colHide1"><%SL "Last<br>holding","lastdn","lastup"%></th>
		</tr>
		<%
		cnt=0
		Do Until rs.EOF
			holding=Cdbl(rs("holding"))
			prevhldg=Cdbl(rs("prevhldg"))
			hldchg=Cdbl(rs("hldchg"))
			sumhold=sumhold+holding
			sumhldchg=sumhldchg+hldchg
			partID=rs("partID")
			lastDate=rs("lastDate")
			If issued>0 Then stake=FormatNumber(holding/issued*100,2) Else stake=""
			If issued>0 Then stkchg=FormatNumber((holding/issued-prevhldg/oldissued)*100,2) Else stkchg=""
			cnt=cnt+1%>
			<tr>
				<td class="colHide1"><%=cnt%></td>
				<td class="colHide3"><%=rs("CCASSID")%></td>
				<td class="left"><a href="portchg.asp?p=<%=partID%>&d1=<%=d1%>&d=<%=d2%>"><%=rs("partName")%></a></td>
				<td class="colHide3"><%=FormatNumber(holding,0)%></td>
				<td class="colHide3"><%=FormatNumber(hldchg,0)%></td>
				<td><%=stake%></td>
				<td><a href="chistory.asp?i=<%=i%>&amp;part=<%=partID%>"><%=stkchg%></a></td>
				<td class="colHide1 nowrap"><%=MSdate(lastDate)%></td>
			</tr>
			<%
			rs.MoveNext
		Loop
		rs.Close
		rs.Open "SELECT * FROM ccass.dailylog WHERE issueID="&i&" AND atDate='"&d2&"'",con
			NCIPhldg=round(Cdbl(rs("NCIPhldg"))/sa,0)
			intermedHldg=round(Cdbl(rs("intermedHldg"))/sa,0)
			CIPhldg=round(Cdbl(rs("CIPhldg"))/sa,0)
			intermedCnt=rs("intermedCnt")
			CIPcnt=rs("CIPcnt")
			NCIPcnt=rs("NCIPcnt")
		rs.Close
		rs.Open "SELECT * FROM ccass.dailylog WHERE issueID="&i&" AND atDate='"&d1&"'",con
			NCIPchg=NCIPhldg-Cdbl(rs("NCIPhldg"))/adj
			nonCCASS=issued-NCIPhldg-intermedHldg-CIPhldg
			nonCCASSchg=issuedchg-NCIPchg-sumhldchg
			ctot=NCIPhldg+CIPhldg+intermedHldg
			namhldg=intermedHldg+CIPhldg
			unchhldg=namhldg-sumhold
		rs.Close
		%>
		<tr class="total">
			<td class="colHide1"><%=cnt%></td>
			<td class="colHide3"></td>
			<td class="left">Total changed named holdings</td>
			<td class="colHide3"><%=FormatNumber(sumhold,0)%></td>
			<td class="colHide3"><%=FormatNumber(sumhldchg,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber(sumhold/issued*100,2))%></td>
			<td><%If issued<>0 and oldissued<>0 Then Response.Write(FormatNumber((sumhold/issued-(sumhold-sumhldchg)/oldissued)*100,2))%></td>
			<td></td>
			<td class="colHide1"></td>
		</tr>
		<tr>
			<td class="colHide1"><%=intermedCnt+CIPcnt-cnt%></td>
			<td class="colHide3"></td>
			<td class="left">Unchanged named holdings</td>
			<td class="colHide3"><%=FormatNumber(unchhldg,0)%></td>
			<td class="colHide3"><%=FormatNumber(0,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber(unchhldg*100/issued,2))%></td>
			<td><%If issued<>0 and oldissued<>0 Then Response.Write(FormatNumber((unchhldg/issued-unchhldg/oldissued)*100,2))%></td>
			<td></td>
			<td class="colHide1"></td>
		</tr>
		<tr class="total">
			<td class="colHide1"><%=intermedCnt+CIPcnt%></td>
			<td class="colHide3"></td>
			<td class="left">Total named holdings</td>
			<td class="colHide3"><%=FormatNumber(namhldg,0)%></td>
			<td class="colHide3"><%=FormatNumber(sumhldchg,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber((intermedHldg+CIPhldg)*100/issued,2))%></td>
			<td><%If issued<>0 and oldissued<>0 Then Response.Write(FormatNumber((sumhldchg/issued-sumhldchg/oldissued)*100,2))%></td>
			<td></td>
			<td class="colHide1"></td>
		</tr>
		<tr>
			<td class="colHide1"><%=FormatNumber(NCIPcnt,0)%></td>
			<td class="colHide3"></td>
			<td class="left">Unnamed Investor Participants</td>
			<td class="colHide3"><%=FormatNumber(NCIPhldg,0)%></td>
			<td class="colHide3"><%=FormatNumber(NCIPchg,0)%></td>	
			<td><%If issued<>0 Then Response.Write(FormatNumber(NCIPhldg*100/issued,2))%></td>
			<td><a href="nciphist.asp?i=<%=i%>">
				<%If issued<>0 Then Response.Write(FormatNumber((NCIPhldg/issued-(NCIPhldg-NCIPchg)/oldissued)*100,2))%></a></td>
			<td class="colHide1"></td>
		</tr>
		<tr class="total">
			<td class="colHide1"><%=FormatNumber(NCIPcnt+intermedCnt+CIPcnt,0)%></td>
			<td class="colHide3"></td>
			<td class="left">Total securities in CCASS</td>
			<td class="colHide3"><%=FormatNumber(ctot,0)%></td>
			<td class="colHide3"><%=FormatNumber(NCIPchg+sumhldchg,0)%></td>	
			<td><%If issued<>0 Then Response.Write(FormatNumber(ctot*100/issued,2))%></td>
			<td><a href="ctothist.asp?i=<%=i%>">
				<%If issued<>0 and oldissued<>0 Then Response.Write(FormatNumber((ctot/issued-(ctot-NCIPchg-sumhldchg)/oldissued)*100,2))%></a></td>
			<td class="colHide1"></td>
		</tr>
		<%If issued<>0 Then%>
			<tr>
				<td class="colHide1"></td>
				<td class="colHide3"></td>
				<td class="left">Securities not in CCASS</td>
				<td class="colHide3"><%=FormatNumber(nonCCASS,0)%></td>
				<td class="colHide3"><%=FormatNumber(nonCCASSchg,0)%></td>
				<td><%=FormatNumber(nonCCASS*100/issued,2)%></td>
				<td><a href="reghist.asp?i=<%=i%>">
					<%If oldissued<>0 Then Response.Write(FormatNumber((nonCCASS/issued-(nonCCASS-nonCCASSchg)/oldissued)*100,2))%></a></td>
				<td class="colHide1"></td>
			</tr>
			<tr class="total">
				<td class="colHide1"></td>
				<td class="colHide3"></td>
				<td class="left">Issued securities</td>
				<td class="colHide3"><%=FormatNumber(issued,0)%></td>
				<td class="colHide3"><%=FormatNumber(issuedchg,0)%></td>
				<td>100.00</td>
				<td><a href="/dbpub/outstanding.asp?i=<%=i%>"><%=FormatNumber(issuedpc*100,2)%></a></td>
				<td class="colHide1"><%=ForceDate(issuedDate)%></td>
			</tr>
		<%End If%>
		</table>
		<%
		t1=MSdate(con.Execute("SELECT MIN(tradeDate) FROM ccass.calendar WHERE settleDate>'"&d1&"'").Fields(0))
		t2=MSdate(con.Execute("SELECT MAX(tradeDate) FROM ccass.calendar WHERE settleDate<='"&d2&"'").Fields(0))
		rs.Open "SELECT SUM(vol) AS vol,SUM(turn) AS turn FROM ccass.quotes WHERE atDate>='"&t1&"' AND atDate<='"&t2&"' AND issueID="&i,con
		If not isnull(rs("vol")) Then
			vol=Cdbl(rs("vol"))
			turn=Cdbl(rs("turn"))
			%>
			<h3>Trades that settled in this date range</h3>
			<p>These data are not adjusted for splits or bonus issues during the period.</p>
			<table class="numtable fcl">
				<%If t2>t1 Then%>
					<tr><td>First trading date</td><td><%=t1%></td></tr>
					<tr><td>Last trading date</td><td><%=t2%></td></tr>
				<%Else%>
					<tr><td>Trading date</td><td><%=t1%></td></tr>
				<%End If%>
				<tr><td>Volume</td><td><%=FormatNumber(vol,0)%></td></tr>
				<tr><td>Turnover</td><td><%=FormatNumber(turn,0)%></td></tr>
				<%If vol>0 Then%>
					<tr><td>Average price</td><td><%=FormatNumber(turn/vol,3)%></td></tr>
				<%End If%>
			</table>
		<%End If
	End If
	Call CloseConRs(con,rs)
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>