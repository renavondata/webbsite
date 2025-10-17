<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,ob,hide,hideStr,cnt,name,listed,orgID,lastOrg,totRet,totRetStr,CAGret,CAGretStr,CAGrel,CAGrelStr,title,r,oneTime,_
	rs2,role,roleID,cntRet,cntRel,sumRet,sumRel,join,fromDate,toDate,c,retStr,sList,years,days,x,linkStr,addDate,hint,con,rs,a,noRoles
Call openEnigmaRs(con,rs)
p=getLng("p",0)
hide=getHide("hide")
c=getBool("c")
years=getDbl("y",1)
days=Round(years*365.25,0)
name=fnameOrg(p)

r=getLng("r",-1)
If r=-1 Then
	'default to most popular role based on distinct clients
	rs.Open "SELECT roleID,COUNT(DISTINCT(company)) cnt,roleLong,oneTime FROM adviserships a JOIN `roles` r ON a.role=r.roleID "&_
		"WHERE adviser="&p&" GROUP BY roleID ORDER BY cnt DESC LIMIT 1",con
Else
	rs.Open "SELECT roleID,roleLong,oneTime FROM `roles` WHERE roleID="&r,con
End If
If Not rs.EOF Then
	r=rs("roleID")
	role=rs("roleLong")
	OneTime=rs("oneTime")
Else
	r=""
End If
rs.Close

sort=Request("sort")
Select Case Sort
	Case "orgup" ob="Org,AddDate"
	Case "orgdn" ob="Org DESC,AddDate"
	Case "addup" ob="AddDate,Org"
	Case "adddn" ob="AddDate DESC,Org"
	Case "remup" ob="RemDate,Org"
	Case "remdn" ob="RemDate DESC,Org"
	Case "totdn" ob="totRet DESC,org"
	Case "totup" ob="totRet,org"
	Case "cagretdn" ob="CAGret DESC,org"
	Case "cagretup" ob="CAGret,org"
	Case "cagreldn" ob="CAGrel DESC,org"
	Case "cagrelup" ob="CAGrel,org"
	Case Else
		sort="orgup"
		ob="Org,AddDate"
End Select

fromDate=getMSdef("f","")
toDate=getMSdef("t","")
If toDate<>"" And fromDate>toDate Then swap fromDate,toDate

If fromDate="" and c=1 Then hint=hint&"Please choose a start date. "

If fromDate<>"" Then linkStr="&f=" & year(fromDate)+1
If toDate<>"" Then linkStr=linkStr&"&t="&year(toDate) Else linkStr=linkStr&"&t="&Year(Date)
If years>0 Then linkStr=linkStr&"&y="&years

'build the query
'retStr is the parameter string for totRet and CAGret functions
'sList is the WHERE condition for eligible issues. Where we have fromDate and toDate, we need separate IN tests
'for firstTrade and delist dates, because a stock may have delisted from GEM and listed on main board
'hideStr is the WHERE condition for eligible adviserships
Const baseList=" AND ID1 IN(SELECT DISTINCT issueID FROM stocklistings WHERE stockExID IN(1,20,23)"
sList=baseList

If oneTime Then
	retStr="days(ID1,addDate,"&days&") AS "
	If fromDate<>"" Then
		sList=sList&" AND (isNull(deListDate) OR deListDate>'"&fromDate&"')"
		hideStr=hideStr&" AND addDate>='"&fromDate&"'"
	End If
	If toDate<>"" Then hideStr=hideStr&" AND addDate<='"&toDate&"'"
	'we can still have stocks sponsored in the period but listed after period ends, so no restriction on firstTradeDate
