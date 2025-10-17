<%
Sub login()
	'force user to login for secure pages. Call at top of page.
	If Session("e")="" Then Call cookiechk
	If Session("e")="" Then
		Session("referer") = LCase(Request.ServerVariables("URL"))&"?"&Request.ServerVariables("QUERY_STRING")
		Response.Redirect "../webbmail/login.asp"
	End If
End Sub

Function tick(b)
	tick=IIF(b,"&#10004;","")
End Function

Function mobile(n)
	'warning that columns may disappear. n is the lowest number of colHide used on the page (first to disappear).
	mobile="<p class='widthAlert"&n&"'>Some data are hidden to fit your display.<span class='portrait'> Rotate?</span></p>"
End Function

Function currPage()
	Dim parts
	parts=Split(Request.ServerVariables("URL"),"/")
	currPage=parts(Ubound(parts))
End Function

Function fileName()
	'return the current filename without an extension
	fileName=split(currPage(),".")(0) 
End Function

Function GetKey(var)
	'fetch a key from the server-side keys table, not included in the data dump
	Dim con
	Call openMailDB(con)
    GetKey = con.Execute("SELECT val FROM mailvote.keys WHERE name='" & var & "'").Fields(0)
	Call closeCon(con)
End Function

Function GetLog(var)
    Dim con
    Call openEnigma(con)
    GetLog = con.Execute("SELECT val FROM log WHERE name='" & var & "'").Fields(0)
    Call closeCon(con)
End Function

Function btn(id,URL,txt,targ)
	If id=targ Then
		btn="<li class='livebutton'>"&txt&"</li>"
	Else
		btn="<li><a href='"&URL&"'>"&txt&"</a></li>"
	End If
End Function

Function IIF(c,a,b)
	'both a and b will be evaluated before being passed to this function,
	'so this doesn't work if either a or b is a function with invalid variables (such as Replace on a null)
	If c Then IIF=a Else IIF=b
End Function

Function writeNav(ByVal val,p,l,URL)
	'write a navigation bar with a set of buttons linking to a common URL with 1 parameter
	'val is the parameter value of the target button
	'p is a comma-separated list of values for the parameter
	'l is a comma-separated list of button texts
	'URL is the base URL with querystring, to which the parameter is appended
	'number of values in p must equal number of labels l
	writeNav="<ul class='navlist'>"&writeBtns(val,p,l,URL)&"</ul><div class='clear'></div>"
End Function

Function writeBtns(ByVal val,p,l,URL)
	'does the list elements of writeNAV without the ul tag, to allow other buttons
	Dim s,x
	p=split(p,",")
	l=split(l,",")
	If isNumeric(val) Then val=CLng(val)
	For x=0 to Ubound(p)
		If isNumeric(p(x)) And isNumeric(val) Then p(x)=CLng(p(x))
		If p(x)=val Then
			s=s&"<li class='livebutton'>"&l(x)&"</li>"
		Else
			s=s&"<li><a href='"&URL&p(x)&"'>"&l(x)&"</a></li>"
		End If
	Next
	writeBtns=s
End Function

Function eMailCheck(e)
    eMailCheck = False
    'max local-part is 64 characters, cannot start with a dot
    'domainPart must have (one or more characters then one dot), one or more times, followed by at least 2 characters
    'RFC3696 errata says max length is 254
    If Len(e) > 254 Then Exit Function
    If InStr(e, "..") <> 0 Then Exit Function
    If Left(e, 1) = "." Then Exit Function
    Dim regEx
    Set regEx = New RegExp
    regEx.Pattern = "^[\w-\.!#$%&'*+-/=?^_`{|}~]{1,64}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]{2,}$"
    eMailCheck = regEx.test(e)
End Function

Function forceDate(rawdate)
	If rawdate<>"" Then ForceDate=Day(rawdate)&"-"&MonthName(Month(rawdate),True)&"-"&Year(rawdate)
End Function

Function forceDate2(rawdate)
	If rawdate<>"" Then ForceDate2=Day(rawdate)&"-"&MonthName(Month(rawdate),True)&"-"&Right(Year(rawdate),2)
End Function

Function Force24Time(rawdate)
	If rawdate<>"" Then Force24Time=Right("0"&Hour(rawdate),2)&":"&Right("0"&Minute(rawdate),2)&":"&Right("0"&Second(rawdate),2)
End Function

Function ForceTimeDate(rawdate)
	If rawdate<>"" Then ForceTimeDate=Force24Time(rawdate)&" "&ForceDate(rawdate)
End Function

