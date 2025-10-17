<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,p,sort,URL,ob,hide,name,rank,orgID,lastOrg,listed,service,cnt,fromDate,toDate,c,n,_
	totRet,totRetStr,CAGret,CAGretStr,CAGrel,CAGrelStr,sumRet,sumRel,cntRet,cntRel,temp,hint,isOrg,title,a,x,hasRet
Call openEnigmaRs(con,rs)
c=getBool("c") 'whether to include appointments after start date
n=getBool("n") 'whether to show names at time of appointment

fromDate=getMSdef("f","")
toDate=getMSdate("t")
hide=getHide("hide")
If fromDate>toDate Then swap fromDate,toDate
If fromDate="" And c Then hint=hint&"Please choose a start date. "

sort=Request("sort")
Select Case sort
	Case "orgdn" ob="Name1 DESC,app"
	Case "appup" ob="app,Name1"
	Case "appdn" ob="app DESC,Name1"
	Case "resup" ob="res,Name1"
	Case "resdn" ob="res DESC,Name1"
	Case "totup" ob="totRet, Name1"
	Case "totdn" ob="totRet DESC,Name1"
	Case "cagretup" ob="CAGret, Name1"
	Case "cagretdn" ob="CAGret DESC,Name1"
	Case "cagrelup" ob="CAGrel, Name1"
	Case "cagreldn" ob="CAGrel DESC,Name1"
	Case "serdn" ob="service DESC,name1"
	Case "serup" ob="service,name1"
	Case Else
		ob="Name1,app"
		sort="orgup"
End Select

p=getLng("p",0)
Call fNamePsn(p,name,isOrg)
URL=Request.ServerVariables("URL")&"?p="&p&"&amp;f="&fromDate&"&amp;t="&toDate&"&amp;c="&c&"&amp;n="&n
title=Name
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<title>Webb-site Database: positions of <%=Name%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If isOrg Then
	Call orgBar(title,p,3)
Else
	Call humanBar(name,p,2)
End If
Call positionsBar(p,2)%>
<%=writeNav(hide,"Y,N","Current,History",URL&"&amp;sort="&sort&"&amp;hide=")%>
<!--#include file="shutdown-note.asp"-->
<form method="get" action="possum.asp">
	<input type="hidden" name="p" value="<%=p%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		start date: <input type="date" name="f" id="f" value="<%=fromDate%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		end date: <input type="date" name="t" id="t" value="<%=toDate%>" onblur="this.form.submit()">
	</div>
	<div class="inputs">
		<%=checkbox("c",c,True)%> include appointments after start date
	</div>
	<div class="inputs">
		<%=checkbox("n",n,True)%> show old organisation names
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('f').value='';document.getElementById('t').value='';
			document.getElementById('c').checked=false;document.getElementById('n').checked=false;">
	</div>
</form>
<div class="clear"></div>
<div><b><%=hint%></b></div>
<%LastOrg=0
sumRet=0
cntRet=0
rs.Open "Call posSum("&p&",'"&ob&"','"&fromDate&"','"&toDate&"','"&hide&"',"&c&","&n&")",con
If rs.EOF then%>
	<p><b>None found.</b></p>
<%Else
	'check whether there are any total returns, in which case we need to draw the columns
	a=rs.getRows
	hasRet=False
	For x=0 to ubound(a,2)
		If Not isNull(a(7,x)) Then
			hasRet=True
			Exit For
		End If
	Next
	rs.Movefirst
