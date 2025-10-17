<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Function checkDigit(ID)
	Dim n,length,cd
	n=right(ID,6)
	length=len(ID)
	If length=8 Then cd=9*(Asc(ID)-58)
	cd=cd+8*(Asc(Right(ID,7))-64)+7*Left(n,1)+6*Mid(n,2,1)+5*mid(n,3,1)+4*mid(n,4,1)+3*mid(n,5,1)+2*right(n,1)
	cd=11-cd
	cd=cd-11*int(cd/11)
	If cd=10 then cd="A"
	checkdigit = "(" & cd & ")"
End Function

Function genderName(ByVal n,addNew)
	'return M, F or Null for unknown gender, based on the majority (if any) of genders of names in the string
	'names must be delimited by space
	'set addNew=true to insert any new words and tag them as "C" for non-English until we correct manually
	'set addNew=false if we are just testing names in the search form, to avoid garbage
	'in the table, don't put a gender on ambiguous English names that might be Asian ones, like Lee and Kim
	'ignore words ending in ".", assumed to be abbreviations
	Dim rs,ns,x,count,y,w
	Set rs=Server.CreateObject("ADODB.Recordset")
	genderName = Null
	n = Replace(n, "-", " ") 'to deal with compound names like Karl-Heinz, Anne-Marie
	n = Replace(n, ",", " ")
	n = remSpace(n)
	'remove anything in brackets
	Do Until InStr(n, "(") = 0
	    x = InStr(n, "(")
	    y = InStr(x + 1, n, ")")
	    If y = 0 Then y = Len(n)
	    n = Trim(Left(n, x - 1)) & " " & Trim(Right(n, Len(n) - y))
	    n = Trim(n)
	Loop
	If n = "" Then Exit Function
	count = 0
	ns = Split(n)
	w = UBound(ns)
	For x = 0 To w
	    If (ns(x) = "St" Or ns(x) = "St.") And x < w Then
	        'skip saints
	        x = x + 1
	    Else
	        rs.Open "SELECT * FROM namesex WHERE name=" & apq(ns(x)),conRole
	        If rs.EOF Then
	            If addNew Then
	                If Len(ns(x)) > 1 And Right(ns(x), 1) <> "." Then
	                    ns(x) = UCase(Left(ns(x), 1)) & LCase(Right(ns(x), Len(ns(x)) - 1))
	                    y = 1
	                    'capitalise letter after hyphen
	                    Do
	                        y = InStr(y, ns(x), "-") + 1
	                        If y = 1 Or y > Len(ns(x)) Then Exit Do
	                        ns(x) = Left(ns(x), y - 1) & UCase(Mid(ns(x), y, 1)) & Right(ns(x), Len(ns(x)) - y)
	                    Loop
	                    conRole.Execute("INSERT INTO namesex(name,sex)" & valsql(Array(ns(x),"C")))
	                    hint=hint&"Added to name list: "&ns(x)&". "
	                End If
	            End If
	        Else
	            If rs("Sex") = "M" Then
	                count = count + 1
	            ElseIf rs("Sex") = "F" Then
	                count = count - 1
	            'sex of a first name may also be "U" for unknown
	            End If
	        End If
	        rs.Close
	    End If
	Next
	Set rs=Nothing
	If count > 0 Then genderName = "M"
	If count < 0 Then genderName = "F"
End Function

