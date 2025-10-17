<%
Dim conMaster
Call masterLogin

Sub masterLogin
	'this file is also included in webbmail/username.asp which sets up editors, so we don't want to check for editor login in that directory
	Dim URL,topdir
	URL=Lcase(Request.ServerVariables("URL"))
	topDir=Split(URL,"/")(1)
	If (topDir="dbeditor" And URL<>"/dbeditor/default.asp") Or topDir="mailman" Or topDir="pollman" Then
		If Not Session("editor") Then Call cookiechk()
		If Not Session("editor") Then
			Session("referer") = LCase(URL)&"?"&Request.ServerVariables("QUERY_STRING")
			Response.Redirect "/dbeditor/"
		End If
	End If
End Sub

Function rankingRs(rs,uRank)
	'returns Boolean, whether the user has ranking to edit
	'recordset rs must include fields userID and uRank (from the maxRank MySQL function)
	rankingRs=ranking(uRank,rs("userID"),rs("uRank"))
End Function

Function ranking(uRank,oUserID,oRank)
	'returns Boolean, whether the current user has ranking to edit this record
	'oUserID is the userID in record
	'oRank is the ranking of oUserID in this role
	ranking=(uRank=255 Or Session("ID")=oUserID Or uRank>oRank)	
End Function

Sub checkRole(ByVal roleID,ByRef userID,ByRef uRank)
	'fetch user status for this role but don't provide a DB connection or recordset
	Dim con
	userID=Session("ID")
	Call openEnigma(con)
	'Does user have write access to all needed tables for this role?
	'Fetch ranking across needed tables. Subquery finds maximum live ranking for each table. Main query finds minimum ranking across needed tables
	uRank=con.Execute("SELECT MIN(maxRankLive(tblname,"&userID&")) FROM wsroletabs WHERE roleID="&roleID).Fields(0)
	Call closeCon(con)
	If uRank=0 Then Response.redirect "default.asp"	
End Sub

Function getPrivate(name)
	'fetch a value from the private.keys table on master server
	'the table has 2 columns: name (PK),val each varchar(255)
	Dim con
	Call prepAuto(con)
	getPrivate=con.Execute("SELECT val FROM private.keys WHERE name='"&name&"'").Fields(0)
	Call closeCon(con)
End Function

Sub prepRole(ByVal roleID,ByRef conRole,ByRef conRs,ByRef userID,ByRef uRank)
	'Check whether this user has sufficient write privileges to tables for this role
	'If so then open a connection, prepare a recordset and fetch user rank, otherwise bounce to login
	'User may have the privs through other roles that cover at least the same tables as the target role
	Dim con,rs,pwd,wskey
	Call checkRole(roleID,userID,uRank)
	'didn't get bounced, so uRank>0, now set up the connection
	'fetch the keystring from master server
	wskey=getPrivate("wskey")
	Call openEnigmaRs(con,rs)
	'fetch the MySQL user and password for the wsrole - these are encrypted with wskey, so you must store your own credentials using
	'SELECT aes_encrypt('password','wskey') in MySQL
	rs.Open "SELECT MSuser,CAST(aes_decrypt(cred,'"&wskey&"') AS CHAR)cred FROM wsroles WHERE ID="&roleID,con
	Set conRole=Server.CreateObject("ADODB.Connection")
	'MasterHost is the internet domain of the master server if you are using a master-slave (source-replica) setup
	'ODBCver is the version number of the ODBC driver on your machines (currently 8.4)
	'131072 is SAFE mode
	conRole.Open "DRIVER={MySQL ODBC "&GetLog("ODBCver")&" Unicode Driver};SERVER="&GetKey("MasterHost")&";PORT=3306;charset=utf8mb4;UID='"&_
		rs("MSuser")&"';"&"PASSWORD='"&rs("cred")&"';database=enigma;option=131072;"
	Call closeConRs(con,rs)
	Set conRs=Server.CreateObject("ADODB.Recordset")
End Sub

