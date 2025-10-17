<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<script type="text/javascript">
	function makeTot() {
		var s = Number(document.getElementById('fee').value) +
			Number(document.getElementById('sal').value) +
			Number(document.getElementById('bon').value) +
			Number(document.getElementById('ret').value) +
			Number(document.getElementById('sha').value);
		s=Math.round(s*1000)/1000;
		document.getElementById('showTot').innerText = s;
	}
	function makeSB() {
		document.getElementById('sal').value = Number(document.getElementById('sal1').value) 
			+ Number(document.getElementById('sal2').value)
			+ Number(document.getElementById('sal3').value);
		makeTot();
	}
	function setStep(x){
		if(x==6){
			var step=0.001;
			var mini=-8388.608;
		}else if (x==3){
			var step=1;
			var mini=-8388608;
		}else if (x==4){
			var step=.01;
			var mini=-838860.80;
		}else {
			var step=1;
			var mini=-8388608000;
		};
		"fee sal bon ret sha tot sal1 sal2 sal3".split(" ").forEach(function(f){
			document.getElementById(f).setAttribute("step",step);
			document.getElementById(f).setAttribute("min",mini);
		})
	}
	function goToFee(){
		var e=document.getElementById('fee');
		if (e != null){
			document.getElementById('fee').focus();
			document.getElementById('fee').select();
		}
	}
</script>
<style>input.num {width:6em;text-align:right}</style>
<%Function mult(ByVal v,ByVal m)
	'convert inputs to thousands integer
	'm=0 for units, 3 for thousands, 4 for 10k, 6 for millions (default 3)
	mult=Round(v*10^(m-3),0)
End Function
Function div(ByVal v,ByVal m)
	'convert retrieved values from thousands to preferred input
	If isNumeric(v) Then div=v*10^(3-m) Else div=v
End Function

Dim conRole,rs,userID,uRank,sc,firm,firmName,docID,curr,d,pplID,pRank,rankNames,sel,pName,hint,hinterr,hintconf,title,submit,fee,lastRank,recList,noDel,_
	sal,bon,ret,sha,tot,a,a2,b,c,x,y,s,currName,blnList(1),paypage,URL,sort,ob,rank,locked,revcnt,noPage,con,docURL,sum,payID,gsum,_
	currs,tabCurr,lastCurr,canEdit,multiCurr,recCnt,m,step,mini,unpub,errID,rankArray,oUserID,osErr,submitted,oldName,places,off(1),offList,slaveOn
rankArray=Array("Supervisors","Directors","Senior Management")
unpub=True 'user can unpublish the pay-year if not outranked by any other user on the approval of the pay-year. We check each row to negate this.
Const roleID=1 'pay
Call prepRole(roleID,conRole,rs,userID,uRank)
'TESTING
'END TESTING
Call openEnigma(con)
slaveOn=True
rs.Open "SELECT SERVICE_STATE FROM performance_schema.replication_connection_status",con
If Not rs.EOF Then slaveOn=CBool(rs("SERVICE_STATE")="ON")
rs.Close

m=getInt("m","") 'multiplier for inputs
If m="" Then m=Session("paymult")
If m="" Then m=3
Select Case m
	'decimals for formatting output
	Case 6
		places=3
		mini=-8388.608
		step=0.001
	Case 4
		places=1
		mini=-838860.8
		step=0.01
	Case 3
		places=0
		mini=-8388608
		step=1
	Case Else
		places=0
		mini=-8388608000
		step=1
End Select
Session("paymult")=m
currs=con.Execute("SELECT ID,currency FROM currencies ORDER BY currency").GetRows
sc=getLng("sc",0)
If sc>0 Then
	firm=SCorg(sc)
	sc=Right("000"&sc,4)
Else
	firm=getLng("firm",0)
End If

submit=Request("submitPay")
payID=getLng("payID",0)
docID=getLng("docID",0)
errID=getInt("errID",0)
offList=getInt("offList",0)
If submit="Delete selected" Then
	recList=Request("delRec")
	If recList<>"" Then
		If uRank<255 Then noDel=conRole.Execute("SELECT EXISTS(SELECT 1 FROM pay WHERE ID IN("&recList&") AND userID<>"&userID&_
			" AND maxRank('pay',userID)>="&uRank&")").Fields(0)
		If noDel Then
			hintconf="You didn't create at least 1 of these records and don't outrank the user who did. Deletion denied. "
		Else
			conRole.Execute "DELETE FROM pay WHERE ID IN("&recList&")"
			hintconf="Selected records deleted. "
		End If
	Else
		hintconf="No records were selected to delete. "
	End If
End If

If docID>0 Then
	rs.Open "SELECT d.orgID,d.recordDate,d.paypage,d.pay,r.URL FROM documents d LEFT JOIN repfilings r ON d.repID=r.ID "&_
		"WHERE docTypeID=0 AND d.ID="&docID,con
	If rs.EOF Then
		hint=hint&"Record not found. "
		docID=0
	Else
		locked=rs("pay")
		firm=rs("orgID")
		d=MSdate(rs("recordDate"))
		paypage=getLng("paypage",0)
		docURL=rs("URL")
		submitted=CBool(con.Execute("SELECT EXISTS(SELECT 1 FROM payreview WHERE docID="&docID&" AND userID="&userID&")").Fields(0))		
		If paypage>0 Then
			'save the PDF page on which the pay is found
			conRole.Execute "UPDATE documents SET paypage="&paypage&" WHERE ID="&docID
		Else
			paypage=rs("paypage")
			'error report on pay-table, or trying to clear it
			If submit="Report error" Then
				conRole.Execute "REPLACE INTO payerrors(docID,errID,userID)"&valsql(Array(docID,errID,userID))
				hinterr="Thanks for the pay-year error report. "
			ElseIf submit="Clear error" Then
				oUserID=getLng("oUserID",0)
				If locked And uRank<255 And userID<>oUserID And CLng(con.Execute("SELECT maxRank('pay',"&oUserID&")").Fields(0))>=uRank Then
					hintErr="You don't outrank the editor who submitted this error report. "
				Else
					'either the pay-year is unlocked or the user reported the error or outranks person who did. Clear the error
					'use native query to get server time rather than client time
					conRole.Execute "UPDATE payerrors SET resolvedBy="&userID&",resolved=NOW() WHERE docID="&docID&" AND errID="&errID&" AND userID="&oUserID
					hinterr="Thanks for resolving the error report. "
				End If
			End If
		End If
	End If
	rs.Close
