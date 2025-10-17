<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim ob,sort,total,title,URL,x,amt,hds,sumamt,sumhds,sumcnt,avg,cnt,p,con,rs
Call openEnigmaRs(con,rs)
URL=Request.ServerVariables("URL")
sort=Request("sort")
p=getIntRange("p",0,1,2)
Select case sort
	Case "hdsup" ob="hds,name"
	Case "hdsdn" ob="hds DESC,name"
	Case "namup" ob="name"
	Case "namdn" ob="name DESC"
	Case "avgup" ob="avg,name"
	Case "avgdn" ob="avg DESC,name"
	Case "amtup" ob="amt,name"
	Case Else
		sort="amtdn"
		ob="amt DESC,name"
End Select
title="Employment Support Scheme top 5,000 recipients"&IIF(p>0,": phase "&p,": both phases")%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>The ESS was a <a href="../articles/ESS.asp">misguided</a> HK Government 
subsidy scheme for employers, which covers half of salaries up to a subsidy cap 
of HK$9,000 per month for 6 months from June to November 2020, divided into 2 
phases each of 3 months. Each phase had to be separately claimed. We've taken the 
PDFs from the
<a href="https://www.ess.gov.hk/en/granted_companies.html" target="_blank">Government web site</a> and matched employers, as far as possible, with known 
entities in Webb-site Who's Who. If an employer has multiple claims for 
different branches (for example, different schools, churches or restaurants 
under the same entity) then these are grouped into one line. Click the name to see details.</p>
<p>After a 13-month wait, the final batches of data were published on 
11-Feb-2022 after Webb-site filed a second request under the Code on Access to 
Information, to push them along. Amounts do not include 
an entity's subsidiaries. "Heads" means the "committed headcount under payroll". 
This is the total number of employees (paid or not) in March 2020 MPF filings. 
Employers could choose an earlier month between Dec-2019 and Mar-2020 for the 
amount of subsidies based on payroll for that month, so in some cases where 
staff were made redundant between Dec-2019 and Mar-2020, there is zero committed 
headcount, or the average exceeds $27k per employee per phase. It must all be spent on 
wages for the 
remaining employees (including new hires) or clawed back to Government.</p>
<p>If you choose both phases then P1 and p2 indicate 
whether a claim was made and approved in each phase.</p>
<%=writeNav(p,"1,2,0","Phase 1,Phase 2,Both",URL&"?sort="&sort&"&amp;p=")%>
<h3>Statistics</h3>
<%If p=0 Then
	rs.Open "SELECT phase,COUNT(*)cnt,SUM(amt)amt,SUM(heads)hds,SUM(amt)/SUM(heads)avg FROM ess GROUP BY phase",con%>
	<table class="numtable">
		<tr>
			<th>Phase</th>
			<th>Claims<br>approved</th>
			<th>Amount HK$</th>
			<th>Heads</th>
			<th class="colHide3">Average<br>HK$</th>
		</tr>
	<%Do Until rs.EOF
		x=x+1
		amt=CDbl(rs("amt"))
		hds=Clng(rs("hds"))
		cnt=CLng(rs("cnt"))
		sumamt=sumamt+amt
		sumhds=sumhds+hds
		sumcnt=sumcnt+cnt
		%>
		<tr>
			<td><%=rs("phase")%></td>
			<td><%=FormatNumber(cnt,0)%></td>
			<td><%=FormatNumber(amt,0)%></td>
			<td><%=FormatNumber(hds,0)%></td>
			<td class="colHide3"><%=FormatNumber(rs("avg"),0)%></td>
		</tr>
		<%rs.MoveNext
	Loop
	rs.Close%>
		<tr class="total">
			<td>Both</td>
			<td><%=FormatNumber(sumcnt/x,0)%></td>
			<td><%=FormatNumber(sumamt,0)%></td>
			<td><%=FormatNumber(sumhds/x,0)%></td>
			<td class="colHide3"><%=FormatNumber(sumamt/sumhds*x,0)%></td>
		</tr>
	</table>
