<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Function pURL(s)
	If Left(s,4)="http" Or Left(s,3)="../" Then pURL=s Else pURL="../articles/"&s
End Function

Function targ(s)
	If Left(s,4)<>"http" Then
		targ="_self"
	Else
		Select Case Right(s,4)
			Case ".asx",".ram",".asf" targ="_self"
			Case Else targ="_blank"
		End Select
	End If
End Function

Dim p,Name,sourceName,summary,URL,URL2,URL2text,StoryID,con,rs
Call openEnigmaRs(con,rs)
p=getLng("p",0)
name=fnameppl(p)%>
<title><%=Name%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%Call humanBar(name,p,6)%>
<ul class="navlist">
	<li><a target="_blank" href="FAQW.asp">FAQ</a></li>
</ul>
<div class="clear"></div>
<%
'list articles
rs.Open "SELECT Title,ps.StoryID,StoryDate,URL,Summary,stories.SourceID,SourceName,URL2,URL2Text,sn.StoryID snID FROM (personstories ps JOIN stories "&_
	"ON ps.StoryID=stories.StoryID) LEFT JOIN sources ON stories.SourceID=sources.sourceID "&_
	"LEFT JOIN SFCnews sn ON ps.StoryID=sn.storyID "&_
	"WHERE PersonID="&p&" AND pubDate<=NOW() ORDER BY StoryDate DESC;",con
If rs.EOF Then%>
	<p>No articles found.</p>
<%Else
	Dim rs2
	Set rs2=Server.CreateObject("ADODB.Recordset")
	Do Until rs.EOF
		sourceName=rs("SourceName")
		summary=rs("Summary")
		URL=IIF(isNull(rs("snID")),pURL(rs("URL")),"artlinks.asp?s="&rs("storyID"))
		URL2text=rs("URL2Text")
		StoryID=rs("StoryID")%>
		<div class="artsum">
			<%If rs("sourceID")=1 Then%>
				<a target="<%=targ(URL)%>" href="<%=URL%>"><b><%=rs("Title")%></b></a>
				<%If URL2Text<>"" Then
					URL2=pURL(rs("URL2"))%>
					|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><b><%=URL2Text%></b></a>
				<%End If%>
				<br>
				<%=summary%>&nbsp;(<%=ForceDate(rs("StoryDate"))%>)
			<%Else%>
				<a target="<%=targ(URL)%>" href="<%=URL%>"><%=rs("Title")%></a>
				<%If URL2Text<>"" Then
					URL2=pURL(rs("URL2"))%>
					|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><%=URL2Text%></a>
				<%End If%>
				<br>
				<span style="color:gray">
					<%If sourceName<>"" Then Response.Write sourceName&", "%>
					<%=ForceDate(rs("StoryDate"))%>
				</span>
				<%If summary<>"" Then Response.write "<br>"&summary%>
			<%End If%>
			<ul class="navlist">
				<%rs2.Open "SELECT name1 As name,ps.personID FROM personstories ps JOIN organisations o "&_
					"ON ps.personID=o.personID WHERE storyID="&storyID&" ORDER BY name",con
				If Not rs2.EOF Then%>
				<li><a href="artlinks.asp?s=<%=StoryID%>">Orgs</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href="articles.asp?p=<%=rs2("PersonID")%>"><%=rs2("Name")%></a></li>
						<%rs2.MoveNext
					Loop%>
					</ul>
				</li>
				<%End If
				rs2.Close	
				rs2.Open "SELECT fnameppl(name1,name2,cName) AS name,ps.PersonID FROM personstories ps JOIN people p "&_
					"ON ps.personID=p.PersonID WHERE storyID="&storyID&" AND ps.personID<>"&p&" ORDER BY name",con
				If Not rs2.EOF Then%>
				<li><a href="../dbpub/artlinks.asp?s=<%=StoryID%>">People</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href="natarts.asp?p=<%=rs2("PersonID")%>"><%=rs2("Name")%></a></li>
						<%rs2.MoveNext
					Loop%>
					</ul>
				</li>
				<%End If
				rs2.Close
				rs2.Open "SELECT name,s.catID FROM storytags s JOIN categories c ON s.catID=c.ID "&_
					"WHERE storyID="&storyID&" ORDER BY name",con
				If Not rs2.EOF Then%>
				<li><a href="../dbpub/artlinks.asp?s=<%=StoryID%>">Topics</a>
					<ul>
					<%Do Until rs2.EOF%>
						<li><a href="subject.asp?c=<%=rs2("catID")%>"><%=rs2("name")%></a></li>
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
Set rs2=Nothing
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>