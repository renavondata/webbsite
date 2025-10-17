<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%
Dim sort,URL,con,rs,ob,atDate,CCASSID,holding,change,issued,osDate,lastholding,lastissued,_
	lastAtDate,bday,bmonth,byear,nowYear,months,cnt,mend,o,i,n,p
Call openEnigmaRs(con,rs)
sort=Request("sort")

'whether to show rows with no holding change
If Request("o")="" Then o=Session("nochange") Else o=getBool("o")
Session("nochange")=o
Call findStock(i,n,p)
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>Securities not in CCASS: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Estimated securities not in CCASS</h2>
	<p><b><%=title%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call ccassholdbar(i,atDate,6)
End If%>
<form method="get" action="reghist.asp">
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
	<h3>Estimated securities not in CCASS</h3>
	<%
	If sort="dateup" Then
		ob="atDate"
	Else
		ob="atDate DESC"
		sort="datedn"
	End If
	rs.Open "SELECT atDate, intermedHldg+NCIPhldg+CIPhldg AS ctotal,"&_
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
			<th><%SL "Holding<br>date","dateup","datedn"%></th>
			<th class="colHide2">Holding</th>
			<th>Change</th>
			<th>Stake<br>%</th>
			<th class="colHide3">Issued<br>shares</th>
			<th class="colHide1">As at date</th>
		</tr>
		<%Do Until rs.EOF
			atDate=rs("atDate")
			issued=rs("shares")
			If not isNull(issued) Then issued=Cdbl(issued)
			osDate=rs("maxDate")
			If sort="dateup" Then
				lastholding=holding
				holding=issued-CDbl(rs("ctotal"))
				change=holding-lastholding
				rs.MoveNext
			Else
				holding=issued-CDbl(rs("ctotal"))
				rs.MoveNext
				If Not rs.EOF AND Not isNull(rs("shares")) Then lastholding=CDbl(rs("shares"))-CDbl(rs("ctotal"))
				change=holding-lastholding
			End If
			If o Or change<>0 Then
				cnt=cnt+1
				%>
				<tr>
					<td class="colHide1"><%=cnt%></td>
					<td><a href="chldchg.asp?i=<%=i%>&amp;d=<%=MSdate(atDate)%>"><%=MSdate(atDate)%></a></td>
					<td class="colHide2"><%=FormatNumber(holding,0)%></td>
					<td><%If (sort="dateup" And cnt>1) Or (sort="datedn" And Not rs.EOF) Then Response.Write FormatNumber(change,0)%></td>		
					<%If not isNull(issued) Then%>
						<td><%=FormatNumber(holding*100/issued,2)%></td>
						<td class="colHide3"><%=FormatNumber(issued,0)%></td>
						<td class="colHide1"><%=MSdate(osDate)%></td>
					<%Else%>
						<td></td>
						<td class="colHide3"></td>
						<td class="colHide1"></td>
					<%End If%>
				</tr>
			<%End If
		Loop%>
		</table>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>