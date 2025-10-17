<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
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

Dim Title,URL,URL2text,URL2,StoryID,target,name,sourceID,sourceName,StoryDate,Summary,image,SFCnews,lang,html,SFCtitle,_
	issueDate,modTime,con,rs,sql
Call openEnigmaRs(con,rs)
StoryID=GetLng("s",0)
If StoryID>0 Then
	rs.Open "SELECT * FROM SFCnews WHERE storyID="&storyID,con
	If Not rs.EOF THen
		SFCnews=True
		issueDate=rs("issueDate")
		modTime=rs("modTime")
		lang=Lcase(Request("lang"))
		If lang="tc" Then
			SFCtitle=rs("titleTC")
			html=rs("htmlTC")
		Else
			SFCtitle=rs("titleEN")
			html=rs("htmlEN")
		End If
	End If
	rs.Close
	sql="SELECT * from stories JOIN sources ON stories.sourceID=sources.sourceID WHERE pubDate<=Now() AND StoryID="&StoryID
	rs.Open sql,con
	If rs.EOF Then
		Title="No such article"
		SFCnews=False
		storyID=0
	Else
		Title=rs("Title")
		URL=rs("URL")
		Summary=rs("Summary")
		URL2text=rs("URL2text")
		URL2=pURL(rs("URL2"))		
		If Not SFCnews Then
			URL=pURL(URL)
			sourceID=rs("sourceID")
			If sourceID=1 Then
				Call CloseConRs(con,rs)
				Response.Redirect(URL)
			End If 
			sourceName=rs("sourceName")
			StoryDate=rs("StoryDate")
			image=rs("image")
		End If
	End If
	rs.Close
Else
	Title="No article was specified"
End if
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<%If SFCnews Then%>
	<h3><%=Title%></h3>
	<%If summary<>"" Then%>
		<p><%=summary%></p>
	<%End If
	If URL2Text<>"" Then%>
		<h3>Further information</h3>
		<p><a target="<%=targ(URL2)%>" href="<%=URL2%>"><%=URL2Text%></a></p>
	<%End If
Else%>
	<h2>In this article</h2>
	<p><b>
	<a target="<%=targ(URL)%>" href="<%=URL%>"><%=Title%></a>
	<%If URL2Text<>"" Then%>
		|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><%=URL2Text%></a>
	<%End If%>
	</b></p>
	<p style="color:gray">
		<%If sourceName<>"" Then%>
			<%=sourceName&", "%>
		<%End If%>
		<%=ForceDate(StoryDate)%>	
	</p>
	<%If summary<>"" Then%>
		<p><%=summary%></p>
	<%End If
End If
If image<>"" Then
	If left(image,4)<>"http" Then image="../images/" & image%>
	<a target="<%=targ(image)%>" href="<%=image%>"><img class="center" alt="image" src="<%=image%>"></a>
<%End If
If SFCnews Then%>
	<div class="letterbox" style="margin-left:20px">
		<%If lang="tc" Then%>
			<p><a href="artlinks.asp?s=<%=storyID%>">English</a></p>
		<%Else%>
			<p><a href="artlinks.asp?lang=tc&s=<%=storyID%>">繁</a></p>
		<%End If%>
		<h3 style="color:teal"><%=SFCtitle%></h3>
		<p><b>Issue date: <%=MSdateTime(issueDate)%></b></p>
		<%=html%>
		<span style="color:gray">News captured as of:<%=MSdateTime(modTime)%></span>
		<p style="color:gray"><a target="_blank" href="https://apps.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=<%=URL%>">Source: SFC</a></p>
	</div>
<%End If
rs.Open "SELECT CAST(fnameOrg(Name1,cName) AS NCHAR) Name,personstories.PersonID FROM personstories JOIN Organisations ON personstories.PersonID=Organisations.PersonID "&_
	"WHERE StoryID="&StoryID&" ORDER BY Name",con
If Not rs.EOF Then%>
	<h3>Organisations</h3>
	<ul>
	<%Do Until rs.EOF%>
		<li><a href='articles.asp?p=<%=rs("PersonID")%>'><%=rs("Name")%></a></li>
		<%rs.MoveNext
	Loop%>
	</ul>
<%End If
rs.Close
rs.Open "SELECT CAST(fnameppl(name1,name2,cname) AS NCHAR) Name,personstories.PersonID FROM personstories JOIN People ON personstories.PersonID=People.PersonID "&_
	"WHERE StoryID="&StoryID&" ORDER BY Name",con
If Not rs.EOF Then%>
	<h3>People</h3>
	<ul>
	<%Do Until rs.EOF%>
		<li><a href="natarts.asp?p=<%=rs("PersonID")%>"><%=rs("Name")%></a></li>
		<%rs.MoveNext
	Loop%>
	</ul>
<%End If
rs.Close
rs.Open "SELECT name,catID FROM storytags s JOIN categories c ON s.catID=c.ID "&_
	"WHERE StoryID="&StoryID&" ORDER BY name",con
If Not rs.EOF Then%>
	<h3>Topics</h3>
	<ul>
	<%Do Until rs.EOF%>
		<li><a href='subject.asp?c=<%=rs("catID")%>'><%=rs("name")%></a></li>
		<%rs.MoveNext
	Loop%>
	</ul>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>