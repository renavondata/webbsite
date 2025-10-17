<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,sc,URL,sort,ob,title,con,a,x
Const roleID=1 'pay
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select case sort
	Case "subup" ob="submitted"
	Case "subdn" ob="submitted DESC"
	Case "scup" ob="sc,recordDate DESC"
	Case "scdn" ob="sc DESC,recordDate"
	Case "ydn" ob="recordDate DESC,name"
	Case "namup" ob="name,recordDate DESC"
	Case "namdn" ob="name DESC,recordDate"
	Case "yup" ob="recordDate,name"
	Case "ydn" ob="recordDate DESC,name"
	Case Else
		sort="subup":ob="submitted"
End Select
title="Pending reports"
URL=Request.ServerVariables("URL")%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%Call payBar(2)%>
<h3>Errors reported in my submissions</h3>
<%rs.Open "SELECT DISTINCT name1,recordDate,eDocID,ordCodeThen(orgID,recordDate) FROM("&_
	"SELECT DISTINCT o.name1,d.RecordDate,d.ID eDocID,d.orgID FROM payerrors e JOIN (payreview r,documents d,organisations o) "&_
	"ON e.docID=r.docID AND e.docID=d.ID AND d.orgID=o.personID WHERE isNull(resolved) AND r.userID="&userID&_
	" UNION SELECT DISTINCT o.name1,d.recordDate,d.ID eDocID,d.orgID FROM paylineerrors e JOIN (pay p,organisations o,documents d,payreview r)"&_
	"ON e.payID=p.ID AND p.orgID=o.personID AND p.d=d.RecordDate AND p.orgID=d.orgID AND d.ID=r.docID "&_
	"WHERE d.docTypeID=0 AND isNull(resolved) AND r.userID="&userID&")t "&_
	"WHERE (SELECT MAX(maxRank('pay',userID)) FROM payreview WHERE docID=eDocID)<=maxRank('pay',"&userID&") ORDER BY name1,recordDate",con
If rs.EOF Then%>
	<p>None found. </p>
<%Else%>
	<p>There are unresolved reported errors in pay-years that you have submitted. Please click on the year-end date to edit your submissions. </p>
	<table class="txtable yscroll">
		<tr>
			<th>Stock<br>code</th>
			<th>Issuer</th>
			<th>Year-end</th>
		</tr>
		<%a=rs.GetRows
		For x=0 to Ubound(a,2)%>
			<tr>
				<td><%=a(3,x)%></td>
				<td><%=a(0,x)%></td>
				<td><a href="pay.asp?docID=<%=a(2,x)%>"><%=MSdate(a(1,x))%></a></td>				
			</tr>
		<%Next%>
	</table>
<%End If
rs.Close%>
<h3>My work in progress</h3>
<%rs.Open "SELECT DISTINCT o.name1,p.d,d.ID docID FROM pay p JOIN (organisations o,documents d) ON p.orgID=o.personID AND p.orgID=d.orgID AND p.d=d.recordDate "&_
	"LEFT JOIN payreview r ON d.ID=r.docID WHERE docTypeID=0 AND NOT d.pay AND isNull(r.userID) AND p.userID="&userID&" ORDER BY name1,d DESC",con
If rs.EOF Then%>
	<p>You have no work in progress. </p>
<%Else%>
	<p>Please continue working on these reports and submit when ready. Click on the year-end date. </p>
	<table class="txtable yscroll">
		<tr>
			<th>Issuer</th>
			<th>Year-end</th>
		</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("name1")%></td>
				<td><a href="pay.asp?docID=<%=rs("docID")%>"><%=MSdate(rs("d"))%></a></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
rs.Close
If hasRole(con,6) Then
	rs.Open "SELECT ordCodeThen(d.orgID,d.recordDate),name1,e.docID,d.recordDate,max(reported) FROM payerrors e JOIN (documents d,organisations o) "&_
		"ON e.docID=d.ID AND d.orgID=o.personID WHERE errID=3 AND isNull(resolved) GROUP BY docID ORDER BY name1,recordDate",con
	If Not rs.EOF Then%>
		<h3>Missing officer(s) in pick-list</h3>
		<table class="txtable yscroll">
			<tr>
				<th>Stock<br>code</th>
				<th>Issuer</th>
				<th>Year-end</th>
				<th>Last error report</th>
			</tr>
			<%a=rs.GetRows
			For x=0 to Ubound(a,2)%>
				<tr>
					<td><%=a(0,x)%></td>
					<td><%=a(1,x)%></td>
					<td><a href="pay.asp?docID=<%=a(2,x)%>"><%=MSdate(a(3,x))%></a></td>
					<td><%=MSdateTime(a(4,x))%></td>
				</tr>
			<%Next%>
		</table>
	<%End If
	rs.Close