Else
	retStr="(ID1,"
	If fromDate="" Then
		retStr=retStr&"addDate,"
	Else
		retStr=retStr&"GREATEST(IFNULL(addDate,'"&fromDate&"'),'"&fromDate&"'),"
		hideStr=" AND (ISNULL(remDate) OR upperDate(remDate,remAcc)>'"&fromDate&"')"
		sList=sList&" AND (isNull(deListDate) OR deListDate>'"&fromDate&"')"
		If Not c Then
			'don't include new issues and new adviserships in the period
			hideStr=hideStr&" AND (ISNULL(addDate) OR lowerDate(addDate,addAcc)<='"&fromDate&"')"
			sList=sList&") "&baseList&" AND (isNull(firstTradeDate) OR firstTradeDate<='"&fromDate&"')"
		End If
	End If
	If toDate="" Then
		'measure returns up to remDate
		retStr=retStr&"remDate) AS "
	Else
		'measure returns up to remDate or toDate, whichever is first
		retStr=retStr&"LEAST(IFNULL(remDate,'"&toDate&"'),'"&toDate&"')) AS "
		If fromDate="" Or c=1 Then
			hideStr=hideStr&" AND (ISNULL(addDate) OR lowerDate(addDate,addAcc)<='"&toDate&"')"
			sList=sList&") "&baseList&" AND (isNull(firstTradeDate) OR firstTradeDate<='"&toDate&"')"
		End If
	End If
	If hide="Y" And fromDate="" and toDate="" Then hideStr=hideStr&" AND (ISNULL(remDate) or upperDate(remDate,remAcc)>CURDATE())"
End If
sList=sList&")"
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;r="&r&"&amp;f="&fromDate&"&amp;t="&toDate&"&amp;y="&years&"&amp;c="&c
title=name%>
<title>Adviserships of <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call orgBar(title,p,6)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&sort="&sort&"&hide=")%>
<ul class="navlist">
	<li><a target="_blank" href="leagueNotesA.asp">Notes</a></li>
	<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
