<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%Dim con,rs,p,person,d,title,e,z,holdDate,isOrg,name,proc,issueID,sort,URL,nowYear,x,cid,m
m=botchk2()%>
<title>CCASS holdings</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If m<>"" Then%>
	<p><b><%=m%></b></p>
<%Else
	Call openEnigmaRs(con,rs)
	p=getLng("part",1)
	sort=Request("sort")
	z=getBool("z")
	d=getMSdateRange("d","2007-06-26",GetLog("CCASSdateDone"))
	d=MSdate(con.Execute("SELECT Max(settleDate) FROM ccass.calendar WHERE settleDate<='"&d&"'").Fields(0))
	rs.Open "SELECT partName,personID,CCASSID from ccass.participants WHERE partID="&p,con
	If rs.EOF Then
		p=1
		person=1453
	Else
		If Not isNull(rs("personID")) Then
			person=CLng(rs("personID"))
			Call fnamePsn(person,name,isOrg)
		Else
			person=0
			name=rs("partName")
		End If
		cid=rs("CCASSID")
	End If
	rs.Close
	Select Case sort
		Case "nameup" e="Name1"
		Case "namedn" e="Name1 DESC"
		Case "holdup" e="holding,Name1"
		Case "holddn" e="holding DESC,Name1"
		Case "datedn" e="atDate Desc,Name1"
		Case "dateup" e="atDate,Name1"
		Case "stakup" e="stake,Name1"
		Case "valndn" e="valn DESC,Name1"
		Case "valnup" e="valn,Name1"
		Case "codeup" e="lastCode,Name1"
		Case "codedn" e="lastCode DESC,Name1"
		Case Else
			sort="stakdn"
			e="stake DESC,Name1"
	End Select
	e="ORDER BY "&e
	If Not z Then e="AND holding<>0 "&e
	URL=Request.ServerVariables("URL")&"?part="&p&"&amp;d="&d&"&amp;z="&z

	If not isnull(cid) Then title=name&"<br>CCASS ID: "&cid Else title=name
	If person<>"" Then
		If isOrg Then
			Call orgBar(title,person,7)
		Else
			Call humanBar(name,person,5)
		End If
	Else%>
		<h3><%=name%></h3>
	<%End If
	Call ccassbarpart(p,d,1)%>
	<h3>CCASS holdings on <%=d%></h3>
	<form method="get" action="cholder.asp">
		<input type="hidden" name="sort" value="<%=sort%>">
		<input type="hidden" name="part" value="<%=p%>">
		<div class="inputs">
			<input type="date" name="d" id="d" value="<%=d%>" onblur="this.form.submit()">
		</div>
		<div class="inputs">
			<%=checkbox("z",z,True)%> Show former holdings
		</div>
		<div class="inputs">
			<input type="submit" value="Go">
			<input type="submit" value="Clear" onclick="document.getElementById('d').value='';document.getElementById('z').checked=false;">
		</div>
		<div class="clear"></div>
	</form>
	<p>Valuations are at the end of the period. Hit the stake to see the history. &quot;*&quot;=stock is suspended or in parallel trading. Last close on this counter is used.</p>
	<%=mobile(1)%>
	<table class="optable yscroll">
		<tr>
			<th class="colHide1">Row</th>
			<th><%SL "Last<br>code","codeup","codedn"%></th>
			<th class="left"><%SL "Issue","nameup","namedn"%></th>
			<th class="colHide1"><%SL "Holding","holddn","holdup"%></th>
			<th class="colHide3"><%SL "Value","valndn","valnup"%></th>
			<th></th>
			<th><%SL "Stake<br>%","stakdn","stakup"%></th>
			<th class="colHide2"><%SL "Date", "datedn","dateup"%></th>
		</tr>
	<%
	x=0
	rs.Open "Call ccass.holder2("&p&",'"&d&"','"&e&"')",con
	Do Until rs.EOF
		x=x+1
		issueID=rs("issueID")
		holdDate=MSdate(rs("atDate"))
		%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td><%=rs("lastCode")%></td>
			<td class="left"><a href="choldings.asp?i=<%=issueID%>&amp;d=<%=d%>"><%=rs("Name1")&":"&rs("typeShort")%></a></td>
			<td class="colHide1"><%=FormatNumber(rs("holding"),0)%></td>
			<td class="colHide3"><%=FormatNumber(rs("valn"),0)%></td>
			<td><%If rs("susp") Then Response.Write "*"%></td>
			<td><a href="chistory.asp?i=<%=issueID%>&amp;part=<%=p%>"><%=FormatNumber(rs("stake")*100,2)%></a></td>
			<td class="colHide2" style="white-space:nowrap"><a href="chldchg.asp?i=<%=issueID%>&d=<%=holdDate%>"><%=holdDate%></a></td>
		</tr>
		<%
		rs.MoveNext
	Loop%>
	</table>
	<%If x=0 Then%>
		<p>None found.</p>
	<%End If
	Call CloseConRs(con,rs)	
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>