ElseIf payID>0 Then
	'docID was not specified, so we are fetching a pay record to edit,update or delete. Pull from master in case out of sync, and fetch doc details in same query
	rs.Open "SELECT userID,maxRank('pay',userID)uRank,d.ID docID,d.orgID,d.recordDate,d.paypage,d.pay,r.URL,currID,fees,salary,bonus,retire,share,total,"&_
		"pplID,pRank,currID FROM pay p JOIN documents d ON p.orgID=d.orgID AND p.d=d.RecordDate"&_
		" LEFT JOIN repfilings r ON d.repID=r.ID WHERE docTypeID=0 AND p.ID="&payID,conRole
	If rs.EOF Then
		hint=hint&"Record not found. "
		payID=0
	Else
		'fetch firm and doc properties
		firm=rs("orgID")
		docID=rs("docID")
		d=MSdate(rs("recordDate"))
		docURL=rs("URL")
		paypage=rs("paypage")
		locked=rs("pay") 'pay-year already published		
		canEdit=rankingRs(rs,uRank)
		curr=rs("currID") 'we need this for new records even if deleting this one
		submitted=CBool(con.Execute("SELECT EXISTS(SELECT 1 FROM payreview WHERE docID="&docID&" AND userID="&userID&")").Fields(0))		
		If submit="Report error" Then
			conRole.Execute "REPLACE INTO paylineerrors(payID,errID,userID)"&valsql(Array(payID,errID,userID))
			hinterr="Thanks for the pay-line error report. "
		ElseIf submit="Clear error" Then
			oUserID=getLng("oUserID",0)
			If locked And uRank<255 And userID<>oUserID And CLng(con.Execute("SELECT maxRank('pay',"&oUserID&")").Fields(0))>=uRank Then
				hintErr="You don't outrank the editor who submitted this error report. "
			Else
				'either the pay-year is unlocked or the user reported the error or outranks person who did. Clear the error
				'use server time, not client time
				conRole.Execute "UPDATE paylineerrors SET resolvedBy="&userID&",resolved=NOW() WHERE payID="&payID&" AND errID="&errID&" AND userID="&oUserID
				hinterr="Thanks for resolving the pay-line error report. "
			End If
		ElseIf Not canEdit Then
			hint=hint&"You can't change this record, because you didn't create it and don't outrank the editor who did. "
		ElseIf canEdit And submit<>"Update" And submit<>"Delete" Then
			'fetch pay record for edit
			pplID=rs("pplID")
			pRank=rs("pRank")
			fee=div(rs("fees"),m)
			sal=div(rs("salary"),m)
			bon=div(rs("bonus"),m)
			ret=div(rs("retire"),m)
			sha=div(rs("share"),m)
			tot=div(rs("total"),m)
		End If
	End If
	rs.Close
End If
If sc=0 And firm>0 Then sc=con.Execute("SELECT ordCodeThen("&firm&",'"&IIF(d>"",d,MSdate(Date))&"')").Fields(0)
If docID>0 Then
	noPage=(isNull(paypage))
	If noPage Then hint=hint&"Please enter the relevant page number of the PDF. "
