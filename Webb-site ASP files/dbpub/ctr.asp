<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<script type="text/javascript" src="dygraph-combined.js"></script>
<%Sub getIssue(i,s)
	issueID=""
	If isNumeric(s) And s<>"" Then
		If isDate(d1) Then
			'look for listing existing on that date
			rs.Open "SELECT issueID FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND (isNull(firstTradeDate) OR firstTradeDate<='"&MSDate(d1)&_
				"') AND (isNull(deListDate) OR deListDate>'"&MSDate(d1)&"') AND stockCode="&s,con
			If Not rs.EOF Then
				issueID=rs("issueID")
			Else
				'no listing, so look for first listing after that date
				rs.Close
				rs.Open "SELECT Min(firstTradeDate) AS minDate FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND firstTradeDate>='"&MSDate(d1)&"' AND stockCode="&s,con
				If Not isnull(rs("minDate")) Then
					rs1.Open "SELECT issueID FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND firstTradeDate='"&MSDate(rs("minDate"))&"' AND stockCode="&s,con
					issueID=rs1("issueID")
					rs1.Close
				End If
			End If
			rs.Close
		Else
			'no date specified, so look for current stock
			rs.Open "SELECT issueID FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND isNull(deListDate) AND stockCode="&s,con
			If Not rs.EOF Then
				issueID=rs("issueID")
			Else
				'no current listing, so get latest
				rs.Close
				rs.Open "SELECT Max(deListDate) AS maxDate FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND stockCode="&s,con
				If Not rs.EOF Then
					rs1.Open "SELECT issueID FROM stocklistings WHERE stockExID IN(1,20,22,23,38) AND deListDate='"&MSDate(rs("maxDate"))&"' AND stockCode="&s,con
					issueID=rs1("issueID")
					rs1.Close
				End If
			End If	
			rs.Close
		End If
	End If
	If issueID="" Then If isNumeric(i) And i<>"" Then issueID=i
	If issueID<>"" Then
		rs.Open "SELECT personID,name1,lastCode(ID1)lastCode,typeShort,MSdateAcc(expmat,expAcc)exp FROM issue i JOIN (organisations o,secTypes s) "&_
			"ON i.issuer=o.personID AND i.typeID=s.typeID WHERE ID1="&issueID,con
		If Not rs.EOF Then
			issCnt=issCnt+1
			issArr(0,issCnt)=issueID
			issArr(1,issCnt)=rs("lastCode")
			issArr(2,issCnt)=rs("personID")
			issArr(3,issCnt)=rs("name1")&": "&rs("typeShort")&" "&rs("exp")
		End if
		rs.Close
	End If
End Sub

Dim person,i,d1,closing,title,csv,legend,rs1,lastExDate,nextExDate,atDate,x,y,rowcount,startDateStr,dateArr,issueList,issueID,lastCode,_
	baseAdj,basePrice,rawPos,rawArr,rawCount,adjArr,factor,rel,link,issCnt,issArr(3,5),colors,cl,con,rs,sql
Call openEnigmaRs(con,rs)
colors=Split("blue green red black olive")
'issArr columns 0=issueID 1=stockCode 2=personID 3=stockName. Row 0 is unused
Set rs1=Server.CreateObject("ADODB.Recordset")
If Request("r")="" Then
	rel=getBool("rel")
	d1=Request("d1")
	If isDate(d1) Then d1=CDate(d1) Else d1=""
	If isDate(d1) And d1>Date() Then d1=DateSerial(Year(Date)-1,Month(Date),Day(Date))
	Call getIssue(Request("i1"),Request("s1"))
	Call getIssue(Request("i2"),Request("s2"))
	Call getIssue(Request("i3"),Request("s3"))
	Call getIssue(Request("i4"),Request("s4"))
	Call getIssue(Request("i5"),Request("s5"))
