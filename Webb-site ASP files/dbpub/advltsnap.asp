<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim r,sort,URL,role,ob,x,title,d,t,con,rs,a
Call openEnigmaRs(con,rs)
r=GetInt("r",0)
sort=Request("sort")
d=getMSdateRange("d","1990-01-01",MSdate(Date))
Select case sort
	Case "nameup" ob="name1"
	Case "namedn" ob="name1 DESC"
	Case "cntup" ob="c,name1"
	Case Else:sort="cntdn":ob="c DESC,name1 DESC"
End Select
role=con.Execute("SELECT roleLong FROM roles WHERE NOT oneTime AND roleID="&r).Fields(0)
title="Webb-site League Table: "&role&" at "&d
rs.Open "SELECT personID,name1,COUNT(company)c"&_
	" FROM adviserships JOIN organisations ON adviser=personID WHERE company IN "&_
	"(SELECT DISTINCT issuer FROM stocklistings s JOIN issue i ON s.issueID=i.ID1 WHERE "&_
	"i.typeID IN(0,6,7,10,42) AND s.stockExID IN(1,20,23) AND "&_
	"(isNull(firstTradeDate) OR firstTradeDate<='"&d&"') AND "&_
	"(isNull(deListDate) OR deListDate>'"&d&"'))"&_
	" AND role="&r&" AND (isNull(addDate) Or addDate<='"&d&"') AND (isNull(remDate) Or remDate>'"&d&"')"&_
	" GROUP BY adviser ORDER BY "&ob,con
If rs.EOF Then
	t=0
Else
	a=rs.GetRows
	t=colSum(a,2)
End If
rs.Close
URL=Request.ServerVariables("URL")&"?r="&r&"&amp;d="&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="leagueNotesA.asp">Notes</a></li>
	<li><a href="roles.asp">All league tables</a></li>
</ul>
<div class="clear"></div>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="advltsnap.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		<%=arrSelect("r",r,con.Execute("SELECT roleID,roleLong FROM roles WHERE NOT oneTime ORDER BY roleLong").GetRows,True)%>
	</div>
	<div class="inputs">
		Clients at: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit();">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<%Call CloseConRs(con,rs)
If t=0 Then%>
	<p>None found.</p>
<%Else%>
	<table class="numtable">
		<tr>
			<th></th>
			<th><%SL "Roles","cntdn","cntup"%></th>
			<th><%SL "Share %","cntdn","cntup"%></th>
			<th class="left"><%SL "Name","nameup","namedn"%></th>
		</tr>
		<%For x=0 to Ubound(a,2)%>
			<tr>
				<td><%=x+1%></td>
				<td><%=a(2,x)%></td>
				<td><%=FormatNumber(CLng(a(2,x))*100/t,2)%></td>
				<td class="left"><a href='adviserships.asp?p=<%=a(0,x)%>&amp;r=<%=r%>&amp;sort=cagdn'><%=a(1,x)%></a></td>
			</tr>
		<%Next%>
		<tr>
			<td></td>
			<td><%=t%></td>
			<td>100.00</td>
			<td class="left">Total</td>
		</tr>
	</table>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
