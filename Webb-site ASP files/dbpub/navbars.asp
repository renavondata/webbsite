<%
Sub ccassbar(i,d,t)
	'generate first line of ccass navigation
	'i=issueID, d=atDate, t=target button
	Call stockBar(i,4)%>
	<ul class="navlist">
		<%=btn(1,"choldings.asp?i="&i&"&d="&d,"Holdings",t)%>
		<%=btn(2,"chldchg.asp?sort=chngdn&i="&i&"&d="&d,"Changes",t)%>
		<%=btn(4,"bigchangesissue.asp?i="&i,"Big changes",t)%>
		<%=btn(3,"cconchist.asp?i="&i,"Concentration",t)%>
		<li><a href="bigchanges.asp?d=<%=d%>">Big changes all stocks</a></li>
		<li><a href="cparticipants.asp">Participants</a></li>
		<li><a target="_blank" href="CCASSnotes.asp">About CCASS</a></li>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub ccassbarpart(p,d,t)
	'navigation bar for a CCASS participant page
	'p=personID of participant, d=date, t=target button%>
	<ul class="navlist">
		<%=btn(1,"cholder.asp?part="&p&"&d="&d,"Holdings",t)%>
		<%=btn(2,"portchg.asp?p="&p&"&d="&d,"Changes",t)%>
		<%=btn(3,"bigchangespart.asp?p="&p,"Big changes",t)%>
		<li><a href="bigchanges.asp?d=<%=d%>">Big changes all stocks</a></li>
		<li><a href="cparticipants.asp">Participants</a></li>
		<li><a target="_blank" href="CCASSnotes.asp">About CCASS</a></li>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub ccassholdbar(i,d,t)
	'generate the submenu bar under Holdings
	Call ccassbar(i,d,1)
	'i=issue, t=target button%>
	<ul class="navlist">
		<%=btn(1,"choldings.asp?i="&i,"Snapshot",t)%>
		<%=btn(2,"custhist.asp?i="&i,"Custodians",t)%>
		<%=btn(3,"brokhist.asp?i="&i,"Brokers",t)%>
		<%=btn(4,"nciphist.asp?i="&i,"Investors",t)%>
		<%=btn(5,"ctothist.asp?i="&i,"CCASS total",t)%>
		<%=btn(6,"reghist.asp?i="&i,"Non-CCASS",t)%>
		<%If t=7 Then Response.Write btn(7,"","History",t)%>
	</ul>
	<div class="clear"></div>
	<%
End Sub