Sub prepMaster(conMaster)
	Set conMaster=Server.CreateObject("ADODB.Connection")
	'use safe mode, prevents changes without primary key being specified
	conMaster.Open "DRIVER={MySQL ODBC "&GetLog("ODBCver")&" Unicode Driver};SERVER="&GetKey("MasterHost")&";PORT=3306;charset=utf8mb4;UID='"&Session("username")&"';"&"PASSWORD='"&Session("pwd")&_
		"';database=enigma;option=131072;"
End Sub

Sub prepMasterRs(con,rs)
	Call prepMaster(con)
	Set rs=Server.CreateObject("ADODB.Recordset")
End Sub

Sub prepAuto(conAuto)
	'connect to the master with user auto
	Set conAuto=Server.CreateObject("ADODB.Connection")
	conAuto.Open "DSN=conAuto;"
	'131072=SAFE mode
End Sub

Sub putLog(var,val)
    Dim con
    Call prepAuto(con)
    con.Execute("UPDATE log SET val='" & Apos(val) & "' WHERE name='" & var & "'")
    Call closeCon(con)
End Sub

Function cleanName(ByVal n)
	If Not isNull(n) Then
		'remove anything in parentheses at the end of the name, along with its parentheses
		n=Trim(n)
		Do Until InStr(n,"(")=0 Or Right(n,1)<>")"
		    n=Trim(Left(n,InStrRev(n,"(")-1))
		Loop
	End If
	cleanName=n
End Function

Sub getPerson(ByVal p,ByRef human,ByRef name)
	'returns human Boolean, whether person is human
	'returns name of person
	Dim con,rs
	Call openEnigmaRs(con,rs)
	If p>0 Then
		rs.Open "SELECT ISNULL(o.personID) human,CAST(fnamepsn(o.name1,p.name1,p.name2,o.cname,p.cName) AS NCHAR) oName "&_
			"FROM persons d LEFT JOIN people p ON d.personID=p.personID LEFT JOIN organisations o ON d.personID=o.personID "&_
			"WHERE d.personID="&p,con
		If rs.EOF Then
			name="No such person"
		Else
			human=CBool(rs("human"))
			name=rs("oName")
		End If
		rs.Close
	End If
	Call closeConRs(con,rs)
End Sub

Sub getReferer(ByRef referer,ByRef tv)
	'store the last referring page to include a target variable (tv) in the query, if different from current page
	Dim refArr,currArr,page
	tv=Request("tv")
	page=fileName() 'without the .asp
	referer=Request.ServerVariables("HTTP_REFERER")
	If referer>"" Then
		refArr=Split(referer,"/")
		referer=refArr(UBound(refArr))
		If referer="" Then referer="default.asp" 'referer was a URL directory without a page
		referer=Split(referer,"?")(0)
		If split(referer,".")(0)<>page And tv>"" Then
			'store the referring page and the target variable
			Session(page&"ref")=referer
			Session(page&"tv")=tv
		End If
	Else
		Session(page&"ref")=""
		Session(page&"tv")=""		
	End If
	referer=Session(page&"ref")
	tv=Session(page&"tv")
End Sub

Sub GetWeb(ByVal URL,ByRef resp,ByRef status)
	'Try indefinitely with 1-second wait. Fetch web page and put the text in resp. Appends error to status
	Dim h
	Set h=Server.CreateObject("Msxml2.ServerXMLHTTP")
	Do
		h.Open "GET",URL,False
		'timeouts are Resolve,Connect,Send,Receive in milliseconds
	    h.setTimeouts 5000, 5000, 5000, 15000
	    On Error Resume Next
		h.Send
		If err.Number=0 Then Exit Do
		Call WaitNsec(1)
	Loop
	On Error GoTo 0
	If h.Status=200 Then resp=h.responseText Else status=status & h.statusText & ". "
	Set h=Nothing
End Sub

Sub WaitNsec(n)
	Dim wait
	wait = DateAdd("s", n, Now())
	Do Until (Now() > wait)
	Loop
End Sub