Function dateStr(d,a)
	'produce string d-MMM-YYYY from date
	If not isnull(d) Then
		If a=1 or a=4 then
			DateStr=Year(d)
		ElseIf a=2 or a=5 then
			DateStr=MonthName(Month(d),True)&"-"&Year(d)
		ElseIf a=3 then
			DateStr="U"
		ElseIf not IsNull(d) then
			DateStr=Day(d)&"-"&MonthName(Month(d),True)&"-"&Year(d)
		End If
	End If
End Function

Function YN(v)
	If v then YN="Y"
	If Not v or isNull(v) Then YN="N"
End function

Function dateStr2(DD,MM,YY)
	'produce string representing date from separate D/M/Y
	If YY<>"" then DateStr2=DateStr2&YY
	If MM<>"" then DateStr2=MonthName(MM,True)&"-"&DateStr2
	If DD<>"" then DateStr2=DD&"-"&Datestr2
End Function

Function dateYMD(y,m,d)
	'produce ISO date format or partial date
	dateYMD=y
	If m>0 Then
		dateYMD=y&"-"&right("0"&m,2)
		If d>0 Then dateYMD=dateYMD&"-"&Right("0"&d,2)
	End If
End Function

Function DiffTimeStr(Time1,Time2)
	Dim RemSecs,RemMins,RemHours,RemDays,TimeDiff
	TimeDiff=Time2-Time1
	RemDays=Int(TimeDiff)
	RemHours=Int((TimeDiff-RemDays)*24)
	RemMins=Int(1440*(TimeDiff-RemDays-RemHours/24))
	RemSecs=Int(86400*(TimeDiff-RemDays-RemHours/24-RemMins/1440))
	DiffTimeStr=RemDays&" days "&RemHours&" hours "&RemMins&" mins "&RemSecs&" secs"
End Function

Function getHide(s)
	hide=Request(s)
	If hide="" Then hide=Session("hide")
	If hide<>"Y" Then hide="N"
	Session("hide")=hide
	getHide=hide
End Function

Function colSum(a,c)
	'sum column c of an array a
	Dim x,v
	colSum=0
	For x=0 to UBound(a,2)
		v=Trim(a(c,x)) 'otherwise isNumeric fails on some GetRows queries
		If isNumeric(v) Then colSum=colSum+CDbl(v)
	Next
End Function

Function arrSum(a)
	'sum a 1D array
	Dim x
	For x=0 to Ubound(a)
		arrSum=arrSum+a(x)
	Next
End Function

Function rowSum(a,r)
	'sum row r of a 2D array a
	Dim x
	For x=0 to UBound(a,1)
		rowSum=rowSum+CLng(a(x,r))
	Next
End Function

Function monthEnd(m,y)
	'last day of month
	monthEnd=Day(DateSerial(y,m+1,0))
End Function

Function sig(p)
	sig=digits(p,4)
End Function

Function sig2(p)
	sig2=digits(p,5)
End Function

Function digits(p,n)
	'n=5 formats to 5 digits, e.g. 12,345 or 123.45 or 0.1234
	'n=4 formats to 4 digits, e.g. 1,234 or 123.4 or 0.123 
	'integer part is not rounded however large
	'0 or Null is represented as "-"
	If p=0 Or isNull(p) Then digits="-" Else digits=FormatNumber(p,Max(0,n-Len(Cstr(Int(p)))))
End Function

Function pcsig(p)
	'for fomatting total return percentages.
	If p>=10 Then
		pcsig=0
	ElseIf p>1 Then
		pcsig=1
	ElseIf p<-0.999 Then
		pcsig=Min(-Int((Log(1+p)/Log(10)))-1,6)
	Else
		pcsig=2
	End If
End Function

Function lastID(con)
	lastID=CLng(con.Execute("SELECT LAST_INSERT_ID()").Fields(0).Value)
End Function

Function MSdate(x)
	'convert date to YYYY-MM-DD for MySQL
	If isDate(x) Then MSdate=year(x)&"-"&right("0"&month(x),2)&"-"&right("0"&day(x),2) Else MSdate=""
End Function

Function MSSdate(x)
	'convert date to YY-MM-DD
	If isDate(x) Then MSSdate=right(year(x),2)&"-"&right("0"&month(x),2)&"-"&right("0"&day(x),2) Else MSSdate=""
End Function

Function MSdateTime(ByVal x)
	'convert datetime to YYYY-MM-DD HH:MM:SS
	If Not isNull(x) Then x=Replace(x,"T"," ") 'VBS functions don't work with a T between date and time, which browser sends
	If isDate(x) Then MSdateTime=MSdate(x)&" "&Right("0"&Hour(x),2)&":"&Right("0"&Minute(x),2)&":"&Right("0"&Second(x),2) Else MSdateTime=""