End If
'process submissions
If Not locked Then
	If ((submit="Update" And canEdit) or (submit="Add record" And docID>0)) Then
		'fetch inputs, replace zero with null
		curr=getInt("curr",0)
		pplID=Request("pplID"&offList)
		If pplID<>"" Then
			'split the submitted values into the personID and the pRank (0,1,2=Supervisor,Director,Sen mgr)
			pRank=Split(pplID,",")(1)
			pplID=Split(pplID,",")(0)
		End If
		fee=mult(getDbl("fee",0),m)
		sal=mult(getDbl("sal",0),m)
		bon=mult(getDbl("bon",0),m)
		ret=mult(getDbl("ret",0),m)
		sha=mult(getDbl("sha",0),m)
		tot=fee+sal+bon+ret+sha
		If fee=0 Then fee=""
		If sal=0 Then sal=""
		If bon=0 Then bon=""
		If ret=0 Then ret=""
		If sha=0 Then sha=""
		If tot=0 Then tot=""
		If submit="Add record" Then
			If offList=0 or (offList=1 AND tot<>"") Then
				conRole.Execute "INSERT IGNORE INTO pay(orgID,pplID,pRank,d,currID,fees,salary,bonus,retire,share,total,userID)"&_
					valsql(Array(firm,pplID,pRank,d,curr,fee,sal,bon,ret,sha,tot,userID))
				hint=hint&"Record added. "
			Else
				hint=hint&"Do not enter zero pay for an ex-officer. "
			End If
		Else
			If offList=0 or (offList=1 AND tot<>"") Then
				conRole.Execute "UPDATE pay"&setsql("currID,fees,salary,bonus,retire,share,total,userID",Array(curr,fee,sal,bon,ret,sha,tot,userID))&"ID="&payID
				hint=hint&"Record updated. "
				payID=0
			Else
				hint=hint&"Do not set the pay for an ex-officer to zero. Delete the record instead. "
			End If
		End If
		pplID=0
		fee=div(fee,m)
		sal=""
		bon=""
		ret=""
		sha=""
		tot=fee
	ElseIf (submit="Delete all" or submit="CONFIRM DELETE ALL" or submit="Correct currency" or submit="Divide by 1000" or submit="CONFIRM DIVIDE BY 1000") And docID>0 Then
		'Bulk changes. We obtained firm and date d from the docID above
		If uRank<255 Then noDel=conRole.Execute("SELECT EXISTS(SELECT 1 FROM pay WHERE orgID="&firm&" AND d='"&d&_
			"' AND userID<>"&userID&" AND maxRank('pay',userID)>="&uRank&")").Fields(0)
		If noDel Then
			hint=hint&"You didn't create at least 1 of the records and don't outrank the user who did. You cannot make this change. "
		ElseIf submit="Delete all" Then
			hintconf="Are you sure you want to delete all records for this company-year?"
		ElseIf submit="CONFIRM DELETE ALL" Then
			conRole.Execute "DELETE FROM pay WHERE d='"&d&"' AND orgID="&firm
			hintconf="Deleted all records for this company-year. "
		ElseIf submit="Correct currency" Then
			curr=getInt("curr",0)
			conRole.Execute "UPDATE pay SET currID="&curr&" WHERE d='"&d&"' AND orgID="&firm
			hintconf="Changed currency for all records for this company-year. "
		ElseIf submit="Divide by 1000" Then
			hintconf="Are you sure? Only do this if the editor wrongly used the thousands multiplier to enter units. "
		ElseIf submit="CONFIRM DIVIDE BY 1000" Then
			s=""
			For each x in Split("fees salary bonus retire share total")
				s=s&","&x&"=IF(ROUND("&x&"/1000,0)=0,NULL,ROUND("&x&"/1000,0))"
			Next
			conRole.Execute "UPDATE pay SET "&Mid(s,2)&" WHERE d='"&d&"' AND orgID="&firm
			hintconf="Divided all records for this company-year by 1000. "
		End If
	ElseIf submit="Delete" And payID>0 And canEdit Then
		conRole.Execute "DELETE FROM pay WHERE ID="&payID
		hint=hint&"Record deleted. "
		payID=0
	ElseIf submit="Submit for review" And docID>0 And d>"" Then
		submitted=True
		'how many editors already submitted?
		revcnt=CLng(conRole.Execute("SELECT COUNT(*) FROM payreview WHERE docID="&docID&" AND userID<>"&userID).Fields(0))
		'publish the record
		If revCnt<1 And Not Session("master") Then
			hint=hint&"This pay-year will be published automatically if another editor agrees with it. "
		Else
			conRole.Execute "UPDATE documents SET pay=True WHERE ID="&docID
			locked=True
			If Session("master") Then hint=hint&"You are the Master. The pay-year has been published. " Else hint=hint&_
				"As 2 editors agree, the pay-year has been published. "
		End If
		If revCnt<2 Or CBool(conRole.Execute("SELECT EXISTS(SELECT 1 FROM pay WHERE orgID="&firm&" AND d='"&d&"' AND userID="&userID&_
			" AND modified>(SELECT MAX(submitted) FROM payreview WHERE docID="&docID&"))").Fields(0)) Then
			'either this is the second editor or the editor made changes since last submission, so give credit for this submission
			conRole.Execute "REPLACE INTO payreview(docID,userID)"&valsql(Array(docID,userID))
			hint=hint&"Thank you, "&Session("username")&", for helping to build the pay database. "
		End If
	ElseIf submit="Revoke my submission" And docID>0 Then
		conRole.Execute "DELETE FROM payreview WHERE docID="&docID&" AND userID="&userID
		submitted=False
		hint=hint&"You have revoked your submission. Please now correct the records or if you lack sufficient ranking then submit error reports. "
	End If
ElseIf submit="Unpublish" And docID>0 Then
	If uRank<255 Then
		If cBool(con.Execute("SELECT EXISTS(SELECT 1 FROM payreview WHERE docID="&docID&" AND maxRank('pay',userID)>"&uRank&")").Fields(0)) Then
			hint=hint&"You cannot unpublish because you are outranked by 1 or more editors who approved this submission. "
			unPub=False
		End If
	End If
	If unPub Then
		conRole.Execute "DELETE FROM payreview WHERE docID="&docID&" AND userID="&userID
		submitted=False
		conRole.Execute "UPDATE documents SET pay=False WHERE ID="&docID
		hint=hint&"You have revoked publication, now please fix the records if you have sufficient ranking, then republish. "
		locked=False
	End If
End If
If docID>0 Then
	'are there outstanding error reports?	
	s="SELECT (SELECT EXISTS(SELECT * FROM payerrors WHERE isNull(resolvedBy) AND docID="&docID&")) OR "&_
		"(SELECT EXISTS (SELECT 1 FROM paylineerrors e JOIN pay p ON e.payID=p.ID WHERE orgID="&firm&" AND d='"&d&"' AND isNull(resolved)))"
	If submit="Report error" or submit="Clear error" Then osErr=CBool(conRole.Execute(s).Fields(0)) Else osErr=CBool(con.Execute(s).Fields(0))
	If osErr Then hint=hint&"There are outstanding error reports. Please resolve those before submitting. "
End If
If submitted And Not locked Then hint=hint&"If you want to make changes then revoke your submission. "
sort=Request("sort")
Select case sort
	Case "fee" ob="fees DESC,dirname"
	Case "sal" ob="salary DESC,dirname"
	Case "bon" ob="bonus DESC,dirname"
	Case "ret" ob="retire DESC,dirname"
	Case "sha" ob="share DESC,dirname"
	Case "tot" ob="total DESC,dirname"
	Case "pos" ob="posshort,dirname"
	Case Else
		sort="nam":ob="status,dirName"
End Select
URL=Request.ServerVariables("URL")&"?docID="&docID
If firm>0 Then firmName=fNameOrg(firm)
If firm>0 And d>"" Then
	oldName=con.Execute("SELECT IFNULL((SELECT fnameOrg(oldName,oldcName) FROM namechanges WHERE personID="&firm&" AND dateChanged>"&_
		"DATE_ADD('"&d&"',INTERVAL 3 MONTH) ORDER BY dateChanged LIMIT 1),'')").Fields(0)
End If
If pplID>0 Then pName=fnamePpl(pplID)
title="Edit pay records for officers of a firm"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body onload="goToFee()">
<!--#include file="cotop.inc"-->
<%If firm>0 Then%>
	<h2><%=firmName%></h2>
	<%Call orgBar(firm,15)
End If%>
<%If pplID>0 Then%>
	<h2><%=pName%></h2>
	<%Call pplBar(pplID,0)%>