Function endString(s,x)
	'in a JSON where the escape character is \, find the end of the string indicated by "
	'Disregard " if immmediately preceded by an odd number of backslashes as this indicates it is an escaped quote
	'x is the location in s of the opening "
	Dim y,ls
	ls=Len(s)
	y=x+1
	Do Until y>=ls
	    If Mid(s,y,1)="""" Then Exit Do
	    If Mid(s,y,2)="\\" Or Mid(s,y,2)="\""" Then
	        y=y+2
	    Else
	        y=y+1
	    End If
	Loop
	If y>ls Then y=ls
	endString=y
End Function

Function getItem(ByVal r,ByVal Name)
	'get a nested value from a JSON object to make the calls more compact than a set of nested getVal calls
	'e.g. name = address.street.house
	'names must be separated by ".". If the name includes a dot then it must be escaped with \. This is our protocol
	Dim s,x,n
	s = Split(Name, ".")
	n = UBound(s)
	For x = 0 To n
	    If Right(s(x), 1) = "\" And x < n Then
	        s(x + 1) = Left(s(x), Len(s(x)) - 1) & "." & s(x + 1)
	    Else
	        r = GetVal(r, s(x))
	    End If
	Next
	getItem = r
End Function

Function GetVal(ByVal o,ByVal Name)
	'find the value of a named item in a JSON object
    'this does not drill to lower levels, because names are only unique at the top level
    'if the value is null then it returns "null"
    'if the value doesn't exist then it returns an empty string
    Dim x,elStart,nest,startChar,endChar,t,e,nameLen,y
    If Left(o,1)="{" Then o=Mid(o,2,Len(o)-2) 'strip the braces from the object
    GetVal=""
    If o="" Then Exit Function
    e=Len(o)
    Name=""""&Name&""""
    nameLen=Len(Name)
    x = 1
    Do Until x=0 Or x>=e
        x=InStr(x,o,"""")
        If x=0 Then Exit Do
        If Mid(o,x,nameLen)=Name Then
            'found the pair we want
            x=x+nameLen
            x=InStr(x,o,":")
            x=SkipWhite(o,x+1)
            elStart=x
            startChar=Mid(o,x,1)
            y=InStr("{[""", startChar)
            If y=0 Then
                'value is true, false, null or a number
                x=InStr(x,o,",")
                If x=0 Then x=e+1 'this was the last item in the object
                GetVal=Mid(o,elStart,x-elStart)
            Else
                If y=3 Then
                    '{}[] in a string do not have meaning and should be ignored
                    x=EndString(o,x)
                    If x<>0 Then GetVal=Mid(o,elStart+1,x-elStart-1)
                Else
                    endChar=Mid("}]",y,1)
                    nest=1
                    Do Until nest=0 Or x=0 Or x=e
                        x=x+1
                        t=Mid(o,x,1)
                        If t="""" Then
                            x=EndString(o,x)
                        ElseIf t=startChar Then
                            'nested
                            nest=nest+1
                        ElseIf t=endChar Then
                            nest=nest-1
                        End If
                    Loop
                    If x<>0 Then GetVal=Mid(o,elStart,x-elStart+1)
                End If
            End If
            Exit Do
        Else
            'parse until next item
            x=EndString(o,x)
            x=InStr(x,o,":")
            x=SkipWhite(o,x+1)
            startChar=Mid(o,x,1)
            y = InStr("{[""", startChar)
            If y=3 Then
                x=EndString(o,x)
            ElseIf y>0 Then
                endChar=Mid("}]",y,1)
                nest=1
                Do Until nest=0 Or x=0 Or x=e
                    x=x+1
                    t=Mid(o,x,1)
                    If t="""" Then
                        x=EndString(o,x)
                    ElseIf t=startChar Then
                        'nested
                        nest=nest+1
                    ElseIf t=endChar Then
                        nest=nest-1
                    End If
                Loop
            End If
        End If
        If x<>0 Then x=InStr(x,o,",")
    Loop
End Function

Function ReadArray(o)
    'take a string which is an array [] and break it into a 1-D string array
    'the values may be objects {} or arrays [] themselves
    'name-value pairs are of form name:value and are separated by commas
    'if nothing in the string then returns a single-element array with a(0)=""
    Dim x, c, e, elStart, nest, startChar, endChar, a(), t
    If Left(o, 1) = "[" Then o = Mid(o, 2, Len(o) - 2) 'strip the outer brackets
    If o = "" Then ReadArray = a : Exit Function
    e = Len(o)
    x = SkipWhite(o, 1) 'move to first non-whitespace character
    c = 0 'number of items
    Do Until x = 0 Or x >= e
        startChar = Mid(o, x, 1)
        elStart = x
        If startChar = "[" Or startChar = "{" Then
            If startChar = "[" Then endChar = "]" Else endChar = "}"
            nest = 1
            x=x+1
            Do Until nest = 0 Or x = 0 Or x > e
                t = Mid(o, x, 1)
                If t = """" Then
                    x = EndString(o, x)
                ElseIf t = startChar Then
                    'nested
                    nest=nest+1
                ElseIf t = endChar Then
                    nest=nest-1
                End If
                x=x+1
            Loop
        ElseIf startChar = """" Then
            elStart=elStart+1
            x = EndString(o, x)
        Else
            'value is true, false, null or a number
            x = InStr(x, o, ",")
        End If
        If x = 0 Then x = e + 1 'this was the last item in the array or object or was unterminated
        ReDim Preserve a(c)
        a(c) = Mid(o, elStart, x - elStart)
        c=c+1
        x = InStr(x, o, ",")
        If x <> 0 Then x = SkipWhite(o, x + 1)
    Loop
    ReadArray=a
End Function

Sub issueBar(i,t)
	'generate the menu bar for an issue. Goes under the orgbar
	'i is the issueID, t is the active menu button ID
	Dim con,roleOrgs,roleExec
	Call openEnigma(con)
	roleOrgs=hasRole(con,4)
	roleExec=hasRole(con,6)
	If roleOrgs Or roleExec Then%>
		<ul class="navlist">
			<%If roleOrgs Then%>
				<%=btn(1,"issue.asp?i="&i,"Key data",t)%>
				<%=btn(2,"issued.asp?i="&i,"Outstanding",t)%>
				<%=btn(4,"holding.asp?i="&i,"Holders",t)%>
			<%End If%>
			<%If roleExec Then%>
				<%=btn(5,"listing.asp?i="&i,"Listings",t)%>
				<%=btn(3,"oldlots.asp?i="&i,"Old lots",t)%>
				<%=btn(6,"events.asp?i="&i,"Events",t)%>
			<%End If%>
		</ul>
		<div class="clear"></div>
	<%End If
	Call closeCon(con)
End Sub

Function hasRole(con,roleID)
	hasRole=CBool(con.Execute("SELECT hasRole("&roleID&","&Session("ID")&")").Fields(0))
End Function

Sub requireRoleExec
	'lots of editing pages need user to have dbexec privilege in wsprivs
	Dim con
	Call openEnigma(con)
	If Not hasRole(con,6) Then
		Call closeCon(con)
		response.redirect "default.asp"
	End If
	Call closeCon(con)
End Sub

Sub payBar(t)
	'for pay.asp and payreview.asp%>
	<ul class="navlist">
		<%=btn(1,"pay.asp","Enter pay",t)%>
		<%=btn(2,"payreview.asp","Pending reports",t)%>
		<%=btn(3,"payleague.asp","Top volunteers",t)%>
		<%=btn(4,"paysubmitted.asp?u="&Session("ID"),"Submissions",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub mailBar(t)%>
	<ul class="navlist">
		<%=btn(1,"mailchange.asp","Change address",t)%>
		<%=btn(2,"domainchange.asp","Change domain",t)%>
		<%=btn(3,"searchusers.asp","Search users",t)%>
		<%=btn(4,"sendletter.asp","Send newsletter",t)%>
	</ul>
	<div class="clear"></div>
<%End Sub

Sub orgBar(p,t)
	'generate the top menu bar for an organisation
	'p is the personID, t is the active menu button ID
	Dim con,roleOrgs,rolePay,roleStories,roleExec
	Call openEnigma(con)
	roleOrgs=hasRole(con,4)
	rolePay=hasRole(con,1)
	roleStories=hasRole(con,5)
	roleExec=hasRole(con,6)
	If roleOrgs or rolePay or roleExec Then%>
		<ul class="navlist">
			<%If rolePay Then%>
				<%=btn(15,"pay.asp?firm="&p,"Pay",t)%>
			<%End If
			If roleExec Then%>
				<%=btn(1,"advisership.asp?reset=1&amp;firm="&p,"Advisers",t)%>
				<%If CBool(con.Execute("SELECT EXISTS(SELECT * FROM advisers WHERE personID="&p&")").Fields(0)) Then%>
					<%=btn(2,"advisership.asp?reset=1&amp;adviser="&p,"Adviserships",t)%>
				<%End If%>
				<%=btn(3,"officer.asp?reset=1&amp;firm="&p,"Officers",t)%>
				<%=btn(4,"docmon.asp?p="&p,"Documents",t)%>
				<%=btn(6,"orgdata.asp?p="&p,"Org data",t)%>
				<%=btn(7,"classifications.asp?p="&p,"Categories",t)%>
				<%=btn(10,"web.asp?p="&p,"Web",t)%>
				<%=btn(11,"freg.asp?p="&p,"Foreign registrations",t)%>
				<%=btn(12,"olddom.asp?p="&p,"Old doms",t)%>
				<%=btn(13,"reorg.asp?p="&p,"Reorg",t)%>
				<%=btn(14,"combineorgs.asp?p1="&p,"Combine",t)%>
			<%End If
			If roleOrgs Then 'orgs role%>
				<%=btn(5,"org.asp?p="&p,"Organisation",t)%>
				<%=btn(9,"oldnames.asp?p="&p,"Old names",t)%>		
				<%=btn(8,"issue.asp?p="&p,"Issues",t)%>
			<%End If
			If roleStories And p>0 Then%>
				<%=btn(16,"stories.asp?p="&p,"Stories",t)%>
			<%End If%>
		</ul>
		<div class="clear"></div>
	<%End If
	Call closeCon(con)
End Sub

Sub pplBar(p,t)
	'generate the top menu bar for an organisation
	'p is the personID, t is the active menu button ID%>
	<%Dim con,rolePeople,roleStories,roleExec
	Call openEnigma(con)
	rolePeople=hasRole(con,2)
	roleStories=hasRole(con,5)
	roleExec=hasRole(con,6)
	If rolePeople or roleExec Then%>
		<ul class="navlist">
			<%If rolePeople Then%>
				<%=btn(1,"human.asp?p="&p,"Human",t)%>
				<%=btn(2,"alias.asp?p="&p,"Alias",t)%>
				<%=btn(3,"relatives.asp?reset=1&amp;h1="&p,"Relatives",t)%>
			<%End If%>
			<%If roleExec Then%>
				<%=btn(4,"officer.asp?reset=1&amp;officer="&p,"Positions",t)%>
				<%=btn(5,"web.asp?p="&p,"Web",t)%>
				<%=btn(6,"combineppl.asp?h1="&p,"Combine",t)%>
			<%End If
			If roleStories And p>0 Then%>
				<%=btn(7,"stories.asp?p="&p,"Stories",t)%>
			<%End If%>
		</ul>
		<div class="clear"></div>
	<%End If
	Call closeCon(con)
End Sub

Function SCorg(sc)
	'return long datatype, last orgID to use stock code or zero if none
	Dim con
	Call openEnigma(con)
	SCorg=CLng(con.Execute("SELECT IFNULL((SELECT orgID FROM WebListings WHERE StockCode="&sc&" ORDER BY firstTradeDate DESC LIMIT 1),0)").Fields(0))
	Call closeCon(con)
End Function

Function remSuf(ByVal r, s)
	'clip a known suffix off the end of a string
	If Right(r, Len(s)) = s Then r = Trim(Left(r, Len(r) - Len(s)))
	remSuf = r
End Function

Function SkipWhite(s,x)
    'return position of first non-whitespace character on or after position x in string s
    'returns zero if nothing found
    Dim t,e
    e=Len(s)
    If x>e Then SkipWhite=0:Exit Function
    Do
        t=Mid(s,x,1)
        x=x+1
    Loop Until x>e Or (t<>Chr(32) And t<>Chr(9) And t<>Chr(10) And t<>Chr(13))
    SkipWhite=x-1
End Function

Function ULname(ByVal s, surname)
'VERSION 24-Feb-2019 from Enigma VBA
'convert a name to lower case with initial caps and cap after Mc, O' and for surnames only: Mac, Fitz
'surname is boolean
Dim ns, x, ub, t, p
If Not IsNull(s) Then
    s = Replace(s, "`", "'")
    s = Replace(s, "’", "'")
    s = remSpace(s)
    s = remSuf(s, "'")
    s = Replace(s, "- ", "-")
    s = Replace(s, " -", "-")
    ns = Split(s)
    ub = UBound(ns)
    s = ""
    For x = 0 To ub
        t = ns(x)
        'some Scottish/Irish names are broken with the "-Mc" at end of a word, then a space, then a word
        If Len(t) > 4 Then
            Do Until Right(t, 3) <> "-Mc" Or x = ub
                'append the next word to create a hyphenated name
                x = x + 1
                t = t & ns(x)
            Loop
        End If
        If ((t = "Mc" Or t = "O'") Or (surname And (t = "Mac" Or t = "Fitz"))) And x < ub Then
            'add this to the next word
            ns(x + 1) = t & ns(x + 1)
        ElseIf Left(t, 1) = "(" Then
            'ignore anything in parentheses
            s = s & t & " "
            Do Until Right(t, 1) = ")" Or x = ub
                x = x + 1
                t = ns(x)
                s = s & t & " "
            Loop
        Else
            'break hyphenated words, process them, then reassemble
            For Each t In Split(t, "-")
                t = remSuf(t, "'")
                If t <> "" Then
                    'to start, capitalise first letter and lower everything else as a base
                    t = UCase(Left(t, 1)) & LCase(Right(t, Len(t) - 1))
                    'now process the word
                    If Left(t, 3) = "Mc'" And Len(t) > 3 Then t = "Mc" & Right(t, Len(t) - 3)
                    'return numerals to capitals
                    If t = "II" Or t = "III" Or t = "IV" Or t = "VI" Or t = "VII" Or t = "VIII" Or t = "IX" Then
                        t = UCase(t)
                    ElseIf t = "de" Or t = "da" Or t = "of" Or t = "la" Or t = "von" Then
                        t = LCase(t)
                    ElseIf Len(t) > 2 Then
                        'this is the norm
                        If Mid(t, 2, 1) = "." Then
                            'series of initials with periods e.g. A.B.C
                            t = UCase(t)
                        Else
                            'capitalise the first letter and any letter after an apostrophe, which we take to be a word break
                            'e.g. O', D', Sa'
                            p = t
                            t = ""
                            For Each p In Split(p, "'")
                                'some names begin with an apostrophe which we preserve - e.g. Dutch 't
                                If p <> "" Then t = t & UCase(Left(p, 1)) & LCase(Right(p, Len(p) - 1))
                                t = t & "'"
                            Next
                            t = Left(t, Len(t) - 1)
                            For Each p In Array("O'", "Mc", "Mac", "Fitz", "D'", "I'")
                                If Left(t, Len(p)) = p And Len(t) > Len(p) Then
                                    t = p & UCase(Mid(t, Len(p) + 1, 1)) & LCase(Right(t, Len(t) - Len(p) - 1))
                                    Exit For
                                End If
                            Next
                            'don't do this with forenames because some begin with Mac and some people have Fitz as a given name
                            If surname Then
                                For Each p In Array("Mac", "Fitz")
                                    If Left(t, Len(p)) = p And Len(t) > Len(p) Then
                                        t = p & UCase(Mid(t, Len(p) + 1, 1)) & LCase(Right(t, Len(t) - Len(p) - 1))
                                        Exit For
                                    End If
                                Next
                            End If
                        End If
                    End If
                End If
                s = s & t & "-"
            Next
            'trim off the last hyphen
            s = Left(s, Len(s) - 1) & " "
        End If
    Next
End If
ULname = Trim(s)
End Function

Sub combinePersons(con,p1,p2)
	'called by the combinePpl and combineOrgs scripts
	'con is an existing DB connection
	con.Execute "UPDATE ccass.participants SET personID=" & p1 & " WHERE personID=" & p2
	con.Execute "UPDATE directorships SET director=" & p1 & " WHERE director=" & p2
	con.Execute "UPDATE donations SET donor=" & p1 & " WHERE donor=" & p2
	con.Execute "UPDATE ess SET orgID=" & p1 & " WHERE orgID=" & p2
	con.Execute "UPDATE ownerstks SET ultimID=" & p1 & " WHERE ultimID=" & p2
	con.Execute "UPDATE ukppl SET personID=" & p1 & " WHERE personID=" & p2
	con.Execute "INSERT IGNORE INTO sholdings(issueID,holderID,atDate,heldAs,shares,stake) " & _
	    "SELECT issueID," & p1 & ",atDate,heldAs,shares,stake FROM sholdings WHERE holderID=" & p2
	con.Execute "INSERT IGNORE INTO personstories(personID,storyID) SELECT " & p1 & ",storyID FROM personstories WHERE personID=" & p2
	con.Execute "INSERT IGNORE INTO web(personID,URL,source,dead) SELECT " & p1 & ",URL,source,dead FROM web WHERE personID=" & p2
End Sub

Sub n2ExtCheck(p)
	'Extend the given names of a human if not unique, or delete extensions if unique
	Dim con,rs,Name2,c
	Call prepMasterRs(con,rs)
	rs.Open "SELECT * FROM people WHERE personID=" & p, con
	If Not rs.EOF Then
	    If IsNull(rs("dn2")) Then
	        c = CLng(con.Execute("SELECT COUNT(*) FROM people WHERE dn1=" & apq(rs("dn1")) & " AND isNull(dn2)").Fields(0))
	    Else
	        c = CLng(con.Execute("SELECT COUNT(*) FROM people WHERE dn1=" & apq(rs("dn1")) & " AND dn2=" & apq(rs("dn2"))).Fields(0))
	    End If
	    If c > 1 Then
	        'not unique name
	        If (Len(rs("Name2")) = Len(rs("dn2"))) Or (IsNull(rs("Name2")) And IsNull(rs("dn2"))) Then Call pplExtend(p) 'extend name if not already done
	    ElseIf (Len(rs("Name2")) > Len(rs("dn2"))) Or (IsNull(rs("dn2")) And Not IsNull(rs("Name2"))) Then
	        'unique name, so remove extensions
	        Name2 = cleanName(rs("Name2"))
	        con.Execute "UPDATE people" & setsql("Name2",Array(Name2)) & "personID="&p
	    End If
	End If
	Call closeConRs(con,rs)
End Sub

Sub pplExtend(ByVal p)
	'extend the name of a natural person with no current extension, if a unique name is possible
	Dim conAuto,rs,ext,n1,n2,sql,n2ext
	n2ext=""
	Call prepAuto(conAuto) 'don't disturb userID
	Set rs=Server.CreateObject("ADODB.Recordset")
    rs.Open "SELECT * FROM people WHERE personID="&p,conAuto
    n1=rs("Name1")
    If Not IsNull(rs("Name2")) Then n2=cleanName(rs("Name2")) Else n2=""
    sql="SELECT EXISTS(SELECT personID FROM people WHERE personID<>"&p&" AND name1="&apq(n1)&" AND name2="
    'first try birth
    If Not IsNull(rs("YOB")) Then
    	ext=" ("&makeYMD(rs("YOB"),rs("MOB"),rs("DOB"))&")"
        If Not CBool(conAuto.Execute(sql & apq(n2 & ext)&")").Fields(0)) Then n2ext=(n2 & ext)
    End If
    'now try death
    If n2ext="" And Not IsNull(rs("YOD")) Then
        ext=" (d" &makeYMD(rs("YOD"), rs("MonD"), rs("DOD"))&")"
        If Not CBool(conAuto.Execute(sql & apq(n2 & ext) & ")").Fields(0)) Then n2ext=(n2 & ext)
    End If
    'now try local HK factors: SFCID, HKID or LSHK
    If n2Ext="" Then
        If Not IsNull(rs("SFCID")) Then
            n2ext = Trim(n2&" "&"(SFC:" & rs("SFCID") &")")
        ElseIf Not IsNull(rs("HKID")) Then
        	n2ext=maskHKID(p,n1,n2,rs("HKID"))
        Else
            ext=findAdmHK(p)
            If ext<>"" Then
                ext = " (LSHK:" & ext & ")"
                If Not CBool(conAuto.Execute(sql & Trim(apos(n2) & ext) & ")").Fields(0)) Then n2ext=Trim(n2 & ext)
            End If
        End If
    End If
    If n2ext<>"" Then conAuto.Execute "UPDATE people" & setsql("name2",Array(n2ext)) & "personID="&p
    Call closeConRs(conAuto,rs)
End Sub

Function findAdmHK(p)
	'fetch the LSHK admission date of this person, if any
	Dim conMaster,rs
	Call prepMasterRs(conMaster,rs)
	rs.Open "SELECT MSdateAcc(admHK,admAcc)admHK FROM lsppl WHERE personID="&p&" ORDER BY lastSeen DESC LIMIT 1",conMaster
	If Not rs.EOF Then findAdmHK=rs("admHK") Else findAdmHK=""
	Call closeConRs(conMaster,rs)
End Function

Function maskHKID(ByVal p,ByVal n1,ByVal n2,ByVal HKID)
	'extend forenames sufficiently to make the name pair unique, but mask 3 or fewer characters at end
	Dim mask,ext,sql,sql2,conMaster
	If Len(HKID)<7 Then
		maskHKID=n2
		Exit Function
	End If
	Call prepMaster(conMaster)
	If IsNull(n2) Or n2="" Then
	    sql2="AND isNull(dn2)"
	Else
	    'match with or without hyphens
	    sql2="AND dn2=stripext("&apq(n2)&")"
	End If
	For mask = 3 To 0 Step -1
	    ext="(HKID:" & Left(HKID,Len(HKID)-mask) & String(mask,"X") & ")"
	    sql="SELECT EXISTS(SELECT * FROM people WHERE dn1=stripext("&apq(n1)&") "&sql2&" AND RIGHT(name2," & Len(ext) & ")='"&ext&"' AND personID<>"&p&")"
	    If Not CBool(conMaster.Execute(sql).Fields(0)) Then Exit For
	Next
	maskHKID=Trim(n2&" "&ext)
	Call closeCon(conMaster)
End Function

Function makeYMD(y,m,d)
	Dim s
	If y<>"" Then
	    s=Right("000"&y, 4)
	    If m<>"" Then
	        s=s&"-"&Right("0"&m, 2)
	        If d<>"" Then s=s&"-"&Right("0"&d,2)
	    End If
	End If
	makeYMD=s
End Function

Function domchk(d,t)
	'return Boolean value indicating that the domicile d and orgType t are auto-maintained and blocked from add/edit/delete
	'HK,UK,Scotland,England & Wales, Northern Ireland
	If Instr(",1,2,112,116,311,", ","&d&",")=0 Or _
		Instr(",1,2,7,9,15,19,20,21,22,23,25,26,27,28,35,36,37,38,40,41,42,43,44," , ","&t&",")=0 Then domchk=True Else domchk=False
End Function
%>