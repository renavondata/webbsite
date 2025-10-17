<%
'DBpub version
Sub holdersGen(con,issue,parentNode,level,ob,line,holdArr)
	'put the tree into an array, for use in condensed or expanded views
	'this procedure is recursive. The first (zeroth) row of holdArr represents the target issue
	Dim rs,rs2,currParent,z,found,typeShort,typeLong,stakeComp
	Const colStake=0,colPersonID=1,colTypeShort=2,colPersonType=3,colOrgType=4,colName=5,colParent=6,colAtDate=7,colIncAcc=8,colA2=9,colFriendly=10,_
		colVisible=11,colLevel=12,colIssue=13,colTypeLong=14,colIncDate=15
	Set rs=Server.CreateObject("ADODB.Recordset")
	Set rs2=Server.CreateObject("ADODB.Recordset")
	'NB query runs faster without stakeComp embedded in the View, so keep it here
	rs.Open "SELECT * FROM (SELECT *,IF(ISNULL(shares),stake,IF(shares=0,0,shares/(outstanding("&issue&",CURDATE())))) "&_
		"AS stakeComp FROM webholders3 WHERE issue="&issue&") as t1 WHERE isNull(stakeComp) OR stakeComp>0 ORDER BY "&ob,con
	'If there are no holdings in this issue then the issuer must be visible
	If rs.EOF Then holdArr(colVisible,parentNode)=True
	Do Until rs.EOF
		line=line+1
		Redim Preserve holdArr(15,line)
		stakeComp=rs("stakeComp")
		holdArr(colStake,line)=stakeComp
		holdArr(colAtDate,line)=rs("holdingDate")
		holdArr(colParent,line)=parentNode
		'issuer must be visible if stakeComp<>100%
		If stakeComp<>1 Then holdArr(colVisible,parentNode)=True
		holdArr(colIssue,line)=issue
		holdArr(colTypeShort,line)=rs("typeShort")
		holdArr(colTypeLong,line)=rs("typeLong")
		holdArr(colPersonID,line)=rs("personID")
		holdArr(colPersonType,line)=rs("personType")
		holdArr(colOrgType,line)=rs("orgType")
		holdArr(colIncDate,line)=rs("incDate")
		holdArr(colIncAcc,line)=rs("incAcc")
		holdArr(colA2,line)=rs("A2")
		holdArr(colFriendly,line)=rs("friendly")
		holdArr(colName,line)=rs("Name")
		holdArr(colVisible,line)=False
		holdArr(colLevel,line)=level
		If holdArr(colPersonType,line)="O" Then
			currParent=line
			'prevent cross-holding loops - if we already have this holder then make it visible if it isn't already and don't go higher
			found=False
			For z=0 to Ubound(holdArr,2)-1
				If holdArr(colPersonID,z)=holdArr(colPersonID,line) Then
					found=True
					holdArr(colVisible,line)=True
					holdArr(colVisible,z)=True
					Exit For
				End If
			Next		
			If Not found Then
				If holdArr(colOrgType,line)=22 Or holdArr(colOrgType,line)=21 Then 'listed or public company. Stop there
					holdArr(colVisible,line)=True
				Else
					rs2.Open "SELECT ID1 FROM issue WHERE typeID Not In(1,2,40,41,46) AND issuer="&holdArr(colPersonID,line),con
					'if no qualifying issues then this line must be visible
					If rs2.EOF Then holdArr(colVisible,line)=True
					Do until rs2.EOF
						Call holdersGen(con,rs2("ID1"),currParent,level+1,ob,line,holdArr)
						rs2.MoveNext
						'if there is more than one issue, then make parent visible
						If Not rs2.EOF Then holdArr(colVisible,currParent)=True
					Loop
					rs2.Close
				End If
			End If
		Else
			'always show individuals
			holdArr(colVisible,line)=True
		End if
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
	Set rs2=Nothing
End Sub

