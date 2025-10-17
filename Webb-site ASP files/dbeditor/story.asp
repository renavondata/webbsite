<%Option Explicit
Response.CodePage=65001%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Sub GetSFCpr(ByVal storyID,ByVal n,ByVal overwrite,ByRef hint)
	'based on VBA version
	'n is the press release number, e.g. 20PR81, stored in the URL of stories
	Dim conMaster,URL,r,titleEN,titleTC,htmlEN,htmlTC,issueDate,modTime,status
	Call prepMaster(conMaster)
	If overwrite Or Not CBool(conMaster.Execute("SELECT EXISTS(SELECT * FROM SFCnews WHERE StoryID=" & StoryID & ")").Fields(0)) Then
	    URL="https://apps.sfc.hk/edistributionWeb/api/news/content?refNo="
	    Call GetWeb(URL&n&"&amp;lang=EN",r,status)
	    If status="" Then
		    titleEN=GetVal(r,"title")
		    htmlEN = GetVal(r, "html")
		    issueDate=GetVal(r,"issueDate")
		    modTime=GetVal(r,"modificationTime")
		   	Call GetWeb(URL&n&"&lang=TC",r,status)
		   	If status="" Then
			    titleTC=GetVal(r,"title")
			    htmlTC=GetVal(r,"html")
			    conMaster.Execute "REPLACE INTO SFCnews(StoryID,titleEN,htmlEN,issueDate,modTime,titleTC,htmlTC)"&_
			    	valsql(Array(storyID,titleEN,htmlEN,issueDate,modTime,titleTC,htmlTC))
			    conMaster.Execute("UPDATE stories SET storyDate='"&issueDate&"' WHERE storyID="&StoryID)
			    hint=hint&"News imported from SFC. "
			Else
				hint=hint&status&". "
			End If
		Else
			hint=hint&status&". "
		End If
	Else
	    hint=hint&"News release already imported. "
	End If
	Call closeCon(conMaster)
End Sub

Dim storyID,caption,sourceID,summary,URL,sDate,pDate,URL2,URL2t,org,ppl,catID,p,copyID,sql,s2,orgList,ready,hint,submit,title,con,rs
Call openEnigmaRs(con,rs)
If Not hasRole(con,5) Then
	'user lacks editing privilege on stories role
	Call closeConRs(con,rs)
	Response.Redirect("/dbeditor/")
End If
Call prepMasterRs(conMaster,rs)
storyID=getLng("s",0)
copyID=getLng("copyID",0)
If copyID=0 Then copyID=IfNull(Session("copyID"),0)
submit=Request("submitSt")
org=getLng("org",0)
ppl=getLng("ppl",0)
If submit="Delete story" Then hint=hint&"Are you sure you want to delete the story?"
If submit="Update story" or submit="Add story" Then
	ready=True
	caption=Trim(Request("caption"))
	sourceID=Request("sourceID")
	summary=Trim(Request("summary"))
	URL=Trim(Request("URL"))
	URL2=Trim(Request("URL2"))
	URL2t=Trim(Request("URL2t"))
	sDate=MSdateTime(Request("sDate"))
	pDate=MSdateTime(Request("pDate"))
	If caption="" Then
		ready=False
		hint=hint&"Caption required. "
	End If
	If URL="" Then
		ready=False
		hint=hint&"URL is required. "
	Else
		sql="SELECT * FROM stories WHERE URL="&apq(URL)
		If storyID>0 Then sql=sql&" AND storyID<>"&storyID
		rs.Open sql,conMaster
		If Not rs.EOF Then
			ready=False
			hint=hint&"That URL belongs to another story. "
			s2=rs("storyID")
		End If
		rs.Close
	End If
	If pDate="" Then
		ready=False
		hint=hint&"Specify the publication date. "
	ElseIf sDate="" Then
		sDate=pDate
		hint=hint&"Story date copied from publication date. "
	End If
	If ready Then
		If storyID=0 Then
			conMaster.Execute "INSERT INTO stories (title,sourceID,summary,URL,URL2,URL2text,storyDate,pubDate)"&_
				valsql(Array(caption,sourceID,summary,URL,URL2,URL2t,sDate,pDate))
			storyID=lastID(conMaster)
			hint=hint&"The story was added. "
		Else
			'update the story
			conMaster.Execute "UPDATE stories"&_
				setsql("title,sourceID,summary,URL,URL2,URL2text,storyDate,pubDate",Array(caption,sourceID,summary,URL,URL2,URL2t,sDate,pDate))&"storyID="&storyID
			hint=hint&"The story was edited. "
		End If
	End If
ElseIf submit="CONFIRM DELETE" Then
	conMaster.Execute "DELETE FROM stories WHERE storyID="&storyID
	storyID=""
	hint=hint&"The story was deleted. "