End Function

Function MSdateAcc(d,a)
	'produce string U,YYYY,YYYY-MM or YYYY-MM-DD from date
	'I think we have internalised this to a MySQL function, but keep this in case some pages use it
	Dim s
	If Not isNull(a) Then a=CByte(a)
	If a=3 Then
		s="U"
	ElseIf isDate(d) Then
		s=Year(d)
		If (a<>1 and a<>4) or isNull(a) Then
			s=s&"-"&right("0"&month(d),2)
			If (a<>2 and a<>5) or isNull(a) Then s=s&"-"&right("0"&day(d),2)
		End If
	Else
		s=Null
	End If
	MSdateAcc=s
End Function

Function normURL(url)
If Not isNull(url) and url<>"" Then
	If Left(url,5)="https" Then
		normURL="http"&Right(url,len(url)-5)
	ElseIf Left(url,4)<>"http" Then
		normURL="http://"&url
	Else
		normURL=url
	End If
End If
End Function

Function remSpace(s)
	s=Trim(s)
	s=Replace(s,Chr(13),"")
	Do until InStr(s,"  ")=0
		s=Replace(s,"  "," ")
	Loop
	remSpace=s
End Function

Function pcStr(s)
	If isNull(s) or s=0 Then pcStr="&nbsp;" Else pcStr=FormatPercent(s,2)
End Function

Function intStr(n)
	If isNull(n) Then intStr="&nbsp;" Else intStr=FormatNumber(n,0)
End Function

Function spDate(d)
	'return either a space or the MSdate. Useful for table cells
	If isNull(d) Or d="" Or Not isDate(d) Then spDate="&nbsp;" Else spDate=MSdate(d)
End Function

Function apq(s)
	'for SQL. Return either "NULL" for empty string, or quoted string, even if the value is Numeric
	If s="" Or isNull(s) Then apq="NULL" Else apq="'"&apos(s)&"'"
End Function

Function sqv(v)
	'sqv=Structured Query Value
	'prepare a value for insert/update in SQL. Empty strings become NULL. Strings are quoted, numbers are not.
	If v="" Or isNull(v) Then
		sqv="NULL" 
	ElseIf isNumeric(v) Or VarType(v)=vbBoolean Then
		sqv=v
	ElseIf VarType(v)=vbDate Then
		sqv="'"&MSdate(v)&"'"
	Else
		sqv="'"&apos(v)&"'"
	End If
End Function

Function valsql(v)
	'take an array of variables and convert them into a mysql VALUES string for INSERT
	'example: "INSERT INTO table (f1,f2,f3,f4) " & valsql(Array(1,"",null,"2023-04-26"))
	Dim r,s
	For Each s in v
		r=r&","&sqv(s)
	Next
	valsql=" VALUES("&Mid(r,2)&")"
End Function

Function setsql(n,v)
	'take a CSV string of fieldnames and array of variables/constants and convert them into a mysql string for UPDATE
	'example: "UPDATE table" & setsql("f1,f2,f3,f4",Array(1,"",null,"2023-04-26")) & "ID=" & ID
	Dim r,x,a
	a=Split(n,",")
	If Ubound(v)<>Ubound(a) Then
		Response.Write "Different number of names and values in setsql call. "
	Else
		For x=0 to Ubound(a)
			r=r&","&a(x)&"="&sqv(v(x))
		Next
		setsql=" SET "&Mid(r,2)&" WHERE " 'reminds us to use a primary key
	End If
End Function

Function captcha(token) 
  ' Test the captcha token
  Dim obj
  Set obj = Server.CreateObject("Msxml2.ServerXMLHTTP") 
  obj.open "POST", "https://www.google.com/recaptcha/api/siteverify", False 
  obj.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
  obj.send "secret="&GetKey("CaptchaSecret") & "&response=" & token
  If instr(obj.responseText,"true")>0 Then captcha=True Else captcha=False
  Set obj = Nothing 
End Function

