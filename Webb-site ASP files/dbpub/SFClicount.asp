<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim sort,URL,ob,numa,numb,aRO,arep,acnt,arat,bRO,brep,bcnt,brat,sumaRO,sumarep,sumbro,sumbrep,db,da,orgID,act,actName,con,rs,sql,title,x
Call openEnigmaRs(con,rs)
sort=Request("sort")
act=getInt("a",0)
If act>0 Then actName=con.Execute("SELECT * FROM activity WHERE ID="&act).Fields("actName") Else actName="All activities"

da=getMSdateRange("da","2003-04-01",MSdate(Date))
db=getMSdef("db",MSdate(dateAdd("yyyy",-1,da)))
db=Max("2003-04-01",db)
If db>da Then swap db,da
Select Case sort
	Case "namup" ob="name"
	Case "namdn" ob="name DESC"

	Case "arepup" ob="arep,name"
	Case "arepdn" ob="arep DESC,name"
	Case "aroup" ob="aRO,name"
	Case "arodn" ob="aRO DESC,name"
	Case "acntup" ob="acnt,name"
	Case "acntdn" ob="acnt DESC,name"

	Case "brepup" ob="brep,name"
	Case "brepdn" ob="brep DESC,name"
	Case "broup" ob="bRO,name"
	Case "brodn" ob="bRO DESC,name"
	Case "bcntup" ob="bcnt,name"
	Case "bcntdn" ob="bcnt DESC,name"

	Case "crepup" ob="crep,name"
	Case "crepdn" ob="crep DESC,name"
	Case "croup" ob="cRO,name"
	Case "crodn" ob="cRO DESC,name"
	Case "ccntup" ob="ccnt,name"
	Case "ccntdn" ob="ccnt DESC,name"

	Case "aratup" ob="arat,name"
	Case "aratdn" ob="arat DESC,name"
	Case "bratup" ob="brat,name"
	Case "bratdn" ob="brat DESC,name"
	
	Case "sddn" ob="startDate DESC,name"
	Case "sdup" ob="startDate,name"
	Case "eddn" ob="endDate DESC,name"
	Case "edup" ob="endDate,name"
	Case Else
		sort="acntdn"
		ob="acnt DESC,name"
End Select
URL=Request.ServerVariables("URL")&"?db="&db&"&amp;da="&da&"&amp;a="&act
title="SFC licensees per firm: "&actName%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li id="livebutton">League table</li>
	<li><a href="SFCchanges.asp">Latest moves</a></li>
	<li><a href="SFChistall.asp?a=<%=act%>">Historic total</a></li>
</ul>
<div class="clear"></div>
<p>In an activity at a firm, a licensee is either a Responsible Officer (<strong>RO</strong>) or 
a Representative (<strong>Rep</strong>). 
When Activity is set to "All", a person who holds both roles (in different 
activities) is treated as 
an RO. &quot;Reps v total&quot; is a measure of how bottom-heavy a firm is, because the 
ROs supervise the Reps. We query the SFC database and update the 
tables regularly. Licensees are not necessarily full-time employees and may be 
licensed to more than 1 firm. We do not track the SFC-registered 
Executive Officers of HKMA-regulated banks, because the HKMA and SFC do not 
publish any past positions of these people or their appointment dates in their 
current positions. So there's no level playing field between banks and 
SFC-licensed firms.</p>
<p>Click on the last column to see the history of a firm.</p>
<form method="get" action="SFClicount.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Start date: <input type="date" name="db" id="db" value="<%=db%>">
		End date: <input type="date" name="da" id="da" value="<%=da%>">
	</div>
	<div class="inputs">
		Activity type: <%=arrSelectZ("a",act,con.Execute("SELECT ID,actName FROM activity ORDER BY actName").getRows,True,True,0,"All activities")%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';">
	</div>
	<div class="clear"></div>
