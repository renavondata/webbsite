<%If copywr Then%><p><em>&copy; Webb-site.com, <%=Year(sDate)%></em></p><%End If%>
<hr>
<%Dim tagfnd
If storyID<>"" Then
	rs.Open "SELECT ps.personID, name1 AS name FROM personstories ps "&_
		"JOIN organisations o on ps.personID=o.personID WHERE storyID="&storyID&" ORDER BY name",adoCon
	If not rs.EOF Then
		tagfnd=True%>
		<h4>Organisations in this story</h4>
		<ul>
			<%Do Until rs.EOF%>
				<li><a href="/dbpub/articles.asp?p=<%=rs("personID")%>"><%=rs("name")%></a></li>
				<%rs.MoveNext
			Loop%>
		</ul>
	<%End If
	rs.Close
	rs.Open "SELECT ps.personID, nameppl(p.name1,p.name2) AS name FROM personstories ps "&_
		"JOIN people p on ps.personID=p.personID WHERE storyID="&storyID&" ORDER BY name",adoCon
	If not rs.EOF Then
		tagfnd=True%>
		<h4>People in this story</h4>
		<ul>
			<%Do Until rs.EOF%>
				<li><a href="/dbpub/natarts.asp?p=<%=rs("personID")%>"><%=rs("name")%></a></li>
				<%rs.MoveNext
			Loop%>
		</ul>
	<%End If
	rs.Close
	rs.Open "SELECT s.catID, name FROM storytags s "&_
		"JOIN categories c on s.catID=c.ID WHERE s.storyID="&storyID&" ORDER BY name",adoCon
	If not rs.EOF Then
		tagfnd=True%>
		<h4>Topics in this story</h4>
		<ul>
			<%Do Until rs.EOF%>
				<li><a href="/dbpub/subject.asp?c=<%=rs("catID")%>"><%=rs("name")%></a></li>
				<%rs.MoveNext
			Loop%>
		</ul>
	<%End If
	rs.Close
End If
Set rs=Nothing
adoCon.Close
Set adoCon=Nothing
If tagfnd Then Response.Write "<hr>"
%>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>
