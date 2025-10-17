<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,count,dirs,title,age,d,con,rs
Call openEnigmaRs(con,rs)
d=getMinMSdate("d","1990-01-01")
sort=Request("sort")
Select Case sort
	Case "inpdn" ob="INEPropn DESC,Name"
	Case "inpup" ob="INEPropn,Name"
	Case "fmpdn" ob="FemPropn DESC,Name"
	Case "fmpup" ob="FemPropn,Name"
	Case "agedn" ob="Age DESC,Name"
	Case "ageup" ob="Age,Name"
	Case "inedn" ob="INE DESC,Name"
	Case "ineup" ob="INE,Name"
	Case "femdn" ob="Female DESC,Name"
	Case "femup" ob="Female,Name"
	Case "dirdn" ob="Dirs DESC,Name"
	Case "dirup" ob="Dirs,Name"
	Case "namup" ob="Name"
	Case "namdn" ob="Name DESC"
	Case "stkup" ob="sc"
	Case "stkdn" ob="sc DESC"
	Case Else
		ob="Dirs DESC,Name"
		sort="dirdn"
End Select
URL=Request.ServerVariables("URL")&"?d="&d
title="Board composition per HK-listed company on "&d%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>In some countries, governance experts get excited about the proportion of 
independent non-executive directors on a board, overseeing the management of the 
company. A majority is deemed ideal. Of course, this presumes that the INEDs 
are independent of management, which is impossible if the management are 
also the controlling shareholders of the company and can vote on the election of 
INEDs in shareholder meetings. So in HK, where almost all companies have 
a controlling shareholder, INEDs are more form than substance. Listing Rules 
since 30-Sep-2004 require each listed company in HK to have 3, and from 31-Dec-2012 they should 
constitute at least 1/3 of the board. We also track the gender and ages of 
directors. </p>
<p>Here is a table of the number of directors of each company who 
are claimed to be independent and are subject to election in shareholder 
meetings (INE), the number of directors who are female, and the 
proportions they represent of the board, for each company with a current HK primary 
listing. Click on the column headings to sort the 
list. Use the snapshot feature to roll back the clock - we have all directors since 1990, including delisted companies 
up to the delisted date. Current company names are 
used.</p>
<p>Visit the <a href="../dbpub/">Webb-site Who's Who home page</a> to find 
analyses of these data under "HK Listed Boards".</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="boardcomp.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Snapshot date: <input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="Clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="numtable yscroll">
	<tr>
		<th class="colHide3"></th>
		<th class="colHide3"><%SL "Stock<br>code","stkup","stkdn"%></th>
		<th class="left"><%SL "Name","namup","namdn"%></th>
		<th><%SL "No.<br>of<br>dirs","dirdn","dirup"%></th>
		<th><%SL "INE","inedn","ineup"%></th>
		<th><%SL "<span style='font-size:large'>&#x2640;</span>","femdn","femup"%></th>
		<th><%SL "INE<br>Ratio","inpdn","inpup"%></th>
		<th class="colHide3"><%SL "Fem.<br>Ratio","fmpdn","fmpup"%></th>
		<th class="colHide3"><%SL "Mean<br>age in<br>"&Year(d),"agedn","ageup"%></th>
	</tr>
<%
con.hkbdanalsnap d,ob,rs
Do Until rs.EOF
	count=count+1
	dirs=CInt(rs("Dirs"))
	age=rs("age")%>
	<tr>
		<td class="colHide3"><%=count%></td>
		<td class="colHide3"><%=rs("sc")%></td>
		<td class="left"><a href='officers.asp?p=<%=rs("personID")%>&amp;hide=Y&d=<%=d%>&u=1'><%=rs("name")%></a></td>
		<td><%=dirs%></td>
		<td><%=rs("INE")%></td>
		<td><%=rs("Female")%></td>
		<%If dirs=0 then%>
			<td></td>
			<td colspan="2" class="colHide3"></td>
		<%Else%>
			<td><%=FormatNumber(rs("INEPropn"),3)%></td>
			<td class="colHide3"><%=FormatNumber(rs("FemPropn"),3)%></td>
			<td class="colHide3"><%If not isNull(age) Then response.write FormatNumber(age,3)%></td>
		<%End If%>
	</tr>
	<%rs.Movenext
Loop
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>