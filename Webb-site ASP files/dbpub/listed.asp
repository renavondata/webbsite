<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim ob,exch,count,title,CAGret,CAGrel,totRet,sort,URL,d,e,t,eStr,tStr,p,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort")
e=Request("e")
t=Request("t")
d=getMSdateRange("d","1986-01-01",MSdate(Date))

Select case sort
	Case "namedn" ob="Name1 DESC"
	Case "codeup" ob="StockCode"
	Case "codedn" ob="StockCode DESC"
	Case "typeup" ob="typeShort,Name1"
	Case "typedn" ob="typeShort DESC,Name1"
	Case "datedn" ob="FirstTradeDate DESC,Name1"
	Case "dateup" ob="FirstTradeDate,Name1"
	Case "cagretdn" ob="CAGret DESC,FirstTradeDate"
	Case "cagretup" ob="CAGret,FirstTradeDate DESC"
	Case "cagreldn" ob="CAGrel DESC,firstTradeDate"
	Case "cagrelup" ob="CAGrel,firstTradeDate DESC"
	Case "totrdn" ob="totRet DESC,FirstTradeDate"
	Case "totrup" ob="totRet,FirstTradeDate DESC"
	Case Else
		sort="nameup"
		ob="Name1,StockCode"
End Select
Select Case e
	Case "m" eStr="=1" :title="Main Board primary-listed"
	Case "g" eStr="=20": title="Growth Enterprise Market"
	Case "s" eStr="=22": title="Secondary-listed"
	Case "r" eStr="=23": title="Real Estate Investment Trust"
	Case "c" eStr="=38": title="Collective Investment Scheme"
	Case Else
		e="a"
		eStr="IN (1,20,22)"
		title="Main Board, GEM and secondary"
End Select
Select Case t
	Case "r" tStr="=2" : title=title&" rights"
	Case "w" tStr="=1" : title=title&" subscription warrants"
	Case "h" tStr="=6" : title=title&" H-shares"
	Case Else
		t="s"
		tStr="NOT IN(1,2,40,41,46)"
		If e="r" Or e="c" Then title=title&" units" Else title=title&" shares"
End Select
rs.Open "SELECT StockCode,issueID,typeShort,typeLong,Name1,PersonID,FirstTradeDate,totRet(issueID,FirstTradeDate,'"&d&"')-1 as totRet,"&_
	"CAGRet(issueID,FirstTradeDate,'"&d&"')-1 AS CAGret, "&_
	"CAGRel(issueID,FirstTradeDate,'"&d&"')-1 AS CAGrel FROM stocklistings JOIN "&_
	"(issue,organisations,sectypes) ON issue.issuer=organisations.personID AND issue.typeID=sectypes.typeID "&_
	"AND stocklistings.issueID=issue.ID1 WHERE (isNull(FirstTradeDate) OR FirstTradeDate<='"&d&"') AND "&_
	"(isNull(DelistDate) OR DelistDate>'"&d&"') AND StockExID "&eStr&" AND NOT 2ndCtr AND issue.typeID "&tStr&" ORDER BY "&ob,con
URL=Request.ServerVariables("URL")
p=URL&"?d="&d&"&amp;sort="&sort&"&amp;"
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li class="livebutton">Listed</li>
	<li><a href="delisted.asp?e=<%=e%>&amp;t=<%=t%>&amp;sort=<%=sort%>">Delisted</a></li>
</ul>
<%=writeNav(e,"m,g,s,a,r,c","Main Board,GEM,Secondary,All HK,REIT,CIS",p&"t="&t&"&amp;e=")%>
<%=writeNav(t,"s,r,w,h","Shares/units,Rights,Warrants,H-shares",p&"e="&e&"&amp;t=")%>
<ul class="navlist">
	<li><a href="TRnotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<p>Current company names are shown but may have been different on the snapshot date. 
Total returns are measured from the latest of the start date and 3-Jan-1994 
until the snapshot date. CAGR is the annualised return and is not shown for 
periods under 180 days. Relative returns are to the
<a href="orgdata.asp?p=51819">Tracker Fund of 
HK</a> (2800), starting from the latest of 12-Nov-1999 and the listing date.</p>
<form method="get" action="listed.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="e" value="<%=e%>">
	<input type="hidden" name="t" value="<%=t%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value=''">
	</div>
	<div class="clear"></div>
</form>
<%If rs.EOF Then%>
	<p><b>None found.</b></p>
<%Else
	URL=URL&"?e="&e&"&amp;t="&t&"&amp;d="&d%>
	<%=mobile(1)%>
	<table class="numtable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th><%SL "Stock<br>Code","codeup","codedn"%></th>
			<th class="left colHide3"><%SL "Sec.<br>type","typeup","typedn"%></th>
			<th class="left"><%SL "Issuer","nameup","namedn"%></th>
			<th class="colHide3"><%SL "First trade<br>on this<br>board","datedn","dateup"%></th>
			<th class="colHide2"><%SL "Total<br>return<br>%","totrdn","totrup"%></th>
			<th class="colHide2"><%SL "CAGR<br>total<br>return<br>%","cagretdn","cagretup"%></th>
			<th><%SL "CAGR<br>relative<br>return<br>%","cagreldn","cagrelup"%></th>		
		</tr>
		<%Do Until rs.EOF
			count=count+1
			CAGret=rs("CAGret")
			If isNull(CAGret) Then CAGret="" Else CAGret=FormatNumber(CAGret*100,2)
			totRet=rs("totRet")
			If isNull(totRet) Then totRet="" Else totRet=FormatNumber(totRet*100,2)
			CAGrel=rs("CAGrel")
			If isNull(CAGrel) Then CAGrel="" Else CAGrel=FormatNumber(CAGrel*100,2)
			%>
			<tr>
				<td class="colHide1"><%=count%></td>
				<td><%=rs("StockCode")%></td>
				<td class="left colHide3"><span class="info"><%=rs("typeShort")%><span><%=rs("typeLong")%></span></span></td>
				<td class="left"><a href='orgdata.asp?p=<%=rs("PersonID")%>'><%=rs("Name1")%></a></td>
				<td class="colHide3" style="white-space:nowrap"><%=MSdate(rs("FirstTradeDate"))%></td>
				<td class="colHide2"><a href="str.asp?i=<%=rs("issueID")%>"><%=totRet%></a></td>
				<td class="colHide2"><%=CAGret%></td>
				<td><%=CAGrel%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>