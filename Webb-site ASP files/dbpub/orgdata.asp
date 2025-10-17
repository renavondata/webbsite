<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,name,code,dom,domID,typeName,rs2,inc,disDate,regDate,cesDate,incID,cName,disModeTxt,title,SFCID,SFCri,oldcrn,x,UKURI,_
	s1,s2,s3,expand,stake,sumstake,ob,shares,orgCnt,orgType,issue,lsid,incupd,SFCURL,coupon,stockId,docURL,delistDate,i,curr,os,_
	nameStr,qs,con,rs,sql
Call openEnigmaRs(con,rs)
s1=Request("s1") 'sort order for holders
s2=Request("s2") 'sort order for holdings
s3=Request("s3") 'sort order for debt and preference shares
expand=Request("x")
If expand<>"n" and expand<>"y" then expand="c"
person=getLng("p",0)
code=getLng("code",0)
Set rs2=Server.CreateObject("ADODB.Recordset")
If code>0 Then person=CLng(con.Execute("SELECT IFNULL((SELECT orgID FROM WebListings WHERE StockCode="&_
	code&" AND (isNull(DelistDate) OR DelistDate>=Now())),0)").Fields(0))
name="No record found"
If person>0 Then
	rs.Open "SELECT * FROM weborgs WHERE OrgID="&person,con
	If Not rs.EOF Then
		name=htmlEnt(rs("Org"))
		orgType=rs("orgType")
		cName=rs("cName")
		domID=rs("domID")
		dom=rs("Dom")
		disDate=rs("disDate")
		inc=rs("inc")
		typeName=rs("typeName")
		incID=rs("incID")
		disModeTxt=rs("disModeTxt")
		SFCID=rs("SFCID")
		SFCri=rs("SFCri")
		oldcrn=rs("oldcrn")
		UKURI=rs("UKURI")
		incupd=rs("incupd")
	Else
		rs.Close
		rs.Open "SELECT * FROM mergedpersons WHERE oldp="&person,con
		If Not rs.EOF Then Response.Redirect "orgdata.asp?p="&rs("newp")
	End If
	rs.Close
	rs.Open "SELECT * FROM lsorgs WHERE NOT dead AND personID="&person,con
	If rs.EOF Then lsid=Null Else lsid=rs("lsid")
	rs.Close
End If
title=name
If not isNull(cName) Then title=title&" "&cName
%>
<script type="text/javascript" src="rating.js"></script>
<style type="text/css">
	table.rating {
	border-collapse:collapse;
	border:thin gray solid;
}
	table.rating tr {
	border:thin gray solid;
}
	table.rating th {
	font-weight:bold;
	border:inherit;
	text-align:center;
}
	table.rating td {
	text-align:center;
}
</style>
<title><%=title%></title>
</head>
<body onload="setRating(<%=person%>)">
<!--#include file="../templates/cotopdb.asp"-->
<%If Name="No record found" Then%>
	<h2>No record found</h2>
