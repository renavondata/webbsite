<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,title,ob,cnt,p,d,URL,sort,coName,shs,sumShs,stk,estk,sumStk,sumEstk,wkst,sumWkst
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
Call openEnigmaRs(con,rs)
'we don't actually use ranking in this script as there are no edit buttons
p=getLng("p",0)
d=getMSdef("d","2003-12-31")
coName=fNameOrg(p)
sort=Request("sort")
Select Case sort
	Case "shsup" ob="shares,ownerName"
	Case "shsdn" ob="shares DESC,ownerName"
	Case "estkup" ob="econstake,ownerName"
	Case "estkdn" ob="econstake DESC,ownerName"
	Case "otup" ob="ownLong,shares DESC"
	Case "otdn" ob="ownLong,ownerName"
	Case "ownup" ob="ownerName,ownLong"
	Case "owndn" ob="ownerName DESC,ownLong"
	Case "wkstup" ob="weakest,ownerName"
	Case "wkstdn" ob="weakest DESC,ownerName"
	Case Else
		ob="shares DESC,ownerName"
		sort="shsdn"
End Select
title="Ownership details"
URL=Request.Servervariables("URL")&"?p="&p&"&amp;d="&d%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<h3><%=coName%>, <%=d%></h3>
<%rs.Open "SELECT ultimID,shares,stake,econStake,weakest,"&_
	"IF(isNull(o.name1),True,False) human,CAST(fnamepsn(o.name1,p.name1,p.name2,o.cName,p.cName) AS NCHAR) ownerName,ownLong FROM ownerstks s "&_
	"LEFT JOIN ownertype ott ON s.ot=ott.ID "&_
	"LEFT JOIN organisations o on s.ultimID=o.personID "&_
	"LEFT JOIN people p on s.ultimID=p.personID "&_
	"WHERE orgID="&p&" AND atDate='"&Msdate(d)&"' ORDER BY "&ob,con%>
<table class="numtable">
	<tr>
		<th></th>
		<th class="left"><%SL "Ultimate owner","ownup","owndn"%></th>
		<th class="left"><%SL "Owner type","otup","otdn"%></th>
		<th><%SL "Shares","shsup","shsdn"%></th>
		<th><%SL "Stake","shsup","shsdn"%></th>
		<th><%SL "EconStake","estkup","estkdn"%></th>
		<th><%SL "Weakest","wkstup","wkstdn"%></th>		
	</tr>
<%Do until rs.EOF
		cnt=cnt+1
		shs=rs("shares")
		sumShs=sumShs+shs
		stk=rs("stake")
		sumStk=sumStk+stk
		eStk=rs("econStake")
		wkst=rs("weakest")
		If isNull(eStk) Then eStk=0
		If isNull(wkst) Then wkst=0
		sumEstk=sumeStk+eStk
		sumWkst= sumWkst+wkst%>
		<tr>
			<td><%=cnt%></td>
			<td class="left"><a target="_blank" href="https://webb-site.com/dbpub/<%=IIF(rs("human"),"natperson","orgdata")%>.asp?p=<%=rs("ultimID")%>"><%=rs("ownerName")%></a></td>
			<td class="left"><%=rs("ownLong")%></td>
			<td><%=FormatNumber(shs,0)%></td>
			<td><%=FormatPercent(stk,4)%></td>
			<td><%=FormatPercent(estk,4)%></td>
			<td><%=FormatPercent(wkst,4)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	rs.Close%>
	<tr class="total">
		<td></td>
		<td class="left" colspan="2">Total</td>
		<td><%=FormatNumber(sumShs,0)%></td>
		<td><%=FormatPercent(sumStk,4)%></td>
		<td><%=FormatPercent(sumEstk,4)%></td>
		<td><%=FormatPercent(sumWkst,4)%></td>
	</tr>
</table>
<h3>Summary</h3>
<%rs.Open "SELECT *,dirStake+famStake+govStake+amStake+othStake as totStake FROM ownerprof WHERE orgID="&p&" AND atDate='"&d&"'",con
If rs.EOF Then%>
	<p>No profile found</p>
<%Else%>
	<table class="numtable fcl">
		<tr>
			<td>Directors &amp; family</td>
			<td><%=FormatPercent(rs("dirStake"),4)%></td>
		</tr>
		<tr>
			<td>Other families</td>
			<td><%=FormatPercent(rs("famStake"),4)%></td>
		</tr>
		<tr>
			<td>Governments</td>
			<td><%=FormatPercent(rs("govStake"),4)%></td>
		</tr>
		<tr>
			<td>Asset managers</td>
			<td><%=FormatPercent(rs("amStake"),4)%></td>
		</tr>
		<tr>
			<td>Others known</td>
			<td><%=FormatPercent(rs("othStake"),4)%></td>
		</tr>
		<tr>
			<td>Total</td>
			<td><%=FormatPercent(rs("totStake"),4)%></td>			
		</tr>
	</table>
<%End If
Call closeConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>