Sub sortVisHold(startLine,level,sortCol,direction,holdArr)
	'sort the visible holders after indirect holdings are aggregated
	'direction 0=up, 1=down
	Dim x,y,z,rankArr(),items,tmpVal,tmpLine,changed,tempArr(),endLine,bldLine,colCnt,rowCnt
	Const colVisible=11,colLevel=12
	rowCnt=Ubound(holdArr,2)
	colCnt=Ubound(holdArr,1)
	items=-1
	'build an index array of items and the line number they start on. an item is a visible holder at this level
	For x=startLine to rowCnt
		If holdArr(colVisible,x) Then
			If holdArr(colLevel,x)<level Then Exit For 'only sort this level or below
			If holdArr(colLevel,x)=level Then	
				items=items+1
				Redim Preserve rankArr(1,items)
				rankArr(0,items)=holdArr(sortCol,x)
				rankArr(1,items)=x
			Else
				'sort next level down, recursive call
				Call sortVisHold(x,holdArr(colLevel,x),sortCol,direction,holdArr)
			End If
		End If
	Next
	endline=x-1
	Do
		'bubble sort the rankings until no change
		changed=False
		For x=0 to items-1
			If (rankArr(0,x)<rankArr(0,x+1) And direction=1) Or (rankArr(0,x)>rankArr(0,x+1) And direction=0) Then
				changed=True
				tmpVal=rankArr(0,x)
				tmpLine=rankArr(1,x)
				rankArr(0,x)=rankArr(0,x+1)
				rankArr(1,x)=rankArr(1,x+1)
				rankArr(0,x+1)=tmpVal
				rankArr(1,x+1)=tmpLine
			End if
		Next
	Loop until changed=False
	'now rebuild the section in a temporary array
	Redim tempArr(colCnt,endline-startLine)
	bldLine=0
	For x=0 to items
		'get the line number of the start of the section
		y=rankArr(1,x)
		'copy the row and all its indents
		Do
			'copy one row
			For z=0 to colCnt
				tempArr(z,bldLine)=holdArr(z,y)
			Next
			y=y+1
			bldLine=bldLine+1
			If y>rowCnt Then Exit Do 'end of table
		Loop until holdArr(colLevel,y)<=level And holdarr(colVisible,y)=True
	Next
	'now copy it back
	For x=startLine to endLine
		For y=0 to colCnt
			holdArr(y,x)=tempArr(y,x-startline)
		Next
	Next
End Sub

Sub drawTable(condense,holdarr,sort)
	'if condense then we don't show intermediate wholly-owned companies with only 1 class of share
	Dim stake,line,level,x,y,z,found,rowCnt,sortCol,direction,holder,fndLevel,newLevel
	Const colStake=0,colPersonID=1,colTypeShort=2,colPersonType=3,colOrgType=4,colName=5,colParent=6,colAtDate=7,colIncAcc=8,colA2=9,colFriendly=10,_
		colVisible=11,colLevel=12,colIssue=13,colTypeLong=14,colIncDate=15
	rowCnt=0
	If condense Then
		'aggregate direct and indirect holdings of a holder in an issue, eliminate intermediate 100% held cos
		'first attribute the indirect holdings
		For x=1 to Ubound(holdArr,2)
			If holdArr(colVisible,x) Then
				y=x
				Do until holdArr(colVisible,holdArr(colParent,y))
					y=holdArr(colParent,y)
				Loop
				holdArr(colStake,x)=holdArr(colStake,y)
				newLevel=holdArr(colLevel,holdArr(colParent,y))+1
				holdArr(colLevel,x)=newLevel
				holdArr(colIssue,x)=holdArr(colIssue,y)
				holdArr(colTypeShort,x)=holdArr(colTypeShort,y)
				holdArr(colParent,x)=holdArr(colParent,y)
			End If
		Next
		'now aggregate them
		For x=1 to Ubound(holdArr,2)
			For y=1 to x-1
				If holdArr(colVisible,y) And holdArr(colPersonID,y)=holdArr(colPersonID,x) and holdArr(colIssue,y)=holdArr(colIssue,x) Then
					'same holder, same issue
					holdArr(colStake,y)=holdArr(colStake,y)+holdArr(colStake,x)
					holdArr(colVisible,x)=False
				End If
			Next
		Next
		Select case sort
			Case "stakup" sortCol=colStake: direction=0
			Case "stakdn" sortCol=colStake: direction=1
			Case "nameup" sortCol=colName: direction=0
			Case "namedn" sortCol=colName: direction=1
		End Select
		Call sortVisHold(1,0,sortCol,direction,holdArr)
	End If
	'now draw the tree
	found=False
	Redim orgArr(0)
	'prevent self-holdings. The first org is the issuer
	orgArr(0)=CLng(person)
	orgcnt=0
	For x=1 to ubound(holdArr,2)
		level=holdArr(colLevel,x)
		'If Not condense or (holdArr(colVisible,x) And (Not found Or level<=fndLevel)) Then
		If Not condense or holdArr(colVisible,x) Then
			rowCnt=rowCnt+1
			stake=holdArr(colStake,x)
			level=holdArr(colLevel,x)
			If level=0 And Not isNull(stake) Then sumstake=sumstake+stake
			holder=holdArr(colPersonID,x)
			nameStr=holdArr(colName,x)
			'show listed companies in bold
			If holdArr(colOrgType,x)=22 Then nameStr="<b>"&nameStr&"</b>"
			found=False
			For z=0 to Ubound(orgArr)
				If orgArr(z)=holder Then
					found=True
					fndLevel=level
					Exit For
				End If
			Next
			orgcnt=orgcnt+1
			Redim Preserve orgArr(orgcnt)
			orgArr(orgcnt)=holder
			%>
			<div style="float:left;width:40px;"><a name="H<%=rowCnt%>"></a><%=rowCnt%></div>
			<%If Not condense Then%>
				<div style="float:left;min-width:80px;padding-right:5px;text-align:left"><%=spDate(MSdate(holdArr(colAtDate,x)))%></div>
			<%End If%>
			<div style="float:left;text-align:right;width:<%=(60+level*60)%>px;padding-right:5px"><%=pcStr(stake)%></div>
			<%If holdArr(colTypeShort,x)<>"O" and level<>0 Then%>
				<div style="float:left;padding-right:5px;color:green" class="info">
				<%=holdArr(colTypeShort,x)%>:<span><%=holdArr(colTypeLong,x)%></span></div>
			<%End If%>
			<div style="float:left">
				<%If holdArr(colPersonType,x)="O" Then%>
					<a href="orgdata.asp?x=y&p=<%=holder%>"><%=nameStr%></a>
					&nbsp;(<span class="info"><%=holdArr(colA2,x)%><span><%=holdArr(colFriendly,x)%><br/>Incorporated: <%=DateStr(holdArr(colIncDate,x),holdArr(colIncAcc,x))%></span></span>)
				<%Else%>
					<a href="natperson.asp?p=<%=holder%>"><%=nameStr%></a>
				<%End If%>
				<%If found Then%>
					&nbsp;see <a href="#H<%=z%>">line <%=z%></a>
					<%If z=0 Then Response.Write " (self)"%>
				<%End If%>
			</div>
			<div class="clear"></div>
		<%End If
	Next%>
	<div style="float:left;width:40px;border-top:thin black solid;margin-top:5px">Total</div>
	<%If Not condense Then%>
		<div style="float:left;min-width:80px;padding-right:5px;border-top:thin black solid;margin-top:5px">&nbsp;</div>
	<%End If%>
	<div style="text-align:right;float:left;position:relative;width:60px;border-top:thin black solid;margin-top:5px;padding-right:5px"><%=pcStr(sumstake)%></div>
	<br>
