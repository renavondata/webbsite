<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="../dbpub/functions1.asp"-->
<%Dim sourceName,summary,URL,target1,rs2,storyID,syear,cnt,con,rs
Call openEnigmaRs(con,rs)
syear=getLng("y",Year(Date))
If syear="" or Not isNumeric(syear) Then syear=year(Now)
%>
<title>Webb-site articles published in <%=syear%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<form method="get" action="articlesyear.asp">
	<h2>Webb-site articles published in <%=rangeSelect("y",syear,False,,True,Year(Date),1998)%>
	<input type="submit" value="Go"/></h2>
</form>
<%Set rs2=Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT StoryID,Title,Summary,StoryDate,URL FROM enigma.stories WHERE sourceID=1 AND Year(StoryDate)="&_
	syear&" AND pubDate<=Now() ORDER BY StoryDate DESC",con
Do Until rs.EOF
	summary=rs("Summary")
	URL=rs("URL")
	storyID=rs("storyID")
	Select case Right(URL,4)
		Case ".asx",".ram",".asf" target1="_self"
		Case Else target1="_blank"
	End Select
	%>
	<div class="artsum">
		<a href="../articles/<%=URL%>"><b><%=rs("Title")%></b></a>
		<%If summary<>"" Then Response.write "<br>"&summary%>
		(<%=ForceDate(rs("StoryDate"))%>)
		<br/>
		<ul class="navlist">
			<%
			rs2.Open "SELECT Name1 As Name,personstories.PersonID FROM personstories JOIN Organisations ON personstories.PersonID=Organisations.PersonID "&_
				"WHERE StoryID="&StoryID&" ORDER BY Name",con
			If Not rs2.EOF Then%>
				<li><a href="artlinks.asp?s=<%=storyID%>">Orgs</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href='articles.asp?p=<%=rs2("PersonID")%>'><%=rs2("Name")%></a></li>
						<%rs2.MoveNext
					Loop%>
					</ul>
				</li>
			<%End If
			rs2.Close
			rs2.Open "SELECT CONCAT(Name1,', ',Name2) As Name,personstories.PersonID FROM personstories JOIN People ON personstories.PersonID=People.PersonID "&_
				"WHERE StoryID="&StoryID&" ORDER BY Name",con
			If Not rs2.EOF Then%>
				<li><a href="artlinks.asp?s=<%=storyID%>">People</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href='natperson.asp?p=<%=rs2("PersonID")%>'><%=rs2("Name")%></a></li>
						<%rs2.MoveNext
					Loop%>
					</ul>
				</li>
			<%End If
			rs2.Close
			rs2.Open "SELECT name,catID FROM storytags JOIN categories ON catID=ID "&_
				"WHERE StoryID="&StoryID&" ORDER BY name",con
			If Not rs2.EOF Then%>
				<li><a href="artlinks.asp?s=<%=storyID%>">Tags</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href='subject.asp?c=<%=rs2("catID")%>'><%=rs2("name")%></a></li>
						<%rs2.MoveNext
					Loop%>
					</ul>
				</li>
			<%End If
			rs2.Close%>
		</ul>
	</div>
	<div class="clear"></div>
	<%
	rs.MoveNext
Loop
Set rs2=Nothing
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>