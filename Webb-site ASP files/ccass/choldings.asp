<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include virtual="/dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%Dim con,rs,partID,holding,issued,issuedDate,sumhold,stake,sumstake,d,holdDate,sort,URL,cnt,e,z,sql,sa,i,n,p,sc,m
m=botchk2()%>
<title>CCASS holdings: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If m<>"" Then%>
	<p><b><%=m%></b></p>
<%Else
	Call openEnigmaRs(con,rs)
	sort=Request("sort")
	z=getBool("z")
	d=getMSdateRange("d","2007-06-26",GetLog("CCASSdateDone"))
	d=MSdate(con.Execute("SELECT Max(settleDate) FROM ccass.calendar WHERE settleDate<='"&d&"'").Fields(0))	
	Select Case sort
		Case "nameup" e="partName"
		Case "namedn" e="partName DESC"
		Case "ccidup" e="CCASSID,partName"
		Case "cciddn" e="CCASSID DESC,partName"
		Case "holdup" e="holding,partName"
		Case "datedn" e="atDate DESC,partName"
		Case "dateup" e="atDate,partName"
		Case Else
			sort="holddn"
			e="holding DESC,partName"
	End Select
	Call findStock(i,n,p)
	URL=Request.ServerVariables("URL")&"?i="&i&"&amp;d="&d&"&amp;z="&z
	If i=0 Then%>
		<h2>CCASS holdings</h2>
		<p><b><%=n%></b></p>
	<%Else
		Call orgBar(n,p,0)
		Call ccassholdbar(i,d,1)
		rs.Open "SELECT Max(atDate) as MaxDate FROM ccass.dailylog WHERE issueID="&i&" AND atDate<='"&d&"'", con
		d=rs("MaxDate")
		rs.Close
		If isNull(d) Then
			rs.Open "SELECT Min(atDate) as MinDate FROM ccass.dailylog WHERE issueID="&i,con
			d=rs("MinDate")
			rs.Close
		End If
		If isnull(d) Then%>
			<p><b>There are no records of CCASS holdings.</b></p>
		<%Else
			d=MSdate(d)%>
		<%End If
	End If%>
	<form method="get" action="choldings.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="hidden" name="i" value="<%=i%>">
		<div class="inputs">
			Stock code: <input type="text" name="sc" size="5" value="">
		</div>
		<div class="inputs">
			<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<%=checkbox("z",z,True)%> Show former holders
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="Clear" onclick="document.getElementById('d').value='';document.getElementById('z').checked=false;">
		</div>
		<div class="clear"></div>
	</form>
	<%If i<>0 And Not isNull(d) Then%>
		<h3>CCASS holdings on <%=d%></h3>
		<%
		rs.Open "SELECT atDate,outstanding FROM issuedshares WHERE IssueID="&i&" AND atDate<='"&d&"' ORDER BY atDate DESC LIMIT 1",con
		issued=0
		If not rs.EOF Then
			issued=Cdbl(rs("outstanding"))
			issuedDate=rs("atDate")
		End If
		rs.Close
		rs.Open "SELECT adjust FROM events WHERE issueID="&i&" AND eventType=4 AND exDate='"&d&"'",con
		If Not rs.EOF Then sa=rs("adjust") Else sa=1
		rs.Close
		Dim NCIPhldg,NCIPcnt,nonCCASS,BrokHldg,CustHldg,CIPHldg,intermedHldg,otherIM,Ctot
		rs.Open "SELECT * FROM ccass.dailylog WHERE issueID="&i&" AND atDate<='"&d&"' ORDER BY atDate DESC",con
		NCIPhldg=Cdbl(rs("NCIPhldg"))/sa
		NCIPcnt=rs("NCIPcnt")/sa
		BrokHldg=Cdbl(rs("BrokHldg"))/sa
		CustHldg=Cdbl(rs("CustHldg"))/sa
		CIPHldg=Cdbl(rs("CIPHldg"))/sa
		intermedHldg=Cdbl(rs("intermedHldg"))/sa
		rs.Close
		otherIM=intermedHldg-BrokHldg-CustHldg
		Ctot=CIPHldg+NCIPHldg+intermedHldg
		nonCCASS=issued-Ctot
		%>
		<p><b>Hit the stake to see the history.</b></p>
		<%=mobile(1)%>
		<h4>Summary</h4>
		<table class="optable">
		<tr>
			<th class="left">Type of holder</th>
			<th>Holding</th>
			<th>Stake<br>%</th>
			<th></th>
		</tr>
		<tr>
			<td class="left">Custodians</td>
			<td><%=FormatNumber(CustHldg,0)%></td>
			<td><a href="custhist.asp?i=<%=i%>"><%If issued<>0 Then Response.Write(FormatNumber(CustHldg*100/issued,2))%></a></td>
		</tr>
		<tr>
			<td class="left">Brokers</td>
			<td><%=FormatNumber(BrokHldg,0)%></td>
			<td><a href="brokhist.asp?i=<%=i%>"><%If issued<>0 Then Response.Write(FormatNumber(BrokHldg*100/issued,2))%></a></td>
		</tr>
		<tr>
			<td class="left">Other intermediaries</td>
			<td><%=FormatNumber(otherIM,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber(otherIM*100/issued,2))%></td>
		</tr>
		<tr class="total">
			<td class="left">Intermediaries</td>
			<td><%=FormatNumber(intermedHldg,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber(intermedHldg*100/issued,2))%></td>
		</tr>
		<tr>
			<td class="left">Named investors</td>
			<td><%=FormatNumber(CIPHldg,0)%></td>
			<td><%If issued<>0 Then Response.Write(FormatNumber(CIPHldg*100/issued,2))%></td>
		</tr>
		<tr>
			<td  class="left">Unnamed investors</td>
			<td><%=FormatNumber(NCIPhldg,0)%></td>
			<td><a href="nciphist.asp?i=<%=i%>"><%If issued<>0 Then Response.Write(FormatNumber(NCIPHldg*100/issued,2))%></a></td>
		</tr>
		<tr class="total">
			<td class="left">Total in CCASS</td>
			<td><%=FormatNumber(Ctot,0)%></td>
			<td><a href="ctothist.asp?i=<%=i%>"><%If issued<>0 Then Response.Write(FormatNumber(Ctot*100/issued,2))%></a></td>
		</tr>		
		<%If issued<>0 Then%>
			<tr>
				<td class="left">Securities not in CCASS</td>
				<td><%=FormatNumber(nonCCASS,0)%></td>
				<td><a href="reghist.asp?i=<%=i%>"><%=FormatNumber(nonCCASS*100/issued,2)%></a></td>		
			</tr>
			<tr class="total">
				<td class="left">Issued securities</td>
				<td><%=FormatNumber(issued,0)%></td>
				<td><a href="/dbpub/outstanding.asp?i=<%=i%>">100.00</a></td>
			</tr>
		<%End If%>
		</table>
		<%	
		sql="SELECT holdings.partID,holding,holdings.atDate,partName,CCASSID FROM "&_
			"(ccass.holdings JOIN (SELECT partID AS MDpartID, Max(atDate) AS maxDate FROM ccass.holdings "&_
        	"WHERE issueID="&i&" AND atDate<='"&d&"' GROUP BY MDpartID) AS t2 "&_
        	"ON (issueID="&i&" AND partID=MDpartID AND atDate=maxDate)) "&_
        	"JOIN CCASS.participants ON (participants.partID=holdings.partID) "
        If Not z Then sql=sql&" AND holding<>0 "
        sql=sql&"ORDER BY "&e&";"
        rs.Open sql,con
		%>
		<h4>Details</h4>
		<table class="optable yscroll">
			<tr>
				<th class="colHide1">Row</th>
				<th class="colHide3"><%SL "CCASS ID","ccidup","cciddn"%></th>
				<th class="left"><%SL "Name","nameup","namedn"%></th>
				<th class="colHide3"><%SL "Holding","holddn","holdup"%></th>
				<th><%SL "Last<br/>change","datedn","dateup"%></th>
				<th><%SL "Stake<br>%", "holddn","holdup"%></th>
				<th class="colHide1"><%SL "Cumul.<br>Stake<br>%", "holddn","holdup"%></th>
			</tr>
			<%
			cnt=0
			Do Until rs.EOF
				holding=Cdbl(rs("holding"))/sa
				sumhold=sumhold+holding
				partID=rs("partID")
				holdDate=rs("atDate")
				If issued<>0 Then
					stake=holding/issued
					sumstake=sumstake+stake
				End If
				%>
				<tr>
					<td class="colHide1">
						<%If holding<>0 Then
							cnt=cnt+1
							Response.Write(cnt)
						End if%>
					</td>
					<td class="colHide3"><%=rs("CCASSID")%></td>
					<td class="left"><a href="cholder.asp?part=<%=partID%>&amp;d=<%=d%>"><%=rs("partName")%></a></td>
					<td class="colHide3"><%=FormatNumber(holding,0)%></td>
					<td style="white-space:nowrap"><a href="chldchg.asp?i=<%=i%>&d=<%=MSDate(holdDate)%>"><%=MSdate(holdDate)%></a></td>
					<td><a href="chistory.asp?i=<%=i%>&amp;part=<%=partID%>">
						<%If issued<>0 Then Response.Write (FormatNumber(stake*100,2))%></a></td>
					<td class="colHide1"><%If issued<>0 Then Response.Write (FormatNumber(sumstake*100,2))%></td>
				</tr>
				<%
				rs.MoveNext
			Loop
			rs.Close
			nonCCASS=issued-NCIPhldg-sumhold
			%>
			<tr class="total">
				<td class="colHide1"><%=cnt%></td>
				<td class="colHide3"></td>
				<td class="left">Total named holdings</td>
				<td class="colHide3"><%=FormatNumber(sumhold,0)%></td>
				<td></td>
				<td><%If issued<>0 Then Response.Write(FormatNumber(sumhold*100/issued,2))%></td>
				<td class="colHide1"></td>
			</tr>
			<tr>
				<td class="colHide1"><%=FormatNumber(NCIPcnt,0)%></td>
				<td class="colHide3"></td>
				<td class="left">Unnamed Investor Partipants</td>
				<td class="colHide3"><%=FormatNumber(NCIPhldg,0)%></td>
				<td></td>
				<%If issued<>0 Then
					stake=NCIPhldg/issued
					sumstake=sumstake+stake
				End If%>
				<td><a href="nciphist.asp?i=<%=i%>">
					<%If issued<>0 Then Response.Write(FormatNumber(stake*100,2))%></a></td>
				<td class="colHide1"></td>
			</tr>
			<tr class="total">
				<td class="colHide1"><%=FormatNumber(NCIPcnt+cnt,0)%></td>
				<td class="colHide3"></td>
				<td class="left">Total in CCASS</td>
				<td class="colHide3"><%=FormatNumber(NCIPhldg+sumhold,0)%></td>
				<td></td>
				<td><a href="ctothist.asp?i=<%=i%>">
					<%If issued<>0 Then Response.Write(FormatNumber((NCIPhldg+sumhold)*100/issued,2))%></a></td>
				<td class="colHide1"></td>
			</tr>
			<%If issued<>0 Then%>
				<tr>
					<td class="colHide1"></td>
					<td class="colHide3"></td>
					<td class="left">Securities not in CCASS</td>
					<td class="colHide3"><%=FormatNumber(nonCCASS,0)%></td>
					<td></td>
					<td><a href="reghist.asp?i=<%=i%>"><%=FormatNumber(nonCCASS*100/issued,2)%></a></td>
					<td class="colHide1"></td>
				</tr>
				<tr class="total">
					<td class="colHide1"></td>
					<td class="colHide3"></td>
					<td class="left">Issued securities</td>
					<td class="colHide3"><%=FormatNumber(issued,0)%></td>
					<td><%=MSdate(issuedDate)%></td>
					<td><a href="/dbpub/outstanding.asp?i=<%=i%>">100.00</a></td>
					<td class="colHide1"></td>
				</tr>
			<%Else%>
				<tr>
					<td class="colHide1"></td>
					<td class="colHide3"></td>
					<td class="left">Securities in CCASS</td>
					<td class="colHide3"><%=FormatNumber(NCIPhldg+sumhold,0)%></td>
					<td></td>
					<td class="colHide1"></td>
				</tr>
			<%End If%>
		</table>
	<%End If
	Call CloseConRs(con,rs)
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>