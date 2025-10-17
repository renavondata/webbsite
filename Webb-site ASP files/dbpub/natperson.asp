<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Function pStr(p)
	'generate a name and URL for a peerage, link to officers. Input is a string of "personID,name1" from the org
	If p>"" Then
		Dim cPos 'the first comma in the string
		cPos=Instr(p,",")
		 pStr=", " & "<a href='\dbpub\officers.asp?hide=N&p="&Left(p,cPos-1)&"'>"&Mid(p,cPos+1)&"</a>"
	End If
End Function

Sub descgen(person,level)
	Dim Rel2,rs,x,found
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT rel2,fnameppl(name1,name2,cName) AS nameStr,peerage(rel2) AS peerage,MSdatePart(DOB,MOB,YOB) AS born,MSdatePart(DOD,MonD,YOD) AS died "&_
		"FROM relatives JOIN people ON relatives.Rel2=people.PersonID WHERE RelID=0 AND Rel1="&person&" ORDER BY YOB,MOB,Name1,Name2",con
	Do Until rs.EOF
		Rel2=rs("Rel2")
		found=False
		If relcnt>0 Then
			For x=0 to Ubound(ID)
				If ID(x)=Rel2 Then
					found=True
					Exit For
				End If
			Next
		End if
		If found=False Then
			Redim Preserve ID(Relcnt)
			ID(relcnt)=Rel2
			relcnt=relcnt+1
		End if	
		%>
		<tr>
		<td style="width:50px"><%If found=False Then response.write "<a name='D" & relcnt & "'></a>"&relcnt%></td>
		<td style="padding-left:<%=level*20%>px">
			<%=level+1%>&nbsp;<a href="natperson.asp?p=<%=Rel2%>"><%=rs("nameStr")%></a><%=pStr(rs("peerage"))%>
			(<%=rs("born")%>&nbsp;-&nbsp;<%=rs("died")%>)
			<%If found=True Then%>
				see <a href="#D<%=x+1%>">line <%=x+1%></a>
			<%End If%>
		</td></tr>
		<%If found=False Then Call descgen(Rel2,level+1)
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

Sub ascgen(person,level,maxGen)
	Dim Rel1,rs,x,found
	Set rs=Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT rel1,fnameppl(name1,name2,cName) AS nameStr,peerage(rel1) AS peerage,MSdatePart(DOB,MOB,YOB) AS born,MSdatePart(DOD,MonD,YOD) AS died "&_
		"FROM relatives JOIN people ON relatives.Rel1=people.PersonID WHERE RelID=0 AND Rel2="&person&" ORDER BY sex DESC,Name1,Name2",con
	Do Until rs.EOF
		Rel1=rs("Rel1")
		found=False
		If relcnt>0 Then
			For x=0 to Ubound(ID)
				If ID(x)=Rel1 Then
					found=True
					Exit For
				End If
			Next
		End if
		If found=False Then
			Redim Preserve ID(Relcnt)
			ID(relcnt)=Rel1
			relcnt=relcnt+1
		End if
		%>
		<tr>
		<td style="width:50px"><%If found=False Then response.write "<a name='D" & relcnt & "'></a>"&relcnt%></td>
		<td style="padding-left:<%=level*20%>px">
			<%=level+1%>&nbsp;<a href="natperson.asp?p=<%=Rel1%>"><%=rs("nameStr")%></a><%=pstr(rs("peerage"))%>
			(<%=rs("born")%>&nbsp;-&nbsp;<%=rs("died")%>)
			<%If found=True Then%>
				see <a href="#D<%=x+1%>">line <%=x+1%></a>
			<%End If%>
		</td></tr>
		<%If found=False And (maxGen=0 Or maxGen-1>level) Then Call ascgen(Rel1,level+1,maxGen)
		rs.MoveNext
	Loop
	rs.Close
	Set rs=Nothing
End Sub

If Session("ID")="" Then Call cookiechk()
If Session("ID")="" Then Session("referer") = LCase(Request.ServerVariables("URL"))&"?"&Request.ServerVariables("QUERY_STRING")
Dim person,orderStr,Name,Name2,cName,Sex,YOB,MOB,DOB,YOD,MonD,DOD,rank,rankName,x,_
	nowY,nowM,nowD,diffY,diffM,diffD,outStr,aDOB,HKID,CD,HKIDsource,SFCID,_
	sort2,expand,ob,orgCnt,shares,stake,dn1,dn2,maxGen,con,rs