Else
	'not submitting, editing or deleting story, so work on tags then fetch story details
	If submit="Add tag" Then
		catID=Request("catID")
		If catID<>"" Then
			conMaster.Execute "REPLACE INTO storytags(storyID,catID) VALUES ("&storyID&","&catID&")"
			hint=hint&"The topic tag was added. "
		Else
			hint=hint&"No tag was chosen. "
		End If
	ElseIf org>0 or ppl>0 Then
		'returning from a search for org or human to add to story
		storyID=Session("storyID")
		If org>0 Then p=org Else p=ppl
		conMaster.Execute "REPLACE INTO personstories(storyID,personID) VALUES ("&storyID&","&p&")"
		hint=hint&"The person tag was added. "
	ElseIf submit="Delete org tags" Or submit="Delete people tags" Then
		p=Request("p")
		If p="" Then
			hint=hint&"No persons were selected for deletion. "
		Else
			conMaster.Execute "DELETE FROM personstories WHERE storyID="&storyID&" AND personID IN("&p&")"
			hint=hint&"The selected org or people tags have been deleted. "
		End If
	ElseIf submit="Delete topic tags" Then
		catID=Request("catID")
		If catID="" Then
			hint=hint&"No tags were selected for deletion. "
		Else		
			conMaster.Execute "DELETE FROM storytags WHERE storyID="&storyID&" AND catID IN("&catID&")"
			hint=hint&"The selected topic tags have been deleted. "
		End If
	ElseIf submit="Copy tags" Then
		If copyID=0 Then
			hint=hint&"StoryID requried to copy tags. "
		Else
			conMaster.Execute "REPLACE INTO personstories (storyID,personID) SELECT "&storyID&",personID FROM personstories WHERE storyID="&copyID
			conMaster.Execute "REPLACE INTO storytags (storyID,catID) SELECT "&storyID&",catID FROM storytags WHERE storyID="&copyID
			hint=hint&"The tags were copied. "
		End If
	End If
	If storyID>0 Then
		'retrieve existing story for editing
		rs.Open "SELECT * FROM stories WHERE storyID="&storyID,conMaster
		If rs.EOF Then
			hint=hint&"No such story. "
		Else
			caption=rs("title")
			summary=rs("summary")
			sourceID=rs("sourceID")
			sDate=MSdateTime(rs("storyDate"))
			pDate=MSdateTime(rs("pubDate"))
			URL=rs("URL")
			URL2=rs("URL2")
			URL2t=rs("URL2text")
		End If
		rs.Close
		If submit="Fetch SFC PR" Then
			If sourceID=2 Then
				hint=hint&"Fetching SFC PR for URL "&URL&". "
				Call GetSFCpr(storyID,URL,False,hint)
				'fetch the updated story date
				sDate=MSdateTime(conMaster.Execute("SELECT storyDate FROM stories WHERE storyID="&storyID).Fields(0))
			Else
				hint=hint&"The source is not SFC. "
			End if
		End If
	End If
End If
If (sourceID="" Or isNull(sourceID)) And storyID>0 Then
	hint=hint&"Warning: this story has no source. "
ElseIf isNumeric(sourceID) Then
	sourceID=CLng(sourceID)
End If
'store session variables in case we divert to add a person tag
Session("storyID")=storyID
Session("copyID")=copyID
title="Story"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%If hint<>"" Then%>
	<p><b><%=hint%></b></p>
<%End If%>
<form action="story.asp" method="post" name="myform">
	<table class="txtable" style="width:100%">
		<tr><td style="width:150px">Caption: </td><td><textarea rows="2" name="caption" style="width:100%"><%=caption%></textarea></td></tr>
		<tr><td>Source:</td>
		<td><%=arrSelect("sourceID",sourceID,con.Execute("SELECT sourceID,sourceName FROM sources ORDER BY sourceName").GetRows,False)%></td></tr>
		<tr>
			<td>URL: </td>
			<td><input type="text" style="width:100%" name="URL" value="<%=URL%>"></td>
		</tr>
		<tr>
			<td>Link 2 Text: </td>
			<td><input type="text" style="width:100%" name="URL2t" value="<%=URL2t%>"></td>
		</tr>
		<tr>
			<td>URL2:</td>
			<td><input type="text" style="width:100%" name="URL2" value="<%=URL2%>"></td>
		</tr>
		<tr>
			<td>Story date-time</td>
			<td><input type="datetime-local" name="sDate" id="sDate" value="<%=sDate%>"></td>
		</tr>
		<tr>
			<td>Publication date-time</td>
			<td><input type="datetime-local" name="pDate" id="pDate" value="<%=pDate%>"></td>
		</tr>
		<tr>
			<td>Summary:</td>
			<td><textarea rows="10" name="summary" style="width:100%"><%=summary%></textarea></td>
		</tr>
		<tr>
			<td>Story ID:</td>
			<td><%=storyID%></td>
		</tr>
	</table>
	<%If storyID=0 Then%>
		<p><input type="submit" name="submitSt" value="Add story"></p>
	<%Else%>
		<input type="hidden" name="s" value="<%=storyID%>">
		<p>
			<input type="submit" name="submitSt" value="Update story">
			<input type="submit" name="submitSt" value="Cancel changes">
			<input type="submit" name="submitSt" value="Fetch SFC PR">				
			<%If submit="Delete story" Then%>
				<input type="submit" name="submitSt" style="color:red" value="CONFIRM DELETE">
			<%Else%>
				<input type="submit" name="submitSt" style="color:red" value="Delete story">
			<%End If%>
		</p>
	<%End If%>
