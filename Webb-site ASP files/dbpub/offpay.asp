<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,name,ob,repURL,title,con,rs,a,c,o,x,y,d,found,rank,curr,lastCurr,sum,val,lastVal,sortCol,currs,s
Call openEnigmaRs(con,rs)
'list of currencies which have available conversion rates
currs=con.Execute("SELECT DISTINCT curr1,currency FROM currpair p JOIN currencies c ON p.curr1=c.ID "&_
	"UNION SELECT 18,'MOP' UNION SELECT 0,'HKD' ORDER BY currency").GetRows
p=getLng("p",0)
c=getInt("c",0)
o=getInt("o",2)
name=fnamePpl(p)
sort=Request("sort")
Select case sort
	Case "nam" ob="name,currency,p.d DESC":sortCol=1
	Case Else
		sort="yrdn":ob="Year(p.d) DESC,currency,p.d DESC,name":sortCol=4
End Select
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;c="&c&"&amp;o="&o
title=name%>
<title>Officer pay: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If p>0 Then
	Call humanBar(title,p,7)%>
	<form method="get" action="offpay.asp?c=<%=c%>">
		<input type="hidden" name="p" value="<%=p%>">
		<input type="hidden" name="sort" value="<%=sort%>">
		<div class="inputs">
			<input type="radio" name="o" value="1" <%=checked(o=1)%> onchange="this.form.submit()">Show original currency
		</div>
		<div class="inputs">
			<input type="radio" name="o" value="2" <%=checked(o=2)%> onchange="this.form.submit()">Convert all records at financial year-end to: <%=arrSelect("c",c,currs,True)%>
		</div>
		<div class="clear"></div>
	</form>
	<h3>Pay records</h3>
	<%
	s="SELECT p.orgID,name1 name,(SELECT posShort FROM directorships d JOIN positions p "&_
		"ON d.positionID=p.positionID WHERE director="&p&" AND company=p.orgID AND `rank`=p.pRank AND (isNull(apptDate) "&_
		"OR apptDate<=p.d) ORDER BY apptDate DESC LIMIT 1)posShort,p.pRank,p.d,p.currID,c.currency,"
	If o=1 Then
		s=s&"fees,salary,bonus,retire,share,total FROM pay p JOIN (organisations o,currencies c,documents d) ON p.orgID=o.personID "&_
			"AND p.currID=c.ID AND p.orgID=d.orgID AND p.d=d.recordDate WHERE d.pay AND p.pplID="&p
	Else
		s=s&"f*fees,f*salary,f*bonus,f*retire,f*share,f*total FROM "&_
			"pay p JOIN (organisations o,currencies c,documents d,payfx f) ON p.orgID=o.personID "&_
			"AND "&c&"=c.ID AND p.orgID=d.orgID AND p.d=d.recordDate AND d.docTypeID=0 AND p.d=f.d AND p.currID=f.repCurr "&_
			"AND f.dispCurr="&c&" WHERE d.pay AND pplID="&p
'		s=s&"f*fees,f*salary,f*bonus,f*retire,f*share,f*total FROM "&_
'			"(SELECT orgID,pRank,d,"&c&" currID,lastfx(currID,"&c&",d)f,fees,salary,bonus,retire,share,total FROM pay WHERE pplID="&p&")p "&_
'			"JOIN (organisations o,currencies c,documents d) ON p.orgID=o.personID "&_
'			"AND p.currID=c.ID AND p.orgID=d.orgID AND p.d=d.recordDate WHERE d.pay"
	End If
	rs.Open s&" ORDER BY "&ob,con
	If Not rs.EOF Then
		a=rs.GetRows
		'If sortCol=4 Then lastVal=1900 'year
		Select Case sortCol
			Case 1,2 val=a(sortCol,x)
			Case 4 val=Year(a(4,x))
		End Select
		curr=a(6,0)
		lastCurr=curr
		%>
		<p>Click on "Organisation" or "Year-end" to sort by firm or year. Click on the date to see all the pay of the 
		organisation for that year.</p>
		<%=mobile(3)%>
		<table class="numtable">
			<tr>
				<%If Not (sortCol=1) Then%>
					<th class="left"><%SL "Organisation","nam","nam"%></th>
				<%End If%>
				<th class="left">Last<br>position</th>
				<th><%SL "Year-end","yrdn","yrdn"%></th>
				<th class="colHide3">Fees</th>
				<th class="colHide3">Salary &amp;<br>benefits</th>
				<th class="colHide3">Bonus</th>
				<th class="colHide3">Retire</th>
				<th class="colHide3">Share-<br>based</th>
				<th>Total</th>
			</tr>
			<%Do Until x>Ubound(a,2)
				d=MSdate(a(4,x))
				Select Case sortCol
					Case 1 val=a(sortCol,x)
					Case 4 val=Year(a(4,x))
				End Select
				If val<>lastVal or curr<>lastCurr Then
					Redim sum(5) 'set totals to zero%>
					<tr>
						<td class="left" colspan="9"><h4><%=val&" "&curr%>'000</h4></td>
					</tr>
				<%End If%>
				<tr>
					<%If Not (sortCol=1) Then%>
						<td class="left"><%=a(1,x)%></td>
					<%End If%>
					<td class="left"><%=a(2,x)%></td>
					<td><a href="pay.asp?p=<%=a(0,x)%>&amp;d=<%=d%>"><%=d%></a></td>
					<%For y=7 To 11
						If Not isNull(a(y,x)) Then
							sum(y-7)=sum(y-7)+CLng(a(y,x))%>
							<td class="colHide3"><%=FormatNumber(a(y,x),0)%></td>
						<%Else%>
							<td class="colHide3"></td>
						<%End If%>
					<%Next
					If Not isNull(a(12,x)) Then
						sum(5)=sum(5)+CLng(a(12,x))%>
						<td><%=FormatNumber(a(12,x),0)%></td>
					<%Else%>
						<td></td>
					<%End If%>
				</tr>
				<%If x<Ubound(a,2) Then
					'prefetch next row, if rank is different then do total
					lastVal=val
					lastCurr=curr
					Select Case sortCol
						Case 1 val=a(sortCol,x+1)
						Case 4 val=Year(a(4,x+1))
					End Select
					curr=a(6,x+1)
				End If
				If val<>lastVal or curr<>lastCurr Or x=Ubound(a,2) Then%>
					<tr class="total">
						<td class="left" colspan="<%=IIF(sortCol=1,2,3)%>">Total</td>
						<%For y=0 to 4%>
							<td class="colHide3"><%=FormatNumber(sum(y),0)%></td>
						<%Next%>
						<td><%=FormatNumber(sum(5),0)%></td>
					</tr>
				<%End If
				x=x+1
			Loop%>
		</table>
	<%Else%>
		<p><b>No records found.</b></p>	
	<%End If
	rs.Close
End If
Call CloseConRs(con,rs)%>
<h3>Notes</h3>
<ol>
	<li>These data are incomplete. They are entered and checked by volunteers, so if you want to expand them then
	<strong><a href="../webbmail/username.asp">volunteer</a></strong> to be a Webb-site editor and add pay records 
	from annual reports! Please <strong><a href="../contact">report</a></strong> any errors.</li>
	<li>If a director sits on the boards of both a listed company and its listed subsidiary, then the parent company 
	records will normally include the pay at the subsidiary, so you should subtract that when looking at annual totals.</li>
</ol>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>