Function botchk()
	'returns true if pageCnt exceeds limit and captcha is not solved
	botchk=False
	Dim ip,token,con,rs,host
	host=Request.ServerVariables("SERVER_NAME")
	If host="localhost" or host="ws" or host=GetKey("MasterHost") Then Exit Function
	ip=IPtoLng
	Call openEnigmaRs(con,rs)
	rs.Open "SELECT * FROM iplog.visitors WHERE ip="&ip,con,,3 'adLockOptimistic
	If rs.EOF Then
		rs.addNew
		rs("ip")=ip
	ElseIf rs("pageCnt")>=100 Then
		botchk=True
		rs("totpages")=rs("totpages")+1
		token=(Request.Form("g-recaptcha-response"))
		If token<>"" Then
			If captcha(token) Then rs("pageCnt")=1: botchk=False
		End If
		If botchk Then Response.Write "<script src='https://www.google.com/recaptcha/api.js' async defer></script>"
	Else
		rs("pageCnt")=rs("pageCnt")+1
		rs("totpages")=rs("totpages")+1
	End If
	rs.Update
	Call CloseConRs(con,rs)
End Function

Function botchk2()
	'if the daily page limit for this IP is exceeded then return a string message
	botchk2=""
	Dim ip,con,rs,host
	host=Request.ServerVariables("SERVER_NAME")
	'If host="localhost" or host="ws" or host=GetKey("MasterHost") Then Exit Function
	ip=IPtoLng
	Call openMailRs(con,rs)
	rs.Open "SELECT * FROM iplog.visitors WHERE ip="&ip,con,,3 'adLockOptimistic
	If rs.EOF Then
		rs.addNew
		rs("ip")=ip
	Else
		If Date()>Cdate(rs("lastvisit")) Then
			'reset limit for new day
			rs("pageCnt")=1
			rs("totpages")=rs("totpages")+1
		ElseIf rs("pageCnt")>=300 Then
			botchk2="Sorry, you have exceeded the daily page limit. Come back tomorrow, HK time (UTC+08:00). "&_
				"If you are scraping for data, just stop. You can download the entire database from our "&_
				"<a href='../articles/repository.asp'>repository</a>"
		Else
			rs("pageCnt")=rs("pageCnt")+1
			rs("totpages")=rs("totpages")+1
		End If
	End If
	rs.Update
	Call CloseConRs(con,rs)
End Function

Function checked(c)
	'tick a checkbox input if condition c is True
	checked=IIF(c," checked","") 
End Function

Function selected(c)
	'select a radio button if condition c is True
	selected=IIF(c," selected","") 
End Function

Function IPtoLng()
	'convert the requesting IP string into a long integer for storage
	Dim ipa
	ipa=Split(Request.ServerVariables("REMOTE_ADDR"),".")
	IPtoLng=ipa(0)*16777216+ipa(1)*65536+ipa(2)*256+ipa(3)
End Function

Function makeSelect(ByVal n,ByVal v,ByVal t,ByVal auto)
	'n = string name of the input
	'v = string containing the selected value
	't = string with an ordered list of values and text separated by commas
	'e.g. val1,text1,val2,text2,...
	'possible for first 2 values in t to be empty (two commas)
	makeSelect=makeSelectOnch(n,v,t,IIF(auto,"this.form.submit()",""))
End Function

Function makeSelectOnch(ByVal n,ByVal v,ByVal t,ByVal onch)
	'n = string name of the input
	'v = string containing the selected value
	't = string with an ordered list of values and text separated by commas
	'e.g. val1,text1,val2,text2,...
	'possible for first 2 values in t to be empty (two commas)
	Dim a,x,s
	If isNull(v) Then v=""
	a=split(t,",")
	s="<select id='"&n&"' name='"&n&"'"
	s=s&" onchange='"&onch&"'"
	s=s&">"
	For x=0 to (Ubound(a)-1)/2
		s=s&"<option value='"&a(2*x)&"'"
		If a(2*x)=Cstr(v) Then s=s&" selected"
		s=s&">"&a(2*x+1)&"</option>"
	Next
	makeSelectOnch=s&"</select>"
End Function

Function arrSelect(n,v,a,auto)
	arrSelect=arrSelectZ(n,v,a,auto,false,"","")
End Function

Function arrSelectZ(n,ByVal v,a,auto,zBln,zVal,zLabel)
	'generate an HTML select input for a form, with optional zero in first line
	'n = string name of the input
	'v = the selected value (integer)
	'a = 2-columnn array holding values and names of each option
	'auto = Boolean, whether to auto-submit after change
	'zBln = Boolean, whether to include an extra option at top of list
	'zVal = the value of the extra option
	'zlabel = string label for extra option
	Dim onch
	If auto Then onch="this.form.submit()" Else onch=""
	arrSelectZ=arrSelectOnchZ(n,v,a,onch,zBln,zVal,zLabel)
End Function

