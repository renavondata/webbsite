<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim p,sort,URL,name,ob,repURL,title,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
sort=Request("sort")
name=fnameOrg(p)
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
URL=Request.ServerVariables("URL")&"?p="&p
title=name%>
<title>Financial reports: <%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If p>0 Then
	Call orgBar(title,p,8)
	rs.Open "SELECT recordDate,reportDate,DATEDIFF(reportDate,recordDate) As speed,docLong,URL,r.repfiled,fsize FROM "&_
		"documents d JOIN doctypes dt ON d.docTypeID=dt.docTypeID "&_
		"LEFT JOIN repfilings r ON d.repID=r.ID "&_
		"WHERE d.docTypeID IN(0,1,6) AND d.orgID="&p&" ORDER BY "&ob,con
	If Not rs.EOF Then%>
		<p>The results date is the date on which the results were published, as 
		stated in the annual directors' report or quarterly/interim report. The 
		full report is usually filed later than results. Click the report name 
		to open it, where linked.</p>
		<%=mobile(3)%>		
		<table class="numtable fcl">
			<tr>
				<th><%SL "Type","typup","typdn"%></th>
				<th class="colHide3">Size<br/>MB</th>
				<th><%SL "Record date","recdn","recup"%></th>
				<th><%SL "Results date","repup","repdn"%></th>
				<th><%SL "Speed<br/>(days)","spdup","spddn"%></th>
				<th class="colHide3">Report filed</th>
			</tr>
		<%Do Until rs.EOF
			repURL=rs("URL")%>
			<tr>
				<td>
					<%If isNull(repURL) Then
						Response.write rs("docLong")
					Else
						If Left(repURL,5)="https" Then
							repURL="http"&Right(repURL,len(repURL)-5)
						ElseIf Left(repURL,4)<>"http" Then
							repURL="https://www.hkexnews.hk/listedco/listconews/"&repURL
						End If
						%>
						<a target="_blank" href="<%=repURL%>"><%=rs("docLong")%></a>
					<%End If%>
				</td>
				<td class="colHide3"><%If Not isNull(rs("fsize")) Then Response.Write FormatNumber(rs("fsize")/1024,1)%></td>
				<td><%=MSdate(rs("recordDate"))%></td>
				<td><%=MSdate(rs("reportDate"))%></td>
				<td><%=rs("speed")%></td>
				<td class="colHide3"><%=Left(Msdatetime(rs("repfiled")),16)%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		</table>
	<%Else%>
		<p><b>No reports logged.</b></p>
	<%End if
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>