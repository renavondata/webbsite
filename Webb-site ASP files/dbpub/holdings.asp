<%'this is an include file, no title needed
Sub holdingsGen(con,person,level,ob,orgArr,orgCnt)
	Dim issuer,rs,x,found,typeShort,nameStr
	Set rs=Server.CreateObject("ADODB.Recordset")
	'NB query runs faster without stakeComp embedded in the View, so keep it here
	rs.Open "SELECT * FROM(SELECT *,IF(ISNULL(shares),stake,shares/outstanding(issue,CURDATE())) AS stakeComp "&_
		"FROM webholdings3 WHERE personID="&person&") AS t1 WHERE shares>0 Or stake>0 Or (isNull(shares) and isnull(stake)) ORDER BY "&ob,con
	Do Until rs.EOF
		issuer=rs("issuer")
		stake=rs("StakeComp")
		found=False
		If orgcnt>0 Then
			For x=0 to Ubound(orgArr)
				If orgArr(x)=issuer Then
					found=True
					Exit For
				End If
			Next
		End if
		If found=False Then
			orgcnt=orgcnt+1
			Redim Preserve orgArr(orgcnt)
			orgArr(orgcnt)=issuer
		End if
		nameStr=rs("Name")
		typeShort=rs("typeShort")
		If typeShort<>"O" Then nameStr=nameStr&":"&typeShort
		If rs("orgType")=22 Then nameStr="<b>"&nameStr&"</b>"
		%>
		<div style="float:left;width:40px;"><%If found=False Then response.write "<a name='D" & orgcnt & "'></a>"&orgcnt%>&nbsp;</div>
		<div style="float:left;min-width:80px"><%=spDate(rs("holdingDate"))%></div>
		<div style="text-align:right;float:left;width:<%=level*60+65%>px;padding-right:5px"><%=pcStr(stake)%></div>
		<div style="float:left"><a href='orgdata.asp?p=<%=rs("Issuer")%>'><%=nameStr%></a>
			&nbsp;(<span class="info"><%=rs("A2")%><span><%=rs("friendly")%><br/>Incorporated: <%=DateStr(rs("incDate"),rs("incAcc"))%></span></span>)
			<%If found=True Then%>
				&nbsp;see <a href="#D<%=x%>">line <%=x%></a>
			<%End If%>
		</div>
		<div class="clear"></div>
		<%If found=False Then Call holdingsGen(con,issuer,level+1,ob,orgArr,orgCnt)
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

Sub holdings(con,rs,qs,person,n)
	'con is the active db connection, rs is a closed recordset,n is name of query parameter holding sort order for this table,qs is querystring with other params
	Dim nameStr,ob,stake,orgArr,orgCnt,expand,sort,URL
	expand=Request("x")
	If expand<>"y" Then expand="n"
	sort=Request(n)
	Select Case sort
		case "stakup" ob="StakeComp,Name"
		case "stakdn" ob="StakeComp DESC,Name"
		case "namedn" ob="Name DESC"
		case "incdup" ob="incDate,Name"
		case "incddn" ob="incDate DESC,Name"
		case "domiup" ob="A2,Name"
		Case "domidn" ob="A2 DESC,Name"
		case Else
			ob="Name"
			sort="namup"
	End Select
	rs.Open "SELECT personID,issue,holdingDate,shares,stake,friendly,A2,name,orgType,secType,typeShort,issuer,stakeComp,MSdateAcc(incDate,incAcc)inc FROM "&_
		"(SELECT *,IF(ISNULL(shares),stake,shares/outstanding(issue,CURDATE()))stakeComp "&_
		"FROM webholdings3 WHERE personID="&person&") AS t1 WHERE shares>0 Or stake>0 Or (isNull(shares) and isnull(stake)) ORDER BY "&ob,con
	If Not rs.EOF Then%>
		<h3 id="D0">Holdings</h3>
		<p>Note: holdings may be incomplete and/or outdated. Holdings in listed companies are not shown as the filings are 
		currently too difficult to automate and the holdings change too rapidly.</p>
		<ul class="navlist">
			<%URL=Request.ServerVariables("URL")&"?"&qs&"&amp;"&n&"="&sort
			If expand="n" Then%>
				<li id="livebutton">Simple</li>
				<li><a href="<%=URL%>&amp;x=y">Expanded</a></li>
			<%Else%>
				<li><a href="<%=URL%>&amp;x=n">Simple</a></li>
				<li id="livebutton">Expanded</li>
			<%End If%>
		</ul>
		<div class="clear"></div>
		<%qs=qs&"&amp;x="&expand
		If expand="y" Then
			Redim orgArr(0)
			orgArr(0)=CLng(person)
			orgcnt=0%>
			<div style="float:left;width:40px;">&nbsp;</div>
			<div style="float:left;width:80px;"><b>Held at</b></div>	
			<div style="text-align:right;float:left;width:65px;padding-right:5px"><%SLV "Stake","stakdn","stakup",n,qs%></div>
			<div><%SLV "Issue","nameup","namedn",n,qs%></div>
			<div class="clear"></div>
			<p><%Call holdingsGen(con,person,0,ob,orgArr,orgCnt)%></p>
		<%Else%>
			<%=mobile(3)%>
			<table class="txtable">
			<tr>
				<th><%SLV "Issuer","nameup","namedn",n,qs%></th>
				<th class="colHide3"><%SLV "&#x1f310","domiup","domidn",n,qs%></th>
				<th class="colHide3"><%SLV "Formed","incdup","incddn",n,qs%></th>
				<th class="colHide3">Issue</th>
				<th class="colHide3">Shares</th>
				<th class="right"><%SLV "Stake","stakup","stakdn",n,qs%></th>
				<th class="colHide3">Holding date</th>
			</tr>
			<%Do Until rs.EOF
				stake=rs("StakeComp")
				nameStr=rs("name")
				If rs("orgType")=22 Then nameStr="<b>"&nameStr&"</b>"%>
				<tr>
					<td><a href='orgdata.asp?p=<%=rs("Issuer")%>'><%=nameStr%></a></td>
					<td class="colHide3"><span class="info"><%=rs("A2")%><span><%=rs("friendly")%></span></span></td>
					<td class="colHide3"><%=rs("inc")%></td>
					<td class="colHide3"><%=rs("SecType")%></td>
					<td class="colHide3 right"><%=intStr(rs("shares"))%></td>
					<td class="right"><%=pcStr(stake)%></td>
					<td class="colHide3"><%=spDate(rs("HoldingDate"))%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
			</table>
		<%End If
	End If
	rs.Close
End Sub%>