Function arrSelectOnchZ(n,ByVal v,a,onch,zBln,zVal,zLabel)
	'generate HMTL select input, with customised onchange function
	'generate an HTML select input for a form, with optional zero in first line
	'n = string name of the input
	'v = the selected value (integer)
	'a = 2-columnn array holding values and names of each option
	'onch = onchange function, or empty string if none. javascript names must be single-quoted
	'zBln = Boolean, whether to include an extra option at top of list
	'zVal = the value of the extra option
	'zlabel = string label for extra option
	Dim s,x
	If isNull(v) Then v=""
	s="<select name='"&n&"'"
	If onch>"" Then s=s&" onchange="""&onch&""""
	s=s&">"
	If zBln Then
		s=s&"<option value='"&zVal&"'"
		If v=zVal Then s=s&" selected"
		s=s&">"&zLabel&"</option>"		
	End If
	If Not isEmpty(a) Then
		For x=0 to Ubound(a,2)
			s=s&"<option value='"&a(0,x)&"'"
			If CStr(a(0,x))=CStr(v) Then s=s&" selected"
			s=s&">"&a(1,x)&"</option>"
		Next
	End If
	arrSelectOnchZ=s&"</select>"
End Function

Function rangeSelect(n,v,zero,zlabel,auto,a,b)
	'produce a drop-down list with integer range, such as years, months or days
	'n = string name of input
	'v = the selected value (integer)
	'zero = Boolean, whether to include a 0=Any option at top of list
	'zlabel = optional string label for zero
	'auto = Boolean, whether to auto-submit after change
	'a = start of range
	'b = end of range
	Dim s,x,inc
	s="<select name='"&n&"'"
	If auto Then s=s&" onchange='this.form.submit()'"
	s=s&">"
	If zero Then
		s=s&"<option value='0'"
		If v=0 Then s=s&"selected"
		s=s&">"&zlabel&"</option>"		
	End If
	If a>b Then inc=-1 Else inc=1
	For x=a to b step inc
		s=s&"<option value='"&x&"'"
		If x=v Then s=s&" selected"		
		s=s&">"&x&"</option>"	
	Next
	rangeSelect=s&"</select>"
End Function

Function monthSelect(n,v,zero,zlabel,auto)
	monthSelect=rangeSelect(n,v,zero,zlabel,auto,1,12)
End Function

Function daySelect(n,v,zero,zlabel,auto)
	daySelect=rangeSelect(n,v,zero,zlabel,auto,1,31)
End Function

Function jsdt(d)
	'convert date to Javascript time in milliseconds
	jsdt=1000*dateDiff("s","1970-01-01",d)
End Function

Function apos(s)
	apos=Replace(s,"'","''")
End Function

Function fNameOrg(ByRef p)
	'return English and Chinese name or error message or redirects to merged entity
	'p is Long
	Dim con,rs
	If p=0 Then
		fNameOrg="No organisation was specified"
	Else
		Call openEnigmaRs(con,rs)
		rs.Open "SELECT CAST(enigma.fnameOrg(name1,cName)AS NCHAR)name from organisations WHERE personID="&p,con
		If rs.EOF Then
			fNameOrg="No such organisation"
			rs.Close
			rs.Open "SELECT * FROM enigma.mergedpersons WHERE oldp="&p,con
			p=0
			If Not rs.EOF Then
				p=rs("newp")
				Call CloseConRs(con,rs)
				Response.Redirect Request.ServerVariables("URL")&"?p="&p
			End If
		Else
			fNameOrg=htmlEnt(rs("name"))
		End If
		Call CloseConRs(con,rs)
	End If
End Function

Function fNamePpl(ByRef p)
	'return English and Chinese name or error message or redirects to merged entity
	'p is Long
	Dim con,rs
	If p=0 Then
		fnamePpl="No human was specified"
	Else
		Call openEnigmaRs(con,rs)
		rs.Open "SELECT CAST(enigma.fnamePpl(name1,name2,cName) AS NCHAR)name from people WHERE personID="&p,con
		If rs.EOF Then
			fNamePpl="No such human"
			rs.Close
			rs.Open "SELECT * FROM enigma.mergedpersons WHERE oldp="&p,con
			p=0
			If Not rs.EOF Then
				p=rs("newp")
				Call CloseConRs(con,rs)
				Response.Redirect Request.ServerVariables("URL")&"?p="&p
			End If
		Else
			fNamePpl=htmlEnt(rs("name"))
		End If
		Call closeConRs(con,rs)
	End If
End Function

Sub fnamePsn(ByRef p,ByRef name,ByRef isOrg)
	'p=personID, returns name of person and whether it is an org, or "No such person" and False
	Dim con,rs
	If p=0 Then
		name="No person was specified"
	Else
		Call openEnigmaRs(con,rs)
		rs.Open "SELECT CAST(enigma.fnamePsn(o.name1,p.name1,p.name2,o.cName,p.cName)AS NCHAR)name,Not isNull(o.Name1) isOrg FROM persons pn "&_
			"LEFT JOIN organisations o ON pn.personID=o.personID "&_
			"LEFT JOIN people p ON pn.personID=p.personID WHERE pn.personID="&p,con
		If rs.EOF Then
			name="No such person"
			rs.Close
			rs.Open "SELECT * FROM mergedpersons WHERE oldp="&p,con
			p=0
			If Not rs.EOF Then
				p=rs("newp")
				Call closeConRs(con,rs)
				Response.Redirect Request.ServerVariables("URL")&"?p="&p
			End If
		Else
			name=htmlEnt(rs("name"))
			isOrg=rs("isOrg")
		End If
		Call closeConRs(con,rs)
	End If
End Sub

Sub openEnigmaRs(con,rs)
	Call openEnigma(con)
	Set rs=Server.CreateObject("ADODB.Recordset")
End Sub

Sub openEnigma(con)
	Set con=Server.CreateObject("ADODB.Connection")
	con.Open "DSN=enigmaMySQL;"
End Sub

Sub openMailRs(con,rs)
	Call openMailDB(con)
	Set rs=Server.CreateObject("ADODB.Recordset")
End Sub

Sub openMailDB(con)
	Set con=Server.CreateObject("ADODB.Connection")
	con.Open "DSN=mailvote;"
End Sub

Sub closeConRs(ByRef con,ByRef rs)
	If rs.State=1 Then rs.Close
	Set rs=Nothing
	Call closeCon(con)
End Sub

Sub closeCon(ByRef con)
	con.Close
	Set con=Nothing
End Sub

Function htmlEnt(s)
	'replace characters in names with HTML entities to prevent XSS attacks
	If Not isNull(s) Then
		s=replace(s,"<","&lt;")
		s=replace(s,">","&gt;")
		s=replace(s,"""","&quot;")
		s=replace(s,"'","&apos;")
	End If
	htmlEnt=s