%>
	<%=mobile(2)%>
	<table class="optable">
	<tr>
		<th class="colHide1"></th>
		<th></th>
		<th class="left"><%SL "Organisation","orgup","orgdn"%></th>
		<th class="left colHide2"><%SL "From","appup","appdn"%></th>
		<th class="left colHide3"><%SL "Until","resup","resdn"%></th>
		<th><%SL"Service<br>years","serdn","serup"%></th>
		<%If hasRet Then%>
			<th class="colHide3"><%SL "Total<br>Return","totdn","totup"%></th>
			<th class="colHide2"><%SL "CAGR<br>total<br>return","cagretdn","cagretup"%></th>
			<th><%SL "CAGR<br>relative<br>return","cagreldn","cagrelup"%></th>
		<%End If%>
	</tr>
	<%Do Until rs.EOF
		orgID=rs("orgID")
		service=rs("service")
		If isNull(service) Then service="-" Else service=FormatNumber(service,2)
		totRet=rs("totRet")
		totRetstr=pcStr(rs("totRet")-1)
		CAGret=rs("CAGret")
		If isNull(CAGret) Then
			CAGretStr=""
		Else
			CAGretStr=FormatPercent(CDbl(CAGret)-1)
			cntRet=cntRet+1
			sumRet=sumRet+CAGret-1
		End If
		CAGrel=rs("CAGrel")
		If isNull(CAGrel) Then
			CAGrelStr=""
		Else
			CAGrelStr=FormatPercent(CDbl(CAGrel)-1)
			cntRel=cntRel+1
			sumRel=sumRel+CAGrel-1
		End If
		If OrgID<>lastOrg Or (sort<>"orgup" And sort<>"orgdn") Then
			cnt=cnt+1%>
			<tr class="total">
				<td class="colHide1"><%=cnt%></td>
				<td class="left"><%If Not IsNull(rs("issueID")) Then Response.Write "*":listed=True%></td>
				<td class="left"><a href="officers.asp?p=<%=orgID%>"><%=htmlEnt(rs("Name1"))%></a></td>
				<td class="left nowrap colHide2"><%=rs("app")%></td>
				<td class="left nowrap colHide3"><%=rs("res")%></td>
				<td><%=service%></td>			
				<%If hasRet Then%>
					<td class="colHide3"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=rs("ApptDate")%>"><%=totRetStr%></a></td>
					<td class="colHide2"><%=CAGretStr%></td>
					<td><a href="ctr.asp?rel=1&i1=5295&amp;i2=<%=rs("issueID")%>"><%=CAGrelStr%></a></td>
				<%End If%>
			</tr>
		<%Else%>
			<tr>
				<td class="colHide3"></td>
				<td></td>
				<td></td>
				<td class="left nowrap colHide2"><%=rs("app")%></td>
				<td class="left nowrap colHide3"><%=rs("res")%></td>
				<td><%=service%></td>
				<%If hasRet Then%>
					<td class="colHide3"><a href="ctr.asp?i1=<%=rs("issueID")%>&d1=<%=rs("ApptDate")%>"><%=totRetStr%></a></td>
					<td class="colHide2"><%=CAGretStr%></td>
					<td><a href="ctr.asp?rel=1&i1=5295&amp;i2=<%=rs("issueID")%>"><%=CAGrelStr%></a></td>
				<%End If%>
			</tr>
		<%End If
		rs.MoveNext
		lastOrg=OrgID
	Loop
	If cntRet>0 Then%>
		<tr class="total">
			<td class="colHide1"></td>
			<td></td>
			<td class="left">Average</td>
			<td class="colHide2"></td>
			<td class="colHide3"></td>
			<td></td>
			<%If hasRet Then%>
				<td class="colHide3"></td>
				<td class="colHide2"><b><%If cntRet>0 Then Response.Write FormatPercent(sumRet/cntRet,2)%></b></td>
				<td><b><%If cntRel>0 Then Response.Write FormatPercent(sumRel/cntRel,2)%></b></td>
			<%End If%>
		</tr>
	<%End If%>	
	</table>
	<%If Listed Then %><p>* = is or was HK primary-listed</p><%End If
	If hasRet Then%>
		<p>Total returns are measured from the latest of the start date, the appointment date and 3-Jan-1994 until 
		the earliest of the end date, the resignation/removal date and the last trading date.
		CAGR is the annualised return and is not shown for periods under 180 days. 
		Relative returns are to the <a href="orgdata.asp?p=51819">Tracker Fund 
		of HK</a> (2800), starting from the latest of 12-Nov-1999, the appointment date 
		and the chosen start date.</p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>