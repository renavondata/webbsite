<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim n,x,st,prefix,limit,ob,sort,URL,sql,m,avg,title,orgID,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select case sort
	Case "amtup" ob="amt,eName"
	Case "amtdn" ob="amt DESC,eName"
	Case "hdsup" ob="hds,eName"
	Case "hdsdn" ob="hds DESC,eName"
	Case "namup" ob="eName"
	Case "namdn" ob="eName DESC"
	Case Else
		sort="namup"
		ob="eName,amt DESC"
End Select
limit=500
n=Request("n")
st=Request("st")
n=trim(n)
If st="" then st="a"
URL=Request.ServerVariables("URL")&"?n="&n&"&amp;st="&st
title="Search Employment Support Scheme recipients"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This form allows you to search the English names of the raw data from the
<a href="https://www.ess.gov.hk/en/granted_companies.html" target="_blank">
Employment Support Scheme</a> files, grouped by name and phase. Some employers 
made more than one claim, for example, for different restaurants under the same 
name. These are aggregated. P1 and 
p2 indicate an approved claim in the 2 phases. To see 
the top 5,000 claimants by value, <a href="esstop.asp"><strong>click here</strong></a>.</p>
<form method="get" action="searchESS.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<p><input type="text" class="ws" name="n" value="<%=n%>"></p>
	<%=MakeSelect("st",st,"a,Any match,l,Left match",True)%>
	<input type="submit" value="search" name="search">
</form>
<%If n<>"" Then
	If st="a" Then
		m = " AGAINST('+" & apos(join(split(n),"+")) & "' IN BOOLEAN MODE)"
		sql="MATCH eName" & m
	Else
		m= " LIKE '" & apos(n) & "%'"
		sql="eName" & m
	End If
	'combine phases, indicate phase 1 and/or 2
	rs.Open "SELECT orgID,eName,cName,SUM(phase=1)p1,SUM(phase=2)p2,SUM(amt)amt,ROUND(AVG(hds),0)hds,ROUND(SUM(amt)/AVG(hds),0)avg "&_
		"FROM (SELECT orgID,eName,cName,phase,SUM(amt)amt,SUM(heads)hds FROM ess WHERE "&sql&" GROUP BY eName,cName,phase)t2 "&_
		"GROUP BY eName,cName ORDER BY "&ob&" LIMIT "&limit,con%>
	<h3>Matches in ESS filings</h3>
	<%If rs.EOF then%>
		<p>None.</p>
	<%Else%>
		<%=mobile(2)%>
		<table class="numtable c2l">
			<tr>
				<th class="colHide2"></th>
				<th><%SL "English name","namup","namdn"%></th>
				<th class="colHide3 left">Chinese name</th>
				<th><%SL "Amount<br>HK$","amtdn","amtup"%></th>
				<th><%SL "Heads","hdsdn","hdsup"%></th>
				<th>Average<br>HK$</th>
				<th class="colHide2">p1</th>
				<th class="colHide2">p2</th>
			</tr>
			<%x=0
			Do Until rs.EOF
				If isNull(rs("avg")) Then avg="-" Else avg=FormatNumber(rs("avg"),0) 
				x=x+1
				orgID=rs("orgID")%>
				<tr>
					<td class="colHide2"><%=x%></td>
					<%If isNull(orgID) Then%>
						<td><%=rs("eName")%></td>
						<td class="colHide3 left"><%=rs("cName")%></td>					
					<%Else%> 
						<td><a href='orgdata.asp?p=<%=orgID%>'><%=rs("eName")%></a></td>
						<td class="colHide3 left"><a href='orgdata.asp?p=<%=orgID%>'><%=rs("cName")%></a></td>
					<%End If%>
					<td><%=FormatNumber(rs("amt"),0)%></td>
					<td><%=FormatNumber(rs("hds"),0)%></td>
					<td><%=avg%></td>
					<td class="colHide2"><%=rs("p1")%></td>
					<td class="colHide2"><%=rs("p2")%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
		<%If x=limit Then%>
			<p><b>Only the first <%=limit%> matches are displayed. Please narrow your 
			search.</b></p>
		<%End If
	End if
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