Sub PplRes(ByRef n1,ByRef n2,ByVal cn,ByVal titleID,ByVal sex,ByVal YOB,ByVal MOB,ByVal DOB,ByVal YOD,ByVal MonD,ByVal DOD,ByRef p,ByRef p2,hint,override,keepOld,alias)
	'override Boolean, forces an update as long as the extended name is unique. This is to allow people with same YOB and name, as some listco directors have
	Dim rs,canAdd,clash,sql,sql2,n2ext,SFCID,HKID,n2prop,oldn1,oldn2,oldcn
	p2=0
	'If p is specified, then we will try to rename that person to (n1,n2) with an extension if needed
	'p2 returns a matching person, if any, or 0
	'Uses columns with clean names, dn1 and dn2, which are maintained with triggers. They replace hyphens with a space and have no extensions
	'try to find an existing human with same name and YOB-[MOB]-[DOB] or add a new one if no conflict
	'A new name must be unique without regard to hyphens, by appending YOB-[MOB]-[DOB] or YOD-[MonD]-[DOD] if needed
	'returns personID of new or existing target
	'conform names and cases
	Set rs=Server.CreateObject("ADODB.Recordset")
	n1 = ULname(n1, True)
	n2 = ULname(n2, False)
	n2Prop=n2
	If p>0 Then
		rs.Open "SELECT * FROM people WHERE personID="&p,conRole
		SFCID=IfNull(rs("SFCID"),"")
		HKID=IfNull(rs("HKID"),"")
		oldn1=rs("name1")
		oldn2=CleanName(rs("name2"))
		oldcn=rs("cName")
		rs.Close
	End If
	canAdd = False
	clash = True
	If override Then
		If n2="" Then sql=" IS NULL" Else sql = "="&apq(n2)
		sql="SELECT * FROM people WHERE personID<>"&p&" AND name1="&apq(n1)&" AND name2"&sql
		If Not CBool(conRole.Execute("SELECT EXISTS("&sql&")").Fields(0)) Then
			canAdd=True
			clash=False
		Else
			hint=hint&"That name is not unique. Try a different extension to Given Names. "
		End If		
	Else
		n2=cleanName(n2) 'remove extensions
		'first check for name clash or match
		'use dn1, dn2 to search for matches with or without hyphens
		If n2="" Then sql=" IS NULL" Else sql="=stripext(" & apq(n2) & ")"
		sql = "SELECT * FROM people WHERE personID<>" & p & " AND dn1=stripext(" & apq(n1) & ") AND dn2"&sql
		If Not CBool(conRole.Execute("SELECT EXISTS(" & sql & ")").Fields(0)) Then
		    'no match
		    canAdd = True
		    clash = False
		ElseIf YOB>"" Then
		    n2ext = n2 & " (" & makeYMD(YOB,MOB,DOB) & ")"
		    sql2 = sql & " AND YOB=" & YOB
		    If MOB="" Or isNull(MOB) Then
		        sql2 = sql2 & " AND ISNULL(MOB)"
		    Else
		        sql2 = sql2 & " AND MOB=" & MOB 'if MOB doesn't match then create a new person. A year-match is not enough
		        If DOB>"" Then sql2 = sql2 & " AND (isNull(DOB) Or DOB=" & DOB & ")" 'if DOB exists but is different then create a new person
		    End If
		    rs.Open sql2,conRole
		    If rs.EOF Then
		        'no match, so can add name with this extension
		        canAdd = True
		        n2 = n2ext
		    Else
		        If Len(n2) > Len(rs("dn2")) Then
		            'n2 has an extension (could be SFC,LSHK,HKID)
		            Do Until rs.EOF
		                If n2 = rs("name2") Then Exit Do 'found match
		                rs.MoveNext
		            Loop
		            If rs.EOF Then canAdd = True
		        End If
		        If Not canAdd Then
		            p2 = CLng(rs("PersonID"))
		            clash = False
		        End If
		    End If
		    rs.Close
		ElseIf YOD>"" Then
		    n2ext = n2 & " (d" & makeYMD(YOD, MonD, DOD) & ")"
		    sql2 = sql & " AND YOD=" & YOD
		    If MonD="" Or isNull(MonD) Then
		        sql2 = sql2 & " AND ISNULL(MonD)"
		    Else
		        sql2 = sql2 & " AND MonD=" & MonD 'if MonD doesn't match then create a new person. A year-match is not enough
		        If DOD<>"" Then sql2 = sql2 & " AND (isNull(DOD) Or DOD=" & DOD & ")" 'if DOD exists but is different then create a new person
		    End If
		    rs.Open sql2,conRole
		    If rs.EOF Then
		        'no match, so can add name with this extension
		        canAdd = True
		        n2 = n2ext
		    Else
		        If Len(n2) > Len(rs("dn2")) Then
		            'n2 has an extension
		            Do Until rs.EOF
		                If n2 = rs("Name2") Then Exit Do 'found match
		                rs.MoveNext
		            Loop
		            If rs.EOF Then canAdd = True
		        End If
		        If Not canAdd Then
		            p2 = CLng(rs("PersonID"))
		            clash = False
		        End If
		    End If
		    rs.Close
		ElseIf SFCID>"" Then
			'extend existing human. No need to test it, as SFCID is unique
			n2=n2&" (SFC:"&SFCID&")"
			canAdd=True
		ElseIf HKID>"" Then
			'extend existing human with masked HKID.			
			n2=maskHKID(p,n1,n2,HKID)
			canAdd=True		
		ElseIf Len(n2Prop)>Len(n2) Then
		    'new or renamed human has no YOB,YOD,SFCID or HKID, but clashes with 1 or more existing persons in stripped names
		    'But there's an extension in proposed name so it might still be unique
		    n2=n2Prop	    
	        rs.Open "SELECT * FROM people WHERE personID<>"&p&" AND name1=" & apq(n1) & " AND name2=" & apq(n2), conRole
	        If rs.EOF Then
	            canAdd = True
	        Else
	            'found person with matching name
	            p2 = CLng(rs("PersonID"))
	            clash = False
	        End If
	        rs.Close
		End If
	End If
	
	'prepare sex for insertion or update, in case needed
	If n2>"" And sex="" Then
		sex = genderName(n2,True)
		If sex="" Then hint=hint&"Inferred gender: "&sex&". "
	End if	
	If canAdd Then
	    If p=0 Then
	        'insert new person into people
	        conRole.Execute ("INSERT INTO persons() VALUES ()")
	        p=CLng(lastID(conRole))
			conRole.Execute "INSERT INTO people(personID,name1,name2,cName,titleID,sex,YOB,MOB,DOB,YOD,MonD,DOD,userID) "&_
				valsql(Array(p,n1,n2,cn,titleID,sex,YOB,MOB,DOB,YOD,MonD,DOD,userID))
			hint=hint&"The human was added with ID "&p&". "
	    Else
	        'we specified a p
	        'no matching person with same DOB/DOD, so rename the existing person (extended if needed)
	        conRole.Execute "UPDATE people" & setsql("name1,name2,cName,sex,titleID,YOB,MOB,DOB,YOD,MonD,DOD,userID",Array(n1,n2,cn,sex,titleID,YOB,MOB,DOB,YOD,MonD,DOD,userID)) & "personID="&p
	        hint=hint&"The human was updated. "
	        If keepOld Then
	        	'insert the old names into alias
	        	conRole.Execute "INSERT INTO alias (personID,n1,n2,cn,alias,userID)" & valsql(Array(p,oldn1,oldn2,oldcn,alias,userID))
	        	hint=hint&"The previous names were stored as " & IIF(alias,"an alias","former names")
	        End If
	    End If
		If clash Then
		    'now extend any other matched unextended person(s) if possible
		    rs.Open sql & " AND (LENGTH(name2)=LENGTH(dn2) or isNull(name2))",conRole
		    Do Until rs.EOF
		        Call pplExtend(rs("PersonID"))
		        rs.MoveNext
		    Loop
		    rs.Close
		End If
	Else
		If p2>0 Then
			hint=hint&"We found a matching human with ID "&p2
		Else
			hint=hint&"We found at least one matching human"
		End If
		hint=hint&". Refine your proposal with more details in birth/death, or add a manual extension to given names. "
		If p2>0 Then hint=hint&" and tick ""ignore match"". " Else hint=hint&". "
		n2=n2prop 'revert to submission
	End If
	Set rs = Nothing