<%Else
	Call orgBar(title,person,1)%>
	<ul class="navlist">
		<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
	</ul>
	<div class="clear"></div>
	<table>
		<%If not isnull(Dom) Then%>
			<tr><td>Domicile:</td><td><%=Dom%></td></tr>
		<%End If
		If not isnull(typeName) Then%>
			<tr><td>Type:</td><td><%=typeName%></td></tr>
		<%End If
		If inc>"" Then%>		
			<tr><td>Formed:</td><td><%=inc%></td></tr>
		<%End If
		If not isNull(disDate) Then%>
			<tr><td>Dissolved date:</td><td><%=MSdate(disDate)%></td></tr>
		<%End If
		If Not isNull(disModeTxt) Then%>
		<tr><td>Status:</td><td><%=disModeTxt%></td></tr>
		<%End If
		If not isNull(IncID) Then%>
			<tr>
				<td>Incorporation number:</td>
				<td>
				<%Select Case domID
					Case 1 %>
					<a target="_blank" href="https://www.e-services.cr.gov.hk/ICRIS3EP/system/home.do"><%=incID%></a>
					<%Case 2,112,116,311
						If UKURI Then%>
							<a target="_blank" href="http://data.companieshouse.gov.uk/doc/company/<%=incID%>.html"><%=incID%></a>
						<%Else%>
							<a target="_blank" href="https://find-and-update.company-information.service.gov.uk/company/<%=incID%>"><%=incID%></a>
						<%End If%>
					<%Case 25%>
						<a target="_blank" href="https://www.companiesoffice.govt.nz/companies/app/ui/pages/companies/<%=incID%>"><%=incID%></a>
					<%Case 16%>
						<a target="_blank" href="http://abr.business.gov.au/SearchByAbn.aspx?SearchText=<%=Replace(incID," ","")%>"><%=incID%></a>
					<%Case 23%>
						<a target="_blank" href="https://www.ic.gc.ca/app/scr/cc/CorporationsCanada/fdrlCrpDtls.html?corpId=<%=Replace(incID,"-","")%>"><%=incID%></a>			
					<%Case 46%>
						<a target="_blank" href="https://datacvr.virk.dk/data/visenhed?language=en-gb&enhedstype=virksomhed&id=<%=incID%>"><%=incID%></a>
					<%Case 288%>
						<a target="_blank" href="http://corp.sec.state.ma.us/CorpWeb/CorpSearch/CorpSummary.aspx?FEIN=<%=incID%>"><%=incID%></a>				
					<%Case Else%>
						<%=incID%>
				<%End Select%>
				</td>
			</tr>
		<%End If
		If not isNull(incupd) Then%>
			<tr>
				<td>Last check on companies registry:</td>
				<td><%=MSdate(incupd)%></td>
			</tr>
		<%End If
		If not isNull(oldcrn) Then%>
			<tr><td>HK company No. until 2023-12-27:</td><td><%=oldcrn%></td></tr>
		<%End If
		If not isNull(SFCID) Then%>
			<tr>
				<td>SFC ID:</td>
				<%If SFCri Then SFCURL="ri" Else SFCURL="corp"%>
				<td><a target="_blank" href="http://www.sfc.hk/publicregWeb/<%=SFCURL%>/<%=SFCID%>/licences"><%=SFCID%></a></td>
			</tr>
				<%rs.Open "SELECT * FROM oldsfcids WHERE orgID="&person&" ORDER BY until DESC",con
				Do until rs.EOF
					SFCID=rs("SFCID")%>
					<tr>
						<td>Old SFCID:</td>
						<td>
						<%If rs("SFCri") Then SFCURL="ri" Else SFCURL="corp"%>
						<a target="_blank" href="http://www.sfc.hk/publicregWeb/<%=SFCURL%>/<%=SFCID%>/licences"><%=SFCID%></a> until <%=MSdate(rs("until"))%>
						</td>
					</tr>
					<%rs.MoveNext
				Loop
				rs.Close
		End If
		If not isNull(lsid) Then%>
			<tr>
				<td>Law Society:</td>
				<td><a target="_blank" href="https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Firm-Detail?FirmId=<%=lsid%>">click here</a></td>
			</tr>
		<%End If
		sql="SELECT PersonID,YearEndDate,YearEndMonth from orgdata WHERE PersonID="&person
		rs.Open sql,con
		If not rs.EOF then
			If rs("YearEndDate")<>"" then%>
				<tr><td>Year-end:</td><td><%=rs("YearEndDate")&"-"&MonthName(rs("YearEndMonth"),True)%></td></tr>
			<%
			End If
		End If
		rs.Close%>
	</table>
	<!--#include file="websites.asp"-->
	<%Call websites(person)
	rs.Open "SELECT hostDom,A2,regID,regDate,cesDate,friendly,crn oldcrn FROM freg f JOIN domiciles d ON f.hostDom=d.ID "&_
		"LEFT JOIN oldcrf o ON f.ID=o.fregID WHERE orgID="&person,con
	If Not rs.EOF Then
		%>
		<h3>Foreign registrations</h3>
		<table class="txtable">
			<tr>
				<th>Place</th>
				<th>ID</th>
				<th>Registered</th>
				<th>Ceased</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("friendly")%></td>
					<td>
						<%Select Case rs("hostDom")
							Case 1
								If rs("oldcrn")<>rs("regID") Then%>
									<a target="_blank" href="https://www.e-services.cr.gov.hk/ICRIS3EP/system/home.do"><span class="info"><%=rs("regID")%><span>Until 2023-12-27:<%=rs("oldcrn")%></span></span></a>
								<%Else%>
									<a target="_blank" href="https://www.e-services.cr.gov.hk/ICRIS3EP/system/home.do"><%=rs("regID")%></a>
								<%End If%>
							<%Case 2%>
								<a target="_blank" href="https://beta.companieshouse.gov.uk/company/<%=rs("regID")%>"><%=rs("regID")%></a>
							<%Case Else
								Response.Write rs("regID")
						End Select%>
					</td>
					<td><%=MSdate(rs("regDate"))%></td>
					<td><%=MSdate(rs("cesDate"))%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
		<%
	End If
	rs.Close
	'CONVERT TO AN INCLUDE LATER
	Dim amt,hds,sumamt,sumhds,avg
	If con.Execute("SELECT EXISTS(SELECT * FROM ess WHERE orgID="&person&")").Fields(0) Then%>
		<h3>Employment Support Subsidy (COVID-19)</h3>
