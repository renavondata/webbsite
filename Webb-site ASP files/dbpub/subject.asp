<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
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

Dim name,sourceName,summary,URL,URL2,URL2text,subject,StoryID,image,con,rs
Call openEnigmaRs(con,rs)
subject=getInt("c",0)
name=con.Execute("SELECT IFNULL((SELECT name FROM categories WHERE ID="&subject&"),'Subject not found')").Fields(0)%>
<title>Articles: <%=name%></title>
</head>
<body>
<!--#include file="../templates/cotop.asp"-->
<h2>Articles: <%=name%></h2>
<%If name<>"Subject not found" Then
	'list articles
	rs.Open "SELECT Title,st.StoryID,StoryDate,URL,Summary,s.SourceID,SourceName,URL2,URL2Text,image,sn.StoryID snID FROM "&_
		"(storytags st JOIN stories s "&_
		"ON st.StoryID=s.StoryID) LEFT JOIN sources sr ON s.SourceID=sr.sourceID "&_
		"LEFT JOIN SFCnews sn ON st.StoryID=sn.storyID "&_
		"WHERE catID="&subject&" AND pubDate<=Now() ORDER BY StoryDate DESC;",con
	If rs.EOF Then%>
		<p>No articles found.</p>
	<%Else
		Dim rs2,blnLinks
		Set rs2=Server.CreateObject("ADODB.Recordset")
		Do Until rs.EOF
			sourceName=rs("SourceName")
			summary=rs("Summary")
			If Not isNull(rs("snID")) Then
				URL="artlinks.asp?s="&rs("storyID")
			Else
				URL=pURL(rs("URL"))
			End If
			URL2text=rs("URL2Text")
			StoryID=rs("StoryID")
			image=rs("image")%>
			<div class="artsum">
				<%If rs("sourceID")=1 Then%>
					<a target="<%=targ(URL)%>" href="<%=URL%>"><b><%=rs("Title")%></b></a>
					<%If URL2Text<>"" Then
						URL2=pURL(rs("URL2"))%>
						<a target="<%=targ(URL2)%>" href="<%=URL2%>"><b><%=URL2Text%></b></a>
					<%End If%>
					<br>
					<%=summary%>&nbsp;(<%=ForceDate(rs("StoryDate"))%>)
				<%Else%>
					<a target="<%=targ(URL)%>" href="<%=URL%>"><%=rs("Title")%></a>
					<%If URL2Text<>"" Then
						URL2=pURL(rs("URL2"))%>
						|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><%=URL2Text%></a>
					<%End If%>
					<br/>
					<span style="color:gray">
						<%If sourceName<>"" Then Response.Write sourceName&", "%>
						<%=ForceDate(rs("StoryDate"))%>
					</span>
					<%If summary<>"" Then Response.write "<br/>"&summary%>
				<%End If
				If image<>"" Then
					If left(image,4)<>"http" Then image="../images/" & image%>
					<a target="<%=targ(image)%>" href="<%=image%>"><img class="center" alt="image" src="<%=image%>"></a>
				<%End If
				blnLinks=False%>
				<ul class="navlist">
					<%rs2.Open "SELECT Name1 As Name,personstories.PersonID FROM personstories JOIN Organisations ON personstories.PersonID=Organisations.PersonID "&_
					"WHERE StoryID="&StoryID&" ORDER BY Name",con
					If Not rs2.EOF Then
						blnLinks=True%>
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
					rs2.Open "SELECT fnameppl(Name1,Name2,cName) Name,personstories.PersonID FROM personstories JOIN People ON personstories.PersonID=People.PersonID "&_
						"WHERE StoryID="&StoryID&" ORDER BY Name",con
					If Not rs2.EOF Then
						blnLinks=True%>
						<li><a href="artlinks.asp?s=<%=StoryID%>">People</a>
							<ul>
							<%Do Until rs2.EOF%>
								<li><a href="natarts.asp?p=<%=rs2("PersonID")%>"><%=rs2("Name")%></a></li>
								<%rs2.MoveNext
							Loop%>
							</ul>
						</li>
					<%End If
					rs2.Close
					rs2.Open "SELECT name,catID FROM storytags s JOIN categories c ON s.catID=c.ID "&_
						"WHERE StoryID="&StoryID&" AND catID<>"&subject&" ORDER BY name",con
					If Not rs2.EOF Then
						blnLinks=True%>
						<li><a href="artlinks.asp?s=<%=StoryID%>">Tags</a>
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
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerws.asp"-->
</body>
</html>