End Sub

Sub dateFix(y,m,d,OK,hint)
	OK=True
	If isNull(y) Then
		m=Null
		d=Null
	ElseIf y<1000 or y>Year(Now) Then
		hint=hint&"Year should be between 1000 and current year. "
		OK=False
	ElseIf isNull(m) Then d=Null
	ElseIf m<1 or m>12 Then
		hint=hint&"Month is invalid. "
		OK=False
	ElseIf d<1 or d>monthEnd(m,y) Then
		hint=hint&"Day of month is invalid. "
		OK=False
	End If
End Sub

Function canDel(p,userID)
	'check whether this human can be deleted by this user
	Dim uRank 'internal version for testing rank on relatives and holders tables
	canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM directorships WHERE director="&p&")").Fields(0))
	If Not canDel Then
		hint=hint&"This human has positions, so it cannot be deleted. "
	Else
		uRank=conRole.Execute("SELECT maxRankLive('relatives',"&userID&")").Fields(0)
		If uRank=0 Then
			canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM relatives WHERE rel1="&p&" OR rel2="&p&")").Fields(0))
			If Not canDel Then hint=hint&"This human has relatives and you don't have write privileges on relatives, so you cannot delete it. "
		ElseIf uRank<255 Then
			canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT *,maxRank('relatives',userID)uRank FROM relatives WHERE "&_
				"(rel1="&p&" OR rel2="&p&") AND userID<>"&userID&" HAVING uRank>="&uRank&")").Fields(0))
			If Not canDel Then hint=hint&"You didn't create or don't outrank the editor of a relationship of this human, so you cannot delete it. "
		End If
		If canDel Then
			uRank=conRole.Execute("SELECT maxRankLive('sholdings',"&userID&")").Fields(0)
			If uRank=0 Then
				canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT * FROM sholdings WHERE holderID="&p&")").Fields(0))
				If Not canDel Then hint=hint&"This human has holdings and you don't have write privileges on holdings, so you cannot delete it. "
			ElseIf uRank<255 Then
				canDel=CBool(conRole.Execute("SELECT NOT EXISTS(SELECT *,maxRank('sholdings',userID)uRank FROM sholdings WHERE "&_
					"holderID="&p&" AND userID<>"&userID&" HAVING uRank>="&uRank&")").Fields(0))
				If Not canDel Then hint=hint&"You didn't create or don't outrank the editor of a holding by this human, so you cannot delete it. "
			End If
		End If
	End If
