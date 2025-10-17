<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Function hlink(URL)
	'generate the HTML for a hyperlink from the URL
	If left(URL,4)<>"http" Then URL="http://"&URL
	If URL>"" Then hlink="<a target='_blank' href='"&URL&"'>"&URL&"</a>"
End Function

Call requireRoleExec
Dim p,pName,human,hint,title,submit,link,sc,dead,sql,rs,ID
Call prepMasterRs(conMaster,rs)
submit=Request("submitWeb")

ID=getLng("ID",0)
If ID>0 Then
	rs.Open "SELECT * FROM web WHERE ID="&ID,conMaster
	If rs.EOF Then
		hint=hint&"No such record. "
		ID=0
	Else
		p=CLng(rs("personID"))
		If submit<>"Update" Then
			link=rs("URL")
			dead=CBool(rs("dead"))
		End If
	End If
	rs.Close
Else
	sc=getLng("sc",0)
	If sc>0 Then
		p=SCorg(sc)
	Else
		p=getLng("p",0)
	End If
End If

If p>0 Then Call getPerson(p,human,pName)

If p>0 AND (submit="Add" or submit="Update") Then
	link=Trim(Request("link"))
	dead=getBool("dead")
	If right(link,1)="/" Then link=left(link,len(link)-1)
	sql="SELECT EXISTS(SELECT * FROM web WHERE personID="&p&" AND (URL="&apq(link)& " OR URL=CONCAT("&apq(link)&",'/'))"
	If submit="Add" Then
		If CBool(conMaster.Execute(sql &")").Fields(0)) Then
			hint=hint&"That person already has that link. "
		Else
			sql="INSERT INTO web (personID,URL,dead)" & valsql(Array(p,link,dead))
			conMaster.Execute sql
			ID=lastID(conMaster)
'			hint=hint&sql&" "
			hint=hint&"Link added: "&hlink(link)&". "
		End If
	ElseIf ID>0 And submit="Update" Then
		If CBool(conMaster.Execute(sql & " AND ID<>"&ID&")").Fields(0)) Then
			hint=hint&"That person already has that link. "
		Else
			sql="UPDATE web" & setsql("URL,dead",Array(link,dead)) & "ID="&ID
			conMaster.Execute sql
'			hint=hint&sql&" "
			hint=hint&"Link "&hlink(link)&" updated. "
		End If
	End If
End if

If ID>0 Then
	If submit="Delete" Then
		hint=hint&"Are you sure you want to delete this link: "&hlink(link)&"?"
	ElseIf submit="CONFIRM DELETE" Then
		sql="DELETE FROM web WHERE ID="&ID
		conMaster.Execute sql
'		hint=hint&sql&" "
		hint=hint&"Removed link: "&hlink(link)&". "
		link=""
		dead=False
		ID=0
	End If
End If

title="Add, edit or delete a web link from a person"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%If human Then
		Call pplBar(p,5)
	Else
		Call orgBar(p,10)
	End If
End If%>
<form method="post" action="web.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<p><a href="searchorgs.asp?tv=p">Find an organisation</a></p>
<p><a href="searchpeople.asp?tv=p">Find a human</a></p>
<h3><%=title%></h3>
<%If p>0 Then%>
	<form method="post" action="web.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<p>Link: <input type="text" name="link" style="width:40em" maxlength="255" value="<%=link%>"></p>
		<p>Dead? <input type="checkbox" name="dead" value="1" <%=checked(dead)%>></p>
		<p><b><%=hint%></b></p>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<input type="submit" name="submitWeb" value="Update">
			<%If submit="Delete" Then%>
				<input type="submit" name="submitWeb" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitWeb" value="Cancel">
			<%Else%>
				<input type="submit" name="submitWeb" value="Delete">
			<%End If
		End If%>
		<input type="submit" name="submitWeb" value="Add">		
	</form>
	<h3>Web links of this person</h3>
	<%rs.Open "SELECT * FROM web WHERE personID="&p,conMaster
	If rs.EOF Then%>
		<p>None found.</p>
	<%Else%>
		<style>table.c2m td:nth-child(2) {text-align:center}</style>
		<table class="txtable c2m">
			<tr>
				<th>Link</th>
				<th>Archived?</th>
			</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=hlink(rs("URL"))%></td>
					<td><%=IIF(CBool(rs("dead")),"&#10004;","")%></td>
					<td><a href='web.asp?ID=<%=rs("ID")%>'>Edit</a></td>
				</tr>
				<%rs.MoveNext
			Loop%>
		</table>
	<%End If
	rs.Close
End If
Call closeConRs(conMaster,rs)%>
<hr>
<h3>Rules</h3>
<ol>
	<li>Unless linking to a specific page, limit the link to the domain (up to 
	and including the first "/" in the address), to avoid 
	broken links when the site reorganises. Specific page links are generally 
	only needed if the whole site is not specific to the person involved (e.g. 
	Facebook, LinkedIn, Instagram).</li>
	<li>Trim off any querystring (after and including a "?") unless it is 
	necessary to reach the page.</li>
	<li>Some sites are set up using only insecure ("http://") rather than secure 
	("https://") links. Copy and paste the link directly from a browser, including the 
	"http://" or "https://" prefix. Otherwise our software defaults to using the 
	insecure link prefix (http://) on 
	output.</li>
	<li>If a site is permanently down (or redirected to a new domain) then tick 
	the "dead" box . This will redirect visitors to archive.org, where archived pages may exist.
	<strong>Do not</strong> delete the old link, as this makes it impossible to 
	find the archive.</li>
	<li>The maximum link length is 255 characters.</li>
	<li>Test the link after adding it, by clicking on it.</li>
</ol>
<!--#include file="cofooter.asp"-->
</body>
</html>