<%
Else
	rs.Open "SELECT COUNT(*)cnt,SUM(amt)amt,SUM(heads)hds FROM ess WHERE phase="&p,con
	sumamt=CDbl(rs("amt"))
	sumhds=CLng(rs("hds"))
	sumcnt=CLng(rs("cnt"))
	rs.Close
	rs.Open "SELECT COUNT(*) cnt,SUM(amt) amt, SUM(heads) hds,SUM(amt)/SUM(heads) avg FROM ess WHERE Not isNull(orgID) and phase="&p,con
	cnt=CLng(rs("cnt"))
	amt=CDbl(rs("amt"))
	hds=CLng(rs("hds"))
	avg=rs("avg")
	rs.Close
	%>
	<table class="numtable fcl">
		<tr>
			<th></th>
			<th>Claims</th>
			<th>Amount HK$</th>
			<th>Heads</th>
			<th>Average<br>HK$</th>
			<th class="colHide2">Amount<br>%</th>
			<th class="colHide2">Heads<br>%</th>
		</tr>
		<tr>
			<td>Matched entities</td>
			<td><%=FormatNumber(cnt,0)%></td>
			<td><%=FormatNumber(amt,0)%></td>
			<td><%=FormatNumber(hds,0)%></td>
			<td><%=FormatNumber(avg,0)%></td>
			<td class="colHide2"><%=FormatNumber(amt/sumamt*100,2)%></td>
			<td class="colHide2"><%=FormatNumber(hds/sumhds*100,2)%></td>
		</tr>
		<tr>
			<td>Unmatched entities</td>
			<td><%=FormatNumber(sumcnt-cnt,0)%></td>
			<td><%=FormatNumber(sumamt-amt,0)%></td>
			<td><%=FormatNumber(sumhds-hds,0)%></td>
			<td><%=FormatNumber((sumamt-amt)/(sumhds-hds),0)%></td>
			<td class="colHide2"><%=FormatNumber(100-amt*100/sumamt,2)%></td>
			<td class="colHide2"><%=FormatNumber(100-hds*100/sumhds,2)%></td>
		</tr>
		<tr class="total">
			<td>Total approved claims</td>
			<td><%=FormatNumber(sumcnt,0)%></td>
			<td><%=FormatNumber(sumamt,0)%></td>
			<td><%=FormatNumber(sumhds,0)%></td>
			<td><%=FormatNumber(sumamt/sumhds,0)%></td>
			<td class="colHide2">100.00</td>
			<td class="colHide2">100.00</td>
		</tr>
	</table>
<%End If
If p>0 Then
	rs.Open "SELECT CASE WHEN amt<1e5 then '<100k'"&_
		"WHEN amt>=1e5 AND amt<1e6 THEN '100k to <1m' "&_
		"WHEN amt>=1e6 AND amt<1e7 THEN '1m to <10m' "&_
		"WHEN amt>=1e7 AND amt<1e8 THEN '10m to <100m' "&_
		"else '>100m' END amtRange,COUNT(*)cnt,SUM(amt)amt,SUM(heads)hds,SUM(amt)/SUM(heads)avg "&_
		"FROM ess WHERE phase="&p&" GROUP BY amtRange",con
	%>
	<h3>Analysis of claim amount (ungrouped)</h3>
	<table class="numtable">
		<tr>
			<th>Claim<br>size HK$</th>
			<th>Claims</th>
			<th>Amount HK$</th>
			<th>Heads</th>
			<th>Average<br>HK$</th>
			<th class="colHide2">Amount<br>%</th>
			<th class="colHide2">Heads<br>%</th>
		</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("amtRange")%></td>
				<td><%=FormatNumber(rs("cnt"),0)%></td>
				<td><%=FormatNumber(rs("amt"),0)%></td>
				<td><%=FormatNumber(rs("hds"),0)%></td>
				<td><%=FormatNumber(rs("avg"),0)%></td>
				<td class="colHide2"><%=FormatNumber(100*CDbl(rs("amt"))/sumamt,2)%></td>
				<td class="colHide2"><%=FormatNumber(100*CLng(rs("hds"))/sumhds,2)%></td>
			</tr>
			<%rs.MoveNext
		Loop
		rs.Close%>
	</table>
