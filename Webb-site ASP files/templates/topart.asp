<!--#include virtual="templates/cotop.asp"-->
<%
Function getPage(URL)
	Dim refArr
	'get the referring page, if any
	refArr=Split(URL,"/")
	If UBound(refArr)>0 Then getPage=refArr(UBound(refArr))
	refArr=Split(getPage,"?")
	If UBound(refArr)>0 Then getPage=refArr(0)
End Function

Dim page,adoCon,rs,sDate,title,storyID,artSum,copywr
'copywr asserts our copywrite unless reversed in the article by external author, to remove our claim
copywr=True
Set adoCon=Server.CreateObject("ADODB.Connection")
adoCon.Open "DSN=enigmaMySQL;"
Set rs=Server.CreateObject("ADODB.Recordset")
page=getPage(Request.ServerVariables("URL"))
rs.Open "SELECT * FROM stories WHERE URL='"&page&"'",adoCon
If not rs.EOF Then
	title=rs("title")
	sDate=rs("storyDate")
	storyID=rs("storyID")
	artSum=rs("summary")
Else
	title="Title"
End If
rs.Close
%>
<script type="text/javascript">document.title="<%=title%>";</script>
<%If artSum<>"" Then%>
	<div class="summary"><%=artSum%></div>
<%End If%>
<h2 class="center"><%=title%><br>
<span class="headlinedate"><%=Day(sDate)&" "&MonthName(Month(sDate))&" "&Year(sDate)%></span></h2>