End Function

Function IfNull(v,a)
	If isNull(v) Then IfNull=a Else IfNull=v
End Function

Function checkbox(n,v,a)
	'generate a checkbox for a yes/no variable v named n, a=autosubmit
	checkbox="<input type='checkbox' name='"&n&"' id='"&n&"' value='1'"&IIF(v," checked","")&IIF(a," onchange='this.form.submit()'","")&">"
End Function

Function getBool(s)
	'return Boolean True if an input named s is 1 or the word True or true (case sensitive), otherwise False
	'when a Boolean variable is added to a string in VBS, it encodes as "True"
	Dim t
	t=Request(s)
	If t="1" Or t="true" Or t="True" Then getBool=True Else getBool=False
End Function

Function getDbl(s,def)
	'return a double (floating point) or default (any vartype) from an input named s
	Dim i
	i=Request(s)
	If i="" or not isNumeric(i) then getDbl=def Else getDbl=CDbl(i)
End Function

Function getInt(s,def)
	'return an integer or default (any vartype) from an input named s
	Dim i
	i=Request(s)
	'prevent overflow
	If isEmpty(i) or Not isNumeric(i) Then getInt=def Else getInt=CInt(Max(Min(i,32767),-32768))
End Function

Function getMonth(s,def)
	'constrain integer input s to 1-12 or default (any type)
	getMonth=getIntRange(s,def,1,12)
End Function

Function getIntRange(s,def,a,b)
	'return an integer from an input named s, constrained by a<=s<=b or =default (any varType)
	'def may be outside the range
	Dim i
	i=Request(s)
	If isEmpty(i) or Not isNumeric(i) Then
		i=def
	ElseIf isNumeric(def) Then
		'need explicit conversion for comparison of string
		If Cdbl(i)=Cdbl(def) Then i=CInt(i) Else i=CInt(Max(Min(i,b),a))
	Else
		i=CInt(Max(Min(i,b),a))
	End If
	getIntRange=i
End Function

Function getLng(s,def)
	'return a Long value or default (any vartype) from an input named s
	Dim i
	i=Request(s)
	If i="" or not isNumeric(i) then getLng=def Else getLng=CLng(i)
End Function

Function getMSdate(s)
	'return an MSdate string from an input named s, or MSdate(today)
	getMSdate=getMSdef(s,MSdate(Date))