End Function

'MAIN PROCEDURE
Dim conRole,rs,userID,uRank,referer,tv,n1,n2,cn,g,temp,gender,hint,submit,p,p2,title,roleExec,canEdit,canDelete,datechk,_
	titleID,sql,YOB,MOB,DOB,YOD,MonD,DOD,HKID,HKIDsource,override,keepOld,alias,fname,con
'keepOld Boolean, whether to store old names in the alias table
'alias Boolean, whether old names are alias or former names	

Const roleID=2 'people
Call prepRole(roleID,conRole,rs,userID,uRank)

Call getReferer(referer,tv)
canEdit=False
canDelete=False

Call openEnigma(con)
roleExec=hasRole(con,6)
Call closeCon(con)

submit=Request("submitHum")
override=getBool("override")
'collect n1 and n2, may be sent from searchpeople
n1=remSpace(Request("n1"))
n2=remSpace(replace(Request("n2"),","," "))
keepOld=getBool("keepOld")
alias=getBool("alias")
p=getLng("p",0)
If p>0 Then
	title="Human"
	'check whether we can edit this person
	rs.Open "SELECT p.userID,u.name,maxRank('people',userID)uRank,p.name1,p.name2,YOB,MOB,DOB,YOD,MonD,DOD,CAST(p.cName AS NCHAR)cn,titleID,"&_
		"p.sex,HKID,HKIDsource,SFCID,lsid,CAST(fnameppl(p.name1,p.name2,p.cName) AS NCHAR)fname"&_
		" FROM people p JOIN users u ON p.userID=u.ID LEFT JOIN lsppl l ON p.personID=l.personID WHERE p.personID="&p,conRole
	If rs.EOF Then
		hint=hint&"No such human. "
		p=0
	ElseIf Not rankingRs(rs,uRank) Then
		hint=hint&"You did not create this person and don't outrank the user who did, so you cannot edit it. "
	Else
		canEdit=True
		'now check whether we can delete
		If Not isNull(rs("SFCID")) Then
			If submit="Delete" Then hint=hint&"You cannot delete a person with an SFC license history. "
		ElseIf Not isNull(rs("lsid")) Then
			If submit="Delete" Then hint=hint&"You cannot delete a person with a Law Society history. "
		Else
			canDelete=canDel(p,userID)
			If canDelete Then
				If submit="Delete" Then
					title="Delete a human"
					hint=hint&"Are you sure you want to delete this human? "
				ElseIf submit="CONFIRM DELETE" Then
					sql="DELETE FROM persons WHERE personID="&p
					conRole.Execute sql
					hint=hint&"The human with ID "&p&" has been deleted. "
					p=0
					canEdit=False
					canDelete=False
					title="Add a human"
				End If
			End If
		End If
	End If
	If submit<>"Update" And submit<>"Add" And p>0 Then
		fname=rs("fname")
		n1=rs("name1")
		n2=rs("name2")
		YOB=rs("YOB")
		MOB=rs("MOB")
		DOB=rs("DOB")
		YOD=rs("YOD")
		MonD=rs("MonD")
		DOD=rs("DOD")
		cn=rs("cn")
		titleID=IfNull(rs("titleID"),"")
		g=IfNull(rs("sex"),"")
		HKID=rs("HKID")
		HKIDsource=rs("HKIDsource")
	End If
	rs.Close
