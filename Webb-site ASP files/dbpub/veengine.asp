<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=0.8">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,sort,URL,title,m,y,x,ob,total,sql,f,ftxt,d,cats,cnt,t,tcol,ttxt,vc,maxd,msql
vc=1
Call openEnigmaRs(con,rs)
maxd=MSdate(con.Execute("SELECT MAX(d) FROM vehiclefuel").Fields(0))

f=getInt("f",1) 'frequency 1=monthly 2=yearly
ftxt=IIF(f=1,"Month","Year")

cats=con.Execute("SELECT ID,des FROM enginesize WHERE ID>1").GetRows
cnt=Ubound(cats,2)

sort=Request("sort")
For x=0 to cnt
	If sort="f"&x&"dn" Then ob="f"&x&" DESC"
	If sort="f"&x&"up" Then ob="f"&x
	If sort="fs"&x&"dn" Then ob="fs"&x&" DESC"
	If sort="fs"&x&"up" Then ob="fs"&x
Next
Select case sort
	Case "totdn" ob="n DESC,d"
	Case "totup" ob="n,d"
	Case "datup" ob="d"
	Case "","datdn" ob="d DESC"
End Select

t=GetInt("t",0)
If t=0 Then
	ttxt="first registrations"
	tcol="FR"
Else
	ttxt="total registered"
	tcol="totReg"
End If

For x=0 to cnt
	sql=sql&",SUM("&tcol&"*(engID="&cats(0,x)&"))f"&x&",SUM("&tcol&"*(engID="&cats(0,x)&"))*100/SUM("&tcol&")fs"&x
Next
rs.Open "SELECT Max(d)d,SUM("&tcol&")n "&sql&" FROM veengine "&_
	IIF(t=0,"GROUP BY "&IIF(f=2,"YEAR(d)","d"),IIF(f=2,"WHERE MONTH(d)=12 OR d="&sqv(maxd),"")&" GROUP BY d")&" ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?f="&f&"&amp;t="&t
title="HK Private Cars: "&ttxt&" by engine size and "&Lcase(ftxt)
%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,0,8)%>
<p>This page shows either first registrations in a period, or total registered at period-end, for HK private cars with internal combustion engines by engine size 
in litres, using data from the Transport Department. 
This matters because different
<a href="https://www.td.gov.hk/en/public_services/licences_and_permits/fees_and_charges/index.html" target="_blank">
annual licence fees</a> apply based on engine size. For periods after 2016-05, click on the <%=Lcase(ftxt)%> 
to see the a breakdown by fuel and body type. If a vehicle is registered but not 
licensed then it is not allowed on public roads and may have already been 
scrapped. There are no separate data for licensed private cars by engine size.</p>
<form method="get" action="veengine.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Show <%=makeSelect("t",t,"0,First registrations,1,Total registered",True)%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable fcl">
	<tr class="yscroll">
		<th><%SL ftxt,"datdn","datup"%></th>
		<%For x=0 to cnt%>
			<th><%SL cats(1,x),"f"&x&"dn","f"&x&"up"%></th>
		<%Next%>
			<th class="colHide1"><%SL "Total","totdn","totup"%></th>
		<%For x=0 to cnt%>
			<th class="colHide1"><%SL cats(1,x)&" share %","fs"&x&"dn","fs"&x&"up"%></th>
		<%Next%>
	</tr>
	<%Do Until rs.EOF
		d=MSdate(rs("d"))
		y=Year(d)
		m=IIF(f=1,Month(d),0)%>
		<tr>
			<%If y>2016 Or (y=2016 And (m=0 Or m>4)) Then%>
				<td class="nowrap"><a href="vedet.asp?vc=1&amp;y=<%=y%>&amp;m=<%=m%>"><%=Left(d,7)%></a></td>
			<%Else%>
				<td><%=Left(d,7)%></td>
			<%End If%>
			<%For x=0 to cnt%>
				<td><%=FormatNumber(rs("f"&x),0)%></td>
			<%Next%>
			<td class="colHide1"><%=FormatNumber(rs("n"),0)%></td>
			<%For x=0 to cnt%>
				<td class="colHide1"><%If isNull(rs("fs"&x)) Then Response.Write "NA" Else Response.Write FormatNumber(rs("fs"&x),2)%></td>
			<%Next%>
		</tr>
	<%rs.MoveNext
	Loop
	rs.Close%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>