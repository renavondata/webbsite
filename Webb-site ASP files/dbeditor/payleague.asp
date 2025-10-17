<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim userID,uRank,sc,title,con,rs,a,x,URL,sort,ob,c,rank2,r2list,payRankDone,conAuto,s
Const roleID=1 'pay
Call checkRole(roleID,userID,uRank)
sort=Request("sort")
Select Case sort
	Case "accup" ob="acc,name"
	Case "accdn" ob="acc DESC,name"
	Case "vldn" ob="vl DESC,name"
	Case "vlup" ob="vl,name"
	Case "vsdn" ob="vs DESC,name"
	Case "vsup" ob="vs,name"
	Case "lsdn" ob="lastSub DESC,name"
	Case "lsup" ob="lastSub,name"
	Case Else
		ob="vs DESC,name"
End Select
title="Top volunteer editors of pay database"
Call openEnigmaRs(con,rs)
payRankDone=getLog("payRankDone")
If payRankDone<MSdate(Date) Then
	'run daily update of ranks
	c=Round(CLng(con.Execute("SELECT count(*) FROM (SELECT userID FROM "&_
		"(SELECT r.userID,SUM(p.userID=r.userID)vl,r.submitted FROM pay p JOIN (documents d,payreview r) "&_
		"ON p.d=d.recordDate AND p.orgID=d.orgID AND d.ID=r.docID WHERE d.DocTypeID=0 AND r.userID NOT IN(2,4,5) "&_
		"GROUP BY r.userID,r.docID)t "&_
		"GROUP BY userID HAVING SUM(vl)>=200 AND DATEDIFF(CURDATE(),MAX(submitted))<=14)t2").Fields(0))/2,0)

	rs.Open "SELECT userID,SUM(vl)/(SUM(vl)+SUM(cor))acc FROM "&_
		"(SELECT r.userID,SUM(p.userID=r.userID)vl,SUM(p.modified>r.submitted)cor,r.submitted FROM pay p JOIN (documents d,payreview r) "&_
		"ON p.d=d.recordDate AND p.orgID=d.orgID AND d.ID=r.docID WHERE d.DocTypeID=0 AND r.userID NOT IN(2,4,5) "&_
		"GROUP BY r.userID,r.docID)t "&_
		"GROUP BY userID HAVING SUM(vl)>=200 AND DATEDIFF(CURDATE(),MAX(submitted))<=14 ORDER BY acc desc LIMIT "&c,con
	If Not rs.EOF Then
		'normally there will always be some users with at least 100 valid lines, but just in case.
		r2list=joinCol(rs.GetRows,0)
		Call prepAuto(conAuto)
		'downgrade users with rank 2 to rank 1 if not qualified. protect staff users and anyone above 2
		conAuto.Execute "UPDATE wsprivs SET uRank=1 WHERE roleID=1 AND uRank=2 AND userID NOT IN("&r2list&",2,4,5)"
		conAuto.Execute "UPDATE wsprivs SET uRank=2 WHERE roleID=1 AND userID IN("&r2list&")"
		Call closeCon(conAuto)
		Call putLog("payRankDone",MSdate(Date))
	End If
	rs.Close
End If

a=con.Execute("SELECT userID,name,subs,lastSub,vl,plCor,pyCor,(subs-pyCor)vs,IFNULL(vl/(vl+plCor),0)acc,maxRank('pay',userID),DATEDIFF(CURDATE(),lastSub)<=14 FROM "&_
	"(SELECT userID,COUNT(*)subs,MAX(submitted)lastSub,SUM(cor)plCor,SUM(cor>0)pyCor,SUM(vl)vl FROM "&_
	"(SELECT r.userID,r.submitted,SUM(p.userID=r.userID)vl,SUM(p.modified>r.submitted)cor FROM pay p JOIN (documents d,payreview r) "&_
	"ON p.d=d.recordDate AND p.orgID=d.orgID AND d.ID=r.docID WHERE d.DocTypeID=0 AND r.userID NOT IN(2,4,5) GROUP BY r.userID,r.docID)t "&_
	"GROUP BY userID)t2 JOIN users u ON t2.userID=u.ID ORDER BY "&ob).GetRows
Call closeConRs(con,rs)
URL=Request.ServerVariables("URL")%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%Call payBar(3)%>
<p>Thank you for contributing to corporate transparency in Hong Kong! This table excludes Webb-site founder David Webb and his staff. At the end of 
2024, the top 2 volunteers by valid submissions will be invited 
to lunch at the Hong Kong Club with David Webb, if he is medically able.</p>
<p>Accuracy is the ratio of (1) valid submitted pay-lines entered and submitted to (2) total lines entered plus lines 
corrected or added after submission. We only show this for editors with at least 200 valid pay-lines who have made a 
submission in the last 14 days. If you are inactive for 14 days then your rank will drop to 1, so that others with 
higher rank can correct any errors if you have left the project. Accuracy tends to 
improve as you gain experience. Currently editors in the top half by accuracy have editing rank 2 and are able to edit 
pay-lines for those with an editing rank of 1. Click on the Username to see which pay-years the editor has submitted. 
Ranks are recalculated daily.</p>
<table class="numtable c2l yscroll">
	<tr>
		<th></th>
		<th>Username</th>
		<th>Submissions</th>
		<th><%SL "Last submission","lsdn","lsup"%></th>
		<th><%SL "Valid<br>lines<br>entered","vldn","vlup"%></th>
		<th>Pay-lines<br>corrected<br>after<br>submission</th>
		<th>Pay-years<br>corrected<br>after<br>submission</th>
		<th><%SL "Valid<br>submissions","vsdn","vsup"%></th>
		<th><%SL "Accuracy","accdn","accup"%></th>
		<th>Rank</th>
	</tr>
	<%For x=0 to Ubound(a,2)%>
		<tr>
			<td><%=x+1%></td>
			<td><a href="paysubmitted.asp?u=<%=a(0,x)%>"><%=a(1,x)%></a></td>
			<td><%=a(2,x)%></td>
			<td><%=MSdateTime(a(3,x))%></td>
			<td><%=a(4,x)%></td>
			<td><%=a(5,x)%></td>
			<td><%=a(6,x)%></td>
			<td><%=a(7,x)%></td>
			<td><%If a(10,x) And CLng(a(4,x))>=200 Then Response.Write FormatNumber(a(8,x),4)%></td>
			<td><%=a(9,x)%></td>
		</tr>
	<%Next%>
</table>
<!--#include file="cofooter.asp"-->
</body>
</html>