</ul>
<div class="clear"></div>
<!--#include file="shutdown-note.asp"-->
<%If r<>"" Then%>
	<form method="get" action="adviserships.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="hidden" name="sort" value="<%=sort%>">
		<div class="inputs">
			<%a=con.Execute("SELECT DISTINCT roleID,roleLong FROM adviserships JOIN roles ON adviserships.role=roles.roleID WHERE adviser="&p&" ORDER BY roleLong").GetRows
			Response.Write arrSelect("r",r,a,True)%>
		</div>
		<div class="inputs">
			start date: <input type="date" name="f" id="f" value="<%=fromDate%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			end date: <input type="date" name="t" id="t" value="<%=toDate%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<%If oneTime Then%>
				Performance period <%=MakeSelect("y",years,"0.5,0.5,1,1,2,2,3,3,5,5",True)%> years
			<%Else%>
				<%=checkbox("c",c,True)%> include new appointments after start date
			<%End If%>
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="clear" onclick="document.getElementById('f').value='';document.getElementById('t').value='';
				document.getElementById('c').checked=false;">
		</div>
		<div class="clear"></div>
	</form>
	<div style="font-weight:bold;"><%=hint%></div>
	<h3>Role: <a href="advbyrole.asp?r=<%=r%><%=linkStr%>"><%=role%></a></h3>
	<%If oneTime Then%>
		<p>This is a one-time role. Returns are from the appointment date to the earliest of the end of the specified performance period and the last trading date.
	<%Else%>
		<p>This is a continuing role. Total returns are measured from the latest of the start date, the appointment date and 3-Jan-1994
		until the earliest of the end date, the resignation/removal date and the last trading date.
	<%End If%>
	CAGR is the annualised return and is not shown for periods under 180 days. 
		Relative returns are to the <a href="orgdata.asp?p=51819">Tracker Fund 
		of HK</a> (2800), starting from the latest of 12-Nov-1999, the appointment date 
		and the 
		chosen start date.
	</p>
	<%rs.Open "SELECT company AS orgID,name1 AS org,ID1 AS issueID,addDate,MSdateAcc(addDate,addAcc)`add`,MSdateAcc(remDate,remAcc)rem,"&_
		"totRet"&retStr&"totRet,CAGret"&retStr&"CAGret,CAGrel"&retStr&"CAGrel "&_
		"FROM adviserships JOIN (issue,organisations) ON company=issuer AND company=personID "&_
		"WHERE typeID IN(0,6,7,8,10,42) AND role="&r&" AND adviser="&p&sList&hideStr&" ORDER BY "&ob,con
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else
		lastOrg=""
		sumRet=0
		cntRet=0
		sumRel=0
		cntRel=0%>
		<%=mobile(2)%>		
		<table class="opltable">
		<tr>
			<th class="colHide1"></th>
			<th><%SL "Client","orgup","orgdn"%></th>
			<th class="colHide2"><%SL "Added","addup","adddn"%></th>
			<%If Not oneTime Then%>
				<th><%SL "Removed","remup","remdn"%></th>
			<%End If%>
			<th class="right colHide3"><%SL "Total<br/>return","totdn","totup"%></th>
			<th class="right colHide2"><%SL "CAGR<br>total<br>return","cagretdn","cagretup"%></th>
			<th class="right"><%SL "CAGR<br>relative<br>return","cagreldn","cagrelup"%></th>
		</tr>
		<%cnt=0
		Do Until rs.EOF
			orgID=rs("orgID")
			totRet=rs("totRet")
			addDate=rs("addDate")
			If isNull(totRet) Then
				totRetStr=""
			Else
				totRetStr=FormatPercent(CDbl(rs("totRet"))-1)
			End If
			CAGret=rs("CAGret")
			If isNull(CAGret) Then
				CAGretStr=""
			Else
				CAGretStr=FormatPercent(CDbl(rs("CAGret"))-1)
				cntRet=cntRet+1
				sumRet=sumRet+CAGRet-1
			End if
			CAGrel=rs("CAGrel")
			If Not isNull(CAGrel) And (Not oneTime Or (oneTime And MSdate(addDate)>="1999-11-12")) Then
				CAGrelStr=FormatPercent(CDbl(rs("CAGrel"))-1)
				cntRel=cntRel+1
				sumRel=sumRel+CAGrel-1
			Else
				CAGrelStr=""		
			End if
			addDate=MSdate(rs("addDate"))
			If oneTime Or fromDate="" Or fromDate<addDate Then linkStr=addDate Else linkStr=fromDate
			%>
			<%If orgID<>lastOrg Or (sort<>"orgup" And sort<>"orgdn") Then
				cnt=cnt+1
				%>
				<tr class="total">
					<td class="right colHide1"><%=cnt%></td>
					<td><a href="advisers.asp?p=<%=OrgID%>&hide=<%=hide%>"><%=rs("Org")%></a></td>
					<td class="colHide2 nowrap"><%=rs("add")%></td>
					<%If Not oneTime Then%>
						<td class="nowrap"><%=rs("rem")%></td>
					<%End If%>
					<td class="right colHide3"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=totRetStr%></a></td>
					<td class="right colHide2"><%=CAGretStr%></td>
					<td class="right"><a href="ctr.asp?rel=1&i1=5295&i2=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=CAGrelStr%></a></td>
				</tr>
			<%Else%>
				<tr>
					<td class="colHide1"></td>
					<td></td>
					<td class="colHide2 nowrap"><%=rs("add")%></td>
					<%If hide<>"Y" And Not oneTime Then%>
						<td class="nowrap"><%=rs("rem")%></td>
					<%End If%>
					<td class="right colHide3"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=totRetStr%></a></td>
					<td class="right colHide2"><%=CAGretStr%></td>
					<td class="right"><a href="ctr.asp?rel=1&i1=5295&i2=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=CAGrelStr%></a></td>			
				</tr>
			<%End If%>
			<%lastOrg=orgID
			rs.MoveNext
		Loop
		If cntRet>0 or cntRel>0 Then%>
			<tr class="total">
				<td class="colHide1"></td>
				<td>Average</td>
				<td class="colHide2"></td>
				<%If Not oneTime Then%>
					<td></td>
				<%End If%>
				<td class="colHide3"></td>
				<td class="right colHide2"><b><%If cntRet>0 Then Response.Write FormatPercent(sumRet/cntRet,2)%></b></td>
				<td class="right"><b><%If cntRel>0 Then Response.Write FormatPercent(sumRel/cntRel,2)%></b></td>
			</tr>
		<%End if%>
		</table>
		<br>
	<%End If
	rs.Close
Else%>
	<p>None found.</p>
<%End if
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