<%
End If
sumamt=0
sumhds=0
x=0
If p>0 Then
	rs.Open "SELECT orgID,IFNull(name1,name) name,amt,hds,avg FROM "&_ 
		"(SELECT orgID,null name, SUM(amt) amt,SUM(heads) hds,SUM(amt)/SUM(heads) avg FROM ess "&_
		"WHERE NOT isNull(orgID) AND phase="&p&" GROUP BY orgID UNION "&_
		"SELECT null,IFNULL(eName,cName),SUM(amt) amt,SUM(heads) hds,SUM(amt)/SUM(heads) avg FROM ess WHERE isNull(orgID) and phase="&p&_
	    " GROUP BY eName,cName ORDER BY amt DESC LIMIT 5000) t LEFT JOIN organisations ON orgID=personID ORDER BY "&ob,con
Else
	'combine phases, indicate phase 1 and/or 2
	rs.Open "SELECT orgID,IFNULL(name1,name)name,amt,hds,avg,p1,p2 FROM "&_
	"(SELECT orgID,null name,SUM(phase=1)p1,SUM(phase=2)p2,SUM(amt)amt,ROUND(AVG(hds),0)hds,ROUND(SUM(amt)/AVG(hds),0)avg FROM "&_
	"(SELECT orgID,phase,SUM(amt)amt,SUM(heads)hds FROM ess WHERE NOT isNull(orgID) GROUP BY orgID,phase)t1 GROUP BY orgID "&_
	"UNION SELECT Null,IFNULL(eName,cName) name,SUM(phase=1)p1,SUM(phase=2)p2,SUM(amt)amt,ROUND(AVG(hds),0)hds,ROUND(SUM(amt)/AVG(hds),0)avg FROM "&_
	"(SELECT eName,cName,phase,SUM(amt)amt,SUM(heads)hds FROM ess WHERE isNull(orgID) GROUP BY eName,cName,phase)t2 GROUP BY eName,cName "&_
	"ORDER BY amt DESC LIMIT 5000)t LEFT JOIN organisations ON orgID=personID ORDER BY "&ob,con
End If
URL=URL&"?p="&p
%>
<h3>The Top 5,000</h3>
<p>Click the headings to sort. To search all approved claims,
<a href="searchESS.asp"><strong>click here</strong></a>.</p>
<%=mobile(2)%>
<table class="numtable c2l">
	<tr>
		<th></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th><%SL "Amount<br>HK$","amtdn","amtup"%></th>
		<th><%SL "Heads","hdsdn","hdsup"%></th>
		<th class="colHide2"><%SL "Average<br>HK$","avgdn","avgup"%></th>
		<%If p=0 Then%>
			<th class="colHide2">p1</th>
			<th class="colHide2">p2</th>
		<%End If%>
	</tr>
	<%Do Until rs.EOF
		x=x+1
		sumamt=sumamt+Clng(rs("amt"))
		sumhds=sumhds+Clng(rs("hds"))
		If rs("avg")="-" Then avg="-" Else avg=FormatNumber(rs("avg"),0)
		%>
		<tr>
			<td><%=x%></td>
			<td>
			<%If isNull(rs("orgID")) Then%>
				<%=rs("name")%>
			<%Else%>
				<a href='orgdata.asp?p=<%=rs("orgID")%>'><%=rs("name")%></a>
			<%End If%>
			</td>
			<td><%=FormatNumber(rs("amt"),0)%></td>
			<td><%=FormatNumber(rs("hds"),0)%></td>
			<td class="colHide2"><%=avg%></td>
			<%If p=0 Then%>
				<td class="colHide2"><%=rs("p1")%></td>
				<td class="colHide2"><%=rs("p2")%></td>
			<%End If%>
		</tr>
		<%rs.MoveNext
	Loop%>
</table>
<%Call CloseConRs(con,rs)%>
<p>Total amount in top 5000 HK$:<%=FormatNumber(sumamt,0)%></p>
<p>Committed headcount in top 5000:<%=FormatNumber(sumhds,0)%></p>
<p>Average per head HK$:<%=FormatNumber(sumamt/sumhds,0)%></p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>