<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Function lastTrading(d)
	'find the last trading date on or before d
	If isNull(d) Or Not isDate(d) Then Exit Function
	d=Cdate(d)
	Dim rs
	Set rs=Server.CreateObject("ADODB.Recordset")
	Do
		If Weekday(d,2)<6 Then
			'it's a weekday, now see if market was open
			rs.Open "SELECT * FROM ccass.specialdays WHERE (pubHol Or (noAM AND noPM)) AND specialDate='"&MSdate(d)&"'",con
			If rs.EOF Then
				rs.Close
				Exit Do
			Else
				rs.Close
			End If
		End If
		d=d-1
	Loop
	lastTrading=d
End Function

Dim r,roleID,sort,URL,role,ob,returns,CAGret,CAGrel,x,title,fromDate,toDate,sel,fromYear,toYear,nowYear,years,days,temp,oneTime,roles,sumRoles,con,rs,sql
Call openEnigmaRs(con,rs)
nowYear=Year(Date)
r=getLng("r",0)
fromYear=getInt("f",nowYear-1)

toYear=getInt("t",Year(Now))
years=getDbl("y",1)
sort=Request("sort")

If fromYear<1993 Or fromYear>nowYear Then fromYear=Year(Now)-1
If toYear<fromYear Then temp=toYear:toYear=fromYear:fromYear=temp
fromDate=MSdate(lastTrading(DateSerial(fromYear-1,12,31)))
toDate=MSdate(lastTrading(DateSerial(toYear,12,31)))
days=Round(years*365.25,0)
Select case sort
	Case "nameup" ob="name1"
	Case "namedn" ob="name1 DESC"
	Case "cntup" ob="cntPos,name1"
	Case "cagretup" ob="CAGret,name1"
	Case "cagretdn": ob="CAGret DESC,name1"
	Case "cagrelup": ob="CAGrel,name1"
	Case "cagreldn": ob="CAGrel DESC,name1"	
	Case Else:sort="cntdn":ob="cntPos DESC,CAGret DESC"
End Select
rs.Open "SELECT oneTime,roleLong from roles WHERE roleID="&r,con
If Not rs.EOF Then
	role=rs("roleLong")
	oneTime=rs("oneTime")
Else
	r=0
	role="Auditor"
	oneTime=False
End If
rs.close
title="Webb-site Total Returns: "&role&" from "&fromYear&" until "&toYear
If oneTime Then
	sql="SELECT personID,name1,COUNT(company) AS cntPos,AVG(CAGretDays(ID1,addDate,"&days&"))-1 AS CAGret,"&_
		"AVG(CAGrelDays(ID1,addDate,"&days&"))-1 AS CAGrel"&_
		" FROM adviserships JOIN (issue,organisations) ON company=issuer AND adviser=personID WHERE typeID IN(0,6,7,8,10,42)"&_	
		" AND ID1 IN (SELECT DISTINCT issueID FROM stocklistings WHERE stockExID IN(1,20,23)"&_
			" AND (isNull(deListDate) OR deListDate>'"&fromDate&"'))"&_
		" AND role="&r&" AND addDate>'"&fromDate&"' AND addDate<='"&toDate&"'"&_
		" GROUP BY adviser ORDER BY "&ob
Else
	sql="SELECT personID,name1,COUNT(company) AS cntPos,AVG(CAGRet(ID1,'"&fromDate&"',LEAST('"&toDate&"',IFNULL(remDate,'"&toDate&"'))))-1 AS CAGret,"&_
		"AVG(CAGrel(ID1,'"&fromDate&"',LEAST('"&toDate&"',IFNULL(remDate,'"&toDate&"'))))-1 AS CAGrel"&_
		" FROM adviserships JOIN (issue,organisations) ON company=issuer AND adviser=personID WHERE typeID IN(0,6,7,8,10,42)"&_	
		" AND ID1 IN (SELECT DISTINCT issueID FROM stocklistings WHERE stockExID IN(1,20,23)"&_
			" AND (isNull(firstTradeDate) OR firstTradeDate<='"&fromDate&"') AND (isNull(deListDate) OR deListDate>'"&fromDate&"'))"&_
		" AND role="&r&" AND (isNull(addDate) Or addDate<='"&fromDate&"') AND (isNull(remDate) Or remDate>'"&fromDate&"')"&_
		" GROUP BY adviser ORDER BY "&ob
