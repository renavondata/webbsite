<%Option Explicit
Response.Expires=-1%>
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbpub/navbars.asp"-->
<%Call login%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<script type="text/javascript" src="rating2.js"></script>
<style type="text/css">
	table.rating {
		border-collapse:collapse;
		border:thin gray solid;
	}
	table.rating tr {
		border:thin gray solid;
	}
	table.rating th {
		font-weight:bold;
		border:inherit;
	}
	table.rating col.radio, table.rating td.radio, table.rating th.radio {
		border-width:0;
		text-align:center;
	}
	table.rating td.center,table.rating th.center {
	text-align:center;
	}
	table.rating td {
		text-align:left;
		border:inherit;
	}
</style>
<%
Dim u,con,rs,title,p,e,x,coreSQL,av,unlisted,r,d,dStyle
e=Session("e")
u=Session("ID")
Call openMailrs(con,rs)
'common to org and people queries
coreSQL="s.orgID,s.atDate,score,t3.cnt,t3.av FROM scores s "&_
	"JOIN (SELECT orgID,max(atDate) AS maxDate FROM scores WHERE userID="&u&" GROUP BY orgID) AS t1 "&_
	"ON s.orgID=t1.orgID AND s.atDate=t1.maxDate LEFT JOIN "&_
	"(SELECT s2.orgID,SUM(NOT ISNULL(score)) AS cnt,avg(score) AS av FROM scores s2 JOIN "&_
	"(SELECT orgID,userID,Max(atDate) AS maxDate FROM scores WHERE atDate>DATE_SUB(CURDATE(), INTERVAL 1 YEAR) GROUP BY orgID,userID) as t2 "&_
	"ON s2.orgID=t2.orgID AND s2.userID=t2.userID AND s2.atDate=t2.maxDATE GROUP BY orgID) AS t3 "&_
	"ON s.orgID=t3.orgID "
title="My ratings"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%Call userBar(7)%>
<h2><%=title%></h2>
<p>With Webb-site One-click Ratings, just click the radio button to update your rating. 
All ratings are anonymous. The count and average are of all user-ratings less than 1 year old. 
If your rating is older than 1 year then the date is shown <strong>in bold</strong> and the rating will not be included in the count or 
average. Click on the date to see the history of your ratings. To add a new 
organisation or human to your ratings, visit the "Key Data" page for that 
person. To get there, use the search boxes at the top of any page. Use the 
"Stock code" box for HK stocks, the "search organisations" box or the "search 
people" boxes.</p>
<%=mobile(1)%>
<h3>Governance Ratings of organisations</h3>
<%rs.Open "SELECT name1 AS name,enigma.wasHKlistco(s.orgID,CURDATE()) AS listed,"&coreSQL&_
	"JOIN enigma.organisations o ON s.orgID=o.personID "&_
	"WHERE s.userID="&u&" ORDER BY listed DESC,name",con
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<table class="rating">
		<tr>
			<th class="left" style="width:400px">Organisation</th>
			<th class="center colHide1">Score</th>
			<th class="center">Date</th>
			<th>None</th>
			<th class="radio">0</th>
			<th class="radio">1</th>
			<th class="radio">2</th>
			<th class="radio">3</th>
			<th class="radio">4</th>
			<th class="radio">5</th>
			<th class="colHide2">Count</th>
			<th class="colHide2">Average</th>
		</tr>
		<%If rs("listed") Then%>
			<tr><td class="left" colspan="12"><h4>HK-Listed</h4></td></tr>
		<%End If
		Do Until rs.EOF
			If Not rs("listed") And Not unlisted Then
				'first row of unlisted
				unlisted=True%>
				<tr><td colspan="12"><h4>Not HK-listed</h4></td></tr>
			<%End If	
			p=rs("orgID")
			av=rs("av")
			r=rs("score")
			If isNull(r) Then r=-1
			d=rs("atDate")
			If d+364<Date() Then dstyle="font-weight:bold;" Else dStyle=""
			If Not isNull(av) Then av=FormatNumber(av,2) Else av="N/A"
			%>
			<tr>
				<td class="left"><a href="../dbpub/orgdata.asp?p=<%=p%>"><%=rs("name")%></a></td>
				<td class="center colHide1" id="p<%=p%>"><%If r>-1 Then Response.Write r Else Response.Write "N/A"%></td>
				<td style="<%=dStyle%>"><a id="d<%=p%>" href="ratinghist.asp?p=<%=p%>"><%=MSdate(rs("atDate"))%></a></td>
				<td class="center"><input type="radio" name="<%=p%>r" id="<%=p%>r-1" value="-1" <%If r=-1 Then%>checked<%End If%> onclick="setRating(<%=p%>,-1)"></td>				
				<%For x=0 to 5%>
					<td class="radio"><input type="radio" name="<%=p%>r" id="<%=p%>r<%=x%>" value="<%=x%>" <%If r=x Then%>checked<%End If%> onclick="setRating(<%=p%>,<%=x%>)"></td>
				<%Next%>
				<td class="center colHide2" id="c<%=p%>"><%=rs("cnt")%></td>
				<td class="center colHide2" id="av<%=p%>"><%=av%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
rs.Close%>
<h3>Trust Ratings of people</h3>
<%rs.Open "SELECT enigma.fnameppl(p.name1,p.name2,p.cname) AS name,"&coreSQL&_
	"JOIN enigma.people p ON s.orgID=p.personID "&_
	"WHERE s.userID="&u&" ORDER BY name",con
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<table class="rating">
		<tr>
			<th style="width:400px">Person</th>
			<th class="center colHide1">Score</th>
			<th class="center">Date</th>
			<th>None</th>
			<th class="radio">0</th>
			<th class="radio">1</th>
			<th class="radio">2</th>
			<th class="radio">3</th>
			<th class="radio">4</th>
			<th class="radio">5</th>
			<th class="colHide2">Count</th>
			<th class="colHide2">Average</th>
		</tr>
		<%Do Until rs.EOF
			p=rs("orgID")
			av=rs("av")
			r=rs("score")
			If isNull(r) Then r=-1
			d=rs("atDate")
			If d+364<Date() Then dstyle="font-weight:bold;" Else dStyle=""
			If Not isNull(av) Then av=FormatNumber(av,2) Else av="N/A"
			%>
			<tr>
				<td><a href="../dbpub/natperson.asp?p=<%=p%>"><%=rs("name")%></a></td>
				<td class="center colHide1" id="p<%=p%>"><%If r>-1 Then Response.Write r Else Response.Write "N/A"%></td>
				<td style="<%=dStyle%>"><a id="d<%=p%>" href="ratinghist.asp?p=<%=p%>"><%=MSdate(rs("atDate"))%></a></td>
				<td class="center"><input type="radio" name="<%=p%>r" id="<%=p%>r-1" value="-1" <%If r=-1 Then%>checked<%End If%> onclick="setRating(<%=p%>,-1)"></td>				
				<%For x=0 to 5%>
					<td class="radio"><input type="radio" name="<%=p%>r" id="<%=p%>r<%=x%>" value="<%=x%>" <%If r=x Then%>checked<%End If%> onclick="setRating(<%=p%>,<%=x%>)"></td>
				<%Next%>
				<td class="center colHide2" id="c<%=p%>"><%=rs("cnt")%></td>
				<td class="center colHide2" id="av<%=p%>"><%=av%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include file="../templates/footerws.asp"-->
</body>
</html>