<%End If%>
<%If firm=0 And pplID=0 Then%>
	<h2><%=title%></h2>
<%End If%>
<%Call payBar(1)
x=CLng(con.Execute("SELECT count(DISTINCT(eDocID)) FROM("&_
	"SELECT DISTINCT d.ID eDocID FROM payerrors e JOIN (payreview r,documents d) "&_
	"ON e.docID=r.docID AND e.docID=d.ID WHERE isNull(resolved) AND r.userID="&userID&_
	" UNION SELECT DISTINCT d.ID eDocID FROM paylineerrors e JOIN (pay p,documents d,payreview r) "&_
	"ON e.payID=p.ID AND p.d=d.RecordDate AND p.orgID=d.orgID AND d.ID=r.docID "&_
	"WHERE d.docTypeID=0 AND isNull(resolved) AND r.userID="&userID&")t "&_
	"WHERE (SELECT MAX(maxRank('pay',userID)) FROM payreview WHERE docID=eDocID)<=maxRank('pay',"&userID&")").Fields(0))
If x>0 Then%>
<p><b>There are currently unresolved error reports on <%=x%> outstanding pay-years which you submitted. Please hit 
<a href="payreview.asp">Pending reports</a>, unpublish them and try to resolve the errors before submitting more data.</b></p>
<%End If%>
<%If Not slaveOn Then%>
	<p style="color:red"><b>This server is currently not receiving updates from the master server, so any changes you submit will not be shown. 
	We will fix this as soon as possible but in the meantime, please stop editing.</b></p>
<%End If%>
<p><form method="post" action="pay.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="<%=IIF(sc>0,sc,"")%>" onchange="this.form.submit()">
	<input type="submit" name="submitPay" value="Go"> or <a href="searchorgs.asp?tv=firm">search firm by name</a>
</form>
</p>
<table class="txtable">
	<%If docID>0 Then%>
		<tr>
			<td><a href="pay.asp?firm=<%=firm%>">Year-end:</a></td>
			<td><%=d%></td>
			<td>Source:</td>
			<td>
				<%If Not isNull(docURL) Then%>
					<a target="_blank" href="https://www.hkexnews.hk/listedco/listconews/<%=docURL%>#page=<%=paypage%>">Annual report</a>
				<%End If%>
			</td>
		</tr>
		<tr>
			<td class="vcenter"><span class="info">PDF page<span>See Rule 3. This is usually NOT the number printed on the page!</span></span></td>
			<td class="center">
				<form method="post" action="pay.asp">
					<input type="hidden" name="sort" value="<%=sort%>">
					<input type="hidden" name="docID" value="<%=docID%>">
					<input type="hidden" name="m" value="<%=m%>">
					<input type="hidden" name="curr" value="<%=curr%>">
					<input type="number" class="num" min="1" max="65535" name="paypage" value="<%=paypage%>" onblur="this.form.submit()">
					<input type="submit" name="submitPay" value="Submit">
				</form>
			</td>
			<td class="vcenter">Input and show:</td>
			<td class="vcenter">
				<form method="post" action="pay.asp">
					<input type="hidden" name="sort" value="<%=sort%>">
					<input type="hidden" name="docID" value="<%=docID%>">
					<input type="hidden" name="curr" value="<%=curr%>">
					 <%=makeSelect("m",m,"0,units,3,thousands,4,10000s,6,millions",True)%>
				</form>
			</td>			
		</tr>
	<%ElseIf firm>0 Then%>
		<tr>
			<td style="vertical-align:middle">Year-end</td>
			<td>
				<%rs.Open "SELECT d.ID,CONCAT(DATE_FORMAT(recordDate,'%Y-%m-%d'),IF(pay,' published',''),"&_
					"IF(NOT pay AND (SELECT EXISTS (SELECT 1 FROM payreview r WHERE r.docID=d.ID)),' review',''))"&_
					" FROM documents d WHERE orgID="&firm&" AND recordDate>='2005-06-30' AND recordDate<='2024-12-31' AND docTypeID=0 ORDER BY recordDate DESC",con
				If Not rs.EOF Then%>
					<form method="post" action="pay.asp">
						<input type="hidden" name="sort" value="<%=sort%>">
						<div class="inputs"><%=arrSelect("docID",docID,rs.GetRows,True)%></div>
						<input type="submit" value="Go">
					</form>
				<%Else%>
					This firm has no annual reports logged.
				<%End If
				rs.Close%>
			</td>
		</tr>
	<%End If%>
</table>
<%If oldName>"" Then%>
	<p>Old organisation name: <%=oldName%></p>
