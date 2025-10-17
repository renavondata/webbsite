<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim ob,e,sort,URL,r,count,repname,title,eCon,con,rs
Call openEnigmaRs(con,rs)
sort=Request("sort") 'sort order
e=Request("e") 'exchange
r=Request("r") 'docType
If r="" Or Not IsNumeric(r) Then r=0
'r=Clng(r)
Select Case e
	Case "m" eCon="1": title="Main Board"
	Case "g" eCon="20": title="GEM"
	Case "r" eCon="23": title="REIT"
	Case Else
		e="a"
		eCon="1,20,23"
		title="Main board, GEM & REIT"
End Select
Select case sort
	Case "namup" ob="name1"
	Case "namdn" ob="name1 DESC"
	Case "repdatedn" ob="repDate DESC,days DESC,name1"
	Case "repdateup" ob="repDate,days,name1"
	Case "recdatedn" ob="recDate DESC,days DESC,name1"
	case "recdateup" ob="recDate,days,name1"
	case "daysdn" ob="Days DESC,name1"
	Case Else
		sort="daysup"
		ob="Days,Name"
End Select
Select Case r
	Case 1 repname="interim"
	Case 6 repname="quarterly"
	Case Else
		repname="annual"
		r="0"
End Select
URL=Request.ServerVariables("URL")

rs.CursorLocation=3
rs.Open "SELECT orgID,ordCodeThen(orgID,CURDATE()) AS sc,name1,stockExID,MAX(recordDate) AS recDate,MAX(reportDate) AS repDate,"&_
	"datediff(Max(reportDate),Max(recordDate)) AS days "&_
    "FROM listedcoshkall l JOIN (documents d,organisations o) ON l.personID = d.OrgID AND l.personID=o.personID AND d.DocTypeID="&r&_
    " AND stockExID IN("&eCon&") AND NOT isnull(reportDate) GROUP BY orgID ORDER BY "&ob,con
%>
<title>HK <%=title%>&nbsp;<%=repname%> reporting speed</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>HK <%=title%>&nbsp;<%=repname%> reporting speed</h2>
<%=writeNav(e,"m,g,r,a","Main Board,GEM,REIT,All HK",URL&"?sort="&sort&"&amp;r="&r&"&amp;e=")%>
<%=writeNav(r,"0,1,6","Annual,Interim,Quarterly",URL&"?sort="&sort&"&amp;e=" &e& "&amp;r=")%>
<p>This table tells you how long it took HK-listed issuers to announce their 
latest <%=repname%> results. Click the link above to change results type. Under the Listing Rules, GEM-listed companies 
must announce annual results within 3 months and interim/quarterly results within 45 days, while main board listed companies 
must announce annual results within 3 months (before 31-Dec-10: 4 months) and interim results within 
2 months (before 30-Jun-10: 3 months). 
For those main board companies which report quarterly, only a handful do it 
voluntarily, and the rest because of an overseas listing of the company or its 
parent, including stocks listed in Shanghai, Singapore, Malaysia or USA. Click on column headings to sort the data.</p>

<p>Result type: <b><%=repname%></b><br/>
Number of companies which have announced results since listing:
<b><%=rs.RecordCount%></b></p>
<%=mobile(2)%>
<table class="txtable yscroll">
	<%URL=URL&"?e="&e&"&amp;r="&r%>
	<tr>
		<th class="colHide3 right">Row</th>
		<th class="colHide2">Stock<br>code</th>
		<th><%SL "Name","namup","namdn"%></th>
		<th><%SL "Days","daysup","daysdn"%></th>
		<th class="colHide3 nowrap"><%SL "Record date","recdatedn","recdateup"%></th>
		<th class="colHide3 nowrap"><%SL "Result date","repdatedn","repdateup"%></th>
	</tr>
<%Do Until rs.EOF
	count=count+1%>
	<tr>
		<td class="colHide3"><%=count%></td>
		<td class="colHide2"><%=rs("sc")%></td>
		<td><a href='orgdata.asp?p=<%=rs("OrgID")%>'><%=rs("name1")%></a></td>
		<td><%=rs("days")%></td>
		<td class="colHide3 nowrap"><%=MSdate(rs("recDate"))%></td>
		<td class="colHide3 nowrap"><%=MSdate(rs("repDate"))%></td>
	</tr>
	<%	rs.MoveNext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>