End Function

Function getMSdef(s,def)
	'returns an MSdate string or default (any vartype) from an input named s
	Dim d
	d=Request(s)
	If isDate(d) Then getMSdef=MSdate(d) Else getMSdef=def
End Function

Function getMinMSdate(s,m)
	'return an MSdate from an input named s, subject to a minimum MSdate m, or today if empty
	getMinMSdate=Max(getMSdate(s),m)
End Function

Function getMSdateRange(s,a,b)
	'return an MSdate from an input named s, subject to min MSdate a and max MSdate b, or today if empty
	getMSdateRange=Min(getMinMSdate(s,a),b)
End Function

Function joinCol(a,n)
	joinCol=joinColQuote(a,n,"")
End Function

Function joinColQuote(a,n,q)
	'join column of array a with a comma between them. Useful to generate x-axis quoted labels for highcharts
	'each element is surrounded with a quote character q, which may be empty
	Dim j,x
	For x=0 to Ubound(a,2)
		If isNull(a(n,x)) Then
			j=j&","&q&"0"&q			
		Else
			j=j&","&q&a(n,x)&q
		End If
	Next
	joinColQuote=Mid(j,2) 'strip off the leading comma
End Function

Function joinRow(a,n)
	'join row of an array with a comma between them. Useful to generate time series for highcharts
	Dim j,x
	For x=0 to Ubound(a,1)
		j=j&","&a(x,n)
	Next
	joinRow=Mid(j,2) 'strip off the leading comma
End Function

Function hcArr(a,n)
	'generate a sequence of 2-element javascript arrays for highchart stockChart series
	'1st element is unix timestamp and must be in column 0 of a
	'2nd element is value from column n of array
	Dim s,x
	For x=0 to Ubound(a,2)
		s=s&"["&jsdt(a(0,x))&","&a(n,x)&"],"
	Next
	hcArr=s
End Function

Function Min(x,y)
	If isNumeric(x) And isNumeric(y) Then
		'explicitly convert variants as each may be an input string
		If CDbl(x)<CDbl(y) Then Min=x Else Min=y
	Else
		If x<y Then Min=x Else Min=y
	End If
End Function

Function Max(x,y)
	If isNumeric(x) And isNumeric(y) Then
		'explicitly convert variants as each may be an input string
		If CDbl(x)>CDbl(y) Then Max=x Else Max=y
	Else
		If x>y Then Max=x Else Max=y
	End If
End Function

Function GetRow(rs)
    'read first column of a recordset into a 1-D string array
    Dim r(),x
    Do Until rs.EOF
        ReDim Preserve r(x)
        r(x) = rs.Fields(0)
        rs.MoveNext()
        x=x+1
    Loop
    GetRow=r
End Function

Function CSVquote(s)
	'enclose a CSV field in doublequotes and escape any doublequotes
	CSVQuote = """" & Replace(s,"""","\""") & """"
End Function

Sub GetCSV(sql,con,f)
	'Write out a CSV file
	'f is a string name of file (without .CSV)
	'sql is the query
	'con is the ADODB connection
	Response.Buffer=False
	Response.ContentType="text/csv"
	Response.AddHeader "Content-Disposition","attachment;filename="&f&".csv"
	Dim rs,r,fcnt,arr,x,y,v
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open sql,con
	fcnt=rs.Fields.Count-1
	For x=0 to fcnt
		r=r & rs.Fields(x).Name & ","
	Next
	Response.Write Left(r,len(r)-1) & vbNewLine
	arr=rs.GetRows
	rs.Close
	For y=0 to Ubound(arr,2)
		r=""
		For x=0 to fcnt
			v=arr(x,y)
			Select case varType(v)
				Case vbSingle,vbDouble: v=Round(v,5)
				Case vbDate: v=MSdate(v)
				Case vbString: v=""""&replace(v,"""","""""")&""""
			End Select
			r=r&v&","
		Next
		Response.Write Left(r,len(r)-1) & vbNewLine
	Next
	Set rs=Nothing
End Sub

Function midDate(d,ByVal a)
	'set the mid-month, mid-year or unknown date (1-Jan-1000) if an accuracy is specified
	'returns date string YYYY-MM-DD
	midDate = d
	If Not isNumeric(a) Then a=0
	If a = 3 Then midDate = "1000-01-01"
	If Not IsNull(d) And d<>"" Then
	    If a = 1 Then midDate = DateSerial(year(d), 7, 2)
	    If a = 2 Then
	        If month(d) = 2 Then
	            midDate = DateSerial(year(d), 2, 15)
	        Else
	            midDate = DateSerial(year(d), month(d), 16)
	        End If
	    End If
	    midDate=MSdate(midDate)
	End If
