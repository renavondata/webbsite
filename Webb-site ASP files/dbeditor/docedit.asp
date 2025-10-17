<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include file="../dbeditor/prepMaster.inc"-->
<%Dim person,name,cName,repURL,docID,docLong,recDate,repDate,repFiled,hint,subURL,subDT,lastMod,user,changed,con,rs,URL
Call openEnigmaRs(con,rs)
docID=Request("d")
subURL=Trim(Request("subURL"))
subDT=MSdateTime(Request("filed"))
name="No record found"
If IsNumeric(docID) And docID<>"" Then
	rs.Open "SELECT personID,name1,cName,docLong,recordDate,repfiled,URL repURL,reportDate,d.modified,user "&_
		"FROM documents d JOIN (organisations o,docTypes t,repfilings r) "&_
		"ON d.docTypeID=t.docTypeID AND d.orgID=o.personID AND d.repID=r.ID "&_
		"WHERE d.ID="&docID,con
	If Not rs.EOF Then
		person=rs("personID")
		name=rs("name1")
		cName=rs("cName")
		docLong=rs("docLong")
		recDate=MSdate(rs("recordDate"))
		repDate=MSdate(rs("reportDate"))
		repFiled=MSdatetime(rs("repFiled"))
		repURL=rs("repURL")
		lastMod=MSdatetime(rs("modified"))
		user=rs("user")
		changed=False
		If Request("submit")="Submit" Then
			If subURL="" Then
				hint=hint&"Please enter URL. "
			ElseIf subDT="" Then
				hint=hint&"Please enter date-time of filing. "
			ElseIf cDate(subDT)<cDate(repDate) Then
				hint="Report cannot be filed before the report date. Check your filing date and format: YYYY-MM-DD HH:MM"
			ElseIf subURL<>repURL Or subDT<>repFiled Then
				If subURL<>repURL Then hint=hint&"URL changed. "
				If subDT<>repfiled Then hint=hint&"Date-time changed. "
				strSQL="UPDATE enigma.documents SET repURL='"&subURL&"',repFiled='"&subDT&"' WHERE ID="&docID
				Call prepMaster(conMaster)
				conMaster.Execute strSQL
				conMaster.Close
				Set conMaster=Nothing
				repFiled=subDT
				repURL=subURL
				changed=True
			End If
		Else
			subURL=repURL
			subDT=repFiled
		End If
	End If
	rs.Close
End If
URL=Request.ServerVariables("URL")&"?p="&person%>
<title>Edit document info: <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=name%><%If not isNull(cName) Then Response.Write "<br/>" & cName%></h2>
<%If name<>"No record found" Then%>
	<h2>Enter or change filing date-time and URL of report</h2>
	<p>The filing date and time are shown on the HKEx search results page. Do 
	not cut-and-past the dates, as they are the wrong format so ambiguous dates 
	will be reversed from DD/MM to MM/DD. Use only YYYY-MM-DD HH:MM (you can 
	type a dot instead of a colon). </p>
	<table>
		<tr><td>Report type:</td><td><%=docLong%></td></tr>
		<tr><td>Accounting date:</td><td><%=recDate%></td></tr>
		<tr><td>Report dated:</td><td><%=repDate%></td></tr>
		<tr><td>Report filed date-time:</td><td><%=MSdatetime(repFiled)%> HKT</td></tr>
		<tr><td>URL:</td><td><a target="_blank" href="<%=repURL%>"><%=repURL%></a></td></tr>
		<%If not changed Then%>
			<tr><td>Last modified:</td><td><%=lastMod%> HKT</td></tr>
			<tr><td>Modified by:</td><td><%=user%></td></tr>
		<%End If%>
	</table>
	<form method="post" action="docedit.asp">
	<input type="hidden" name="d" value="<%=docID%>"/>
	<p>Date and time filed: <input type="datetime-local" name="filed" value="<%=subDT%>"/> (YYYY-MM-DD HH:MM)</p>
	<p>URL: https://www.hkexnews.hk/listedco/listconews/ <input type="text" name="subURL" value="<%=subURL%>" size="90"/></p>
	<input type="submit" name="submit" value="Submit"/>
	</form>
	<p><b><%=hint%></b></p>
	<p><a href="doclinks.asp?p=<%=person%>">Back to list</a></p>
<%End If
Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>