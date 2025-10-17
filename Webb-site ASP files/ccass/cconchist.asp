<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%
Dim sort,URL,con,rs,ob,stake,cnt,d,i,n,p
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "cp5up" ob="cp5"
	Case "cp5dn" ob="cp5 DESC"
	Case "cp10up" ob="cp10"
	Case "cp10dn" ob="cp10 DESC"
	Case "cp10ipup" ob="cp10ip"
	Case "cp10ipdn" ob="cp10ip DESC"
	Case "dateup" ob="atDate"
	Case "stakdn" ob="stake DESC"
	Case "stakup" ob="stake"
	Case Else
		ob="atDate DESC"
		sort="datedn"
End Select
Call findStock(i,n,p)
URL=Request.ServerVariables("URL")&"?i="&i%>
<title>CCASS concentration: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>CCASS concentration analysis</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call ccassbar(i,d,3)
End If%>
<ul class="navlist"><li><a href="cconc.asp">All stocks</a></li></ul>
<div class="clear"></div>
<form method="get" action="cconchist.asp">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h3>CCASS concentration analysis</h3>
	<p>The denominator for the first two columns is all holdings in CCASS except 
	unnamed (or &quot;Non-Consenting&quot;) Investor Participants. The numerator and 
	denominator in the third column includes the aggregate holdings of unnamed 
	Investor Participants. The "Stake in CCASS" is the percentage of issued 
	shares which are in CCASS.</p>
	<table class="numtable yscroll">
	<tr>
		<th class="colHide1">Row</th>
		<th><%SL "Date","datedn","dateup"%></th>
		<th><%SL "Top 5<br>%","cp5dn","cp5up"%></th>
		<th><%SL "Top 10<br>%","cp10dn","cp10up"%></th>
		<th><%SL "Top 10<br>+NCIP<br>%","cp10ipdn","cp10ipup"%></th>
		<th><%SL "Stake in<br>CCASS<br>%","stakup","stakdn"%></th>
	</tr>
	<%
	rs.Open "SELECT atDate,c5/(CIPhldg+intermedhldg) AS cp5,c10/(CIPhldg+intermedHldg) AS cp10,"&_
		"(c10+NCIPhldg)/(CIPhldg+IntermedHldg+NCIPhldg) AS cp10ip,"&_
		"(select max(atDate) from issuedshares i where i.atDate<=d.atDate and issueid="&i&") as issuedate,"&_
		"(select (CIPhldg+IntermedHldg+NCIPhldg)/outstanding from issuedshares where atDate=issuedate and issueid="&i&") as stake "&_
		"FROM ccass.dailylog d WHERE issueID="&i&" AND c5>0 AND CIPhldg+intermedHldg>0 ORDER BY "&ob, con
	cnt=0
	Do Until rs.EOF
		cnt=cnt+1
		d=MSdate(rs("atDate"))
		stake=rs("stake")
		%>
		<tr>
			<td class="colHide1"><%=cnt%></td>
			<td><a href="choldings.asp?i=<%=i%>&amp;d=<%=d%>"><%=d%></a></td>
			<td><%=FormatNumber(cdbl(rs("cp5"))*100,2)%></td>
			<td><%=FormatNumber(cdbl(rs("cp10"))*100,2)%></td>
			<td><%=FormatNumber(cdbl(rs("cp10ip"))*100,2)%></td>
			<td><%If not isnull(stake) then Response.Write FormatNumber(cdbl(rs("stake"))*100,2)%></td>
		</tr>
		<%rs.MoveNext
	Loop%>
	</table>
	<%If cnt=0 Then%>
		<p>None found.</p>
	<%End If
End If
Call CloseConRs(con,rs)
%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>