Else
	p=0
	title="Add a human"
End If

If submit="Update" Or submit="Add" Then
	g=Request("g")
	YOB=getInt("YOB",Null)
	MOB=getInt("MOB",Null)
	DOB=getInt("DOB",Null)
	YOD=getInt("YOD",Null)
	MonD=getInt("MonD",Null)
	DOD=getInt("DOD",Null)
	cn=remSpace(Request("cn"))
	titleID=Request("titleID")
	If roleExec Then
		HKID=Ucase(Request("HKID"))
		HKIDsource=Request("HKIDsource")
	End If
End If
If titleID>"" Then
	temp=conRole.Execute("SELECT sex FROM titles WHERE titleID="&titleID).Fields(0)
	If g="" Or isNull(g) Then
		g=temp
	ElseIf g<>temp Then
		hint=hint&"Submitted title and gender are inconsistent. Please review. "
	End If
End If

Select Case g
	Case "F" gender="Female"
	Case "M" gender="Male"
	Case Else gender="Unknown"
End Select
If submit="Add" or submit="Update" Then
	'validate entry
	If n1="" Then
		hint=hint&"Family name cannot be blank. "
	ElseIf YOD<YOB Or (YOD=YOB And MonD<MOB) Or (YOD=YOB And MonD=MOB and DOD<DOB) Then
		hint=hint&"Cannot die before birth. "
	Else	
		Call dateFix(YOB,MOB,DOB,datechk,hint)
		If datechk Then Call dateFix(YOD,MonD,DOD,datechk,hint)
		temp=p
		If datechk And (p=0 Or canEdit) Then Call pplRes(n1,n2,cn,titleID,g,YOB,MOB,DOB,YOD,MonD,DOD,p,p2,hint,override,keepOld,alias)
		'n1 and n2 will return in UL case. n2 will return with any extended name, p will return with new ID if person is added
		If temp=0 And p>0 Then
			'we can always edit or delete what we've just added
			canEdit=True
			canDelete=True
		End If
		If temp>0 And p2=0 Then
			'no clash, p was edited
		End If
		If p>0 Then fname=n1&IIF(n2>"",", "&n2,"")&IIF(cn>""," "&cn,"")
		If p>0 And HKID>"" Then	conRole.Execute "UPDATE people "&setsql("HKID,HKIDsource,userID",Array(HKID,HKIDsource,userID))&"personID="&p
	End If
End If%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=fname%></h2>
	<%Call pplBar(p,1)%>
	<p><b>Person ID: <%=p%></b></p>