End If
If issCnt>0 Then
	For x=1 to issCnt
		link=link & "i"&x&"="&issArr(0,x)&"&"
	Next
	i=issArr(0,1)
	If d1="" then d1=#1-Jan-1994#
	'find earliest common date
	For x=1 to issCnt
		sql="SELECT Min(atDate) AS d1 FROM ccass.quotes WHERE issueID="&issArr(0,x)&" AND atDate>='"&MSDate(d1)&"'"
		rs.Open sql,con
		If rs("d1")>d1 Then d1=rs("d1")
		rs.Close
	Next
	startDateStr=MSDate(d1)
	'get list of dates where any stock in the list has a quote, as some dates may be missing in parallel counters
	issueList=issArr(0,1)
	For x=2 to issCnt
		issueList=issueList&","&issArr(0,x)
	Next
	rs.Open "SELECT DISTINCT atDate FROM ccass.quotes WHERE issueID IN("&issueList&") AND atDate>='"&startDateStr&"' ORDER BY atDate",con
	If Not rs.EOF Then
		dateArr=rs.getrows()
		rowcount=Ubound(dateArr,2)
		Redim adjArr(issCnt,rowcount)
		'load the dates
		For x=0 to rowcount
			adjArr(0,x)=dateArr(0,x)
		Next
		'now load the adjusted price array
		For x=1 to issCnt
			issueID=issArr(0,x)
			rs.Close
			'find last exDate on or before first day in period with a price		
			rs.Open "SELECT Max(exDate) AS maxDate FROM adjustments WHERE issueID="&issueID&_
				" AND exDate<=firstQuoteDate("&issueID&",'"&startDateStr&"')",con
			lastExDate=rs("maxDate")
			rs.Close
			If isNull(lastExDate) Then 
				'no ex-dates prior to first quote
				lastExDate=d1
				baseAdj=1
				rs1.open "SELECT exDate,cumAdjust FROM adjustments WHERE issueID="&issueID&" ORDER BY exDate",con
				If not rs1.EOF Then nextExDate=rs1("exDate")
			Else
				rs1.open "SELECT exDate,cumAdjust FROM adjustments WHERE issueID="&issueID&" AND exDate>='"&MSDate(lastExDate)&"' ORDER BY exDate",con
				'get the latest cumAdjust and move to the next adjustment after firstQuote
				nextExDate=lastExDate
				Do until rs1.EOF or nextExDate>lastExDate
					baseAdj=rs1("cumAdjust")
					rs1.MoveNext
					If Not rs1.EOF Then	nextExDate=rs1("exDate")
				Loop
			End if
			factor=1
			rs.Open "SELECT atDate,closing FROM ccass.quotes WHERE issueID="&issueID&" AND atDate>='"&startDateStr&"' ORDER BY atDate",con
			If Not rs.EOF Then
				Redim rawArr(0)
				rawArr=rs.getrows()
				'get first non-zero price as base, if any
				For y=0 to Ubound(rawArr,2)
					basePrice=rawArr(1,y)
					If basePrice<>0 Then Exit For
				Next
				closing=0
				rawPos=0
				rawCount=Ubound(rawArr,2)
				For y=0 to rowcount
					If rawPos>rawCount Then Exit For		
					atDate=adjArr(0,y)
					If rawArr(0,rawPos)=atDate Then
						'dates match
						'If atDate has reached nextExDate then pick up the next adjustment(s), if any
						Do Until rs1.EOF Or atDate<nextExDate
							factor=baseAdj/rs1("cumAdjust")
							rs1.MoveNext
							If Not rs1.EOF Then nextExDate=rs1("exDate")
						Loop
						If rawArr(1,rawPos)<>0 Then	closing=(rawArr(1,rawPos)*factor/basePrice-1)*100
						rawPos=rawPos+1
					End If
					adjArr(x,y)=closing
				Next
				'Fill out array for delisted stocks
				For y=y to rowcount
					adjArr(x,y)=closing
				Next
				rs1.Close
			End If
		Next
	End If
End If
Set rs1=Nothing
Call CloseConRs(con,rs)
title="Compare Webb-site Total Returns"%>
<link rel="stylesheet" type="text/css" href="/templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If issCnt>0 Then
	person=issArr(2,1)
	Call orgBar(title,person,0)
	Call stockBar(i,6)
Else%>
	<h2><%=Title%></h2>
<%End If%>
<ul class="navlist">
	<li><a href="TRnotes.asp" target="_blank">Notes</a></li>
	<li><a href="alltotrets.asp">All total returns</a></li>
