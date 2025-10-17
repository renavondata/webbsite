<%'authentication module for webbmail/login.asp and dbeditor/default.asp
'include this module before the html tag as it sets cookies
Dim e,username,pwd,maildb,hint,rs,title,robot,d,ID,token,tokenID,referer,badCnt,lastLogin,ws
ws=(Request.ServerVariables("SERVER_NAME")="webb-site.com")
Const badLimit=5
If Session("ID")="" And Not Request.Servervariables("REQUEST_METHOD")="POST" Then Call cookieChk
ID=Session("ID")
If ws Then robot=botchk() 'only test for bots on Webb-site.com
title="Please log in"
d=Min(getLng("d",720),720) 'maximum hours to authorise login
Call openMailrs(mailDB,rs)
'sweep the database every time someone loads this page
mailDB.Execute "DELETE FROM mailvote.persist WHERE tokTime<Now()"
If ID="" Then
	e=Trim(Request("e"))
	pwd=Trim(Request.Form("pwd"))
	If e<>"" Then
		If Len(pwd)=0 Then
			hint=hint&"Please enter your password."
		ElseIf Not robot Then
			rs.Open "SELECT ID,mailAddr,name,eVerified,badCnt,lastLogin,(hash=UNHEX(SHA2(CONCAT('"&pwd&"',LOWER(HEX(salt))),256)))pwdChk "&_
				"FROM livelist WHERE "&IIF(Instr(e,"@")>0,"mailaddr","name")&"='"&apos(e)&"'",mailDB
			If rs.EOF Then
				hint=hint&"No such user. "
			Else
				badCnt=Cint(rs("badCnt"))
				lastLogin=rs("lastLogin")
				If isNull(lastLogin) Then lastLogin=Date() Else lastLogin=CDate(lastLogin)
				ID=rs("ID")
				mailDB.Execute("UPDATE livelist SET lastlogin=NOW() WHERE ID="&ID)
				If badCnt>=badLimit AND DateValue(lastLogin)=Date() Then
					hint="You have used all "&badLimit&" attempts today. Try again tomorrow, HK time."
				ElseIf rs("pwdChk") Then
					mailDB.Execute "UPDATE livelist SET badCnt=0 where ID="&ID
					If Not rs("eVerified") Then
						hint=hint&"Your account is not yet activiated. If you can't find the activation e-mail (after checking your spam folder) "&_
							"then <a href='../webbmail/join.asp?e="&e&"&amp;verify="&e&"'>click here</a> to get another one. "
					Else
						Session("editor")=CBool(mailDB.Execute("SELECT EXISTS(SELECT * FROM enigma.wsprivs WHERE live AND userID="&ID&")").Fields(0))
						Session("e")=rs("mailAddr")
						username=IfNull(rs("name"),"")
						Session("username")=username
						Session("pwd")=pwd 'used for prepMaster on dbexec pages
						Session("ID")=ID
						Session("master")=(ID=2) 'DavidOnline, used in events.asp and story.asp
						Session.Timeout=60 'minutes
						If d>0 Then
							'set tokens for persistent login
							token=mailDB.Execute("SELECT genToken()").Fields(0)
							mailDB.Execute "INSERT INTO mailvote.persist(userID,tokHash,tokTime,cred) VALUES("&ID&_
								",UNHEX(SHA2('"&token&"',256)),DATE_ADD(NOW(),INTERVAL "&d&" HOUR),AES_ENCRYPT('"&apos(pwd)&"','"&token&"'))"
							Response.Cookies("keep")("token")=token
							Response.Cookies("keep").Expires=DateAdd("h",d,Now())
							Response.Cookies("keep").Secure="True" 'cookie is only sent across SSL
						End If
						If session("referer")<>"" Then 
							Call CloseConRs(mailDB,rs)
							referer=Session("referer")
							Session("referer")=""
							Response.Redirect referer
						End If
						title="Logged in"
						hint=hint&"You have logged in as "&IIF(username<>"",username,e)&". "
						If d>0 Then hint=hint&"Your browser will stay logged in for "&d&" hours unless you log out. "
					End If
				Else
					hint="Wrong password. "
					If DateValue(lastLogin)<>Date() Then badCnt=0
					badCnt=badCnt+1
					mailDB.Execute "UPDATE livelist SET badCnt="&badCnt&" WHERE ID="&ID
					If badCnt=badLimit Then 
						hint=hint&"You have used all "&badLimit&" attempts today. Try again tomorrow, HK time."
					Else
						hint=hint&badCnt&" failed attempts. You have "&(badLimit-badCnt)&" attempts remaining for today, HK time."
					End If
				End If
			End If
		End If
	Else
		hint=hint&"If you choose to stay logged in, a browser cookie will hold a token. Don't do that on a shared device. "
	End If
Else
	If Request("b")=1 Then
		'logging out
		mailDB.Execute "DELETE FROM mailvote.persist WHERE userID="&ID
		session("ID")=""
		session("username")=""
		session("e")=""
		session("editor")=False
		session("master")=False
		e=Request.Querystring("e") 'for switching accounts
		hint=hint&"You have logged out. "
	Else
		title="Logged in"
		'hint=hint&"You are logged in as "&IIF(Session("username")<>"",Session("username"),Session("e"))&". <a href='login.asp?b=1'>Click here to log out</a>."
	End If
End If
Call CloseConRs(mailDB,rs)%>
