<%@ CodePage="65001"%>
<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim conRole,rs,userID,uRank,atDate,shares,stake,stakeComp,p,i,h,holderName,pURL,orgName,title,rs2,recID,human
Const roleID=3 'HKUteam
Call prepRole(roleID,conRole,rs,userID,uRank)
p=getLng("p",0)
h=getLng("h",0)
Set rs2=Server.CreateObject("ADODB.Recordset")
orgName=fnameOrg(p)
'NB due to a MySQL bug, procedure name must be passed in lower case
Call getPerson(h,human,holderName)
If human Then pURL="natperson" Else pURL="orgdata"
title="Holding history"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<p>Issuer: <a target="_blank" href="https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>"><%=orgName%></a></p>
<p>Holder: <a target="_blank" href="https://webb-site.com/dbpub/<%=pURL%>.asp?p=<%=h%>"><%=holderName%></a></p>
<%rs.Open "SELECT * FROM issue i JOIN secTypes s ON i.typeID=s.typeID WHERE issuer="&p,conRole
Do until rs.EOF
	i=rs("ID1")
	Set rs2=conRole.Execute("Call holderhist("&i&","&h&")")
	If Not rs2.EOF Then%>
		<form method="post" action="holding.asp">
			<input type="hidden" name="targIssue" value="<%=i%>">
			<h4>Issue: <%=rs("typeLong")%></h4>
			<table class="numtable">
			<tr>
				<th class="left">Date</th>
				<th>Held as</th>
				<th>Shares</th>
				<th>Stake</th>
				<th>User</th>		
				<th style="text-align:center">Delete</th>
				<th></th>
			</tr>
			<%Do until rs2.EOF
				shares=rs2("shares")
				stake=rs2("stake")
				stakeComp=rs2("stakeComp")
				atDate=MSdate(rs2("atDate"))
				recID=rs2("recID")%>
				<tr>
				<td><%=atDate%></td>
				<td><%=rs2("heldAsTxt")%></td>
				<td><%If Not isNull(shares) Then Response.Write FormatNumber(shares,0)%></td>
				<td><%If Not isNull(stake) Then Response.Write FormatPercent(stakeComp,4)%></td>
				<td><%=rs2("user")%></td>
				<%If rankingRs(rs2,uRank) Then%>
					<td style="text-align:center">
						<input type="checkbox" name="delRec" value="<%=recID%>">
					</td>
					<td>
						<a href="holding.asp?r=<%=recID%>">Edit</a>
					</td>
				<%Else%>
					<td></td>
					<td></td>
				<%End If%>
				</tr>
				<%rs2.MoveNext
			Loop
			rs2.Close%>
			</table>
			<br>
			<input type="submit" name="submitBtn" style="color:red" value="Delete records">
		</form>
	<%End If
	rs.MoveNext
Loop
Set rs2=Nothing
Call closeConRs(conRole,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
