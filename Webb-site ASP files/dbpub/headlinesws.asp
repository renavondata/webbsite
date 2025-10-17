<%
Function pURL(s)
	If Left(s,4)="http" Then
		pURL=s
	ElseIf Left(s,3)="../" Then
		pURL=Right(s,Len(s)-3)
	Else
		pURL="articles/"&s
	End If
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

Dim sourceName,sourceID,summary,URL,URL2,URL2text,rs2,storyID,hlStyle,dateStyle,image
Set rs2=Server.CreateObject("ADODB.Recordset")
%>
<div class="news">
	<div class="singlecol">
	<h3>News</h3>
	<%'single-column for 1 or 2-column home page layout, all stories by date
	rs.Open "SELECT stories.SourceID,stories.StoryID,Title,Summary,StoryDate,URL,URL2,URL2text,sourceName,image "&_
		"FROM enigma.stories LEFT JOIN enigma.sources ON stories.sourceID=sources.sourceID "&_
		"WHERE pubDate<=Now() ORDER BY StoryDate DESC LIMIT 30",con
	Do Until rs.EOF
		sourceName=rs("SourceName")
		If sourceName<>"" Then sourceName=sourceName&", "
		summary=rs("Summary")
		image=rs("image")
		URL=pURL(rs("URL"))
		URL2text=rs("URL2Text")
		storyID=rs("storyID")
		If rs("sourceID")=1 Then
			hlStyle="font-weight:bold"
			dateStyle="color:blue"
		Else
			hlStyle="font-weight:normal"
			dateStyle="color:gray"
			URL="/dbpub/artlinks.asp?s="&storyID
		End If
		%>
		<div class="artsum">
			<a style="<%=hlStyle%>" href="<%=URL%>"><%=rs("Title")%></a>
			<%If URL2Text<>"" Then
				URL2=pURL(rs("URL2"))%>
				|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>" style="<%=hlStyle%>"><%=URL2Text%></a>
			<%End If%>
			<br>
			<span style="<%=dateStyle%>"><%=sourceName & ForceDate(rs("StoryDate"))%></span>
			<%If summary<>"" Then Response.write "<br>"&summary%>
			<br>
			<%If image<>"" Then
				If left(image,4)<>"http" Then image="images/"&image%>
				<a target="<%=targ(image)%>" href="<%=image%>"><img class="center" alt="image" src="<%=image%>"></a>
			<%End If%>
		</div>
		<%rs.MoveNext
	Loop
	rs.Close%>
	</div>
	<div class="col1of2" style="border-right:1px gray dotted">
		<h3>Our stories</h3>
		<%rs.Open "SELECT StoryID,Title,Summary,StoryDate,URL,URL2,URL2text,image FROM enigma.stories "&_
			"WHERE sourceID=1 AND pubDate<=Now() ORDER BY StoryDate DESC LIMIT 15",con
		Do Until rs.EOF
			summary=rs("Summary")
			URL=pURL(rs("URL"))
			URL2text=rs("URL2Text")
			storyID=rs("storyID")
			image=rs("image")
			%>
			<div class="artsum">
				<a target="<%=targ(URL)%>" href="<%=URL%>"><b><%=rs("Title")%></b></a>
				<%If URL2Text<>"" Then
					URL2=pURL(rs("URL2"))%>
					|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><b><%=URL2Text%></b></a>
				<%End If%>
				<br>
				<%=summary%>&nbsp;(<%=ForceDate(rs("StoryDate"))%>)
				<br>
				<%If image<>"" Then
					If left(image,4)<>"http" Then image="images/"&image%>
					<a target="<%=targ(image)%>" href="<%=image%>"><img class="center" alt="image" src="<%=image%>"></a>
				<%End If%>
			</div>
			<%
			rs.MoveNext
		Loop
		rs.Close%>
	</div>
	<div class="col2of2">
		<h3>Other news</h3>
		<%
		rs.Open "SELECT stories.SourceID,stories.StoryID,Title,Summary,StoryDate,URL,URL2,URL2text,sourceName,image "&_
			"FROM enigma.stories LEFT JOIN enigma.sources ON stories.sourceID=sources.sourceID "&_
			"WHERE (stories.sourceID<>1 Or IsNull(stories.sourceID)) AND pubDate<=Now() ORDER BY StoryDate DESC LIMIT 20",con
		Do Until rs.EOF
			sourceName=rs("SourceName")
			summary=rs("Summary")
			URL=pURL(rs("URL"))
			URL2text=rs("URL2Text")
			storyID=rs("storyID")
			image=rs("image")
			%>
			<div class="artsum">
				<a href="/dbpub/artlinks.asp?s=<%=storyID%>"><%=rs("Title")%></a>
				<%If URL2Text<>"" Then
					URL2=pURL(rs("URL2"))%>
					|&nbsp;<a target="<%=targ(URL2)%>" href="<%=URL2%>"><%=URL2Text%></a>
				<%End If%>
				<br>
				<span style="color:gray">
				<%If sourceName<>"" Then%>
					<%=sourceName&", "%>
				<%End If%>
				<%=ForceDate(rs("StoryDate"))%>	
				</span>
				<%If summary<>"" Then Response.write "<br>"&summary%>
				<br>
				<%If image<>"" Then
					If left(image,4)<>"http" Then image="images/"&image%>
					<a target="<%=targ(image)%>" href="<%=image%>"><img class="center" alt="image" src="<%=image%>"></a>
				<%End If%>
			</div>
			<%
			rs.MoveNext
		Loop
		rs.Close%>
	</div>
	<div class="clear"></div>
	<div class="artsum"><strong><a href="/articles/">Previously on Webb-site.com</a></strong><br>
	Check out our full list of articles in the archive, since our launch in 1998.</div>
</div>
<%Set rs2=Nothing%>