<%End Sub

Sub holders(con,rs,qs,person,n)
	'MAIN CODE
	'con is the active db connection, rs is a closed recordset,n is name of query parameter holding sort order for this table,qs is querystring with other params
	Dim holdArr(),line,expand,ob,sort,URL
	expand=Request("x")
	If expand<>"y" And expand<>"c" Then expand="n"
	sort=Request(n)
	URL=Request.ServerVariables("URL")&"?"&qs
	Const colStake=0,colPersonID=1,colTypeShort=2,colPersonType=3,colOrgType=4,colName=5,colParent=6,colAtDate=7,colIncAcc=8,colA2=9,colFriendly=10,_
		colVisible=11,colLevel=12,colIssue=13,colTypeLong=14,colIncDate=15
	'these columns are: 1=the ID of the holder,2=the short name of the issueType,3='O for orgs,P for humans,4=orgType of the holder, if it is an org,_
		'5=name of holder,6=the line number of the issuer of this holding,7=date of holding,8=accuracy of incorporation date,9=2-letter code of domicile,_
		'10=longer name of domicile,11=whether holder is visible in condensed view,12=the indent level of the holding in the tree,_
		'13=the issueID of the holding,14=the long name of the issueType,15=formation date of holder
	rs.Open "SELECT ID1,typeLong,osDate,(SELECT outstanding FROM issuedshares WHERE issueID=ID1 AND atDate=osDate) as os "&_
		"FROM issue i JOIN sectypes On i.typeID=sectypes.typeID LEFT JOIN "&_
		"(SELECT issueID,MAX(atDate) as osDate FROM issuedshares GROUP BY issueID) as t1 ON  i.ID1=t1.issueID "&_
		"WHERE i.typeID Not In(1,2,40,41,46) AND issuer="&person,con
	If Not rs.EOF Then
		%>
		<h3>Holders</h3>
		<p>Note: holders may be incomplete and/or outdated. Listed companies are in bold. Condensed mode omits 100%-owned intermediate companies.</p>
		<%Select Case sort
			case "stakup" ob="StakeComp,Name"
			case "dateup" ob="HoldingDate,Name"
			case "datedn" ob="HoldingDate DESC,Name"
			Case "nameup" ob="Name"
			Case "namedn" ob="Name DESC"
			case Else
				sort="stakdn"
				ob="StakeComp DESC,Name"
		End Select
		Do Until rs.EOF
			Erase holdArr
			Redim holdArr(15,0)
			line=0
			'row zero represents the issue for which we are showing the tree. Direct holdings will be at level 0, so this is at -1.
			holdArr(colVisible,0)=True
			holdArr(colLevel,0)=-1
			'set the personID of the top level to the issuer's, to prevent cross-holding loops
			holdArr(colPersonID,0)=CLng(person) 'force Long datatype, not variant
			%>
			<h4>Issue: <%=rs("typeLong")%></h4>
			<%If Not IsNull(rs("os")) Then%>
				<table class="txtable">
					<tr><td>Outstanding:</td><td class="right"><%=FormatNumber(rs("os"),0)%></td></tr>
					<tr><td>At date:</td><td class="right"><%=MSdate(rs("osDate"))%></td></tr>
				</table><br>
			<%End If
			issue=rs("ID1")
			sumStake=0%>
			<ul class="navlist">
				<%URL=Request.ServerVariables("URL")&"?"&qs&"&amp;"&n&"="&sort
				If expand="n" Then%>
					<li id="livebutton">Direct</li>
				<%Else%>
					<li><a href="<%=URL%>&x=n">Direct</a></li>
				<%End If
				If expand="c" Then%>
					<li id="livebutton">Condensed</li>
				<%Else%>
					<li><a href="<%=URL%>&x=c">Condensed</a></li>
				<%End If
				If expand="y" Then%>
					<li id="livebutton">Expanded</li>
				<%Else%>
					<li><a href="<%=URL%>&x=y">Expanded</a></li>
				<%End If%>	
			</ul>
			<div class="clear"></div>
			<%qs=qs&"&amp;x="&expand
			If expand<>"n" Then
				%>
				<div style="float:left;width:40px;">&nbsp;</div>
				<%If expand="y" Then%>
					<div style="float:left;width:80px;padding-right:5px">Date</div>
				<%End If%>
				<div style="text-align:right;float:left;width:60px;padding-right:5px"><%SLV "Stake","stakdn","stakup","s1",qs%></div>
				<div><%SLV "Holder","nameup","namedn","s1",qs%></div>		
				<p>
				<%Call holdersGen(con,issue,0,0,ob,line,holdArr)
				If line>=0 Then Call drawTable(expand="c",holdArr,sort)%>
				</p>
			<%Else
				rs2.Open "SELECT * FROM (SELECT *,IF(ISNULL(shares),stake,shares/outstanding("&rs("ID1")&",CURDATE())) AS stakeComp"&_
					" FROM webholders3 WHERE issue="&rs("ID1")&") AS t1 WHERE (isNull(shares) And isNull(stake)) OR shares>0 or stake>0 ORDER BY "&ob,con
				If Not rs2.EOF Then%>
					<table class="numtable">
					<tr>
						<th class="left"><%SLV "Holder","nameup","namedn","s1",qs%></th>
						<th>Shares</th>
						<th><%SLV "Stake","stakdn","stakup","s1",qs%></th>
						<th><%SLV "Date","datedn","dateup","s1",qs%></th>
					</tr>
					<%Do Until rs2.EOF
						stake=rs2("StakeComp")
						nameStr=rs2("name")
						If rs2("orgType")=22 Then nameStr="<b>"&nameStr&"</b>"
						If Not IsNull(stake) Then sumStake=sumStake+stake
						%>
						<tr>
							<td class="left">
								<%If rs2("PersonType")="O" Then%>
									<a href='orgdata.asp?p=<%=rs2("PersonID")%>'><%=nameStr%></a>
								<%Else%>
									<a href='natperson.asp?p=<%=rs2("PersonID")%>'><%=nameStr%></a>
								<%End If%>
							</td>
							<td><%=intStr(rs2("shares"))%></td>
							<td><%=pcStr(stake)%></td>
							<td><%=spDate(rs2("HoldingDate"))%></td>
						</tr>
						<%rs2.MoveNext
					Loop%>
					<tr>
						<td class="left">Total</td>
						<td>&nbsp;</td>
						<td><%=pcStr(sumStake)%></td>
						<td>&nbsp;</td>
					</tr>
					</table><br>
				<%End If
				rs2.Close
			End If
			rs.MoveNext
		Loop
	End If
	rs.Close
End Sub%>
