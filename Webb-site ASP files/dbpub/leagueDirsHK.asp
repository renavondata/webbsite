<%Option Explicit
Response.Buffer=False%>
<!--#include file="functions1.asp"-->
<%
Function sortSel(name,selVal)
sortSel=makeSelect(name,selVal,",,cntdn,number of positions,"&_
	"cagreldn,CAGR rel. ret. highest,cagrelup,CAGR rel. ret. lowest,nameup,A-Z,namedn,Z-A,"&_
	"sexup,sex F-M,sexdn,sex M-F,agedn,oldest,ageup,youngest",0)
End Function

Dim sortArr(3),orderBy(3),orderStr,returns,x,CAGret,CAGrel,minPos,fromDate,toDate,temp,hide,c,con,rs
Call openEnigmaRs(con,rs)
minPos=Max(getInt("m",3),3)

hide=getHide("h")
fromDate=getMSdef("f","")
toDate=getMSdateRange("t","",MSdate(Date))
If fromDate>toDate Then swap fromDate,toDate
c=getBool("c") 'whether to include appointments after start date

For x=1 to 3
	sortArr(x)=Request("s"&x)
	Select case sortArr(x)
		Case "nameup" orderBy(x)="name"
		Case "namedn" orderBy(x)="name DESC"
		Case "cntup" orderBy(x)="cntPos"
		Case "cagretup" orderBy(x)="CAGret"
		Case "cagretdn" orderBy(x)="CAGret DESC"
		Case "cagrelup" orderBy(x)="CAGrel"
		Case "cagreldn" orderBy(x)="CAGrel DESC"
		Case "agedn" orderBy(x)="YOB"
		Case "ageup" orderBy(x)="YOB DESC"
		Case "sexdn" orderBy(x)="sex DESC"
		Case "sexup" orderBy(x)="sex"
		Case "cntdn" orderBy(x)="cntPos DESC"
		Case "ageup" orderBy(x)="YOB DESC"
		Case "agedn" orderBy(x)="YOB"
	End Select
Next
If orderBy(1)="" Then
	sortArr(1)="cntdn"
	orderBy(1)="cntPos DESC"
End If
orderStr=orderBy(1)
If orderBy(2)="" Then
	If sortArr(1)<>"cagreldn" AND sortArr(1)<>"cagrelup" AND sortArr(1)<>"cagretdn" AND sortArr(1)<>"cagretup" Then
		sortArr(2)="cagreldn"
		orderBy(2)="CAGrel DESC"
	Else
		sortArr(2)="nameup"
		orderBy(2)="name"
	End If
End If
orderStr=orderBy(1)&","&orderBy(2)
If orderBy(3)<>"" Then orderStr=orderStr&","&orderBy(3)%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>HK listed directorships per person</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Webb-site League Table of directors</h2>
<ul class="navlist">
	<li><a href="leagueNotesD.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<p>This table shows a list of people who hold or held at least 3 directorships of 
companies with a primary listing in HK, with their average annualised Webb-site 
Total Returns relative to the Tracker Fund of HK. Hit the &quot;Notes&quot; button for more. For a table showing INED positions only,
<a href="dirsHKPerPerson.asp">click here</a>. <strong>Warning: this page is 
computation-heavy, be patient</strong>.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="leagueDirsHK.asp">
	<div class="inputs">
		<input type="radio" name="h" value="Y" <%If hide="Y" Then%>checked<%End If%>> Current positions<br>
	</div>
	<div class="inputs">
		<input type="radio" name="h" value="N" <%If hide="N" Then%>checked<%End If%>> Current &amp; past positions
	</div>
	<div class="clear"></div>
	<div class="inputs">Minimum positions: <input type="text" size="2" name="m" value="<%=minPos%>"></div>
	<div class="clear"></div>
	<div class="inputs">
		start date: <input type="date" name="f" id="f" value="<%=fromDate%>">
	</div>
	<div class="inputs">
		end date: <input type="date" name="t" id="t" value="<%=toDate%>">
	</div>
	<div class="inputs">
		<%=checkbox("c",c,False)%> include new appointments after start date
	</div>
	<div class="clear"></div>
	<div class="inputs">Sort by <%=sortSel("s1",sortArr(1))%></div>
	<div class="inputs">then by <%=sortSel("s2",sortArr(2))%></div>
	<div class="inputs">then by <%=sortSel("s3",sortArr(3))%></div>
	<div class="clear"></div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('f').value='';document.getElementById('t').value='';
			document.getElementById('c').checked=false;">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide2">Row</th>
		<th>No.<br>of<br>seats</th>
		<th class="left">Name</th>
		<th>CAGR<br>relative<br>return</th>
		<th class="colHide3">Age in<br><%=Year(Date)%></th>
		<th style="font-size:large">&#x26A5;</th>
	</tr>
	<%x=0
	rs.Open "Call leagueDirsHK("&minPos&",'"&orderStr&"','"&fromDate&"','"&toDate&"','"&hide&"',"&c&")",con
	Do Until rs.EOF
		x=x+1
		CAGrel=rs("CAGrel")
		If isNull(CAGrel) Then CAGrel="" Else CAGrel=FormatPercent(CAGrel,2)%>
		<tr>
			<td class="colHide2"><%=x%></td>
			<td><%=rs("cntPos")%></td>
			<td class="left"><a href="possum.asp?p=<%=rs("dir")%>&f=<%=fromDate%>&t=<%=toDate%>&s=cagreldn"><%=rs("Name")%></a></td>
			<td><%=CAGrel%></td>
			<td class="colHide3"><%=Year(Date)-rs("YOB")%></td>
			<td><%=rs("sex")%></td>
		</tr>
		<%rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>