<%End If%>
<%If firm>0 And d>"" Then
	rs.open "Call payLines3("&firm&",'"&d&"','"&sort&"')",conRole
	If Not rs.EOF Then
		noDel=False
		a=rs.GetRows
		Redim recList(1,Ubound(a,2)) 'to store list of pay records for error reporting
		tabCurr=a(13,0)
		lastCurr=-1
		rank=a(4,0)
		lastRank=-1%>
		<form method="post" action="pay.asp">
			<input type="hidden" name="sort" value="<%=sort%>">
			<input type="hidden" name="docID" value="<%=docID%>">
			<h3>Pay records</h3>
			<table class="numtable yscroll">
				<tr>
					<th></th>
					<th class="left"><%SL "Name","nam","nam"%></th>
					<th class="left"><%SL "Last<br>position","pos","pos"%></th>
					<th><%SL "Fees","fee","fee"%></th>
					<th><%SL "Salary &amp;<br>benefits","sal","sal"%></th>
					<th><%SL "Bonus","bon","bon"%></th>
					<th><%SL "Retire","ret","ret"%></th>
					<th><%SL "Share-<br>based","sha","sha"%></th>
					<th><%SL "Total","tot","tot"%></th>
					<th>User</th>
					<%If Not locked And Not submitted Then%>
						<th></th>
						<th>Delete</th>
					<%End If%>
				</tr>
				<%For x=0 to Ubound(a,2)
					recList(0,x)=a(15,x)
					recList(1,x)=a(5,x)
					If tabCurr<>lastCurr Then
						'rarely (e.g. China Mobile 2023) we have 2 different reporting currencies
						Redim sum(5)
						Redim gsum(5) 'set currency totals to zero
						lastRank=-1 'trigger rank title%>
						<tr>
							<td class="left" colspan="12"><h4><%=a(14,x)%><%=Mid(FormatNumber(10^m,0),2)%></h4></td>
						</tr>
					<%End If
					If rank<>lastRank Then
						Redim sum(5) 'set totals to zero%>
						<tr>
							<td></td>
							<td class="left" colspan="11"><h4><%=rankArray(rank)%></h4></td>
						</tr>
					<%End If%>
					<tr>
						<td><%=x+1%></td>
						<td class="left"><%=a(5,x)%></td>
						<td class="left"><%=a(6,x)%></td>
						<%For y=7 To 12
							If Not isNull(a(y,x)) Then
								sum(y-7)=sum(y-7)+CLng(a(y,x))%>
								<td><%=FormatNumber(div(a(y,x),m),places)%></td>
							<%Else%>
								<td></td>
							<%End If%>
						<%Next%>
						<td><%=a(0,x)%></td>
						<%If Not locked And Not submitted Then
							If ranking(uRank,a(1,x),a(2,x)) Then%>	
								<td><a href="pay.asp?sort=<%=sort%>&amp;payID=<%=a(15,x)%>">Edit</a></td>
								<td class="center"><input type="checkbox" name="delRec" value="<%=a(15,x)%>"></td>
							<%Else
								noDel=True 'at least one record cannot be changed or deleted%>
								<td colspan="2"></td>
							<%End If
						End If%>
					</tr>
					<%If x<Ubound(a,2) Then
						'prefetch next row, if rank or currency is different then do total
						lastRank=rank
						rank=a(4,x+1)
						lastCurr=tabCurr
						tabCurr=a(13,x+1)
						If tabCurr<>lastCurr Then multiCurr=True
					End If
					If rank<>lastRank Or tabCurr<>lastCurr Or x=Ubound(a,2) Then%>
						<tr class="total">
							<td></td>
							<td class="left" colspan="2">Total</td>
							<%For y=0 to 5
								gsum(y)=gsum(y)+sum(y)%>
								<td><%=FormatNumber(div(sum(y),m),places)%></td>
							<%Next%>
						</tr>
						<%If (tabCurr<>lastCurr Or x=Ubound(a,2)) And gsum(5)<>sum(5) Then
							'there were multiple ranks or a currency switch, so generate grand total%>
							<tr class="total">
								<td></td>
								<td class="left" colspan="2"><%=IIF(multiCurr,"Currency total","Grand total")%></td>
								<%For y=0 to 5%>
									<td><%=FormatNumber(div(gsum(y),m),places)%></td>
								<%Next%>
							</tr>
						<%End If
					End If
				Next
				recCnt=x
				If multiCurr And Not locked Then hint=hint&"There are records in more than one currency, which is very rare. Please check the report. "%>
			</table>
			<%If payID=0 And submit<>"Add record" Then
				'we didn't get a currency from fetching a record for edit/delete or adding a record
				curr=tabCurr
			End If
			If Not locked And Not submitted Then%>
				<div class="inputs"><input type="submit" name="submitPay" value="Delete selected"></div>
				<%If Not noDel Then
					If submit="Delete all" Then%>
						<div class="inputs">
							<input type="submit" name="submitPay" style="color:red" value="CONFIRM DELETE ALL">
							<input type="submit" name="submitPay" value="Cancel">
						</div>
					<%Else%>
						<div class="inputs"><input type="submit" name="submitPay" value="Delete all"></div>
					<%End If%>
					<div class="inputs"><input type="submit" name="submitPay" value="Correct currency"> to <%=arrSelect("curr",curr,currs,False)%></div>
					<%If submit="Divide by 1000" Then%>
						<div class="inputs">
							<input type="submit" name="submitPay" style="color:red" value="CONFIRM DIVIDE BY 1000">
							<input type="submit" name="submitPay" value="Cancel">
						</div>
					<%Else%>
						<div class="inputs"><input type="submit" name="submitPay" value="Divide by 1000"></div>
					<%End If%>
				<%End If%>
				<div class="clear"></div>
			<%End If%>
		</form>
		<%If hintconf>"" Then%><p><b><%=hintconf%></b></p><%End If%>
	<%Else
		'no records this year, so take most recent pay record instead, or default 0=HKD
		'we can assume that other years have already synched, so use local connection
		rs.Close
		rs.Open "SELECT currID,currency FROM pay JOIN currencies c ON pay.currID=c.ID WHERE orgID="&firm&" ORDER BY d DESC LIMIT 1",con
		If rs.EOF Then
			curr=0
			currName="HKD"
		Else
			curr=rs("currID")
			currName=rs("currency")
		End If
	End If
	rs.Close%>
	<p><a target="_blank" href="https://webb-site.com/dbpub/officers.asp?p=<%=firm%>&amp;hide=N">View all-time officers in Webb-site Database</a></p>
	<%'produce form to add or edit pay
	If pplID=0 Then
		'try to find a list of directors or senior managers who don't have a pay record in this period
		'between year-end and previous year-end or 18 months earlier if no previous year found
		rs.open "Call payOfficers("&firm&",'"&d&"')",conRole
		If Not rs.EOF Then
			blnList(0)=True
			off(0)=rs.GetRows
		End If
		rs.Close
		'provide a back-up list of people who left in prior year but might have been paid this year
		If offList=1 Then
			rs.Open "Call prevOfficers2("&firm&",'"&d&"')",conRole
		Else
			'use local version for speed
			rs.Open "Call prevOfficers2("&firm&",'"&d&"')",con
		End If
		If Not rs.EOF Then
			blnList(1)=True
			off(1)=rs.GetRows
		End If
		rs.Close
	End If
	If (pplID>0 Or blnList(0) or blnList(1)) And Not locked And Not submitted Then%>
		<h3><%=IIF(pplID>0,"Edit or delete","Add a new")&" record"%></h3>
		<form method="post" action="pay.asp">
			<input type="hidden" name="sort" value="<%=sort%>">
			<input type="hidden" name="m" value="<%=m%>">
			<%rankNames=Array("Supervisor","Director","Sen mgr")%>
			<div class="inputs"><span class="info">Currency<span>See Rule 4. For RMB, use CNY.</span></span>: <%=arrSelect("curr",curr,currs,False)%></div>
			<div class="clear"></div>
			<%If pplID>0 Then%>
				<p><a href="pay.asp?firm=<%=firm%>&amp;docID=<%=docID%>">Officer</a>: <%=pName&": "&rankNames(pRank)%></p>
				<input type="hidden" name="pplID" value="<%=pplID&","&pRank%>">			
			<%Else
				For y=0 to 1
					If blnList(y) Then%>
					<div class="inputs">
						<input type="radio" name="offList" value="<%=y%>" id="o<%=y%>" <%=checked(y=offList)%>><%=Array("Officer from this period","ex-Officer (only if paid)")(y)%> 
						<select name="pplID<%=y%>" onclick="document.getElementById('o<%=y%>').checked=true" onchange="goToFee()">
							<%For x=0 to Ubound(off(y),2)%>
								<option value="<%=off(y)(0,x)&","&off(y)(1,x)%>" <%=selected(pplID=off(y)(0,x) And pRank=off(y)(1,x))%>>
								<%=off(y)(3,x)&" "&rankNames(off(y)(1,x))&": "&off(y)(2,x)%></option>
							<%Next%>
						</select>
					</div>
					<div class="clear"></div>
					<%End If
				Next
			End If
			'generate known aliases
			If pplID=0 Then
				s=""
				For y=0 to 1
					If blnList(y) Then s=s&","&joinCol(off(y),0)
				Next
				s=Mid(s,2)
				rs.Open "SELECT DISTINCT CAST(fnameppl(p.name1,p.name2,cName) AS NCHAR)n1,CAST(fnameppl(a.n1,a.n2,cn) AS NCHAR)n2 "&_
					"FROM people p JOIN alias a ON p.personID=a.personID WHERE p.personID IN("&s&") ORDER BY n1,n2",con
				If Not rs.EOF Then
					a=rs.GetRows%>
					<p>Known aliases in the officer list</p>
					<table class="txtable">
						<tr>
							<th>Name in officer list</th>
							<th>Alias/former name</th>
						</tr>
						<%For x=0 to Ubound(a,2)%>
							<tr>
								<td><%=a(0,x)%></td>
								<td><%=a(1,x)%></td>
							</tr>
						<%Next%>
					</table>
				<%End If
				rs.close
			End If%>
			<div class="inputs" style="border:thin black solid;padding-bottom:5px;padding-left:5px;padding-right:5px">
				<p style="text-align:center"><b>Salary &amp; bens calculator</b></p>
				Salary <input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="sal1" onchange="makeSB()"> + 
				benefits <input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="sal2" onchange="makeSB()"> +
				more benefits <input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="sal3" onchange="makeSB()">
			</div>
			<div class="clear"></div>
			<table class="numtable">
				<tr>
					<th><span class="info">Fees<span>The fees as a Director or Supervisor, not including salary, allowances and benefits</span></span></th>
					<th><span class="info">Salary<br>&amp; bens<span>Including all benefits and allowances except bonus, retirement and share-based payments</span></span></th>
					<th><span class="info">Bonus<span>Cash performance-related pay, incentives etc</span></span></th>
					<th><span class="info">Retire<span>Contributions to retirement or pension plans, or payments on retirement. If combined with other benefits, use the "Salary &amp; bens" calculator and don't use this column.</span></span></th>
					<th><span class="info">Share-<br>based<span>Value of share-based payments such as options or stock awards</span></span></th>
					<th>Total</th>
				</tr>
				<tr>
					<%'need to have a minimum value, otherwise when we change the step from millions to thousands or units, valid inputs are restricted to the previous mantissa +/- integer%>
					<td><input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="fee" name="fee" value="<%=fee%>" onchange="makeTot()"></td>
					<td><input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="sal" name="sal" value="<%=sal%>" onchange="makeTot()"></td>
					<td><input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="bon" name="bon" value="<%=bon%>" onchange="makeTot()"></td>
					<td><input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="ret" name="ret" value="<%=ret%>" onchange="makeTot()"></td>
					<td><input class="num" type="number" step="<%=step%>" min="<%=mini%>" id="sha" name="sha" value="<%=sha%>" onchange="makeTot()"></td>
					<td id="showTot"><%=tot%></td>
				</tr>
			</table>
			<%If payID>0 And canEdit Then%>
				<input type="hidden" name="payID" value="<%=payID%>">
				<input type="submit" name="submitPay" value="Update">
				<input type="submit" name="submitPay" value="Delete">
			<%Else%>
				<input type="hidden" name="docID" value="<%=docID%>">
				<input type="submit" name="submitPay" value="Add record">
			<%End If%>
		</form>
	<%End If
