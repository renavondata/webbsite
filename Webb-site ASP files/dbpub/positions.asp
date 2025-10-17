<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,ob,hide,hideStr,name,rank,rsRank,orgID,lastOrg,listed,_
	blnFound,cnt,SFCID,totRet,totRetStr,CAGRet,CAGRetStr,CAGrel,CAGrelStr,sumRet,sumRel,cntRet,cntRel,_
	retStr,fromDate,toDate,years,days,temp,c,linkStr,apptDate,hint,isOrg,a,x,hasRet,anyRet,n,con,rs
Call openEnigmaRs(con,rs)
Set rsRank=Server.CreateObject("ADODB.Recordset")

hide=getHide("hide")
p=getLng("p",0)
n=getBool("n")
years=Request("y")
If years<>"" And isNumeric(years) Then years=CDbl(years) Else years=1
days=Round(years*365.25,0)

c=getBool("c")
sort=Request("sort")
Select Case sort
	Case "orgdn" ob="name1 DESC,ApptDate"
	Case "posup" ob="posShort,name1"
	Case "posdn" ob="posShort DESC,name1"
	Case "appup" ob="ApptDate,name1"
	Case "appdn" ob="ApptDate DESC,name1"
	Case "resup" ob="ResDate,name1"
	Case "resdn" ob="ResDate DESC,name1"
	Case "totup" ob="totRet, name1"
	Case "totdn" ob="totRet DESC,name1"
	Case "cagretdn" ob="CAGret DESC,name1"
	Case "cagretup" ob="CAGret,name1"
	Case "cagreldn" ob="CAGrel DESC,name1"
	Case "cagrelup" ob="CAGrel,name1"
	Case Else
		ob="name1,ApptDate"
		sort="orgup"
End Select

fromDate=MSdate(Request("f"))
toDate=MSdate(Request("t"))
If toDate>"" And fromDate>toDate Then swap fromDate,toDate
If fromDate="" and c=1 Then hint=hint&"Please choose a start date. "

If fromDate<>"" Then linkStr="&f=" & year(fromDate)+1
If toDate<>"" Then linkStr=linkStr&"&t="&year(toDate) Else linkStr=linkStr&"&t="&Year(Date)
If years>0 Then linkStr=linkStr&"&y="&years

Call fNamePsn(p,name,isOrg)

retStr="(issueID,"
If fromDate="" Then
	retStr=retStr&"apptDate,"
Else
	retStr=retStr&"GREATEST(IFNULL(apptDate,'"&fromDate&"'),'"&fromDate&"'),"
End if
If toDate="" Then
	retStr=retStr&"resDate) AS "
Else
	retStr=retStr&"LEAST(IFNULL(resDate,'"&toDate&"'),'"&toDate&"')) AS "
End If

If fromDate="" Then
	If toDate="" Then
		If hide="Y" Then hideStr=" AND (ISNULL(resDate) OR upperDate(resDate,resAcc)>CURDATE())"
	Else
		hideStr=" AND (ISNULL(apptDate) OR lowerDate(apptDate,apptAcc)<'"&toDate&"')"
		If hide="Y" Then hideStr=hideStr&" AND (ISNULL(resDate) OR upperDate(resDate,resAcc)>'"&toDate&"')"
	End If
ElseIf toDate="" Then
	If Not c Then hideStr=" AND (ISNULL(apptDate) OR lowerDate(apptDate,apptAcc)<='"&fromDate&"')"
	If hide="Y" Then
		hideStr=hideStr&" AND (ISNULL(resDate) OR upperDate(resDate,resAcc)>CURDATE())"
	Else
		hideStr=hideStr&" AND (ISNULL(resDate) OR upperDate(resDate,resAcc)>'"&fromDate&"')"
	End If
Else
	If Not c Then
		hideStr=" AND (ISNULL(apptDate) OR lowerDate(apptDate,apptAcc)<='"&fromDate&"')"
	Else
		hideStr=hideStr&" AND (ISNULL(apptDate) OR apptDate<='"&toDate&"')"
	End If
	If hide="Y" Then hideStr=hideStr&" AND (ISNULL(resDate) OR upperDate(resDate,resAcc)>'"&toDate&"')"
End If
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;f="&fromDate&"&amp;t="&toDate&"&amp;c="&c&"&amp;n="&n
%>
<title>Webb-site Database: positions of <%=Name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If isOrg Then
	Call orgBar(name,p,3)
Else
	Call humanBar(name,p,2)
End If
Call positionsBar(p,1)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&amp;sort="&sort&"&amp;hide=")%>
<div class="clear"></div>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="positions.asp">
	<input type="hidden" name="p" value="<%=p%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		start date: <input type="date" name="f" id="f" value="<%=fromDate%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		end date: <input type="date" name="t" id="t" value="<%=toDate%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("c",c,True)%> include new appointments after start date
	</div>
	<div class="inputs">
		<%=checkbox("n",n,True)%> show old organisation names
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('f').value='';document.getElementById('t').value='';
			document.getElementById('c').checked=false;document.getElementById('n').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<div style="font-weight:bold;"><%=hint%></div>