</form>
<%=mobile(1)%>
<table class="numtable yscroll">
	<thead>
		<tr>
			<th class="colHide1"></th>
			<th></th>
			<th class="center colHide1" colspan="3"><%=db%></th>
			<th class="center colHide3" colspan="3"><%=da%></th>
			<th class="center" colspan="3">Change</th>
			<th class="center colHide2"colspan="2">Rep v total</th>
			<th class="colHide1"></th>
			<th class="colHide1"></th>
		</tr>
		<tr>
			<th class="colHide1">Row</th>
			<th class="left"><%SL "Name","namup","namdn"%></th>
			<th class="colHide1"><%SL "RO","brodn","broup"%></th>
			<th class="colHide1"><%SL "Rep","brepdn","brepup"%></th>
			<th class="colHide1"><%SL "Total","bcntdn","bcntup"%></th>
			<th class="colHide3"><%SL "RO","arodn","aroup"%></th>
			<th class="colHide3"><%SL "Rep","arepdn","arepup"%></th>
			<th class="colHide3"><%SL "Total","acntdn","acntup"%></th>
			<th><%SL "RO","crodn","croup"%></th>
			<th><%SL "Rep","crepdn","crepup"%></th>
			<th><%SL "Total","ccntdn","ccntup"%></th>
			<th class="colHide2"><%SL "Start<br>%","bratdn","bratup"%></th>
			<th class="colHide2"><%SL "End<br>%","aratdn","aratup"%></th>
			<th class="colHide1"><%SL "Licence<br>start","sddn","sdup"%></th>
			<th class="colHide1"><%SL "Licence<br>end","eddn","edup"%></th>
		</tr>
	</thead>
	<%
	If act=0 Then
		sql="SELECT orgID,name1 name,startDate,endDate,bRO,bcnt-bRO brep,bcnt,aRO,acnt-ARO arep,acnt,1-aRO/acnt arat,"&_
			"1-bRO/bcnt brat,aRO-bRO cRO,acnt-aRO-bcnt+bRO crep,acnt-bcnt ccnt FROM "&_
			"(SELECT IFNULL(a.cnt,0)acnt,IFNULL(a.RO,0)aRO,IFNULL(b.cnt,0)bcnt,IFNULL(b.RO,0)bRO,ol.orgID,startDate,endDate FROM "&_
			"(SELECT orgID,Min(startDate)startDate,IF(Max(IFNULL(endDate,'9999-12-31'))='9999-12-31',NULL,max(endDate)) endDate FROM olicrec "&_
			"WHERE (ISNULL(endDate) or endDate>'"&db&"') AND (isNull(startDate) OR startDate<='"&da&"') GROUP BY orgID)ol "&_
			"LEFT JOIN (SELECT orgID,COUNT(DISTINCT staffID) cnt,SUM(role=1) RO FROM "&_
			"(SELECT DISTINCT orgID,staffID,role FROM licrec WHERE (ISNULL(endDate) or endDate>'"&db&"') AND (isNull(startDate) OR startDate<='"&db&"'))t "&_
			"GROUP BY orgID)b ON ol.orgID=b.orgID "&_
			"LEFT JOIN (SELECT orgID,COUNT(DISTINCT staffID) cnt,SUM(role=1) RO FROM "&_
			"(SELECT DISTINCT orgID,staffID,role FROM licrec WHERE (ISNULL(endDate) or endDate>'"&da&"') AND (isNull(startDate) OR startDate<='"&da&"'))t "&_
			"GROUP BY orgID)a ON ol.orgID=a.orgID "&_
			")t JOIN organisations o ON o.personID=t.orgID WHERE acnt+bcnt>0 ORDER BY "&ob
	Else
		sql="SELECT orgID,name1 name,startDate,endDate,bRO,brep,bcnt,aRO,arep,acnt,arat,brat,acnt-bcnt ccnt,aRO-bRO cRO,arep-brep crep FROM("&_
			"SELECT ol.orgID,startDate,endDate,IFNULL(b.RO,0)bRO,IFNULL(b.cnt-b.RO,0)brep,IFNULL(b.cnt,0)bcnt,"&_
			"IFNULL(a.RO,0)aRO,IFNULL(a.cnt-a.RO,0)arep,IFNULL(a.cnt,0)acnt,1-b.RO/b.cnt brat,1-a.RO/a.cnt arat "&_
			"FROM olicrec ol LEFT JOIN "&_
			"(SELECT orgID,COUNT(DISTINCT staffID)cnt,SUM(role=1)RO FROM licrec "&_
			"WHERE (ISNULL(endDate) or endDate>'"&db&"') AND (isNull(startDate) OR startDate<='"&db&"')"&_
			"AND actType="&act&" GROUP BY orgID)b ON ol.orgID=b.orgID LEFT JOIN "&_
			"(SELECT orgID,COUNT(DISTINCT staffID)cnt,SUM(role=1)RO FROM licrec "&_
			"WHERE (ISNULL(endDate) or endDate>'"&da&"') AND (isNull(startDate) OR startDate<='"&da&"')"&_
			"AND actType="&act&" GROUP BY orgID)a ON ol.orgID=a.orgID WHERE actType="&act&_
			" AND (ISNULL(endDate) or endDate>'"&db&"') AND (isNull(startDate) OR startDate<='"&da&"'))t "&_
			"JOIN organisations o ON t.orgID=o.personID WHERE acnt+bcnt>0 ORDER BY "&ob
	End If
	rs.Open sql,con
	Do Until rs.EOF
		x=x+1
		aRO=CInt(rs("aRO"))
		arep=CInt(rs("arep"))
		acnt=CInt(rs("acnt"))
		bRO=CInt(rs("bRO"))
		brep=CInt(rs("brep"))
		bcnt=CInt(rs("bcnt"))
		arat=rs("arat")		
		brat=rs("brat")		
		If isNull(arat) Then arat="-" Else arat=FormatNumber(CDbl(arat)*100,2)
		If isNull(brat) Then brat="-" Else brat=FormatNumber(CDbl(brat)*100,2)
		orgID=rs("orgID")
		If acnt>0 Then
			sumaRO=sumaRO+aRO
			sumarep=sumarep+arep
			numa=numa+1
		End If
		If bcnt>0 Then
			sumbRO=sumbRO+bRO
			sumbrep=sumbrep+brep
			numb=numb+1
		End If
		%>
		<tr>
			<td class="colHide1"><%=x%></td>
			<td class="left"><a href='SFClicensees.asp?p=<%=orgID%>&a=<%=act%>&h=Y&sort=posdn&d=<%=da%>'><%=rs("name")%></a></td>
			<td class="colHide1"><%=bRO%></td>
			<td class="colHide1"><%=brep%></td>
			<td class="colHide1"><%=bcnt%></td>
			<td class="colHide3"><%=aRO%></td>
			<td class="colHide3"><%=arep%></td>
			<td class="colHide3"><%=acnt%></td>
			<td><%=aRO-bRO%></td>
			<td><%=arep-brep%></td>
			<td><%=acnt-bcnt%></td>			
			<td class="colHide2"><a href="SFChistfirm.asp?p=<%=orgID%>&amp;a=<%=act%>"><%=brat%></a></td>
			<td class="colHide2"><a href="SFChistfirm.asp?p=<%=orgID%>&amp;a=<%=act%>"><%=arat%></a></td>
			<td class="colHide1 nowrap"><%=MSdate(rs("startDate"))%></td>
			<td class="colHide1 nowrap"><%=MSdate(rs("endDate"))%></td>
		</tr>
		<%
		rs.Movenext
	Loop
	Call CloseConRs(con,rs)%>
	<tr class="total">
		<td></td>
		<td class="left">Average</td>
		<%If numb>0 Then%>
			<td class="colHide1"><%=FormatNumber(sumbRO/numb,2)%></td>
			<td class="colHide1"><%=FormatNumber(sumbrep/numb,2)%></td>
			<td class="colHide1"><%=FormatNumber((sumbRO+sumbrep)/numb,2)%></td>
		<%Else%>
			<td class="colHide1" colspan="3"></td>
		<%End If%>
		<%If numa>0 Then%>
			<td class="colHide3"><%=FormatNumber(sumaRO/numa,2)%></td>
			<td class="colHide3"><%=FormatNumber(sumarep/numa,2)%></td>
			<td class="colHide3"><%=FormatNumber((sumaRO+sumarep)/numa,2)%></td>
		<%Else%>
			<td class="colHide3" colspan="3"></td>
		<%End If%>
		<td colspan="3"></td>
		<%If numb>0 Then%>
			<td class="colHide2"><%=FormatNumber(100*sumbrep/(sumbRO+sumbrep),2)%></td>
		<%Else%>
			<td class="colHide2"></td>
		<%End If%>
		<%If numa>0 Then%>
			<td class="colHide2"><%=FormatNumber(100*sumarep/(sumaRO+sumarep),2)%></td>
		<%Else%>
			<td class="colHide2"></td>
		<%End If%>
	</tr>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
