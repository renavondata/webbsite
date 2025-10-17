<%Sub cookiechk()
	'check whether device is logged in and put result in Session cookies
	If Session("ID")<>"" Then Exit Sub
	Dim token,rs,mailDB,ID
	token=Request.Cookies("keep")("token")
	If token="" Then Exit Sub
	Set mailDB=Server.CreateObject("ADODB.Connection")
	mailDB.Open "DSN=mailvote;"
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT userID,mailAddr,l.name,CAST(AES_DECRYPT(cred,'"&token&"') AS CHAR)pwd FROM persist p JOIN livelist l "&_
		"ON p.userID=l.ID WHERE p.tokhash=UNHEX(SHA2('"&token&"',256)) AND p.tokTime>Now()",mailDB
	If Not rs.EOF Then
		Session("e")=rs("mailAddr")
		ID=rs("userID")
		Session("ID")=ID
		Session("pwd")=rs("pwd") 'used for prepMaster on dbexec pages
		Session("master")=(ID=2) 'DavidOnline, used in events.asp and story.asp
		Session("username")=rs("name")
		Session("editor")=CBool(mailDB.Execute("SELECT EXISTS(SELECT * FROM enigma.wsprivs WHERE live AND userID="&ID&")").Fields(0))
		Session.Timeout=60 'minutes
		mailDB.Execute("UPDATE livelist SET lastlogin=NOW() WHERE ID="&rs("userID"))
	End If
	rs.Close
	Set rs=Nothing
	mailDB.Close
	Set mailDB=Nothing
End Sub%>