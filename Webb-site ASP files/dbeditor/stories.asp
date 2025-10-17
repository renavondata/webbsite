<%Option explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include virtual="/dbeditor/prepMaster.inc"-->
<!--#include virtual="/dbpub/functions1.asp"-->
<%Dim p,sourceName,summary,URL,storyID,title,con,rs,human,pName,c
Call openEnigmaRs(con,rs)
If Not hasRole(con,5) Then
	'user lacks editing privilege on stories role
	Call closeConRs(con,rs)
	Response.Redirect("/dbeditor/")
End If
c=getInt("c",0) 'subject
p=getLng("p",0) 'person
If p>0 Then Call getPerson(p,human,pName)
If c>0 Then pName=con.Execute("SELECT IFNULL((SELECT name FROM categories WHERE ID="&c&"),'Subject not found')").Fields(0)
title="Stories about: "&pName%>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=pName%></h2>
<form method="post" action="stories.asp">
	<div class="inputs">Stories category <%=arrSelectZ("c",c,con.Execute("SELECT ID,name FROM categories ORDER BY name").GetRows,True,True,0,"")%></div>
	<div class="clear"></div>
</form>
<%If p>0 Then
	If human Then
		Call pplBar(p,7)
	Else
		Call orgBar(p,16)
	End If
	rs.Open "SELECT Title,ps.StoryID,StoryDate,URL,Summary,s.SourceID,SourceName FROM (personStories ps JOIN stories s "&_
		"ON ps.StoryID=s.StoryID) LEFT JOIN sources r ON s.SourceID=r.sourceID "&_
		"WHERE PersonID="&p&" ORDER BY StoryDate DESC;",con
Else
	rs.Open "SELECT Title,t.StoryID,StoryDate,URL,Summary,s.SourceID,SourceName FROM (storytags t JOIN stories s "&_
		"ON t.StoryID=s.StoryID) LEFT JOIN sources sr ON s.SourceID=sr.sourceID "&_
		"WHERE catID="&c&" ORDER BY StoryDate DESC;",con	
End If
If rs.EOF Then%>
	<p>No articles found.</p>
<%Else
	Dim rs2
	Set rs2=Server.CreateObject("ADODB.Recordset")
	Do Until rs.EOF
		sourceName=rs("SourceName")
		summary=rs("Summary")
		URL="story.asp?s="&rs("storyID")
		storyID=rs("StoryID")
		%>
		<div class="artsum">
			<a href="story.asp?s=<%=rs("storyID")%>"><%If rs("sourceID")=1 Then%><b><%=rs("Title")%></b><%Else%><%=rs("Title")%><%End If%></a>
			<br>
			<span style="color:gray">
				<%If sourceName<>"" Then Response.Write sourceName&", "%>
				<%=ForceDate(rs("StoryDate"))%>
			</span>
			<%If summary<>"" Then Response.write "<br>"&summary%>
			<ul class="navlist">
				<%rs2.Open "SELECT name1 AS name,ps.personID FROM personstories ps JOIN organisations o ON ps.personID=o.personID "&_
				"WHERE storyID="&storyID&" AND ps.personID<>"&p&" ORDER BY Name",con
				If Not rs2.EOF Then%>
					<li><a href="story.asp?s=<%=storyID%>">Orgs</a>
						<ul>
						<%Do Until rs2.EOF%>
							<li><a href="stories.asp?p=<%=rs2("PersonID")%>"><%=rs2("Name")%></a></li>
							<%rs2.MoveNext
						Loop%>
						</ul>
					</li>
				<%End If
				rs2.Close
				rs2.Open "SELECT CAST(fnameppl(name1,name2,cName)AS NCHAR)name,ps.personID FROM personstories ps JOIN people p "&_
					"ON ps.personID=p.personID WHERE storyID="&storyID&" AND ps.personID<>"&p&" ORDER BY name",con
				If Not rs2.EOF Then%>
					<li><a href="story.asp?s=<%=StoryID%>">People</a>
						<ul>
						<%Do Until rs2.EOF%>
							<li><a href="stories.asp?p=<%=rs2("PersonID")%>"><%=rs2("Name")%></a></li>
							<%rs2.MoveNext
						Loop%>
						</ul>
					</li>
				<%End If
				rs2.Close
				rs2.Open "SELECT name,catID FROM storytags s JOIN categories c ON s.catID=c.ID "&_
					"WHERE storyID="&storyID&" ORDER BY name",con
				If Not rs2.EOF Then%>
					<li><a href="story.asp?s=<%=storyID%>">Topics</a>
						<ul>
						<%Do Until rs2.EOF%>
							<li><a href='../dbpub/subject.asp?c=<%=rs2("catID")%>'><%=rs2("name")%></a></li>
							<%rs2.MoveNext
						Loop%>
						</ul>
					</li>
				<%End If
				rs2.Close%>
			</ul>
			<div class="clear"></div>
		</div>
		<%rs.MoveNext
	Loop
End If
Call CloseConRs(con,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
