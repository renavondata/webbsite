<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,title,ob,cnt,sort,URL,p,d,maxHolder,maxStake,eStake,wkst
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
'we don't actually use ranking in this script as there are no edit buttons
sort=Request("sort")
Select Case sort
	Case "issup" ob="issuer,atDate"
	Case "issdn" ob="issuer DESC,atDate DESC"
	Case "snapup" ob="atDate DESC,issuer"
	Case "snapdn" ob="atDate, issuer"
	Case "dirup" ob="dirStake,issuer"
	Case "dirdn" ob="dirStake DESC,issuer"
	Case "famup" ob="famStake,issuer"
	Case "famdn" ob="famStake DESC,issuer"
	Case "govup" ob="govStake,issuer"
	Case "govdn" ob="govStake DESC,issuer"
	Case "amup" ob="amStake,issuer"
	Case "amdn" ob="amStake DESC,issuer"
	Case "othup" ob="othStake,issuer"
	Case "othdn" ob="othStake DESC,issuer"
	Case "totup" ob="totStake,issuer"
	Case "totdn" ob="totStake DESC,issuer"
	Case "mhup" ob="mhname,issuer"
	Case "mhdn" ob="mhname,maxStake DESC"
	Case "typeup" ob="ownShort,maxStake"
	Case "typedn" ob="ownShort DESC,maxStake DESC"
	Case "mhsup" ob="maxStake,issuer"
	Case "mhsdn" ob="maxStake DESC,issuer"
	Case "estkup" ob="econStake,issuer"
	Case "estkdn" ob="econStake DESC,issuer"
	Case "wkstdn" ob="weakest DESC,issuer"
	Case "wkstup" ob="weakest,issuer"
	Case "modd" ob="op.modified DESC"
	Case "modu" ob="op.modified"
	Case Else
		ob="o1.name1,atDate"
		sort="issup"
End Select
URL=Request.Servervariables("URL")
title="Ownership summaries"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<p>Click on the snapshot date to add or edit your comment in the logs. Click column-heads to sort.</p>
<p><b><a href="CSV.asp?t=admprofiles">Download CSV</a></b></p>
<table class="numtable">
<tr>
	<th></th>
	<th>PID</th>
	<th class="left"><%SL "Issuer","issup","issdn"%></th>
	<th><%SL "Snapshot<br>date","snapup","snapdn"%></th>
	<th><%SL "Dirs &<br>family","dirdn","dirup"%></th>
	<th><%SL "Other<br>families","famdn","famup"%></th>
	<th><%SL "Govts","govdn","govup"%></th>
	<th><%SL "Asset<br>mgrs","amdn","amup"%></th>
	<th><%SL "Others known","othdn","othup"%></th>
	<th><%SL "Total","totdn","totup"%></th>
	<th class="left"><%SL "Largest holder","mhup","mhdn"%></th>
	<th><%SL "Max stake","mhsdn","mhsup"%></th>
	<th><%SL "Econ stake","estkdn","estkup"%></th>
	<th><%SL "Weakest","wkstdn","wkstup"%></th>
	<th><%SL "Control type","typeup","typedn"%></th>
	<th><%SL "Updated","modd","modu"%></th>
</tr>
<%rs.Open "SELECT op.orgID,op.atDate,dirStake,famStake,govStake,amStake,othStake,o1.name1 issuer,"&_
	"ultimID AS maxholder,namepsn(o2.name1,p.name1,p.name2) AS MHname,(NOT ISNULL(p.personID))human,t3.OT,"&_
    "stake AS maxStake,econStake,weakest,op.modified,ownShort,ownLong,"&_
    "(dirStake+famStake+govStake+amStake+othStake) as totStake "&_
	"FROM ownerProf op LEFT JOIN "&_
	"(SELECT os.orgID,os.atDate,ultimID,ot,shares,stake,econstake,weakest FROM ownerstks os JOIN "&_
	"(SELECT orgID,atDate,Max(stake) AS maxStake FROM ownerstks GROUP BY orgID,atDate) AS t2 "&_
    "ON os.orgID=t2.orgID AND os.atDate=t2.atDate AND os.stake=t2.maxStake) AS t3 "&_
    "ON op.orgID=t3.orgID AND op.atDate=t3.atDate "&_
	"JOIN (organisations o1,ownertype ott) "&_
	"ON op.orgID=o1.personID AND op.OT=ott.ID "&_
	"LEFT JOIN organisations o2 ON ultimID=o2.personID LEFT JOIN people p ON ultimID=p.personID ORDER BY "&ob,con
Do until rs.EOF
	cnt=cnt+1
	p=rs("orgID")
	d=MSdate(rs("atDate"))
	maxHolder=rs("maxHolder")
	maxStake=rs("maxStake")
	eStake=rs("econStake")
	wkst=rs("weakest")%>
	<tr>
		<td><%=cnt%></td>
		<td><%=p%></td>
		<td class="left"><a target="_blank" href="ownerdets.asp?p=<%=p%>&amp;d=<%=d%>"><%=rs("issuer")%></a></td>
		<td><a target="_blank" href="snaplog.asp?p=<%=p%>&d=<%=d%>"><%=d%></a></td>
		<td><%=FormatPercent(rs("dirStake"),2)%></td>
		<td><%=FormatPercent(rs("famStake"),2)%></td>
		<td><%=FormatPercent(rs("govStake"),2)%></td>
		<td><%=FormatPercent(rs("amStake"),2)%></td>
		<td><%=FormatPercent(rs("othStake"),2)%></td>
		<td><%=FormatPercent(rs("totStake"),2)%></td>
		<td class="left">
			<a target="_blank" href="https://webb-site.com/dbpub/<%=IIF(rs("human"),"natperson","orgdata")%>.asp?p=<%=rs("maxHolder")%>"><%=rs("MHname")%></a>
		</td>
		<td><%If Not isNull(maxStake) Then Response.Write FormatPercent(maxStake,2)%></td>
		<td><%If Not isNull(eStake) Then Response.Write FormatPercent(eStake,2)%></td>
		<td><%If Not isNull(wkst) Then Response.Write FormatPercent(wkst,2)%></td>
		<td><a class="info" href="#"><%=rs("ownShort")%><span><%=rs("ownLong")%></span></a></td>
		<td><%=MSdateTime(rs("modified"))%></td>
	</tr>
	<%rs.MoveNext
Loop%>
</table>
<%Call closeConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>