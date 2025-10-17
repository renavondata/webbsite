<%
'DBeditor version
Sub holdersGen(issueID,parentNode,level)
	'put the tree into an array
	'this procedure is iterative. The first (zeroth) row of holdArr represents the target issue
	Dim rs,rs2,currParent,z,found,typeShort,typeLong,stakeComp,shares
	Set rs=Server.CreateObject("ADODB.Recordset")
	Set rs2=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT typeShort,typeLong FROM issue i JOIN secTypes s on i.typeID=s.typeID WHERE ID1="&issueID,conRole
	typeShort=rs("typeShort")
	typeLong=rs("typeLong")
	rs.Close
	Set rs=conRole.Execute("Call holdersdate("&issueID&",'"&MsDate(targDate)&"')")
	Do Until rs.EOF
		line=line+1
		Redim Preserve holdArr(columns,line)
		stakeComp=rs("stakeComp")
		shares=rs("shares")
		If shares=0 Then stakeComp=0 'overrides a null stakeComp, for trusts
		holdArr(colShares,line)=shares
		holdArr(colStakeComp,line)=stakeComp
		holdArr(colParent,line)=parentNode
		holdArr(colIssue,line)=issueID
		holdArr(colTypeShort,line)=typeShort
		holdArr(colTypeLong,line)=typeLong
		holdArr(colPersonID,line)=rs("holderID")
		holdArr(colPersonType,line)=rs("ht")
		holdArr(colHKlistco,line)=rs("HKlistco")
		holdArr(colAtDate,line)=rs("atDate")
		holdArr(colHeldAs,line)=rs("heldAs")
		holdArr(colStake,line)=rs("stake")
		holdArr(colName,line)=rs("holderName")&" "&rs("cName")
		holdArr(colLevel,line)=level
		holdArr(colRecID,line)=rs("recID")
		holdArr(colEdit,line)=rankingRs(rs,uRank)
		If holdArr(colPersonType,line)="O" Then
			currParent=line
			'prevent cross-holding loops - if we already have this holder then make it visible if it isn't already and don't go higher
			found=False
			For z=0 to Ubound(holdArr,2)-1
				If holdArr(colPersonID,z)=holdArr(colPersonID,line) Then
					found=True
					Exit For
				End If
			Next		
			If not Found Then
				If Not holdArr(colHKlistco,line) Then
					rs2.Open "SELECT ID1 FROM issue WHERE typeID Not In(1,2,40,41,46) And issuer="&holdArr(colPersonID,line),conRole
					Do until rs2.EOF
						Call holdersGen(rs2("ID1"),currParent,level+1)
						rs2.MoveNext
					Loop
					rs2.Close
				End If
			End If
		End if
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
	Set rs2=Nothing
End Sub

Sub sortVisHold(startLine,level,sortCol,direction)
	'sort the visible holders after indirect holdings are aggregated
	'direction 0=up, 1=down
	Dim x,y,z,rankArr(),items,tmpStake,tmpLine,changed,tempArr(),endline,bldLine,colCnt
	colCnt=Ubound(holdArr,1)
	items=-1
	'build an index array of items and the line number they start on
	For x=startLine to Ubound(holdArr,2)
		If holdArr(colLevel,x)<level Then Exit For 'only sort this level or below
		If holdArr(colLevel,x)=level Then	
			items=items+1
			Redim Preserve rankArr(1,items)
			rankArr(0,items)=holdArr(sortCol,x)
			rankArr(1,items)=x
		Else
			'sort next level down, recursive call
			Call sortVisHold(x,holdArr(colLevel,x),sortCol,direction)
		End If
	Next
	endline=x
	Do
		'bubble sort the rankings until no change
		changed=False
		For x=0 to items-1
			If (rankArr(0,x)<rankArr(0,x+1) And direction=1) Or (rankArr(0,x)>rankArr(0,x+1) And direction=0) Then
				changed=True
				tmpStake=rankArr(0,x)
				tmpLine=rankArr(1,x)
				rankArr(0,x)=rankArr(0,x+1)
				rankArr(1,x)=rankArr(1,x+1)
				rankArr(0,x+1)=tmpStake
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
		Do
			'copy the row
			For z=0 to colCnt
				tempArr(z,bldLine)=holdArr(z,y)
			Next
			y=y+1
			bldLine=bldLine+1
			If y=endline Then Exit Do
		Loop until holdArr(colLevel,y)=level
	Next
	'now copy it back
	For x=startLine to endLine-1
		For y=0 to colCnt
			holdArr(y,x)=tempArr(y,x-startline)
		Next
	Next
End Sub

Function pcStr2(s)
	If isNull(s) Then
		pcStr2="_______"
	Else
		pcStr2=FormatPercent(s,2)
	End If
End Function

