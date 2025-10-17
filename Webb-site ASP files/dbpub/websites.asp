<%Sub websites(p)
	'generate a list of websites for personID p, if any. Called by orgdata.asp and natperson.asp
	Dim URL,fURL,con,rs
	Call openEnigmaRs(con,rs)
	rs.Open "SELECT URL,dead from Web WHERE PersonID="&p&" ORDER BY dead,URL",con
	If Not rs.EOF Then%>
		<h3>Web sites</h3>		
		<%Do Until rs.EOF
			fURL=rs("URL")
			If Right(fURL,1)="/" then fURL=Left(fURL,Len(fURL)-1)
			If Left(fURL,5)="http:" Then
				URL=Right(fURL,Len(fURL)-7)
			ElseIf Left(fURL,6)="https:" Then
				URL=Right(fURL,Len(fURL)-8)
			Else
				URL=fURL
				fURL="http://" & fURL
			End If
			If rs("dead") Then%>
				<a target="_blank" href="https://web.archive.org/web/*/<%=URL%>"><%=URL%> (archived)</a><br>
			<%Else%>
				<a target="blank" href="<%=fURL%>"><%=URL%></a><br>
			<%End If
			rs.MoveNext
		Loop
	End If
	Call CloseConRs(con,rs)
End Sub%>