<%
blnFound=False
anyRet=False
rsRank.Open "SELECT * FROM `rank`",con
Do until rsRank.EOF
	LastOrg=0
	sumRet=0
	cntRet=0
	sumRel=0
	cntRel=0
	rs.Open "SELECT company,"&IIF(n,"orgName(company,IFNULL(apptDate,resDate)) ","")&_
		"name1,issueID,apptDate,MSdateAcc(apptDate,apptAcc)app,MSdateAcc(resDate,resAcc)res,posShort,posLong,"&_
		"totRet"&retStr&"totRet,CAGret"&retStr&"CAGret,CAGrel"&retStr&"CAGrel "&_
		"FROM directorships d JOIN (organisations,positions p) ON company=personID AND d.positionID=p.positionID "&_
		"LEFT JOIN hklistedordsever i ON company=issuer "&_
		"WHERE `rank`="&rsRank("rankID")&" AND director="&p&hideStr&" ORDER BY "&ob,con
	If Not rs.EOF then
		a=rs.getRows()
		hasRet=False
		For x=0 to ubound(a,2)
			If Not isNull(a(9,x)) Then
				hasRet=True
				anyRet=True
				Exit For
			End If
		Next
		rs.Movefirst
		blnFound=True
		%>
		<h3><%=rsRank("RankText")%></h3>
		<table class="opltable">
			<tr>
				<th class="colHide1"></th>
				<th></th>
				<th><%SL "Organisation","orgup","orgdn"%></th>
				<th><%SL "Position","posup","posdn"%></th>
				<th class="colHide2"><%SL "From","appup","appdn"%></th>
					<th><%SL "Until","resup","resdn"%></th>
				<%If hasRet Then%>
					<th class="right colHide1"><%SL "Total<br/>Return","totdn","totup"%></th>
					<th class="right colHide1"><%SL "CAGR<br>total<br>return","cagretdn","cagretup"%></th>
					<td class="right colHide3"><b><%SL "CAGR<br>relative<br>return","cagreldn","cagrelup"%></b></td>
				<%End If%>
			</tr>
		<%cnt=1
		Do Until rs.EOF
			orgID=rs("Company")
			totRet=rs("totRet")
			If isNull(totRet) Then totRetStr="" Else totRetStr=FormatPercent(CDbl(rs("totRet"))-1)
			CAGret=rs("CAGRet")
			If isNull(CAGRet) Then
				CAGRetStr=""
			Else
				CAGRetStr=FormatPercent(CDbl(rs("CAGRet"))-1)
				cntRet=cntRet+1
				sumRet=sumRet+CAGRet-1
			End if
			CAGrel=rs("CAGrel")
			If isNull(CAGrel) Then
				CAGrelStr=""
			Else
				CAGrelStr=FormatPercent(CDbl(rs("CAGrel"))-1)
				cntRel=cntRel+1
				sumRel=sumRel+CAGrel-1
			End if
			apptDate=MSdate(rs("apptDate"))
			If fromDate="" Or fromDate<apptDate Then linkStr=apptDate Else linkStr=fromDate
			%>
			<%If OrgID<>lastOrg Or (sort<>"orgup" And sort<>"orgdn") Then%>
				<tr class="total">
					<td class="colHide1"><%=cnt%></td>
					<td><%If Not IsNull(rs("issueID")) Then Response.Write "*":listed=True%></td>
					<td><a href="officers.asp?p=<%=orgID%>"><%=htmlEnt(rs("name1"))%></a></td>
					<td><a class="info" href="#"><%=rs("posShort")%><span><%=rs("posLong")%></span></a></td>
					<td class="colHide2 nowrap"><%=rs("app")%></td>
					<td class="nowrap"><%=rs("res")%></td>
					<%If hasRet Then%>
						<td class="right colHide1"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=totRetStr%></a></td>
						<td class="right colHide1"><%=CAGRetStr%></td>
						<td class="right colHide3"><a href="ctr.asp?rel=1&i1=5295&i2=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=CAGrelStr%></a></td>
					<%End If%>
				</tr>
				<%cnt=cnt+1
			Else%>
				<tr>
					<td class="colHide1"></td>
					<td></td>
					<td></td>
					<td><a class="info" href="#"><%=rs("posShort")%><span><%=rs("PosLong")%></span></a></td>
					<td class="colHide2 nowrap"><%=rs("app")%></td>
					<td class="nowrap"><%=rs("res")%></td>
					<%If hasRet Then%>
						<td class="right colHide1"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=rs("ApptDate")%>"><%=totRetStr%></a></td>
						<td class="right colHide1"><%=CAGRetStr%></td>
						<td class="right colHide3"><a href="ctr.asp?rel=1&i1=5295&i2=<%=rs("issueID")%>&d1=<%=linkStr%>"><%=CAGrelStr%></a></td>
					<%End If%>
				</tr>
			<%End If
			rs.MoveNext
			lastOrg=OrgID
		Loop
		If cntRet>0 Then%>
			<tr class="total">
				<td class="colHide1"></td>
				<td></td>
				<td>Average</td>
				<td></td>
				<td class="colHide2"></td>
				<td></td>
				<td class="colHide1"></td>
				<td class="right colHide1"><b><%If cntRet>0 Then Response.Write FormatPercent(sumRet/cntRet,2)%></b></td>
				<td class="right colHide3"><b><%If cntRel>0 Then Response.Write FormatPercent(sumRel/cntRel,2)%></b></td>
			</tr>
		<%End if%>
		</table>
	<%End if
	rs.Close
	rsRank.MoveNext
Loop
rsRank.Close
If blnFound Then%>
	<%=mobile(1)%>
	<%If anyRet Then%>
		<p>Total returns are measured from the latest of the start date, the appointment date and 3-Jan-1994 until 
	the earliest of the end date, the resignation/removal date and the last trading date.
	CAGR is the annualised return and is not shown for periods under 180 days. 
	Relative returns are to the <a href="orgdata.asp?p=51819">Tracker Fund 
	of HK</a> (2800), starting from the latest of 12-Nov-1999, the appointment date and the chosen start date.</p>
	<%End If%>
<%Else%>
	<p>None found.</p>
<%End If
If Listed=True Then Response.Write "<p>* = is or was HK primary-listed</p>"
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>