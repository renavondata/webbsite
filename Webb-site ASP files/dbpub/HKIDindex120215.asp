<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,ob,total,con,rs,sql,URL
Call openEnigmaRs(con,rs)
sort=Request("sort")
Select Case sort
	Case "hkiddn" ob="HKID DESC"
	Case "nameup" ob="name1,name2"
	Case "namedn" ob="name1 DESC,name2 DESC"
	Case Else
		ob="HKID"
		sort="hkidup"
End Select
sql="SELECT personID,name1, name2, HKID, HKIDsource,checkdigit(HKID) cd FROM people WHERE NOT isNull(HKIDsource) ORDER BY "&ob
rs.CursorLocation=3
rs.Open sql,con
total=rs.RecordCount
URL=Request.Servervariables("URL")
%>
<title>The HKID index</title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2>The HKID index</h2>
<p>Wherever possible, the Webb-site Who&#39;s Who (<strong>WWW</strong>) database avoids mistaken identity. 
It would help enormously transparency in the corporate and government world if companies, the Government and other organisations 
would publish the unique, lifelong Hong Kong Identity number assigned to 
an individual when appointing them to boards and committees, or the PRC ID 
number for mainland citizens. Then we could all 
be sure who they are talking about, rather than wondering <u>
which</u> &quot;Chan Chi Keung&quot; or &quot;Yang Bin&quot; has been appointed. 
ID numbers <a href="../articles/identity.asp">should not be regarded as secrets</a> 
- they are just more accurate identifiers than names. They tell you virtually 
nothing about a person - they are identifiers, not personal data.</p>
<p>In some cases, however, the HKID is or has been shown in documents freely 
accessible on the internet. On this page, we publish an index of names, HKIDs 
and links to a relevant document in each case. Links were valid at the time of 
posting. Sources include filings made by HK issuers with the US SEC, notices 
from liquidators in the Government Gazette, notices of wanted persons from the 
ICAC, documents on display on listed company web sites, and various others. We 
have not yet used any HKIDs from behind the Companies Registry pay-wall, but we 
reserve the right to do so. If it were not for the pay-wall, the data would be publicly accessible 
without charge, and we may make it so. There is no copyright in data.</p>
<p>If the name of a person in WWW includes an ID number, it is to distinguish that person from 
others with the same name, so that all names in WWW are unique. Click on the 
HKID to open the source document. Click on the name to see what positions they 
are known to hold. As always, click on the headings to sort. </p>
<p>Current number of people in the HKID index: <%=total%></p>
<table class="opltable">
	<tr>
		<th><%SL "HKID","hkidup","hkiddn"%></th>
		<th><%SL "Name","nameup","namedn"%></th>
	</tr>
<%Do Until rs.EOF%>
	<tr>
		<td><a href="<%=rs("HKIDsource")%>" target="_blank"><%=rs("HKID")&"("&rs("cd")&")"%></a></td>
		<td><a href="positions.asp?p=<%=rs("personID")%>"><%=rs("Name1")&", " & rs("Name2")%></a></td>
	</tr>
	<%rs.Movenext
Loop
rs.Close
rs.Open "SELECT Left(HKID,length(HKID)-6) AS prefix,count(personID) as count FROM enigma.people WHERE Not isNull(HKIDsource) GROUP BY prefix ORDER BY prefix"
%>
</table>
<h4>Distribution of prefixes</h4>
<table class="numtable fcl">
	<tr>
		<th>Prefix</th>
		<th>Number</th>
		<th>Share %</th>
	</tr>
	<%Do until rs.EOF%>
		<tr>
			<td><%=rs("prefix")%></td>
			<td><%=rs("count")%></td>
			<td><%=FormatNumber(Cint(rs("count"))*100/total,2)%></td>
		</tr>
		<%rs.MoveNext
	Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>