End If
URL=Request.ServerVariables("URL")&"?r="&r&"&amp;f="&fromYear&"&amp;t="&toYear&"&amp;y="&years
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="leagueNotesA.asp">Notes</a></li>
	<li><a href="roles.asp">All league tables</a></li>
</ul>
<div class="clear"></div>
<%If oneTime Then%>	
<p>This is a one-time role. This league table shows the compound average annualised Webb-site Total Return over the performance period 
since the appointment date or the first day of trading thereafter, for appointments in the chosen period.</p>
<%Else%>
<p>This is a continuing role. This league table takes the client list of each adviser at the start of the 
chosen year (the close of business on the last trading day of the previous year), and shows the average annualised Webb-site Total Return 
of those clients until the end of the chosen year or the resignation/removal date, whichever comes first. 
</p>
<%End If%>
<p>Return-periods of less than 180 days are excluded to reduce distortion of CAGR. 
Current-year returns are subject to finalisation of adjustments. For periods 
beginning 2000 or later, average annualised relative returns to the 
<a href="orgdata.asp?p=51819">Tracker Fund of HK</a> 
(2800) are shown. Hit the &quot;Notes&quot; button for more.</p>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="advbyrole.asp">
	<input type="hidden" name="s" value="<%=sort%>">
	<%rs.Open "SELECT roleID,roleLong FROM roles ORDER BY roleLong",con
	Response.Write arrSelect("r",r,rs.getRows,True)
	rs.Close
	If oneTime Then%> Roles in: <%Else%> Clients at start of: <%End If%>
	<%=RangeSelect("f",fromYear,False,,False,nowYear,1994)%>
	<%If oneTime Then%> to: <%Else%> until the end of: <%End If%>
	<%=RangeSelect("t",toYear,False,,False,nowYear,1994)%>
	<%If oneTime Then%>
		Performance period <%=MakeSelect("y",years,"0.5,0.5,1,1,2,2,3,3,5,5",True)%> years
	<%End If%>
	<input type="submit" value="Go">
</form><br>
<%rs.Open sql,con
x=0
sumRoles=0
If rs.EOF Then%>
	<p>None found.</p>
<%Else%>
	<%=mobile(3)%>
	<table class="numtable yscroll">
		<tr>
			<th class="colHide3">Count</th>
			<th><%SL "Roles","cntdn","cntup"%></th>
			<th class="left"><%SL "Name","nameup","namedn"%></th>
			<th><%SL "CAGR<br>total<br>return","cagretdn","cagretup"%></th>
			<%If fromYear>1999 Then%>
				<th><%SL "CAGR<br>relative<br>return","cagreldn","cagrelup"%></th>
			<%End If%>
		</tr>
		<%Do Until rs.EOF
			x=x+1
			CAGret=rs("CAGret")
			If isNull(CAGret) Then CAGret="" Else CAGret=FormatPercent(CAGret,2)
			roles=rs("cntPos")
			sumRoles=sumRoles+Clng(roles)
			%>
			<tr>
				<td class="colHide3"><%=x%></td>
				<td><%=roles%></td>
				<td class="left"><a href='adviserships.asp?p=<%=rs("personID")%>&r=<%=r%>&f=<%=fromDate%>&t=<%=toDate%>&y=<%=years%>&sort=cagreldn'><%=rs("name1")%></a></td>
				<td style="text-align:right"><%=CAGret%></td>
				<%If fromYear>1999 Then
					CAGrel=rs("CAGrel")
					If isNull(CAGrel) Then CAGrel="" Else CAGrel=FormatPercent(CAGrel,2)
					%>
					<td><%=CAGrel%></td>
				<%End If%>
			</tr>
			<%rs.Movenext
		Loop%>
		<tr>
			<td class="colHide3"></td>
			<td><%=sumRoles%></td>
			<td class="left">Total</td>
		</tr>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