</ul>
<div class="clear"></div>
<form method="post" action="ctr.asp">
	<%For x=1 to issCnt%>
		<input type="hidden" name="i<%=x%>" value="<%=issArr(0,x)%>">
	<%Next%>
	<%For x=1 to 5%>
		Stock <%=x%>: <input type="text" name="s<%=x%>" size="5" value="">
		<a href="str.asp?i=<%=issArr(0,x)%>" style="color:<%=colors(x-1)%>"><%=issArr(1,x)%>&nbsp;<%=issArr(3,x)%></a><br>
	<%Next%>
	<p>
		<%=checkbox("rel",rel,False)%> Show returns relative to Stock 1
		<%If issCnt=1 And rel=1 Then%><b> (please add another stock)</b><%End If%>
	</p>
	<%If issCnt>0 Then%>
		<p>Graph starts at: <%=MSDate(d1)%>. 
		<a href="ctr.asp?<%=link%>rel=<%=rel%>&amp;d1=<%=MSdate(d1)%>">Link to this graph</a></p>
	<%End If%>
	<div class="inputs">
		Start date: <input type="date" id="d1" name="d1" value="<%=startDateStr%>">
	</div>
	<div class="inputs">
		<input type="button" value="Earliest common date" onclick="d1.value='';this.form.submit()">
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" name="r" value="Reset">
	</div>
	<div class="clear"></div>
</form>
<p>Pick up to 5 HK-listed stock codes. If you want <a href="listed.asp"><strong>current stocks</strong></a> 
back to their earliest common date, then leave the date blank. 
If you want <a href="delisted.asp" target="_blank"><strong>delisted stocks</strong></a>, pick a date on which they were listed. For more help, see <b><a href="TRnotes.asp" target="_blank">the notes</a>.</b> Please 
<b><a href="../contact">report</a></b> any errors or desired features.</p>
<%If not isEmpty(adjArr) Then%>
	<div id="graphdiv" class="chart" style="width:95%"></div>
	<%If Not rel Or issCnt=1 Then
		title="Absolute Webb-site Total Returns %"
		rel=False
	Else
		title="Relative Webb-site Total Returns %"
	End If
	For x=0 to rowcount
		csv=csv & MSdate(adjArr(0,x))
		If Not rel Then
			For y=1 to issCnt
				csv=csv & "," & Round(adjArr(y,x),2)
			Next
		ElseIf adjArr(1,x)<>-100 Then
			For y=2 to issCnt
				csv=csv & "," & Round(100*((adjArr(y,x)+100)/(adjArr(1,x)+100)-1),2)
			Next
		End If
		csv=csv & "\n"
	Next
	legend="Date"
	For x=IIF(rel,1,0) to issCnt-1
		cl=cl & ",'" & colors(x) & "'"
		legend=legend & "," & issArr(1,x+1)
	Next
	cl=Right(cl,len(cl)-1)
	%>
	<script type="text/javascript">
	g = new Dygraph(
		document.getElementById("graphdiv"),
		"<%=legend%>\n"+"<%=csv%>",
		{
		title: '<%=title%>',
		colors: [<%=cl%>],
		axisLabelFontSize:12,
		yAxisLabelWidth:28,
		xPixelsPerLabel:30,
		titleHeight:24,
		labelsDivStyles: {
			'backgroundColor': 'transparent'
			}
		}
	)
	</script>
	<p></p>
	<%If issCnt>2 Then%><%=mobile(3)%><%End If%>
	<table class="numtable center yscroll">
		<tr>
			<th class="left">Date</th>
			<%For x=1 to isscnt%>
				<th <%If x>4 Then%>class="colHide3"<%End If%>>Stock<br><%=issArr(1,x)%><br>%</th>
			<%Next%>
			<%If rel Then 
				For x=2 to isscnt%>
					<th <%If issCnt>2 Then%>class="colHide3"<%End If%>>Stock<br><%=issArr(1,x)%><br>rel. %</th>
				<%Next
			End If%>
		</tr>
		<%For x=rowcount to 0 step -1%>
		<tr>
			<td><%=MSdate(adjArr(0,x))%></td>
			<%For y=1 to issCnt%>
				<td <%If y>4 Then%>class="colHide3"<%End If%>><%=FormatNumber(adjArr(y,x),2)%></td>
			<%Next
			If rel Then
				For y=2 to issCnt%>
					<td <%If issCnt>2 Then%>class="colHide3"<%End If%>><%=FormatNumber(100*((adjArr(y,x)+100)/(adjArr(1,x)+100)-1),2)%></td>
				<%Next
			End If%>
		</tr>
		<%Next%>	
	</table>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>