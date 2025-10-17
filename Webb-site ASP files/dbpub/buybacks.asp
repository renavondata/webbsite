<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim ob,sort,URL,x,e,eTxt,f,value,shares,settleDate,i,n,p,u,con,rs,sql,denom,datefields,stake,os,vwap,datedn,osd
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
sort=Request("sort")
f=Request("f") 'frequency
u=getBool("u") 'unajdusted for splits and bonus issues
e=getBool("e") 'show buy-back method
If Not u Then denom="/splitadj("&i&",osd)"
If f<>"d" and f<>"m" and f<>"y" Then f="d"
If e Then eTxt=",exchName"

datefields=IIF(f="d","effDate","y")&IIF(f="m",",m","")
datedn=IIF(f="d","effDate DESC","y DESC")&IIF(f="m",",m DESC","")
Select case sort
	Case "dateup" ob=dateFields&",currency"&eTxt
	Case "shrsup" ob="shares,"&dateFields
	Case "shrsdn" ob="shares DESC,"&datedn
	Case "valuup" ob="currency,value,"&datefields
	Case "valudn" ob="currency,value DESC,"&datedn
	Case "currup" ob="currency,"&datedn&eTxt
	Case "currdn" ob="currency DESC,"&datefields&eTxt
	Case "pricup" ob="currency,price,"&datedn
	Case "pricdn" ob="currency,price DESC,"&datedn
	Case "stkdn" ob="stake DESC,"&datedn
	Case "stkup" ob="stake,"&dateFields
	Case Else
		sort="datedn"
		ob=datedn&",currency"&eTxt
End Select

rs.Open "SELECT "&datefields&eTxt&IIF(f="d",",ccass.settleDate(EffDate)settleDate","")&",shares,value,currency,osd,"&_
	"outstanding"&denom&" os,shares*100/(outstanding"&denom&") stake,value/shares price FROM "&_
	"(SELECT *,(SELECT Max(atDate) FROM issuedshares WHERE issueID="&i&" AND atDate<="&_
	IIF(f="d","effDate",IIF(f="y","MAKEDATE(y,1)","CONCAT(y,'-',m,'-',1)"))&")osd FROM "&_
	"(SELECT "&IIF(f="d","effDate","YEAR(effDate)y")&IIF(f="m",",MONTH(effDate)m","")&",SUM(shares)shares,SUM(value)value,currency,exchName FROM "&_
	IIF(u,"WebBuyBacks","buybacksAdj")&" WHERE issueID="&i&" GROUP BY "&datefields&eTxt&",currency)t)u "&_
	"LEFT JOIN issuedshares i ON i.issueID="&i&" AND u.osd=i.atDate ORDER BY "&ob,con
URL=Request.ServerVariables("URL")&"?i="&i&"&amp;u="&u&"&amp;e="&e%>
<title>Buybacks: <%=n%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2>Buybacks</h2>
	<p><b><%=n%></b></p>
<%Else
	Call orgBar(n,p,0)
	Call stockBar(i,1)%>
	<ul class="navlist">
		<%=writeBtns(f,"d,m,y","Daily,Monthly,Yearly",URL&"&amp;sort="&sort&"&amp;f=")%>
		<li><a href="buybacksum.asp?u=<%=u%>&amp;y=<%=Year(Date)&"&amp;m="&IIF(f="y","0",Month(Date)&"&amp;d="&IIF(f="m","0",Day(Date)))%>">All stocks</a></li>
	</ul>
	<div class="clear"></div>