<%End If%>
<h3><%=title%></h3>
<form method="post" action="human.asp">
	<table>
		<tr><td>Family name:</td><td><input type="text" name="n1" size="30" value="<%=n1%>"></td></tr>
		<tr><td>Given names (English first):</td><td><input type="text" name="n2" size="30" value="<%=n2%>"></td></tr>
		<%If p2>0 Then%>
			<tr><td>Ignore match?</td><td><input type="checkbox" name="override" value="1"></td></tr>
		<%End If%>
		<tr><td>Chinese name:</td><td><input type="text" size="30" name="cn" value="<%=cn%>"></td></tr>
		<%If p>0 Then%>
			<tr>
				<td><input type="checkbox" name="KeepOld" value="1" <%=checked(keepOld)%>>Store old names:</td>
				<td><input type="radio" name="alias" value="1" <%=checked(alias)%>> as alias<br>
					<input type="radio" name="alias" value="0" <%=checked(Not alias)%>> as former names</td>
			</tr>
		<%End If%>
		<tr><td>Title:</td><td><%=arrSelectZ("titleID",titleID,conRole.Execute("SELECT titleID,title FROM titles ORDER BY title").GetRows,False,True,"","")%></td></tr>
		<tr><td>Gender:</td><td><%=makeSelect("g",g,",Unknown,F,Female,M,Male",False)%></td></tr>
	<%If roleExec Then%>
		<tr><td>HKID (without checkdigit):</td><td><input type="text" name="HKID" size="30" pattern="[A-Z]{1,2}[0-9]{3}[0-9X]{3}" value="<%=HKID%>">
			<%If HKID>"" Then Response.Write checkdigit(HKID)%></td></tr>
		<tr><td>HKID source URL:</td><td><input type="text" name="HKIDsource" size="30" value="<%=HKIDsource%>">
			<%If HKIDsource>"" Then Response.Write "<a target='_blank' href='"&HKIDsource&"'>Visit</a>"%></td></tr>
	<%End If%>
	</table>
	<br>
	<table class="txtable">
	<tr>
		<th>Dates if known</th>
		<th>Year</th>
		<th>Month</th>
		<th>Day</th>
	</tr>
	<tr>
		<td>Birth</td>
		<td><input type="number" min="1000" max="<%=Year(Date)%>" step="1" name="YOB" value="<%=YOB%>"></td>
		<td><input type="number" min="1" max="12" step="1" name="MOB" value="<%=MOB%>"></td>
		<td><input type="number" min="1" max="31" step="1" name="DOB" value="<%=DOB%>"></td>
	</tr>
	<tr>
		<td>Death</td>
		<td><input type="number" min="1000" max="<%=Year(Date)%>" step="1" name="YOD" value="<%=YOD%>"></td>
		<td><input type="number" min="1" max="12" step="1" name="MonD" value="<%=MonD%>"></td>
		<td><input type="number" min="1" max="31" step="1" name="DOD" value="<%=DOD%>"></td>
	</tr>
	</table>
	<%If YOB>0 Then%>
	<p>Age in <%=Year(Date)%>: <%=Year(Date)-YOB%></p>
	<%End If%>
	<%If Hint>"" Then%>
		<p><b><%=Hint%></b></p>
	<%End If%>
	<p>
	<%If p=0 Then%>
		<input type="submit" name="submitHum" value="Add">
	<%Else%>
		<input type="hidden" name="p" value="<%=p%>">
		<%If canEdit Then%>
			<input type="submit" name="submitHum" value="Update">
			<%If canDelete Then
				If submit="Delete" Then%>
					<input type="submit" name="submitHum" style="color:red" value="CONFIRM DELETE">
					<input type="submit" name="submitHum" value="Cancel">
				<%Else%>
					<input type="submit" name="submitHum" value="Delete">
				<%End If
			End If
		End If
	End If%>
	</p>
</form>
<%If referer<>"" Then
	If p>0 Then%>
		<form method="post" action="<%=referer%>">
			<input type="hidden" name="<%=tv%>" value="<%=p%>">
			<p><input type="submit" name="submitHum" value="Use this human"></p>
		</form>
	<%End If	
	If p2>0 Then%>
		<form method="post" action="<%=referer%>">
			<input type="hidden" name="<%=tv%>" value="<%=p2%>">
			<p><input type="submit" name="submitHum" value="Use the other human"></p>
		</form>
	<%End If
End If%>
<form method="post" action="human.asp"><input type="submit" name="submit" value="Clear form"></form>
<%If p>0 Then%>
	<p><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=p%>">View the human in Webb-site Who's Who</a></p>
	<p><a href="relatives.asp?h1=<%=p%>">Add spouse or descendant</a></p>
	<p><a href="relatives.asp?h2=<%=p%>">Add spouse or ancestor</a></p>
<%End If
If p2>0 Then%>
	<p><a target="_blank" href="https://webb-site.com/dbpub/natperson.asp?p=<%=p2%>">View the other human in Webb-site Who's Who</a></p>
<%End If
Call closeConRs(conRole,rs)%>
<hr>
<h3>Rules</h3>
<p>In given names, put English names first and do not use hyphens in Romanised Chinese given names. For example, use "David Wai Keung", not 
&quot;Wai Keung David&quot; and not "David Wai-Keung". For married Chinese women, the 
husband's family name (if used) comes first. The Chinese name box is for Asian 
scripts, including Chinese, Japanese and Korean.</p>
<!--#include file="cofooter.asp"-->
</body>
</html>