</form>
<%If storyID>0 Then
	'show tagging system%>
	<h3>Tags</h3>
	<form action="story.asp" method="post">
		<input type="hidden" name="s" value="<%=storyID%>">
		<p>
		Copy all tags from another storyID:
		<input type="text" style="width:80px" name="copyID" value="<%=copyID%>">
		<input type="submit" name="submitSt" value="Copy tags">
		</p>
	</form>
	<h4>Organisations</h4>
	<a href="searchorgs.asp?tv=org">Find or add an organisation to tags</a>
	<%rs.Open "SELECT s.personID,name1 FROM personStories s JOIN organisations o on s.personID=o.personID "&_
		"WHERE storyID="&storyID&" ORDER BY name1",conMaster
	If not rs.EOF Then%>
		<form action="story.asp" method="post">
			<input type="hidden" name="s" value="<%=storyID%>">
			<%Do until rs.EOF
				orgList=orgList&rs("personID")&","%>
				<p>
					<input type="checkbox" name="p" value="<%=rs("personID")%>">
					<a href="org.asp?p=<%=rs("personID")%>"><%=rs("name1")%></a>
				</p>
				<%rs.MoveNext
			Loop
			orgList=Left(orgList,len(orgList)-1)%>
			<input type="submit" name="submitSt" value="Delete org tags">
		</form>
	<%End If
	rs.Close%>
	<h4>People</h4>
	<a href="searchpeople.asp?tv=ppl">Find or add a human to tags</a>
	<%
	If orgList<>"" Then
		rs.Open "SELECT DISTINCT personID,CAST(fnameppl(name1,name2,cname)AS NCHAR)name FROM directorships JOIN people ON director=personID WHERE company IN(" & orgList & ") ORDER BY name",con
		If not rs.EOF Then%>
			<p>Pick an officer:</p>
			<form action="story.asp" method="post">
				<input type="hidden" name="s" value="<%=storyID%>">
				<%=arrSelect("ppl","",rs.GetRows,False)%>
				<input type="submit" name="submitSt" value="Add officer">
			</form>
		<%End If
		rs.Close
	End If
	rs.Open "SELECT s.personID,CAST(fnameppl(name1,name2,cname)AS NCHAR)name FROM personStories s JOIN people p on s.personID=p.personID "&_
		"WHERE storyID="&storyID&" ORDER BY name",conMaster
	If not rs.EOF Then%>
		<form action="story.asp" method="post">
			<input type="hidden" name="s" value="<%=storyID%>">
			<%Do until rs.EOF%>
				<p>
					<input type="checkbox" name="p" value="<%=rs("personID")%>">
					<a href="human.asp?p=<%=rs("personID")%>"><%=rs("name")%></a>
				</p>
				<%rs.MoveNext
			Loop%>
			<input type="submit" name="submitSt" value="Delete people tags">
		</form>
	<%End If
	rs.Close%>
	<h4>Topics</h4>
	<form action="story.asp" method="post">
		<input type="hidden" name="s" value="<%=storyID%>">
		<p>
		<%=arrSelect("catID","",con.Execute("SELECT ID,name FROM categories ORDER BY name").GetRows,False)%>
		<input type="submit" name="submitSt" value="Add tag">
		</p>
	</form>
	<%rs.Open "SELECT s.catID,name FROM storytags s JOIN categories c ON s.catID=c.ID WHERE storyID="&storyID,conMaster
	If not rs.EOF Then%>
		<form action="story.asp" method="post">
			<input type="hidden" name="s" value="<%=storyID%>">
			<%Do until rs.EOF%>
				<p>
					<input type="checkbox" name="catID" value="<%=rs("catID")%>">
					<a target="_blank" href="https://webb-site.com/dbpub/subject.asp?c=<%=rs("catID")%>"><%=rs("name")%></a>
				</p>
				<%rs.MoveNext
			Loop%>
			<input type="submit" name="submitSt" value="Delete topic tags">
		</form>
	<%End If
	rs.Close
End If
If storyID>0 Then%>
	<p><a target="_blank" href="https://webb-site.com/dbpub/artlinks.asp?s=<%=storyID%>">View the story in Webb-site Reports</a></p>
	<p><a href="story.asp">Start a new story</a></p>
<%End If
If s2<>"" Then%>
	<p><a target="_blank" href="https://webb-site.com/dbpub/artlinks.asp?s=<%=s2%>">See the other story in Webb-site Reports</a></p>
<%End If
Call CloseConRs(con,rs)
Call CloseCon(conMaster)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