Call openEnigmaRs(con,rs)
nowY=Year(Now())
nowM=Month(Now())
nowD=Day(Now())
person=getLng("p",0)
maxGen=getLng("m",0)
sort2=Request("s2")
expand=Request("x")
If person>0 Then
	rs.Open "SELECT name1,name2,dn1,dn2,p.cName,sex,YOB,MOB,DOB,YOD,MonD,DOD,p.HKID AS HKID,checkDigit(p.HKID) AS CD,HKIDsource,"&_
		"SFCID FROM people p WHERE p.personID="&person,con
	If Not rs.EOF Then
		Name=rs("Name1")
		Name2=rs("Name2")
		dn1=rs("dn1")
		dn2=rs("dn2")
		cName=rs("cName")
		Sex=rs("Sex")
		YOB=rs("YOB")
		MOB=rs("MOB")
		DOB=rs("DOB")
		YOD=rs("YOD")
		MonD=rs("MonD")
		DOD=rs("DOD")
		HKID=rs("HKID")
		CD=rs("CD")
		HKIDsource=rs("HKIDsource")
		SFCID=rs("SFCID")
		If Name2<>"" then Name=Name&", "&Name2
		If cName<>"" then Name=Name&" "&cName
	Else
		rs.Close
		rs.Open "SELECT * FROM mergedpersons WHERE oldp="&person,con
		If Not rs.EOF Then Response.Redirect Request.ServerVariables("URL")&"?p="&rs("newp")
		Name="No such human"
		person=0
	End If
	rs.Close
Else
	Name="No human was specified"
	person=0
End if
%>
<script type="text/javascript" src="rating.js"></script>
<style type="text/css">
	table.rating {
	border-collapse:collapse;
	border:thin gray solid;
}
	table.rating tr {
	border:thin gray solid;
}
	table.rating th {
	font-weight:bold;
	border:inherit;
	text-align:center;
}
	table.rating td {
	text-align:center;
}
</style>
<title>Webb-site Database: <%=name%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body onload="setRating(<%=person%>)">
<!--#include file="../templates/cotopdb.asp"-->
<%Call humanBar(name,person,1)%>
<ul class="navlist">
	<li><a target="_blank" href="FAQWWW.asp">FAQ</a></li>