Sub drawTable()
	Dim stakeComp,line,level,x,y,z,found,rowCnt,sharesStr,sortCol,direction,holder,atDate,fndLevel
	rowCnt=0
	orgCnt=0
	found=False%>
	<div style="float:left;width:40px;">&nbsp;</div>
	<div style="float:left;width:80px;"><b>Date</b></div>
	<div style="float:left;width:60px;text-align:center"><b>Update</b></div>
	<div style="float:left;width:40px;text-align:center;"><b>Edit</b></div>
	<div style="float:left;width:60px;text-align:center"><b>Delete</b></div>
	<div style="text-align:right;float:left;width:95px;padding-right:5px"><b>Shares</b></div>
	<div style="text-align:right;float:left;width:55px;padding-right:5px"><b>Stake</b></div>
	<div><b>Holder</b></div>
	<form method="post" action="holding.asp">
		<input type="hidden" name="targIssue" value="<%=issueID%>">
		<input type="hidden" name="targDate" value="<%=targDate%>">	
		<%
		For x=0 to ubound(holdArr,2)
			level=holdArr(colLevel,x)
			If Not found Or level<=fndLevel Then
				rowCnt=rowCnt+1
				shares=holdArr(colShares,x)
				stakeComp=holdArr(colStakeComp,x)
				level=holdArr(colLevel,x)
				If level=0 And Not isNull(shares) Then sumShares=sumShares+shares
				If level=0 And Not isNull(stakeComp) Then sumstake=sumstake+stakeComp
				holder=holdArr(colPersonID,x)
				nameStr=holdArr(colName,x)
				If holdArr(colHKlistco,x) Then nameStr="<b>"&nameStr&"</b>"
				found=False
				If orgcnt>0 Then
					For z=0 to Ubound(orgArr)
						If orgArr(z)=holder Then
							found=True
							fndLevel=level
							Exit For
						End If
					Next
				End if
				orgcnt=orgcnt+1
				Redim Preserve orgArr(orgcnt)
				orgArr(orgcnt)=holder
				atDate=holdArr(colAtDate,x)
				%>
				<div style="float:left;width:40px"><a name="H<%=rowCnt%>"></a><%=rowCnt%></div>
				<div style="float:left;min-width:80px;text-align:left"><%=spDate(atDate)%></div>
				<div style="float:left;width:60px;text-align:center">
					<%If isNull(atDate) or atDate<cDate(targDate) Then%>
						<input type="checkbox" name="updRec" value="<%=holdArr(colRecID,x)%>">
					<%Else%>
						&nbsp;
					<%End If%>
				</div>
				<div style="float:left;width:40px;text-align:center">
					<a href="holding.asp?r=<%=holdArr(colRecID,x)%>&targDate=<%=targDate%>">Edit</a>
				</div>
				<div style="float:left;width:60px;text-align:center">
					<%If holdArr(colEdit,x) Then%>
						<input type="checkbox" name="delRec" value="<%=holdArr(colRecID,x)%>">
					<%Else%>
						&nbsp;
					<%End If%>
				</div>		
				<div style="text-align:right;float:left;width:115px;padding-right:5px">
					<%If level=0 Then Response.Write intStr(shares) Else Response.Write "&nbsp;"%>				
				</div>
				<div style="float:left;width:<%=60*level+55%>px;text-align:right;padding-right:5px"><%=pcStr2(stakeComp)%></div>
				<%If level>0 And holdArr(colTypeShort,x)<>"O" Then%>
					<div style="float:left;padding-right:5px;color:green" class="info">
					<%=holdArr(colTypeShort,x)%><span><%=holdArr(colTypeLong,x)%></span></div>
				<%End If%>
				<div style="float:left">
					<%If holdArr(colPersonType,x)="O" Then%>
						<a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?x=y&amp;p=<%=holder%>"><%=nameStr%></a>
					<%Else%>
						<a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=holder%>"><%=nameStr%></a>
					<%End If%>
					<%If found Then%>
						&nbsp;see <a href="#H<%=z%>">line <%=z%></a>
						<%If z=0 Then Response.Write " (self)"%>			
					<%End If%>
				</div>
				<div style="clear:both"></div>
			<%End If
		Next%>
		<div style="float:left;width:280px;border-top:thin black solid;margin-top:5px">Total</div>
		<div style="text-align:right;float:left;position:relative;width:115px;padding-right:5px;border-top:thin black solid;margin-top:5px"><%=FormatNumber(sumShares,0)%></div>
		<div style="text-align:right;float:left;position:relative;width:55px;padding-right:5px;border-top:thin black solid;margin-top:5px"><%=pcStr(sumstake)%></div>
		<div style="clear:both"></div>
		<br>
		<input type="submit" name="submitBtn" style="color:red" value="Update records">
		<input type="submit" name="submitBtn" style="color:blue" value="Update and zero">
		<input type="submit" name="submitBtn" style="color:red" value="Delete records">
	</form>
<%End Sub

'MAIN CODE
Dim holdArr(),line,nameStr
Dim colStakeComp,colPersonID,colPersonType,colHKlistco,colName,colParent,colTypeShort,colShares,colStake,colAtDate,colHeldAs,colRecID,colLevel,colIssue,colTypeLong,colEdit
Const columns=15
colStakeComp=0
colPersonID=1
colTypeShort=2
colPersonType=3
colHKlistco=4
colName=5
colParent=6
colAtDate=7 
colHeldAs=8 
colShares=9
colStake=10
colRecID=11 'reused colVisible from public site
colLevel=12
colIssue=13
colTypeLong=14
colEdit=15 'whether the user can edit this record

rs.Open "SELECT ID1,typeLong FROM issue i JOIN sectypes s On i.typeID=s.typeID "&_
	"WHERE i.typeID Not In(1,2,40,41,46) AND issuer="&issuerID,conRole
If Not rs.EOF then
	Do Until rs.EOF
		Erase holdArr
		Redim holdArr(columns,0)
		line=-1%>
		<h4>Issue: <%=rs("typeLong")%></h4>
		<%issueID=rs("ID1")
		sumShares=0
		sumStake=0
		Redim orgArr(0)
		orgArr(0)=CLng(issuerID)
		orgcnt=0%>
		<p>
		<%Call holdersGen(issueID,0,0)
		If line>=0 Then%>
			<%Call drawTable
		Else%>
			None found.
		<%End if%>
		</p>
		<%rs.MoveNext
	Loop
End If
rs.Close
%>