Sub ccassallbar(d,t)
	'navigation bar for the all-stocks pages
	'd=atDate, t=target button%>
	<ul class="navlist">
		<%=btn(1,"bigchanges.asp?d="&d,"Big changes",t)%>
		<%=btn(2,"cconc.asp?d="&d,"Concentration",t)%>
		<%=btn(3,"cparticipants.asp","Named participants",t)%>
		<%=btn(4,"ipstakes.asp?d="&d,"Investor participants",t)%>
		<%=btn(5,"CCASSnotes.asp","About CCASS",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub govacBar(t)%>
	<ul class="navlist">
		<%=btn(1,"govac.asp","Accounts",t)%>
		<%=btn(2,"govacsearch.asp","Search",t)%>
		<%=btn(3,"govacNotes.asp","Notes",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub HKlistings(i)
	If isNull(i) Or i=0 Then Exit Sub
	Dim con,rs,HKcode,deListDate,ftd,stockId,URL
	Call openEnigmaRs(con,rs)
	rs.Open "SELECT * FROM stocklistings s JOIN listings l ON s.stockExID=l.stockExID WHERE s.stockExID IN(1,20,22,23,38,71) AND issueID="&i&" ORDER BY firstTradeDate", con
	If Not rs.EOF then%>
		<table class="numtable" style="margin-top:5px">
		<tr>
		<th class="left">Exchange</th>
		<th>Code</th>
		<th>Listed</th>
		<th>Last trade</th>
		<th>Delisted</th>
		<th></th>
		</tr>
		<%Do Until rs.EOF
			HKcode=rs("stockCode")
			If Not isNull(HKcode) Then HKcode=Right("0000"&HKcode,5) Else HKcode=""
			deListDate=rs("deListDate")
			ftd=rs("firstTradeDate")
			stockId=rs("stockId")
			%>
			<tr>
				<td class="left" style="width:75px;vertical-align:middle"><%=rs("ShortName")%></td>
				<td style="text-align:left;vertical-align:middle"><%=HKcode%></td>
				<td style="vertical-align:middle">&nbsp;<%=MSdate(ftd)%></td>
				<td style="vertical-align:middle">&nbsp;<%=MSdate(rs("FinalTradeDate"))%></td>
				<td style="vertical-align:middle">&nbsp;<%=MSdate(delistDate)%></td>
				<td>
				<%If Not isNull(stockId) Then
					If IsNull(DelistDate) Or delistDate>Date() Then URL="0" Else URL="1"
					URL="https://www1.hkexnews.hk/search/titlesearch.xhtml?lang=EN&market=SEHK&stockId="&stockId&"&category="&URL
					%>
					<ul class="navlist"><li><a target="_blank" href="<%=URL%>">Docs</a></li></ul>
				<%End If%>
				</td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
		<div class="clear"></div>
	<%End If
	Call CloseConRs(con,rs)
End Sub

Sub humanBar(n,p,t)
	'navbar for a natural person with name n and personID p, target button t%>
	<h2><%=n%></h2>
	<%If isNull(p) Or p=0 Then Exit Sub
	Dim con,partID
	Call openEnigma(con)
	%>
	<ul class="navlist">
		<%=btn(1,"../dbpub/natperson.asp?p="&p,"Key data",t)%>
		<%If con.Execute("SELECT EXISTS(SELECT 1 FROM directorships WHERE Director="&p&")").Fields(0) Then _
			Response.Write btn(2,"../dbpub/positions.asp?p="&p,"Positions",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM directorships d JOIN documents a ON d.company=a.orgID WHERE "&_
			"docTypeID=0 AND director="&p&")").Fields(0) Then _
			Response.Write btn(7,"../dbpub/offpay.asp?p="&p,"Pay",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM sdi WHERE dir="&p&")").Fields(0) Then _
			Response.Write btn(4,"../dbpub/sdidir.asp?p="&p,"Dealings",t)
		partID=CLng(con.Execute("SELECT IFNULL((SELECT partID FROM ccass.participants WHERE personID="&p&"),0)").Fields(0))
		If partID>0 Then Response.Write btn(5,"../ccass/cholder.asp?part="&partID,"CCASS holdings",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM personstories WHERE PersonID="&p&")").Fields(0) Then _
			Response.Write btn(6,"../dbpub/natarts.asp?p="&p,"Webb-site Reports",t)%>
	</ul>
	<div class="clear"></div>
	<%Call CloseCon(con)
End Sub

Sub landRegBar(f,t)%>
	<ul class="navlist">
		<%=btn(1,"landreg.asp?f="&f,"All transactions",t)%>
		<%=btn(2,"lrvaluecats.asp?f="&f,"Residential by value",t)%>		
	</ul>
	<div class="clear"></div>
<%End Sub

Sub lirBar(team,t)%>
	<ul class="navlist">
		<%=btn(1,"lirteams.asp?t="&team,"Team coverage",t)%>
		<%=btn(2,"lirstaff.asp","Staff list",t)%>
		<%=btn(3,"lirteamnotes.asp","Notes",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub officersBar(n,p,t)
	Call orgBar(n,p,3)
	Dim con,rs,SFCID
	Call openEnigmaRs(con,rs)
	SFCID=con.Execute("SELECT IFNULL((SELECT SFCID FROM organisations WHERE personID="&p&"),'')").Fields(0)
	%>
	<ul class="navlist">
		<%=btn(1,"../dbpub/officers.asp?p="&p,"All ranks",t)%>
		<%=btn(2,"../dbpub/offsum.asp?p="&p,"Main board summary",t)%>
		<%If SFCID<>"" Then%>
			<%=btn(3,"../dbpub/SFChistfirm.asp?p="&p,"Licensee stats",t)%>
			<%=btn(4,"../dbpub/SFClicensees.asp?p="&p,"Licensees",t)%>		
			<li><a target="_blank" href="http://apps.sfc.hk/publicregWeb/corp/<%=SFCID%>/ro">SFC web</a></li>
		<%End If
		rs.Open "SELECT * FROM organisations WHERE domicile IN(2,112,116,311) AND NOT ISNULL(incUpd) AND personID="&p,con
		If Not rs.EOF Then%>
			<li><a target="_blank" href="https://find-and-update.company-information.service.gov.uk/company/<%=rs("incID")%>/officers">UK Registry</a></li>
		<%End If
		rs.Close
		rs.Open "SELECT lsid FROM lsorgs WHERE Not dead and personID="&p&" ORDER BY lastSeen DESC LIMIT 1",con
		If Not rs.EOF Then %>
			<li><a target="_blank" href="https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Firm-Detail?FirmId=<%=rs("lsid")%>">Law Society</a></li>
		<%End If
		rs.Close%>
		<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
	</ul>
	<div class="clear"></div>
	<%Call CloseConRs(con,rs)
End Sub

Sub orgBar(title,p,t)
	'generate the top menu bar for an organisation
	'p is the personID, t is the active menu button ID
	Dim con,partID
	Call openEnigma(con)
	%>
	<h2><%=title%></h2>
	<ul class="navlist">
		<%=btn(1,"/dbpub/orgdata.asp?p="&p,"Key Data",t)%>
		<%
		If con.Execute("SELECT EXISTS(SELECT 1 FROM directorships WHERE Company="&p&")").Fields(0) Then
			Response.write btn(3,"/dbpub/officers.asp?p="&p,"Officers",t)
			Response.write btn(4,"/dbpub/overlap.asp?p="&p,"Overlaps",t)
		End If
		If con.Execute("SELECT EXISTS(SELECT 1 FROM documents WHERE docTypeID=0 AND pay AND orgID="&p&")").Fields(0) Then _
			Response.Write Btn(12,"/dbpub/pay.asp?p="&p,"Pay",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM adviserships WHERE Company="&p&")").Fields(0) Then _
			Response.Write Btn(5,"/dbpub/advisers.asp?p="&p,"Advisers",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM adviserships WHERE Adviser="&p&")").Fields(0) Then _
			Response.Write btn(6,"/dbpub/adviserships.asp?p="&p,"Adviserships",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM olicrec WHERE orgID="&p&")").Fields(0) Then _
			Response.Write btn(9,"/dbpub/SFColicrec.asp?p="&p,"SFC licenses",t)
		partID=con.Execute("SELECT IFNULL((SELECT partID FROM ccass.participants WHERE personID="&p&" LIMIT 1),0)").Fields(0)
		If CLng(partID)>0 Then Response.Write btn(7,"/ccass/cholder.asp?part="&partID,"CCASS holdings",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM documents WHERE orgID="&p&")").Fields(0) Then _
			Response.Write btn(8,"/dbpub/docs.asp?p="&p,"Financials",t)
		If con.Execute("SELECT EXISTS(SELECT 1 FROM ess WHERE orgID="&p&")").Fields(0) Then _
			Response.Write btn(10,"/dbpub/ESSraw.asp?p="&p,"ESS",t)			
		If con.Execute("SELECT EXISTS(SELECT * FROM personstories WHERE personID="&p&")").Fields(0) Then _
			Response.write btn(2,"/dbpub/articles.asp?p="&p,"Webb-site Reports",t)
		'9643=HKEX, regulated by SFC
		If con.Execute("SELECT EXISTS(SELECT * FROM lirorgteam WHERE orgID="&p&")").Fields(0) or p=9643 Then _
			Response.write btn(11,"/dbpub/complain.asp?p="&p,"Complain",t)
		%>
	</ul>
	<div class="clear"></div>
<%Call CloseCon(con)
End Sub

Sub pricesBar(i,s,t)
	'i=issue, s=sort order, t=target button
	Call stockBar(i,7)%>
	<ul class="navlist">
		<%=btn(1,"hpu.asp?i="&i&"&amp;sort="&s,"Daily",t)%>
		<%=btn(2,"hpw.asp?f=w&amp;i="&i&"&amp;sort="&s,"Weekly",t)%>
		<%=btn(3,"hpw.asp?f=m&amp;i="&i&"&amp;sort="&s,"Monthly",t)%>
		<%=btn(4,"hpw.asp?f=y&amp;i="&i&"&amp;sort="&s,"Yearly",t)%>
		<%=btn(5,"hpup.asp?i="&i&"&amp;sort="&s,"Parallel trading",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub positionsBar(p,t)
	Dim con,rs,SFCID
	Call openEnigmaRs(con,rs)
	SFCID=con.Execute("SELECT IFNULL((SELECT SFCID FROM people WHERE personID="&p&"),'')").Fields(0)
	%>
	<ul class="navlist">
		<%=btn(1,"../dbpub/positions.asp?p="&p,"All ranks",t)%>
		<%=btn(2,"../dbpub/possum.asp?p="&p,"Main board summary",t)%>
		<%If SFCID<>"" Then%>
			<%=btn(3,"../dbpub/SFClicrec.asp?p="&p,"SFC licenses",t)%>
			<li><a target="_blank" href="https://apps.sfc.hk/publicregWeb/indi/<%=SFCID%>/licenceRecord">SFC web</a></li>
		<%End If
		rs.Open "SELECT lsid FROM lsppl WHERE Not dead and personID="&p&" ORDER BY lastSeen DESC LIMIT 1",con
		If Not rs.EOF Then %>
			<li><a target="_blank" href="https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Member-Details?MemId=<%=rs("lsid")%>">Law Society</a></li>
		<%End If%>
		<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
	</ul>
	<div class="clear"></div>
	<%Call CloseConRs(con,rs)
End Sub

Sub solsBar(p,t)%>
	<ul class="navlist">
		<%=btn(1,"hksols.asp?p="&p,"By name",t)%>
		<%=btn(5,"hksolfirms.asp?p="&p,"By firm",t)%>
		<%=btn(2,"hksolsadmhk.asp?p="&p,"By year",t)%>
		<%=btn(3,"hksolsmoves.asp?p="&p,"Moves",t)%>
		<%=btn(4,"hksolsadmos.asp?p="&p,"Overseas",t)%>
		<%=btn(6,"hksolemps.asp?p="&p,"Non-law firms",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub stockBar(i,t)
	'navbar for an issue i with target button t
	Call HKlistings(i)
	If isNull(i) Or i=0 Then Exit Sub
	Dim con,rs,HKlisted,stockCode,delistDate,secType,ccassOn,stockExID,stockId
	Call openEnigmaRs(con,rs)
	rs.Open "SELECT typeID FROM issue WHERE ID1="&i,con
	If Not rs.EOF Then secType=rs("typeID")
	rs.Close
	rs.Open "SELECT stockCode,delistDate,stockExID,stockId "&_
		"FROM stocklistings WHERE stockExID IN(1,20,22,23,38,71) AND issueID="&i&" ORDER BY delistDate LIMIT 1",con
	If Not rs.EOF Then
		'get latest listing of this issue
		HKlisted=True
		stockId=rs("stockId")
		delistDate=rs("delistDate")
		stockExID=rs("stockExID")
		StockCode=right("0000"&rs("stockCode"),5)
		'no CCASS for rights, convertible bonds or notes
		If (isNull(delistDate) or delistDate>=#26-Jun-2007#) And secType<>2 And secType<>40 and secType<>41 Then ccassOn=True
	End If
	rs.Close%>
	<ul class="navlist">
		<%If HKlisted and secType<>2 and secType<>41 Then Response.Write btn(1,"/dbpub/buybacks.asp?i="&i,"Buybacks",t)
		rs.Open "SELECT * FROM issuedshares WHERE issueID="&i&" LIMIT 1",con
		If not rs.EOF Then Response.Write btn(2,"/dbpub/outstanding.asp?i="&i,"Outstanding",t)
		rs.Close
		rs.Open "SELECT * FROM sfcshort WHERE issueID="&i&" LIMIT 1",con
		If Not rs.EOF Then Response.Write btn(3,"/dbpub/short.asp?i="&i,"Short",t)
		rs.Close
		If ccassOn Then Response.Write btn(4,"/ccass/choldings.asp?i="&i,"CCASS",t)
		If HKlisted Then%>
			<%=btn(5,"/dbpub/str.asp?i="&i,"Total return",t)%>
			<%=btn(6,"/dbpub/ctr.asp?i1="&i,"Compare returns",t)%>
			<%=btn(7,"/dbpub/hpu.asp?i="&i,"Prices",t)%>
			<%=btn(8,"/dbpub/events.asp?i="&i,"Events",t)%>
		<%End If
		rs.Open "SELECT * FROM sdi WHERE issueID="&i&" LIMIT 1",con
		If Not rs.EOF Then Response.Write btn(9,"/dbpub/sdiissue.asp?i="&i,"Dealings",t)
		rs.Close
		If HKlisted And (isNull(delistDate) Or delistDate>Date()) Then
			If secType<>46 and secType<>40 and secType<>41 and stockExID<>23 And stockExID<>38 Then%>
				<li><a target="_blank" href="http://www.hkex.com.hk/Market-Data/Securities-Prices/Equities/Equities-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%ElseIf stockExID=38 Then%>
				<li><a target="_blank" href="https://www.hkex.com.hk/Market-Data/Securities-Prices/Exchange-Traded-Products/Exchange-Traded-Products-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%ElseIf stockExID=23 Then%>
				<li><a target="_blank" href="https://www.hkex.com.hk/Market-Data/Securities-Prices/Real-Estate-Investment-Trusts/Real-Estate-Investment-Trusts-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>			
			<%Else%>
				<li><a target="_blank" href="http://www.hkex.com.hk/Market-Data/Securities-Prices/Debt-Securities/Debt-Securities-Quote?sym=<%=CLng(stockCode)%>">Quote</a></li>
			<%End If		
		End If
		%>
	</ul>
	<div class="clear"></div>
	<%Call CloseConRs(con,rs)
End Sub

Sub userBar(t)%>
	<h2>User Zone</h2>
	<ul class="navlist">
		<%If Session("ID")<>"" Then%>
			<%=btn(7,"myratings.asp","My ratings",t)%>
			<%=btn(8,"mystocks.asp","My stocks",t)%>
			<%=btn(9,"mybigchanges.asp","Big CCASS changes",t)%>
			<%=btn(10,"mytotrets.asp","Total returns",t)%>
			<%=btn(12,"mysdi.asp","Dealings",t)%>
			<%=btn(6,"mailpref.asp","Mail on/off",t)%>
			<%=btn(4,"changeaddr.asp","Change address",t)%>
			<%=btn(13,"username.asp","Username/Volunteer!",t)%>
			<%=btn(5,"reset.asp","Change password",t)%>
		<%Else%>
			<%=btn(1,"login.asp","Log in",t)%>	
		<%End If
		If Session("ID")="" Then%>
			<%=btn(2,"join.asp","Sign up",t)%>
		<%End If%>
		<%=btn(3,"forgot.asp?e="&session("e"),"Forgot password",t)%>
		<%If Session("ID")<>"" Then%>
			<%=btn(11,"login.asp?b=1","Log out",t)%>
		<%End If%>
		<%If Session("editor") Then%>
			<li><a href="../dbeditor/">Edit database</a></li>
		<%End If%>
	</ul>
	<div class="clear"></div>
<%End Sub%>

<%Sub vebar(vc,b,t)%>
	<ul class="navlist">
		<%=btn(1,"veFR.asp?vc="&vc,"Brands",t)%>
		<%=btn(2,"vedet.asp?vc="&vc&"&amp;brand="&b,"Brand details",t)%>
		<%=btn(3,"vebrandhist.asp?vc="&vc&"&amp;brand="&b,"Brand history",t)%>
		<%=btn(4,"veFRtype.asp","Types",t)%>
		<%=btn(5,"veFRtypehist.asp?vc="&vc,"Type history",t)%>
		<%=btn(6,"vefuel.asp","Fuels",t)%>
		<%=btn(7,"vefuelhist.asp?vc="&vc,"Fuel history",t)%>
		<%=btn(8,"veengine.asp","Cars: engine size",t)%>
		<%=btn(9,"tuntraff.asp","Tunnels",t)%>
		<%=btn(10,"veJourneys.asp","Journeys",t)%>
		<%=btn(11,"veJourneyhist.asp","Journey history",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub%>