End If
If uRank>=2 Then
	rs.Open "SELECT DISTINCT o.name1,recordDate,docID,ordCodeThen(orgID,recordDate),MAX(rep) FROM("&_
		"SELECT DISTINCT d.orgID,d.ID docID,d.recordDate,MAX(reported)rep FROM paylineerrors e JOIN (pay p,documents d) "&_
		"ON e.payID=p.ID AND p.orgID=d.orgID AND p.d=d.recordDate "&_
		"WHERE d.DocTypeID=0 AND isNull(e.resolved) AND maxRank('pay',p.userID)<="&uRank&" AND p.userID<>"&userID&_
		" AND (NOT d.pay OR (SELECT IFNULL(MAX(maxRank('pay',r.userID)),0) FROM payreview r WHERE docID=d.ID)<="&uRank&_
		") GROUP BY docID UNION SELECT DISTINCT d.orgID,d.ID docID,d.recordDate,MAX(reported) FROM payerrors e "&_
		"JOIN documents d ON e.docID=d.ID WHERE e.errID<>3 AND isNull(e.resolved) AND (NOT d.pay OR (SELECT IFNULL(MAX(maxRank('pay',r.userID)),0) "&_
		"FROM payreview r WHERE docID=d.ID)<="&uRank&") GROUP BY docID)t "&_
		"JOIN organisations o ON t.orgID=o.personID GROUP BY docID ORDER BY name1,recordDate",con
	If Not rs.EOF Then%>
		<h3>Other errors you can help with</h3>
		<p>Your accuracy has earned editor rank <%=uRank%>, so you outrank editors with lower ranks. Please help to resolve reported errors in these reports. 
		The errors exclude "Missing officer(s) in pick list" as these are dealt with by Webb-site staff adding officers 
		to the database where needed.</p>
		<table class="txtable yscroll">
			<tr>
				<th>Stock<br>code</th>
				<th>Issuer</th>
				<th>Year-end</th>
				<th>Last error report</th>
			</tr>
			<%a=rs.GetRows
			For x=0 to Ubound(a,2)%>
				<tr>
					<td><%=a(3,x)%></td>
					<td><%=a(0,x)%></td>
					<td><a href="pay.asp?docID=<%=a(2,x)%>"><%=MSdate(a(1,x))%></a></td>	
					<td><%=MSdateTime(a(4,x))%></td>			
				</tr>
			<%Next%>
		</table>
	<%End If
	rs.Close
End If%>
<h3>Submitted records pending approval</h3>
<%rs.Open "SELECT t.doCID,name,recordDate,t.submitted,ordCodeThen(orgID,recordDate)sc,(NOT isNull(userID))myDoc FROM "&_
	"(SELECT orgID,docID,name1 name,recordDate,MAX(submitted)submitted FROM payreview r JOIN (documents d,organisations o) "&_
	"ON r.docID=d.ID AND d.orgID=o.personID WHERE NOT d.pay GROUP BY orgID,docID,recordDate,name1)t "&_
	"LEFT JOIN payreview pr ON t.docID=pr.doCID AND pr.userID="&userID&" ORDER BY "&ob,con
If rs.EOF Then%>
	<p>There are currently no submitted records awaiting review. Please check back soon. </p>
<%Else%>
	<p>Please click on a year-end date that you <b>haven't</b> reviewed to review the pay records submitted by other editors for publication. 
	Remember that if your approval is correct then, like the first editor, it counts towards your submitted valid 
	reports, but if it later turns out to be wrong then it counts against both of you!</p>
	<table class="txtable yscroll">
		<tr>
			<th></th>
			<th><%SL "Stock<br>code","scup","scdn"%></th>
			<th><%SL "Issuer","namup","namdn"%></th>
			<th><%SL "Year-end","ydn","yup"%></th>
			<th><%SL "Submitted","subup","subdn"%></th>
			<th>Submitted<br>by me</th>
		</tr>
		<%x=1
		Do Until rs.EOF%>
			<tr>
				<td><%=x%></td>
				<td><%=rs("sc")%></td>
				<td><%=rs("name")%></td>
				<td><a href="pay.asp?docID=<%=rs("docID")%>"><%=MSdate(rs("recordDate"))%></a></td>
				<td><%=MSdateTime(rs("submitted"))%></td>
				<td class="center"><%=IIF(CBool(rs("myDoc")),"&#10004;","")%></td>
			</tr>
			<%rs.MoveNext
			x=x+1
		Loop%>
	</table>
<%End If
rs.Close
If sort="subup" or sort="subdn" Then ob="recordDate DESC,name"%>
<h3>Documents to help with</h3>
<p>You have so far submitted <b><%=con.Execute("SELECT COUNT(*) FROM payreview WHERE userID="&userID).Fields(0)%></b> pay-years for review or publication. Thanks! 
Our aim with this crowd-sourcing is to build the history back to 2004 when the Listing Rules first required directors' pay to be disclosed by 
name, or at least to keep up with new documents as they arrive.</p>
<p>These are the documents (sorted by most recent year-end) awaiting editors to enter pay data. Please do as many as you can to help. Click on the year-end or company to get started.</p>
<%rs.Open "SELECT docID,name,recordDate,ordCodeThen(orgID,repfiled)sc FROM "&_
	"(SELECT DISTINCT d.ID docID,o.name1 name,orgID,recordDate,repfiled FROM documents d JOIN (organisations o,repfilings r) ON d.orgID=o.personID "&_
	"AND d.repID=r.ID LEFT JOIN payreview pr ON d.ID=pr.docID "&_
	"WHERE docTypeID=0 AND NOT pay AND recordDate>='2005-06-30' AND recordDate<='2024-12-31' AND isNull(pr.userID) ORDER BY RecordDate DESC,name)t "&_
	"WHERE everHKprimary(orgID) ORDER BY "&ob,con%>
<table class="txtable yscroll">
	<tr>
		<th></th>
		<th><%SL "Stock<br>code","scup","scdn"%></th>
		<th><%SL "Issuer","namup","namdn"%></th>
		<th><%SL "Year-end","ydn","yup"%></th>
	</tr>
	<%x=1
	Do Until rs.EOF%>
		<tr>
			<td><%=x%></td>
			<td><%=rs("sc")%></td>
			<td><a href="pay.asp?docID=<%=rs("docID")%>"><%=rs("name")%></a></td>
			<td><a href="pay.asp?docID=<%=rs("docID")%>"><%=MSdate(rs("recordDate"))%></a></td>
		</tr>
		<%rs.MoveNext
		x=x+1
	Loop%>
</table>
<%Call closeConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