End If%>
<p><b><%=hint%></b></p>
<%If docID>0 And Not locked And Not submitted And Not noPage And recCnt>0 Then%>
	<hr>
	<h3>Submit completed records for approval</h3>
	<%If submit<>"Submit for review" And (Not osErr) Then%>
		<p>I, <b><%=Session("username")%></b>, have <strong>carefully</strong> checked these completed pay records against the original document and now submit them for publication in the Webb-site database. </p>
		<form method="post" action="pay.asp">
			<input type="hidden" name="docID" value="<%=docID%>">
			<input type="hidden" name="sort" value="<%=sort%>">
			<input type="submit" name="submitPay" value="Submit for review">
		</form>
	<%End If
End If
If docID>0 Then
	s="SELECT name,submitted,userID,maxRank('pay',userID)uRank FROM payreview p JOIN users u ON p.userID=u.ID WHERE docID="&docID
	'if just submitted, use master connection, otherwise local will do for speed
	If submit="Submit for review" Then rs.Open s,conRole Else rs.Open s,con
	If Not rs.EOF Then%>
		<table class="txtable">
			<tr>
				<th>Submitted by</th>
				<th>Time</th>
			</tr>
			<%Do Until rs.EOF
				If rs("uRank")>uRank Then unpub=False 'another submitter outranks the user so they cannot unpublish%>
				<tr>
					<td><a href="paysubmitted.asp?u=<%=rs("userID")%>"><%=rs("name")%></a></td>
					<td><%=MSdateTime(rs("submitted"))%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