<p>The HK Government <a href="https://www.ess.gov.hk/" target="_blank">paid</a> 
employers a subsidy of half of staff salaries up to a subsidy cap of HK$9k per 
month for 6 months in 2 phases covering Jun-Aug and Sep-Nov 2020. Amounts shown 
do not include subsidiaries. P1 and p2 indicate whether a claim has been made 
and approved in each phase. <a href="ESSraw.asp?p=<%=person%>">Click here</a> for raw 
filing data.</p>
		<%sumamt=0
		sumhds=0
		x=0
		'combine phases, indicate phase 1 and/or 2
		rs.Open "SELECT eName,cName,SUM(phase=1)p1,SUM(phase=2)p2,SUM(amt)amt,ROUND(AVG(hds),0)hds,ROUND(SUM(amt)/AVG(hds),0)avg "&_
			"FROM (SELECT eName,cName,phase,SUM(amt)amt,SUM(heads)hds FROM ess WHERE orgID="&person&" GROUP BY eName,cName,phase)t "&_
			"GROUP BY eName,cName ORDER BY eName,cName",con%>
		<%=mobile(2)%>
		<table class="numtable fcl c2l">
			<tr>
				<th>English name</th>
				<th class="colHide3">Chinese name</th>
				<th>Amount<br>HK$</th>
				<th>Heads</th>
				<th>Average<br>HK$</th>
				<th class="colHide2">p1</th>
				<th class="colHide2">p2</th>
			</tr>
			<%Do Until rs.EOF
				amt=CLng(rs("amt"))
				hds=CLng(rs("hds"))
				sumamt=sumamt+amt
				sumhds=sumhds+hds
				If hds=0 Then avg="-" Else avg=FormatNumber(rs("avg"),0)
				x=x+1%>
				<tr>
					<td><%=rs("eName")%></td>
					<td class="colHide3"><%=rs("cname")%></td>
					<td><%=FormatNumber(amt,0)%></td>
					<td><%=FormatNumber(hds,0)%></td>
					<td><%=avg%></td>
					<td class="colHide2"><%=rs("p1")%></td>
					<td class="colHide2"><%=rs("p2")%></td>
				</tr>
				<%rs.Movenext
			Loop
			If x>1 Then
				If sumhds=0 Then avg="-" Else avg=FormatNumber(sumamt/sumhds,0)
				%>
				<tr class="total">
					<td>Total</td>
					<td class="colHide3"></td>
					<td><%=FormatNumber(sumamt,0)%></td>
					<td><%=FormatNumber(sumhds,0)%></td>
					<td><%=avg%></td>
					<td class="colHide2"></td>
					<td class="colHide2"></td>
				</tr>
			<%End If%>
		</table>
		<%
		rs.Close
	End If%>
	<h3>Webb-site Governance Rating</h3>
	<%If Session("ID")<>"" Then%>
		<table class="rating">
			<tr>
				<th colspan="7"><a href="../webbmail/myratings.asp">Your rating</a></th>
				<th colspan="2">All users</th>
			</tr>
			<tr>
				<th><label for="r-1">None</label></th>
				<%For x=0 to 5%>
					<th><label for="r<%=x%>"><%=x%></label></th>			
				<%Next%>
				<th>Count</th>
				<th>Average</th>
			</tr>
			<tr>
				<td style="border-right:thin gray solid"><input type="radio" name="r" id="r-1" value="-1" onclick="setRating(<%=person%>,-1)">	
				<%For x=0 to 5%>
					<td><input type="radio" name="r" id="r<%=x%>" value="<%=x%>" onclick="setRating(<%=person%>,<%=x%>)">
				<%Next%>
				<td style="border:thin gray solid" id="usercnt"></td>
				<td id="score"></td>
			</tr>
		</table>
		<div id="ratedon"></div>
	<%Else%>
		<p><a href="../webbmail/login.asp"><b>Log in</b></a> to add your anonymous rating. Webb-site users rate this organisation as follows:</p>
		<table class="rating">
			<tr>
				<th>Users</th>
				<th>Average (0-5)</th>
			</tr>
			<tr>
				<td style="border-right:thin gray solid" id="usercnt"></td>
				<td id="score"></td>
			</tr>
		</table>
	<%End If
	rs.Open "SELECT OldName,CAST(oldcName AS NCHAR)oldcName,MSdateAcc(dateChanged,dateAcc)chg FROM nameChanges WHERE (Not isNull(oldName) Or Not isNull(oldCName)) AND personID="&person&" ORDER BY DateChanged DESC",con
	If Not rs.EOF Then%>
		<h3>Name history</h3>
		<table class="txtable">
			<tr>
				<th>Old English name</th>
				<th>Old Chinese name</th>
				<th class="right">Until</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=htmlEnt(rs("OldName"))%></td>
					<td><%=rs("oldcName")%></td>		
					<td class="right"><%=rs("chg")%></td>
				</tr>
				<%
				rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
	rs.Open "SELECT fullName,MSdateAcc(dateChanged,dateAcc)chg FROM domChanges c JOIN domiciles d ON c.oldDom=d.ID WHERE orgID="&person&" ORDER BY dateChanged DESC",con
	If Not rs.EOF Then%>
		<h3>Domicile history</h3>
		<table class="txtable">
			<tr>
				<th>Old domicile</th>
				<th class="right">Until</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("fullName")%></td>
					<td class="right"><%=rs("chg")%></td>
				</tr>
				<%
				rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close 
	rs.Open "SELECT fromOrg,Name1 as name,cname,MSdateAcc(effDate,effAcc)chg FROM reorg JOIN organisations ON fromOrg=personID WHERE toOrg="&person,con
	If not rs.EOF then%>
		<h3>Reorganised from</h3>
		<table class="txtable">
			<tr>
				<th>Current English name</th>
				<th>Chinese name</th>
				<th class="right">Effective</th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><a href='orgdata.asp?p=<%=rs("fromOrg")%>'><%=rs("name")%></a></td>
				<td><%=rs("cname")%></td>
				<td class="right"><%=rs("chg")%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
	rs.Open "SELECT toOrg,Name1 as name,cname,MSdateAcc(effDate,effAcc)chg FROM reorg JOIN organisations ON toOrg=personID WHERE fromOrg="&person,con
	If not rs.EOF then%>
		<h3>Reorganised to</h3>
		<table class="txtable">
			<tr>
				<th>Current English name</th>
				<th>Chinese name</th>
				<th class="right">Effective</th>
			</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><a href='orgdata.asp?p=<%=rs("toOrg")%>'><%=rs("name")%></a></td>
				<td><%=rs("cname")%></td>
				<td class="right"><%=rs("chg")%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
	rs.Close
	%>
	<%'list equities
	rs.Open "SELECT DISTINCT issueID i,typeLong,IFNULL(currency,'HKD')curr FROM stocklistings sl JOIN (issue i,sectypes st) "&_		
		"ON sl.issueID=i.ID1 AND i.typeID=st.typeID "&_
		"LEFT JOIN currencies c ON i.SEHKcurr=c.ID "&_
		"WHERE i.typeID NOT IN(5,40,41,46) AND stockExID IN(1,20,22,23,38,71) AND i.issuer="&person&" ORDER BY listOrd,typeShort,expmat",con
	If Not rs.EOF Then%>
		<h3>HK-listed equities</h3>
		<%Do Until rs.EOF%>
			<h4><%=rs("typeLong")%>: <%=rs("curr")%></h4>
			<%
			i=rs("i")
			Call stockBar(i,0)	
			rs.MoveNext
		Loop					
	End If
	rs.Close
	Select case s3
		Case "cpndn" ob="coupon DESC,expmat DESC"
		Case "cpnup" ob="coupon,expmat"
		Case "ftddn" ob="firstTradeDate DESC,expmat DESC"
		Case "ftdup" ob="firstTradeDate,expmat"
		Case "matup" ob="expmat,firstTradeDate"
		Case "osdn" ob="currency,os DESC,delistDate DESC"
		Case "osup" ob="currency,os,delistDate DESC"
		Case Else
			ob="expmat DESC,firstTradeDate DESC"
			s3="matdn"
	End Select
	rs.Open "SELECT issueID,stockId,stockCode,firstTradeDate,finalTradeDate,delistDate,MSdateAcc(expmat,expAcc)exp,typeShort,coupon,floating,"&_
		"currency,IF(isNull(delistDate) Or delistDate>CURDATE(),Round(outstanding(issueID,Null)/1000000,2),Null) os "&_
		"FROM stocklistings s JOIN (issue i,sectypes st) ON s.issueID=ID1 AND i.typeID=st.typeID "&_
		"LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE i.typeID IN(5,40,41,46) AND i.issuer="&person&" ORDER BY "&ob,con
	If Not rs.EOF then
		qs="p="&person&"&x="&expand&"&s1="&s1&"&s2="&s2
		%>
		<h3>Listed debt and preference shares</h3>
		<p>Hit the stock code for details. * = floating</p>
		<%=mobile(2)%>
		<table class="numtable">
			<tr>
				<th class="left">Type</th>
				<th></th>
				<th><%SLV "Outst. m","osdn","osup","s3",qs%></th>
				<th><%SLV "Rate %","cpndn","cpnup","s3",qs%></th>
				<th><%SLV "Maturity","matdn","matup","s3",qs%></th>
				<th>Code</th>
				<th class="colHide2"><%SLV "Listed","ftddn","ftdup","s3",qs%></th>
				<th class="colHide2">Last trade</th>
				<th class="colHide2">Delisted</th>
				<th class="colHide3"></th>
			</tr>
			<%Do Until rs.EOF
				i=rs("issueID")
				delistDate=rs("delistDate")
				If isNull(delistDate) Then os=rs("os") Else os=Null
				If isNull(os) Then os="" Else os=FormatNumber(os,2)
				stockId=rs("stockId")
				coupon=rs("coupon")
				curr=rs("currency")
				If isNull(curr) Then curr=""
				If isNull(coupon) Then coupon="" Else coupon=FormatNumber(coupon,5)
				If rs("floating") Then coupon="*" & coupon
				%>
				<tr>
					<td class="left" style="vertical-align:middle"><%=rs("typeShort")%></td>
					<td class="left" style="vertical-align:middle"><%=curr%></td>
					<td style="vertical-align:middle"><%=os%></td>
					<td style="vertical-align:middle"><%=coupon%></td>
					<td class="left" style="vertical-align:middle"><%=rs("exp")%></td>							
					<td style="vertical-align:middle"><a href="/dbpub/outstanding.asp?i=<%=i%>"><%=rs("StockCode")%></a></td>
					<td class="colHide2" style="vertical-align:middle"><%=MSdate(rs("firstTradeDate"))%></td>
					<td class="colHide2" style="vertical-align:middle"><%=MSdate(rs("finalTradeDate"))%></td>
					<td class="colHide2" style="vertical-align:middle"><%=MSdate(delistDate)%></td>
					<td class="colHide3">
					<%If Not isNull(stockId) Then
						If IsNull(DelistDate) Or delistDate>Date() Then docURL="0" Else docURL="1"
						docURL="https://www1.hkexnews.hk/search/titlesearch.xhtml?lang=EN&market=SEHK&stockId="&stockId&"&category="&docURL
						%>
						<ul class="navlist">
							<li><a target="_blank" href="<%=docURL%>">Docs</a></li>
						</ul>
					<%End If%>
					</td>						
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
	rs.Open "SELECT * FROM (issue JOIN secTypes ON issue.typeID=secTypes.typeID) LEFT JOIN (stocklistings) ON issue.ID1=stocklistings.issueID "&_
		"WHERE isNull(stocklistings.issueID) AND issue.typeID NOT IN (1,2,40,41) AND issue.issuer="&person,con
	If not rs.EOF Then%>
		<h3>Unlisted securities</h3>
		<%Do Until rs.EOF%>
			<h4><%=rs("typeLong")%></h4>
			<%
			rs2.Open "SELECT * FROM enigma.issuedshares WHERE issueID="&rs("ID1"),con
			If Not rs2.EOF Then%>
				<ul class="navlist">
					<li><a href='outstanding.asp?i=<%=rs("ID1")%>'>Outstanding</a></li>
				</ul>
				<div class="clear"></div>
			<%End If
			rs2.Close
			rs.MoveNext
		Loop
	End If
	rs.Close
	If Not con.Execute("SELECT everListCo("&person&")").Fields(0) Then%>
		<!--#include file="holders.asp"-->
		<%Call holders(con,rs,"p="&person&"&amp;s2="&s2&"&amp;s3="&s3,person,"s1")
	End If
	Call holdings(con,rs,"p="&person&"&amp;s1="&s1&"&amp;s3="&s3,person,"s2")%>
	<!--#include file="holdings.asp"-->
<%End If
Set rs2=nothing
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
