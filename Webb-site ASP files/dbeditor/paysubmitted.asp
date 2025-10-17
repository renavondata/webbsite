<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim userID,uRank,sc,title,con,rs,a,x,u,uname,sort,URL,ob
u=GetLng("u",0)
Const roleID=1 'pay
Call checkRole(roleID,userID,uRank)
title="Top volunteer editors of pay database"
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "issup" ob="name1,recordDate DESC"
	Case "issdn" ob="name1 DESC,recordDate"
	Case "yedn" ob="recordDate DESC,name1"
	Case "yeup" ob="recordDate,name1"
	Case "subdn" ob="submitted DESC,name1,recordDate DESC"
	Case "subup" ob="submitted,name1,recordDate DESC"
	Case "cordn" ob="cor DESC,name1,recordDate DESC"
	Case "corup" ob="cor,name1,recordDate DESC"
	Case Else
		sort="stat"
		ob="pay,submitted DESC,name1,recordDate DESC"
End Select
uname=con.Execute("SELECT IFNULL((SELECT name FROM users WHERE ID="&u&"),'User not found')").Fields(0)
rs.Open "SELECT docID,name1,recordDate,submitted,d.pay,IFNULL(SUM(r.submitted<p.modified),0)cor FROM payreview r "&_
	"JOIN(documents d,organisations o,pay p) ON r.docID=d.ID AND d.orgID=o.personID AND d.orgID=p.orgID AND d.recordDate=p.d "&_
	"WHERE r.userID="&u&" AND d.docTypeID=0 GROUP BY r.docID ORDER BY "&ob,con
If Not rs.EOF Then a=rs.GetRows
rs.Close
title="Pay records submitted by user: "&uname
URL=Request.ServerVariables("URL")&"?u="&u%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%Call payBar(4)%>
<form method="post" action="paysubmitted.asp">
	<div class="inputs">
		Username: <%=arrSelect("u",u,con.Execute("SELECT DISTINCT ID,name FROM users u JOIN payreview p ON u.ID=p.userID ORDER BY name").GetRows,True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%Call closeConRs(con,rs)
If isEmpty(a) Then%>
	<p>No records found. </p>
<%Else%>
	<p>Click on the year-end to see the pay records. The "corrections after submission" column shows the number of 
	lines that were corrected by other (higher-ranking) editors after the editor approved the pay-year.</p>
	<table class="txtable yscroll">
		<tr>
			<th></th>
			<th><%SL "Issuer","issup","issdn"%></th>
			<th><%SL "Year-end","yedn","yeup"%></th>
			<th><%SL "Submitted","subdn","subup"%></th>
			<th><%SL "Status","stat","stat"%></th>
			<th><%SL "Corrections<br>after<br>submission","cordn","corup"%></th>
		</tr>
		<%For x=0 to Ubound(a,2)%>
			<tr>
				<td><%=x+1%></td>
				<td><%=a(1,x)%></td>
				<td><a href="pay.asp?docID=<%=a(0,x)%>"><%=MSdate(a(2,x))%></a></td>
				<td><%=MSdateTime(a(3,x))%></td>
				<td><%=IIF(a(4,x),"Published","Pending")%></td>
				<td><%=a(5,x)%></td>
			</tr>
		<%Next%>
	</table>
<%End If%>
<!--#include file="cofooter.asp"-->
</body>
</html>