If docID>0 And submitted And Not locked Then
	'allow editor to revoke submission as records are not yet published%>
	<form method="post" action="pay.asp">
		<input type="hidden" name="docID" value="<%=docID%>">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="submit" name="submitPay" value="Revoke my submission">
	</form>	
<%ElseIf unpub And locked And docID>0 Then
	'user is not outranked by other reviewers, so can unpublish%>
	<form method="post" action="pay.asp">
		<input type="hidden" name="docID" value="<%=docID%>">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="submit" name="submitPay" value="Unpublish">
	</form>
<%End If%>
<p>Ready to do some more pay-years? <b><a href="payreview.asp">Click here</a></b> for the latest documents in need of attention. </p>

<%If docID>0 And (recCnt>0 or osErr) Then%>
	<hr>
	<h3>Report errors in pay-year</h3>
	<form method="post" action="pay.asp">
		<input type="hidden" name="docID" value="<%=docID%>">
		<input type="hidden" name="sort" value="<%=sort%>">
		<%=arrSelect("errID",errID,con.Execute("SELECT ID,txt FROM payerrtype ORDER BY txt").GetRows,False)%>
		<input type="submit" name="submitPay" value="Report error">
	</form>
	<%s="SELECT u1.name,e.ID,e.txt,p.reported,p.userID,maxRank('pay',p.userID),u2.name,resolved FROM payerrors p "&_
		"JOIN (payerrtype e,users u1) ON p.errID=e.ID AND p.userID=u1.ID LEFT JOIN users u2 ON p.resolvedBy=u2.ID "&_
		"WHERE docID="&docID&" ORDER BY resolved, reported"
	If submit="Report error" or submit="Clear error" Then rs.Open s,conRole Else rs.Open s,con 'for speed if not just submitted
	If Not rs.EOF Then
		a=rs.GetRows%>
		<table class="txtable">
			<tr>
				<th>Reported by</th>
				<th>Error</th>
				<th>Reported</th>
				<th></th>
				<th>Resolved by</th>
				<th>Resolved</th>
			</tr>
			<%For x=0 to Ubound(a,2)%>
				<tr>
					<td><%=a(0,x)%></td>
					<td><%=a(2,x)%></td>
					<td><%=MSdateTime(a(3,x))%></td>
					<td>
						<%If (Not locked or ranking(uRank,a(4,x),a(5,x))) And isNull(a(6,x)) Then%>
							<form method="post" action="pay.asp">
								<input type="hidden" name="docID" value="<%=docID%>">
								<input type="hidden" name="errID" value="<%=a(1,x)%>">
								<input type="hidden" name="oUserID" value="<%=a(4,x)%>">
								<input type="hidden" name="sort" value="<%=sort%>">
								<input type="submit" name="submitPay" value="Clear error">
							</form>
						<%End If%>					
					</td>
					<td><%=a(6,x)%></td>
					<td><%=MSdateTime(a(7,x))%></td>
				</tr>
			<%Next%>
		</table>
	<%End If
	rs.Close%>
	<h3>Report errors in pay-lines</h3>
	<p>If you cannot edit because you don't outrank the editor who entered the pay-line, then please report the error here. </p>
	<form method="post" action="pay.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<div class="inputs">
			Wrong data in pay-line for officer: <%=arrSelect("payID",payID,recList,False)%>
		</div>
		<div class="inputs">
			<%=arrSelect("errID",errID,con.Execute("SELECT ID,txt FROM paylineerrtype ORDER BY ord").GetRows,False)%>
		</div>
		<div class="inputs">
			<input type="submit" name="submitPay" value="Report error">
		</div>
		<div class="clear"></div>
	</form>
	<%s="SELECT u1.name,CAST(fnameppl(pl.name1,pl.name2,pl.cName) AS NCHAR),pRank,e.reported,p.ID,e.userID,maxRank('pay',e.userID),"&_
		"u2.name,resolved,et.ID,et.txt,p.userID,maxRank('pay',p.userID) FROM paylineerrors e JOIN (pay p,people pl, users u1,paylineerrtype et) "&_
		"ON e.payID=p.ID AND p.pplID=pl.personID AND e.userID=u1.ID AND e.errID=et.ID LEFT JOIN users u2 ON e.resolvedBy=u2.ID WHERE orgID="&firm&_
		" AND p.d='"&d&"' ORDER BY resolved,reported"
	If submit="Report error" or submit="Clear line error" Then rs.Open s,conRole Else rs.Open s,con 'for speed if not just submitted
	If Not rs.EOF Then
		a=rs.GetRows%>	
		<table class="txtable">
			<tr>
				<th>Reported by</th>
				<th>Officer</th>
				<th>Rank</th>
				<th>Error</th>
				<th>Reported</th>
				<th></th>
				<th>Resolved by</th>
				<th>Resolved</th>				
			</tr>
			<%For x=0 to Ubound(a,2)%>
				<tr>
					<td><%=a(0,x)%></td>
					<%If Not locked And ranking(uRank,a(10,x),a(11,x)) Then
						'link to edit the reported payline%>
						<td><a href="pay.asp?sort=<%=sort%>&amp;payID=<%=a(4,x)%>"><%=a(1,x)%></a></td>
					<%Else%>
						<td><%=a(1,x)%></td>
					<%End If%>
					<td><%=rankArray(a(2,x))%></td>
					<td><%=MSdateTime(a(3,x))%></td>
					<td><%=a(10,x)%></td>
					<td>
						<%If (Not locked Or ranking(uRank,a(5,x),a(6,x))) And isNull(a(7,x)) Then%>
							<form method="post" action="pay.asp">
								<input type="hidden" name="payID" value="<%=a(4,x)%>">
								<input type="hidden" name="errID" value="<%=a(9,x)%>">
								<input type="hidden" name="oUserID" value="<%=a(5,x)%>">
								<input type="hidden" name="sort" value="<%=sort%>">
								<input type="submit" name="submitPay" value="Clear error">
							</form>
						<%End If%>
					</td>
					<td><%=a(7,x)%></td>
					<td><%=MSdateTime(a(8,x))%></td>
				</tr>
			<%Next%>
		</table>
	<%End If
	rs.Close%>
	<p><b><%=hinterr%></b></p>
	<p>Please report any other errors via the <b><a href="https://webb-site.com/contact/" target="_blank">Webb-site contact form</a></b>. 
	After data are published, if you are not outranked by an editor who approved the submission, then you can unpublish your submission to fix any reported errors. After that, hit the "Clear error" button to resolve the error, then resubmit the 
	pay-year.</p>
