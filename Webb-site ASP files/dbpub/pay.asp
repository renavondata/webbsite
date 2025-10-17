<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,name,ob,repURL,title,con,rs,a,x,y,d,found,rank,curr,sum,lastRank,lastCurr,multiCurr
Call openEnigmaRs(con,rs)
p=getLng("p",0)
name=fnameOrg(p)
d=Request("d")
If isDate(d) Then
	d=MSdate(d)
	rs.Open "SELECT URL,payPage FROM documents d JOIN repfilings r ON d.repID=r.ID WHERE d.orgID="&p&" AND d.docTypeID=0 AND d.recordDate='"&d&"' AND d.pay",con
	If Not rs.EOF Then
		repURL="https://www.hkexnews.hk/listedco/listconews/" & rs("URL")&"#page="&rs("payPage")
		found=True
	End If
	rs.Close
End If
If Not found Or Not isDate(d) Then
	d=con.Execute("SELECT MAX(recordDate)d FROM documents WHERE docTypeID=0 AND pay AND orgID="&p).Fields(0)
	d=MSdate(d)
	found=(d>"")
End If
sort=Request("sort")
Select case sort
	Case "fee" ob="fees DESC,dirname"
	Case "sal" ob="salary DESC,dirname"
	Case "bon" ob="bonus DESC,dirname"
	Case "ret" ob="retire DESC,dirname"
	Case "sha" ob="share DESC,dirname"
	Case "tot" ob="total DESC,dirname"
	Case "nam" ob="dirName"
	Case "pos" ob="posShort,dirname"
	Case Else
		sort="nam":ob="dirName"
