<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim person,sort,URL,ob,name,cnt,longShs2,longStk2,con,rs,sql
Call openEnigmaRs(con,rs)
person=getLng("p",0)
sort=Request("sort")
Select Case sort
	Case "stakdn" ob="longstk2 DESC,stock"
	Case "stakup" ob="longstk2,stock"
	Case "ldatup" ob="maxDate,stock"
	Case "ldatdn" ob="maxDate DESC,stock"
	Case "stkdn" ob="stock DESC"
	Case Else
		ob="stock"
		sort="stkup"
End Select
If person=0 Then name="No human was specified" Else name=fnamePpl(person)
URL=Request.ServerVariables("URL")&"?p="&person
%>
<title>Webb-site Database: dealings by <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call humanBar(name,person,4)%>
<ul class="navlist">
	<li><a href="sdiNotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<br>
<%rs.Open "SELECT t1.issueID,CONCAT(o.name1,':',typeshort) stock,maxDate,longShs2,longstk2 FROM "&_ 
	"(SELECT issueID,max(relDate) as maxDate FROM sdi WHERE dir="&person&" GROUP BY issueID) t1 "&_
	"JOIN (sdi,issue,secTypes,organisations o) "&_
	"ON maxDate=relDate and t1.issueID=sdi.issueID AND sdi.issueID=issue.ID1 AND issue.typeID=sectypes.typeID "&_
	"AND issue.issuer=o.personID WHERE dir="&person&" ORDER BY "&ob,con
If Not rs.EOF then%>
	<table class="numtable">
		<tr>
			<th class="colHide3"></th>
			<th style="text-align:left"><%SL "Stock","stkup","stkdn"%></th>
			<th><%SL "Last filing","ldatup","ldatdn"%></th>
			<th>Long<br/>shares</th>
			<th><%SL "Stake<br/>%","stakdn","stakup"%></th>
		</tr>
	<%cnt=1
	Do Until rs.EOF
		longShs2=rs("longShs2")
		If not isNull(longShs2) Then longShs2=formatNumber(longShs2,0)
		longStk2=rs("longStk2")
		If not isNull(longStk2) Then longStk2=formatNumber(longStk2,2)
		%>
		<tr>
			<td class="colHide3"><%=cnt%></td>
			<td class="left"><a href="sdidirco.asp?p=<%=person%>&i=<%=rs("issueID")%>"><%=rs("stock")%></a></td>
			<td><%=MSdate(rs("maxDate"))%></td>
			<td><%=longShs2%></td>
			<td><%=longStk2%></td>
		</tr>
		<%
		cnt=cnt+1
		rs.MoveNext
	Loop%>
	</table>
<%Else%>
	<p><b>None found.</b></p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>