<%End If
Call closeConRs(conRole,rs)
Call closeCon(con)%>
<hr>
<h3>Rules</h3>
<ol>
	<li>Enter a stock code to select the company, or pick a report from the <a href="payreview.asp">
	<strong>list of pending reports</strong></a>. Click on "Year-end" to select a year. Then click on "Annual report" to open 
	the document. Mandatory disclosure
	<a href="https://www.hkex.com.hk/-/media/HKEX-Market/News/News-Release/2004/0401303news/0401304news.pdf" target="_blank">
	began</a> for financial years starting 1-Jul-2004, so in practice that means the year ending 30-Jun-2005 for some 
	companies.</li>
	<li>Search for "emoluments" or "remuneration" in the notes to the audited financial statements. If pay details also 
	appear outside of the financial statements, then use the financial statements because these are audited. Tip: start 
	at the back of the report and work forwards until you find it. Be sure to use data for the report year, not the 
	prior year.</li>
	<li>Enter the page number of the PDF where the pay records start, so that users can quickly find it. Always use the 
	number sequence in the PDF reader, not the 
	number printed on the page, which doesn't allow for the front cover etc. If your PDF reader indicates 2 numbers such 
	as "21 (23 of 150)" then the correct number is 23. Some older reports are a web page which has links to PDF sections of 
	the report. Open the correct section (e.g. "Notes to the Consolidated Financial Statements") and enter the relevant 
	PDF page number of the section.</li>
	<li>Select the reporting currency (note that the Chinese Yuan is CNY not RMB). Use the currency in the report table, 
	don't try to convert. Rarely, a company may only report pay for some of its directors in a different currency, in which 
	case we have to use that.</li>
	<li>Select the input multiplier. Most companies use thousands, and that is our default, but some use units or 
	millions. Our system will round and store all entries to the nearest thousand, with 500 rounding to the nearest even 
	thousand (<a href="https://en.wikipedia.org/wiki/Rounding#Rounding_half_to_even" target="_blank">Banker's rounding</a>). If you see data in tens of thousands 
	('0,000) then you are probably not looking at the audited financial statements (see Rule 2).</li>
	<li>Select the officer name. Work down through the table in the PDF, recording all lines. Our officer list is 
	sorted by rank (Supervisor/ Director/ Senior manager), then by status (Executive, Non-Executive, Independent 
	Non-Executive), then by name, because this is the typical order in reports. Our "Officer from this period" list shows officers 
	who served in the period 
	since the last report, or in the prior 18 months if there isn't a prior document. We also show an ex-officer list 
	if any left in the prior period. Only use that if the ex-officer was paid in the current period.</li>
	<li>If an officer is missing, it may 
	be because they are included under a different Romanized name converted from Chinese. For mainland financial groups, some 
	directors or supervisors will not appear in our lists because their appointment is not effective until approved by a 
	regulator, if ever. If 
	you still think they are missing, <a href="../contact">contact us</a>.</li>
	<li>Enter the components of the officer's pay. No need to enter zero values in columns. For speed, the "Fees" 
	component is 
	auto-filled from the previous entry as it is often the same for each officer. Change it if needed. If salary and benefits are disclosed separately then 
	you can use the "Salary" and "benefits" boxes as a calculator to add them together. We only record the total, shown 
	in the "Salary &amp; bens" box.</li>
	<li>If the report combines retirement or share-based payments with other benefits, then treat the whole amount 
	as benefits and use the 
	"Salary &amp; bens" calculator instead.</li>
	<li>If there is a breakdown of how much the officer is paid by subsidiaries, then ignore that and enter the total 
	for each component at the group level.</li>
	<li>Check the total pay of the officer, which is auto-summed as components are entered. Then hit "Add record".</li>
	<li>The Listing Rules require disclosure of the pay of all Supervisors (of mainland China companies) and Directors, so if 
	they are in our officer list but not in the table, then add them with blank (zero) pay, to record that they were 
	unpaid. 
	The Listing Rules do not require disclosure of pay for senior managers, so if they are not in the reported pay 
	table, then ignore them.</li>
	<li>Rarely, for mainland China companies an officer may move between boards (Supervisors or Directors) in a year, 
	with one line of pay for each board, so they will have 2 lines in our table. If they have simply changed status 
	within a board (e.g. from Independent Non-executive to Executive) then combine their pay into one line.</li>
	<li>Check that the totals for each component column match the totals in the report and that all entries from the 
	report are recorded. If you find any errors that you cannot fix, then report them with the forms above. If there are 
	no errors then hit "Submit for review". Any additions or corrections made after that will count against your 
	accuracy score. Users with higher accuracy will receive a higher editor ranking, to edit entries by others.</li>
	<li>If 2 editors have checked and submitted the same pay-year, then it will be automatically published.</li>
</ol>
<p>Thank you for contributing to this database for transparency of directors' pay. Once we have a full dataset, we 
	will be able to produce all sorts of comparisons and league tables - for example, board pay as a percentage of 
	market capitalisation, highest-paid directors across their directorships, rates of increase in board pay over time, and so on.</p>
<!--#include file="cofooter.asp"-->
</body>
</html>
