<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim total,count,StartYear,NowYear,YY,con,rs
Call openEnigmaRs(con,rs)
StartYear=1986
NowYear=Year(Now())%>
<title>Listings Trend</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>HK-listed issuers by market</h2>
<p>Hit the numbers to see the listed securities of these issuers.</p>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th>Year</th>
		<th>Main<br>Board</th>
		<th>GEM</th>
		<th>Sec.</th>
		<th class="colHide3">Total<br>Cos</th>
		<th>REIT</th>
		<th>CIS</th>
		<th class="colHide3">Total<br>UTMF</th>
	</tr>	
	<%For YY=1986 to NowYear-1
		total=0
		rs.Open "Call ListCosByMktAtDate('"&YY&"-12-31')",con
		'con.ListCosByMktAtDate DateSerial(YY,12,31),rs
		count=Clng(rs("CountOfPersonID"))
		total=total+count
		%>
		<tr>
			<td><%=YY%></td>
			<td><a href="listed.asp?e=m&amp;d=<%=YY%>-12-31"><%=count%><a/></td>
				<%rs.MoveNext
				count=Clng(rs("CountOfPersonID"))
				total=total+count%>
			<td><a href="listed.asp?e=g&amp;d=<%=YY%>-12-31"><%=count%><a/></td>
				<%rs.MoveNext
				count=Clng(rs("CountOfPersonID"))
				total=total+count%>
			<td><a href="listed.asp?e=s&amp;d=<%=YY%>-12-31"><%=count%></a></td>
			<td class="colHide3"><a href="listed.asp?a=m&amp;d=<%=YY%>-12-31"><%=total%></a></td>
				<%rs.MoveNext
				count=Clng(rs("CountOfPersonID"))
				total=count%>
			<td><a href="listed.asp?e=r&amp;d=<%=YY%>-12-31"><%=count%></a></td>
				<%rs.MoveNext
				count=Clng(rs("CountOfPersonID"))
				total=total+count%>
			<td><a href="listed.asp?e=c&amp;d=<%=YY%>-12-31"><%=count%></a></td>
			<td class="colHide3"><%=total%></td>
		</tr>
		<%rs.Close
	Next
	'now do the year-to-date
	total=0
	'pass the current date as a parameter
	rs.Open "Call ListCosByMktAtDate('"&msDate(Date())&"')",con
	'con.ListCosByMktAtDate Date(),rs%>
	<tr>
		<td><%=NowYear%><br/>to date</td>
			<%count=Clng(rs("CountOfPersonID"))
			total=total+count%>
		<td><a href="listed.asp?e=m"><%=count%></a></td>
			<%rs.MoveNext
			count=Clng(rs("CountOfPersonID"))
			total=total+count%>
		<td><a href="listed.asp?e=g"><%=count%></a></td>
			<%rs.MoveNext
			count=Clng(rs("CountOfPersonID"))
			total=total+count%>
		<td><a href="listed.asp?e=s"><%=count%></a></td>
		<td class="colHide3"><a href="listed.asp?e=a"><%=total%></a></td>
			<%rs.MoveNext
			count=Clng(rs("CountOfPersonID"))
			total=count%>
		<td><a href="listed.asp?e=r"><%=count%></a></td>
			<%rs.MoveNext
			count=Clng(rs("CountOfPersonID"))
			total=total+count%>
		<td><a href="listed.asp?e=c"><%=count%></a></td>
		<td class="colHide3"><%=total%></td>
	</tr>
	<%Call CloseConRs(con,rs)%>
</table>
<p>Key:<br/>
REIT=Real Estate Investment Trusts<br/>
CIS=Collective Investment Schemes<br/>
UTMF=all Unit Trusts and Mutual Funds=REIT+CIS</p>
<p>Note: The above table of year-end data is derived from listings of individual 
companies in the database. The companies data are consistent with SEHK/HKEx Fact 
Books. Prior to 1992, the UTMF data do not quite tally with the SEHK 
Fact Books.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>