</ul>
<div class="clear"></div>
<%If person<>0 Then
	rs.open "SELECT * FROM alias WHERE personID="&person& " ORDER BY alias,n1,n2",con
	If Not rs.EOF Then%>
		<h4>Other names</h4>
		<table class="txtable">
		<tr>
			<th>Surname</th>
			<th>Given names</th>
			<th>Chinese name</th>
			<th></th>
		</tr>
		<%Do until rs.EOF%>
		<tr>
			<td><%=rs("n1")%></td>
			<td><%=rs("n2")%></td>
			<td><%=rs("cn")%></td>
			<td><%If rs("alias") Then Response.Write "A" else response.write "F"%></td>
		</tr>
			<%rs.MoveNext
		Loop%>
		</table>
		<p>A=Alias, F=Former name</p>
	<%End If
	rs.close%>
	<table class="opltable">
		<tr>
			<td>Gender:</td>
			<td><%=Sex%></td>
		</tr>
		<%If Not isNull(HKID) AND Not isNull(HKIDsource) Then%>
			<tr>
				<td>HKID:</td>
				<td><a href="<%=HKIDsource%>" target="_blank">Find it yourself</a></td>
			</tr>
		<%End If
		rs.open "SELECT lsid,dead,MSdateAcc(admHK,admAcc)admHK FROM lsppl WHERE personID="&person&" ORDER BY lastSeen DESC LIMIT 1",con
		If Not rs.EOF Then%>
		<tr>
			<td>Admission as HK solicitor:</td>
			<td>
			<%If Not rs("dead") Then%>
				<a target="_blank" href="https://www.hklawsoc.org.hk/en/Serve-the-Public/The-Law-List/Member-Details?MemId=<%=rs("lsid")%>"><%=rs("admHK")%></a>
			<%Else%>
				<%=rs("admHK")%>		
			<%End If%>
			</td>
		</tr>
		<%End If
		rs.Close
		If MOB<>"" AND DOB<>"" Then
			outStr="-<a href='bornday.asp?m="&MOB&"&d="&DOB&"'>"&Right("0"&MOB,2)&"-"&Right("0"&DOB,2)&"</a>"
		ElseIf MOB<>"" Then outStr="-"&Right("0"&MOB,2)
		End If
		If YOB<>"" Then outStr="<a href='bornyear.asp?y="&YOB&"&m="&MOB&"'>"&YOB&"</a>"&outStr
		%>
		<tr><td>Estimated date of birth:</td><td><%=outStr%></td></tr>
		<%If YOB<>"" Then
			DiffY=nowY-YOB
			If MOB<>"" Then
				If DOB<>"" Then
					aDOB=DOB
					If MOB=2 and DOB=29 And Not(Int(nowY/4)=nowY/4) Then aDOB=28' good until 2100
					If nowM<MOB Or (nowM=MOB And nowD<DOB) Then
						'not yet had birthday
						DiffY=DiffY-1
						DiffD=DateDiff("d",DateSerial(nowY-1,MOB,aDOB),DateSerial(nowY,nowM,nowD))
					Else
						DiffD=DateDiff("d",DateSerial(nowY,MOB,aDOB),DateSerial(nowY,nowM,nowD))
					End If
					outStr=DiffY&" years "&DiffD& " days"
				Else
					DiffM=nowM-MOB
					If DiffM<0 Then
						DiffY=DiffY-1
						DiffM=DiffM+12
					End If
					outStr=DiffY&" years "&DiffM& " months"
				End If
			Else
				If nowM<7 and YOB<>nowY Then DiffY=DiffY-1
				outStr=DiffY&" years"
			End If		
			%>
			<tr><td>Estimated age:</td><td><%=outStr%></td></tr>	
		<%End If
		If YOD<>"" Or Right(Name2,3)="(d)" then 'death rows%>
			<tr>
			<td>Estimated date of death:</td>
			<td><%=dateYMD(YOD,MonD,DOD)%></td>			
			</tr>
			<%
			If YOD<>"" And YOB<>"" Then
				DiffY=YOD-YOB
				If MOB<>"" And MonD<>"" Then
					If DOB<>"" And DOD<>"" Then
						aDOB=DOB
						'if born on a leap day and died in a non-leap year then adjust DOB for calculation to 28-Feb
						If MOB=2 and DOB=29 And Not(Int(YOD/4)=YOD/4) Then aDOB=28
						If MonD<MOB Or (MonD=MOB And DOD<DOB) Then
							'died before birthday
							DiffY=DiffY-1
							DiffD=DateDiff("d",DateSerial(YOD-1,MOB,aDOB),DateSerial(YOD,MonD,DOD))
						Else
							DiffD=DateDiff("d",DateSerial(YOD,MOB,aDOB),DateSerial(YOD,MonD,DOD))
						End If
						outStr=DiffY&" years "&DiffD& " days"
					Else
						DiffM=MonD-MOB
						If DiffM<0 Then
							DiffY=DiffY-1
							DiffM=DiffM+12
						End If
						outStr=DiffY&" years "&DiffM& " months"
					End If
				Else
					If (IsNull(MOB) And MonD<7) Or (IsNull(MonD) and MOB>6) Then DiffY=DiffY-1
					outStr=DiffY&" years"
				End If
				%>
				<tr><td>Estimated age on death:</td><td><%=outStr%></td></tr>
			<%End if
		End If
		If Not isNull(SFCID) Then%>
			<tr>
				<td>SFC ID:</td>
				<td><a target="_blank" href="http://www.sfc.hk/publicregWeb/indi/<%=SFCID%>/licenceRecord"><%=SFCID%></a></td>
			</tr>
		<%End If%>
	</table>
	<%rs.Open "SELECT latest,friendly FROM (SELECT MAX(latest)latest,domicile FROM nationality n JOIN ukchnats u "&_
		"ON n.ukchnat=u.ID WHERE personID="&person&" GROUP BY domicile)t JOIN domiciles d ON t.domicile=d.ID",con
	If Not rs.EOF Then%>
	<table class="txtable">
		<tr>
			<th>Nationality</th>
			<th>Last seen</th>
		</tr>
		<%Do Until rs.EOF%>
			<tr>
				<td><%=rs("friendly")%></td>
				<td><%=MSdate(rs("latest"))%></td>
			</tr>
			<%rs.MoveNext
		Loop%>
		<tr></tr>
	</table>
	<%End If
	rs.Close%>
	<p><a href="searchpeople.asp?n1=<%=dn1%>&amp;n2=<%=dn2%>">Find matching names</a></p>
	<!--#include file="websites.asp"-->
	<%Call websites(person)
	If isNull(YOB) Or (Year(Date())-YOB)>18 Then%>
		<h3>Webb-site Trust Rating</h3>
		<%If Session("ID")<>"" Then%>
			<table class="rating">
				<tr>
					<th colspan="7"><a href="../webbmail/myratings.asp">Your rating</a></th>
					<th colspan="2">All users</th>
				</tr>
				<tr>
					<th><label for="r-1">None</label></th>
					<%For x=0 to 5%>
						<th><label for="r<%=x%>"><%=x%></label></th>			
					<%Next%>
					<th>Count</th>
					<th>Average</th>
				</tr>
				<tr>
					<td style="border-right:thin gray solid"><input type="radio" name="r" id="r-1" value="-1" onclick="setRating(<%=person%>,-1)">	
					<%For x=0 to 5%>
						<td><input type="radio" name="r" id="r<%=x%>" value="<%=x%>" onclick="setRating(<%=person%>,<%=x%>)">
					<%Next%>
					<td style="border:thin gray solid" id="usercnt"></td>
					<td id="score"></td>
				</tr>
			</table>
			<div id="ratedon"></div>
		<%Else%>
			<p><a href="../webbmail/login.asp"><b>Log in</b></a> to add your 
			anonymous rating. Webb-site users rate this person as follows:</p>
			<table class="rating">
				<tr>
					<th>Users</th>
					<th>Average (0-5)</th>
				</tr>
				<tr>
					<td style="border-right:thin gray solid" id="usercnt"></td>
					<td id="score"></td>
				</tr>
			</table>
			<br>
		<%End If
	End if
	rs.Open "SELECT * FROM relatives WHERE rel1="&person&" OR rel2="&person,con
	If Not rs.EOF Then%>
		<h3>Relatives</h3>
		<form method="get" action="natperson.asp">
			<input type="hidden" name="p" value="<%=person%>">
			<input type="hidden" name="s2" value="<%=sort2%>">
			<input type="hidden" name="x" value="<%=expand%>">	
			<div class="inputs">
			Generations:
			<select name="m" onchange="this.form.submit()">
				<option value="0">Unlimited</option>
				<%For x=1 to 10%>
					<option value="<%=x%>" <%If x=Clng(maxGen) Then Response.Write "selected"%>><%=x%></option>
				<%Next%>
			</select>
			</div>
			<div class="clear"></div>
		</form>
		<%
		rs.Close
		rs.Open "Call webRels3(" & person & ")",con
		If not rs.EOF then
			Dim relYOB%>
			<h4>Non-lineal relatives</h4>
			<table class="txtable">
			<%
			Do While not rs.EOF
				%>
				<tr>
					<td><a href='natperson.asp?p=<%=rs("RelID")%>'><%=rs("Relative")%></a>&nbsp;(<%=rs("born")%>&nbsp;-&nbsp;<%=rs("died")%>)</td>
					<td><%=rs("Rel")%>&nbsp;</td>
				</tr>
				<%
				rs.MoveNext
			Loop
			%>
			</table>
			<%
		End if
		rs.Close
		Dim relcnt,ID()
		rs.Open "SELECT * FROM relatives WHERE RelID=0 AND Rel2="&person,con
		If not rs.EOF Then
			relcnt=0%>
			<h4>Ascendants</h4>
			<table>
			<tr><th>Count</th><th>Generation, name, (birth - death)</th></tr>
			<%Call ascgen(person,0,maxGen)%>
			</table>
		<%End If
		rs.Close
		ReDim ID(0)
		rs.Open "SELECT * FROM relatives WHERE RelID=0 AND Rel1="&person,con
		If not rs.EOF Then
			relcnt=0%>
			<h4>Descendants</h4>
			<table>
			<tr><th>Count</th><th>Generation, name, (birth - death)</th></tr>
			<%Call descgen(person,0)%>
			</table>
		<%End If
	End If
	rs.Close%>
	<!--#include file="holdings.asp"-->
	<%Call holdings(con,rs,"p="&person&"&amp;m="&maxGen,person,"s2")
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>