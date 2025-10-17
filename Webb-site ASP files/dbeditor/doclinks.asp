<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbpub/functions1.asp"-->
<%Dim person,sort,name,ob,repURL,con,rs,URL
Call openEnigmaRs(con,rs)
person=getLng("p",0)
sort=Request("s")
name=fNameOrg(person)
Select Case sort
	Case "typup" ob="docLong,reportDate DESC"
	Case "typdn" ob="docLong DESC,reportDate"
	Case "repdn" ob="reportDate DESC,recordDate DESC"
	Case "repup" ob="reportDate,recordDate"
	Case "recup" ob="recordDate"
	Case "spddn" ob="docLong,speed DESC,recordDate"
	Case "spdup" ob="docLong,speed,recordDate DESC"
	Case Else
		sort="recdn"
		ob="recordDate DESC"
End Select
URL=Request.ServerVariables("URL")&"?p="&person%>
<title>Reporting dates: <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=name%></h2>
<%If person>0 Then
	rs.Open "SELECT d.ID,recordDate,reportDate,repfiled,r.URL,docLong FROM "&_
		"documents d JOIN (doctypes t,repfilings r) ON d.docTypeID=t.docTypeID AND d.repID=r.ID "&_
		"WHERE d.docTypeID IN(0,1,6) AND orgID="&person&" ORDER BY "&ob,con
	If rs.EOF Then%>
		<p><b>No reports logged.</b></p>
	<%Else%>
		<h2>Reports and links</h2>
		<p>The report date is as stated in the directors' report or interim 
		report and is usually the date on which the preliminary statement of 
		results is published. The full annual or interim report is usually filed 
		later than that.</p>
		<table class="numtable fcl">
		<tr>
			<th><%SL "Type","typup","typdn"%></th>
			<th><%SL "Record date","recdn","recup"%></th>
			<th><%SL "Report date","repup","repdn"%></th>
			<th>Report filed</th>
			<th>Got URL</th>
			<th>Add/edit URL</th>
		</tr>
		<%Do Until rs.EOF
			repURL=rs("URL")%>
			<tr>
				<td style="text-align:left">
					<%If isNull(repURL) Then%>
						<%=rs("docLong")%>
					<%Else%>
						<a target="_blank" href="<%=normURL(repURL)%>"><%=rs("docLong")%></a>
					<%End If%>
				</td>
				<td><%=MSdate(rs("recordDate"))%></td>
				<td><%=MSdate(rs("reportDate"))%></td>
				<td><%=Msdatetime(rs("repfiled"))%></td>
				<td><%If not isNull(repURL) Then response.Write "Y"%></td>
				<td><a href="docedit.asp?d=<%=rs("ID")%>">Edit</a></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>