<%End If%>
<form method="get" action="buybacks.asp">
	<input type="hidden" name="f" value="<%=f%>">
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="hidden" name="i" value="<%=i%>">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
		<%=checkbox("u",u,True)%> Show unadjusted for splits and bonus shares
		<%=checkbox("e",e,True)%> Show method
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<%If i>0 Then%>
	<h2>Buybacks</h2>
	<%If Not rs.EOF Then
		URL=URL&"&amp;f="&f%>
		<p>In the daily list, click on the date to see CCASS movements on the settlement date.</p>
		<%=mobile(1)%>
		<table class="numtable yscroll">
			<tr>
				<th class="colHide1">Row</th>
				<th><%SL IIF(f="d","Date",IIF(f="y","Year","Month")),"datedn","dateup"%></th>
				<th class="colHide3"><%SL "Number","shrsdn","shrsup"%></th>
				<th><%SL "Value","valudn","valuup"%></th>
				<th><%SL "Curr.","currup","currdn"%></th>
				<th><%SL "Av.<br>price","pricdn","pricup"%></th>
				<th class="colHide2">Out-<br>standing</th>
				<th class="colHide2">at Date</th>
				<th class="colHide3"><%SL "Stake %","stkdn","stkup"%></th>
				<%If e Then%>
					<th class="colHide3">Method</th>
				<%End If%>
			</tr>
			<%Do Until rs.EOF
				x=x+1
				value=rs("value")
				If isNull(value) then value=0
				shares=CLng(rs("shares"))
				vwap=rs("price")
				If Not isNull(vwap) Then vwap=FormatNumber(vwap,3) Else vwap="-"
				os=rs("os")
				If Not isNull(os) Then os=FormatNumber(os,0) Else os="-"
				stake=rs("stake")
				If Not isNull(stake) Then stake=FormatNumber(stake,3) Else stake="-"
				%>
				<tr>
					<td class="colHide1"><%=x%></td>
					<td style="white-space:nowrap">
					<%If f="m" then
						Response.Write dateYMD(rs("y"),rs("m"),0)
					ElseIf f="y" then
						Response.Write rs("y")
					Else
						settleDate=rs("settleDate")
						If Date()>settleDate Then%>
							<a href="/ccass/chldchg.asp?i=<%=i%>&d=<%=MSdate(settleDate)%>"><%=MSdate(rs("EffDate"))%></a>
						<%Else%>
							<%=MSdate(rs("EffDate"))%>
						<%End If%>
					<%End If%>
					</td>
					<td class="colHide3"><%=FormatNumber(shares,0)%></td>
					<td><%=FormatNumber(value,0)%></td>
					<td><%=rs("Currency")%></td>
					<td><%=vwap%></td>
					<td class="colHide2"><%=os%></td>
					<td class="colHide2"><%=MSdate(rs("osd"))%></td>
					<td class="colHide3"><%=stake%></td>
					<%If e Then%>
						<td class="colHide3"><%=rs("exchName")%></td>
					<%End If%>
				</tr>
				<%rs.MoveNext
			Loop
			rs.Close
			rs.Open "SELECT os"&denom&" os,osd FROM (SELECT outstanding os,atDate osd FROM issuedShares WHERE issueID="&i&_
				" AND atDate<=(SELECT min(effDate) FROM WebBuyBacks WHERE issueID="&i&") ORDER BY atDate DESC LIMIT 1)t",con
			If Not rs.EOF Then
				os=rs("os")
				osd=rs("osd")
			Else
				os=Null
			End If
			rs.Close
			If Not isNull(os) Then os=CDbl(os) Else os=0
			rs.Open "SELECT SUM(shares)shares,SUM(value)value,currency,SUM(value)/SUM(shares)price FROM "&_
				IIF(u,"WebBuybacks","buybacksAdj")&" WHERE issueID="&i&" GROUP BY currency",con
			Do Until rs.EOF
				shares=rs("shares")
				If Not isNull(shares) Then shares=FormatNumber(shares,0) Else shares="-"
				value=rs("value")
				If Not isNull(value) Then value=FormatNumber(value,0) Else value="-" 
				vwap=rs("price")
				If Not isNull(vwap) Then vwap=FormatNumber(vwap,3) Else vwap="-"
				%>
				<tr class="total"><td>Total</td>
					<td class="colHide1"></td>
					<td class="colHide3"><%=shares%></td>
					<td><%=value%></td>
					<td><%=rs("currency")%></td>
					<td><%=vwap%></td>
					<%If os>0 Then%>
						<td class="colHide2"><%=FormatNumber(os,0)%></td>
						<td class="colHide2"><%=MSdate(osd)%></td>
						<td class="colHide2"><%=FormatNumber(shares*100/os,3)%></td>
					<%Else%>
						<td class="colHide2" colspan="3"></td>
					<%End If%>
				</tr>
				<%rs.MoveNext
			Loop
			rs.Close%>
			</table>
	<%Else%>
		<p><b>None found.</b></p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