End Select
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;d="&d
title=name%>
<title>Board pay: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If p>0 Then
	Call orgBar(title,p,12)
	If found Then
		'we have a completed pay-year%>
		<h3>Pay for financial year ended <%=d%></h3>
		<p>Source: <a href="<%=repURL%>" target="_blank">Annual report</a></p>
		<p>Note: while most data are extracted from annual reports, some data in these tables may have been taken from supplemental filings made in response to complaints 
		to SEHK by our volunteer editors. Please <a href="../contact">report</a> any errors.</p>
		<%rs.Open "SELECT pplID,CAST(fnameppl(name1,name2,cname) AS NCHAR)dirname,"&_
			"(SELECT posShort FROM directorships d JOIN positions p ON d.positionID=p.positionID WHERE director=pplID AND company="&p&_
			" AND `rank`=pay.pRank AND (isNull(apptDate) OR apptDate<=pay.d) ORDER BY apptDate DESC LIMIT 1)posShort,"&_
			"fees,salary,bonus,retire,share,total,pay.pRank,currency FROM pay JOIN (people p,currencies c) ON pay.pplID=p.personID "&_
			" AND pay.currID=c.ID WHERE pay.orgID="&p&" AND pay.d='"&d&"' ORDER BY currency,pRank,"&ob,con
		If Not rs.EOF Then
			a=rs.GetRows
			rank=a(9,0)
			lastRank=-1
			curr=a(10,0)
			lastCurr=-1
			%>
			<table class="numtable c2l yscroll">
				<tr>
					<th></th>
					<th><%SL "Name","nam","nam"%></th>
					<th class="left"><%SL "Last<br>position","pos","pos"%></th>
					<th><%SL "Fees","fee","fee"%></th>
					<th><%SL "Salary &amp;<br>benefits","sal","sal"%></th>
					<th><%SL "Bonus","bon","bon"%></th>
					<th><%SL "Retire","ret","ret"%></th>
					<th><%SL "Share-<br>based","sha","sha"%></th>
					<th><%SL "Total","tot","tot"%></th>
				</tr>
				<%Do Until x>Ubound(a,2)
					If curr<>lastCurr Then
						Redim sum(5)
						Redim gsum(5) 'set currency totals to zero
						lastRank=-1 'trigger rank title%>
						<tr>
							<td class="left" colspan="9"><h4><%=a(10,x)%> '000</h4></td>
						</tr>
					<%End If
					If rank<>lastRank Then
						Redim sum(5) 'set totals to zero%>
						<tr>
							<td></td>
							<td colspan="8"><h4><%=Array("Supervisors","Directors","Senior Management")(rank)%></h4></td>
						</tr>
					<%End If%>
					<tr>
						<td><%=x+1%></td>
						<td><a href="offpay.asp?sort=nam&amp;p=<%=a(0,x)%>"><%=a(1,x)%></a></td>
						<td class="left"><%=a(2,x)%></td>
						<%For y=3 To 8
							If Not isNull(a(y,x)) Then
								sum(y-3)=sum(y-3)+CLng(a(y,x))%>
								<td><%=FormatNumber(a(y,x),0)%></td>
							<%Else%>
								<td></td>
							<%End If%>
						<%Next%>
					</tr>
					<%If x<Ubound(a,2) Then
						'prefetch next row, if rank is different then do total
						lastRank=rank
						rank=a(9,x+1)
						lastCurr=curr
						curr=a(10,x+1)
						If curr<>lastCurr Then multiCurr=True
					End If
					If rank<>lastRank Or curr<>lastCurr Or x=Ubound(a,2) Then%>
						<tr class="total">
							<td></td>
							<td class="left" colspan="2">Total</td>
							<%For y=0 to 5
								gsum(y)=gsum(y)+sum(y)%>
								<td><%=FormatNumber(sum(y),0)%></td>
							<%Next%>
						</tr>
						<%If (curr<>lastCurr Or x=Ubound(a,2)) And gsum(5)<>sum(5) Then
							'there were multiple ranks or a currency switch, so generate grand total%>
							<tr class="total">
								<td></td>
								<td class="left" colspan="2"><%=IIF(multiCurr,"Currency total","Grand total")%></td>
								<%For y=0 to 5%>
									<td><%=FormatNumber(gsum(y),0)%></td>
								<%Next%>
							</tr>
						<%End If
					End If
					x=x+1
				Loop%>
			</table>
		<%End If
		rs.Close
		'find currencies of completed main board pay tables
		rs.Open "SELECT DISTINCT currID,currency FROM pay p JOIN currencies c ON p.currID=c.ID  WHERE p.orgID="&p&_
			" AND p.pRank=1 AND p.d IN(SELECT DISTINCT recordDate FROM documents WHERE docTypeID=0 AND pay AND orgID="&p&") ORDER BY currency",con%>
		<h3>Main board pay history</h3>
		<p>Click on the year-end to see the pay details.</p>
		<%Do Until rs.EOF
			a=con.Execute("SELECT d,CONCAT(URL,'#page=',IFNULL(d.paypage,'')),IFNULL(SUM(fees),0)fee,IFNULL(SUM(salary),0)sal,IFNULL(SUM(bonus),0)bon,"&_
				"IFNULL(SUM(retire),0)ret,IFNULL(SUM(share),0)sha,IFNULL(SUM(total),0)tot FROM pay p JOIN documents d ON p.d=d.recordDate "&_
				"LEFT JOIN repfilings r ON d.repID=r.ID WHERE d IN(SELECT DISTINCT recordDate FROM documents WHERE docTypeID=0 AND pay AND orgID="&p&_
				") AND p.orgID="&p&" AND pRank=1 AND p.currID="&rs("currID")&" AND d.docTypeID=0 AND d.orgID="&p&" GROUP BY d ORDER BY d DESC").GetRows%>
			<h4><%=rs("currency")%>'000</h4>
			<table class="numtable fcl">
				<tr>
					<th>Year-end</th>
					<th>Fees</th>
					<th>Salary &amp;<br>benefits</th>
					<th>Bonus</th>
					<th>Retire</th>
					<th>Share-<br>based</th>
					<th>Total</th>
				</tr>
			<%For y=0 to Ubound(a,2)
				d=MSdate(a(0,y))%>
				<tr>
					<td><a href="pay.asp?p=<%=p%>&amp;d=<%=d%>&amp;sort=<%=sort%>"><%=d%></a></td>
					<%For x=2 to Ubound(a,1)%>
						<td><%=FormatNumber(a(x,y),0)%></td>
					<%Next%>
					<td><%If a(1,y)>"" Then%>
							<a target="_blank" href="https://www.hkexnews.hk/listedco/listconews/<%=a(1,y)%>">Report</a>
					<%End If%></td>
				</tr>
			<%Next%>
			<tr class="total">
				<td>Total</td>
				<%For x=2 to Ubound(a,1)%>
					<td><%=FormatNumber(colSum(a,x),0)%></td>
				<%Next%>
			</tr>
			</table>
			<%rs.MoveNext
		Loop
		rs.Close%>
		<p><b>Want to see more years here? <a href="../webbmail/username.asp">volunteer</a> 
		to be a Webb-site editor and add the data from annual reports!</b></p>
	<%Else%>
		<p><b>No records found. If you want to see board pay for this firm, then 
		<a href="../webbmail/username.asp">volunteer</a> 
		to be a Webb-site editor and add the data from annual reports!</b></p>
	<%End if
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>