End Function

Function ApptBeforeRes(ByVal ApptDate,ByVal ResDate,ByVal ApptAcc,ByVal ResAcc)
	ApptBeforeRes = True
	If ApptDate="" Or ResDate="" Then Exit Function
	apptDate=CDate(apptDate)
	resDate=CDate(resDate)
	'Response.Write apptDate&","&resDate
	If ApptDate > ResDate And ResDate <> #1/1/1000# Then
	    If Year(ApptDate) = Year(ResDate) Then
	        If ResAcc = 1 Or ApptAcc = 1 Then Exit Function
	        If (ResAcc = 2 Or ApptAcc = 2) And month(ApptDate) = month(ResDate) Then Exit Function
	    End If
	    ApptBeforeRes = False
	End If
End Function

Function SCissue(sc)
	'return the issue ID of last issue to use stock code or zero if none
	Dim con
	Call openEnigma(con)
	SCissue=CLng(con.Execute("SELECT IFNULL((SELECT issueID FROM enigma.stockListings WHERE stockExID IN(1,20,22,23,38,71) AND stockCode="&sc&_
		" ORDER BY firstTradeDate DESC LIMIT 1),0)").Fields(0))
	Call closeCon(con)
End Function

Sub SL(text,defSort,altSort)
	'write a column header with a sort link
	'depends on external variables sort, URL
	'defSort and altSort are string literals
	Dim u
	If sort=defSort then defSort=altSort
	u=URL
	If right(u,4)=".asp" Then u=u&"?" Else u=u&"&amp;"
	Response.write "<a href='"&u&"sort="&defSort&"'><b>"&text&"</b></a>"
End Sub

Sub SLV(text,def,alt,n,qs)
	'like SL but with sort parameter named n, to allow for multiple sorts on one page
	'callable by other subs as it does not rely on external variables
	'qs is querystring with other parameters, if any. No leading question mark.
	Response.write "<a href='" & Request.ServerVariables("URL") & "?" & IIF(qs>"",qs & "&amp;","") & n & "=" & IIF(Request(n)=def,alt,def) &"'><b>"&text&"</b></a>"
End Sub

Sub swap(ByRef a,ByRef b)
	'swap the values of variables a and b and return them
	Dim t
	t=a
	a=b
	b=t
End Sub

Sub findStock(ByRef i,ByRef n,ByRef p)
	'use input named "sc" (stock code) to return the issueID i. Failing that, get i from input named "i". Return issuer p
	'produce standardised name of stock, n, for use in page titles etc, including expiry dates, bond coupons etc
	Dim sc
	sc=getLng("sc",0)
	If sc>0 Then
		i=SCissue(sc)
	Else
		i=getLng("i",0)
		If i=0 Then i=getLng("issue",0) 'legacy links
	End If
	Call issueName(i,n,p)
End Sub

Sub issueName(ByRef i,ByRef n,ByRef p)
	'returns i=0 if i is not found. Otherwise, returns n=issue name, p=issuer
	Dim con,rs
	If i>0 Then
		Call openEnigmaRs(con,rs)
		rs.Open "SELECT Name1,typeShort,MSdateAcc(expmat,expAcc)exp,personID,coupon,floating,IFNULL(currency,'HKD') curr "&_
			"FROM issue i JOIN (organisations,sectypes st) "&_
			"ON issuer=personID AND i.typeID=st.typeID LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE ID1="&i,con
'		rs.Open "SELECT Name1,typeShort,MSdateAcc(expmat,expAcc)exp,personID,coupon,floating,IF(i.typeID IN(40,41,46),currency,Null) curr "&_
'			"FROM issue i JOIN (organisations,sectypes st) "&_
'			"ON issuer=personID AND i.typeID=st.typeID LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE ID1="&i,con
		If rs.EOF Then
			i=0
			p=0
		Else
			n=rs("Name1")&": "
			If rs("floating") Then n = n & " Floating"
			n=n & " " & rs("typeShort")
			If Not isNull(rs("curr")) Then n=n & " " & rs("curr")
			If Not isNull(rs("coupon")) Then n=n & " " & rs("coupon") & "%"
			If rs("exp")>"" Then n=n & " due " & rs("exp")
			p=rs("personID")
		End If
		Call CloseConRs(con,rs)
	Else
		p=0
	End If
	If i=0 Then n="Stock not found. "
End Sub
%>