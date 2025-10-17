<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%
Dim sort,URL,con,rs,ob,atDate,lastholding,holding,change,issued,osDate,holders,bday,bmonth,byear,_
	nowYear,months,cnt,mend,o,ochk0,ochk1,i,n,p
sort=Request("sort")
Call openEnigmaRs(con,rs)
'whether to show rows with no holding change
If Request("o")="" Then o=Session("nochange") Else o=getBool("o")
Session("nochange")=o
Call findStock(i,n,p)
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>Total holdings in CCASS: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Total holdings in CCASS</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call ccassholdbar(i,atDate,5)
End If%>
<form method="get" action="ctothist.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="i" value="<%=i%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	<div class="inputs">
		<p>Table rows with no holding change:
			<input type="radio" name="o" value="1" <%=checked(o)%> onchange="this.form.submit()">include
			<input type="radio" name="o" value="0" <%=checked(Not o)%> onchange="this.form.submit()">exclude
		</p>
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>Total holdings in CCASS</h3>
	<%
	If sort="dateup" Then
		ob="atDate"
	Else
		ob="atDate DESC"
		sort="datedn"
	End If
	rs.Open "SELECT NCIPhldg+intermedHldg+CIPHldg AS holding,NCIPcnt+intermedcnt+CIPcnt AS holders,atDate,"&_
		"(SELECT Max(atDate) FROM issuedshares i WHERE i.atDate<=d.atDate AND issueID="&i&") AS maxDate,"&_
		"(SELECT outstanding FROM issuedshares WHERE issueID="&i&" AND atDate=maxDate) AS shares"&_
		" FROM ccass.dailylog d WHERE issueID="&i&" ORDER BY "&ob,con
	If rs.EOF Then%>
		<p><b>No records for this issue.</b></p>
	<%Else%>
		<%=mobile(1)%>
		<table class="numtable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th class="colHide3"><%SL "Holding<br>date","dateup","datedn"%></th>
			<th>Holding</th>
			<th class="colHide3">Change</th>
			<th>Holders</th>
			<th>Stake<br>%</th>
			<th class="colHide2">Issued<br>shares</th>
			<th class="colHide1">As at date</th>
		</tr>
		<%Do Until rs.EOF
			atDate=rs("atDate")
			issued=rs("shares")
			If not isNull(issued) Then issued=Cdbl(issued)
			osDate=rs("maxDate")
			holders=rs("holders")
			If sort="dateup" Then
				lastholding=holding
				holding=CDbl(rs("holding"))
				change=holding-lastholding
				rs.MoveNext
			Else
				holding=CDbl(rs("holding"))
				rs.MoveNext
				If Not rs.EOF Then lastholding=CDbl(rs("holding"))
				change=holding-lastholding
			End If
			If o Or change<>0 Then
				cnt=cnt+1
				%>
				<tr>
					<td class="colHide1"><%=cnt%></td>
					<td><a href="chldchg.asp?i=<%=i%>&amp;d=<%=MSdate(atDate)%>"><%=MSdate(atDate)%></a></td>
					<td class="colHide3"><%=FormatNumber(holding,0)%></td>
					<td class="colHide3"><%If (sort="dateup" And cnt>1) Or (sort="datedn" And Not rs.EOF) Then Response.Write FormatNumber(change,0)%></td>
					<td><%=holders%></td>
				<%If not isNull(issued) Then%>
					<td><%=FormatNumber(holding*100/issued,4)%></td>
					<td class="colHide2"><%=FormatNumber(issued,0)%></td>
					<td class="colHide1"><%=MSdate(osDate)%></td>
				<%Else%>
					<td></td>
					<td class="colHide2"></td>
					<td class="colHide1"></td>
				<%End If
			End If%>
			</tr>
		<%Loop%>
		</table>
	<%End If
	rs.Close
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>