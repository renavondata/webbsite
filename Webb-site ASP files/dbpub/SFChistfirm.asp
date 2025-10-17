<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%Dim URL,ROs,reps,total,d,atDate,tyear,tmonth,lastm,person,name,freq,SFCID,arr(),x,rows,act,actName,con,rs
Call openEnigmaRs(con,rs)
URL=Request.ServerVariables("URL")
person=getLng("p",0)
freq=Request("f")
If freq<>"m" Then freq="y"
act=getLng("a",Session("act"))
If act="" Then act=0
Session("act")=act
If act>0 Then actName=con.Execute("SELECT * FROM activity WHERE ID="&act).Fields("actName") Else	actName="All activities"
name=fNameOrg(person)
If person<>0 Then
	tyear=Year(Date())
	x=0
	If freq="m" Then
		tmonth=Month(Date())
		lastm=1
		For tyear=tyear to 2003 step -1
			For tmonth=tmonth To lastm step -1
				d=DateSerial(tyear,tmonth,MonthEnd(tmonth,tyear))
				If d>Date() Then d=Date()
				Redim Preserve arr(3,x) 
				arr(0,x)=d
				x=x+1
			Next
			tmonth=12
			If tyear=2004 then lastm=3' for 2003 only go back to 31-Mar
		Next
	Else
		tmonth=12
		For tyear=tyear to 2003 step -1
			d=DateSerial(tyear,tmonth,MonthEnd(tmonth,tyear))
			If d>Date() Then d=Date()
			Redim Preserve arr(3,x) 
			arr(0,x)=d
			x=x+1
		Next
		Redim Preserve arr(3,x)
		arr(0,x)=#2003/3/31#
	End If
	For x=0 to Ubound(arr,2)
		d=arr(0,x)
		arr(0,x)=MSdate(d)			
		d=MSdate(d)
		rs.Open "SELECT COUNT(DISTINCT staffID) AS total,IFNULL(SUM(role=1),0) AS ROs FROM "&_
			"(SELECT DISTINCT staffID,role FROM licrec WHERE orgID="&person&_ 
			" AND (ISNULL(endDate) or endDate>'"&d&"') AND (isNull(startDate) OR startDate<='"&d& "')"&_
			IIF(act>0," AND actType="&act,"")&")t1",con
		ROs=rs("ROs")
		If isNull(ROs) Then ROs=0 Else ROs=CInt(ROs)
		arr(1,x)=ROs
		total=rs("total")
		If isNull(total) Then total=0 Else total=CInt(total)
		arr(2,x)=total-ROs
		If total<>0 Then arr(3,x)=CDbl((total-ROs)/total) Else arr(3,x)=0
		rs.Close
	Next
	'trim left side if zero entries
	x=x-1
	If x>0 And arr(1,x)+arr(2,x)=0 Then
		For x=Ubound(arr,2) to 1 step -1
			If arr(1,x-1)+arr(2,x-1)>0 Then exit For
			Redim Preserve arr(3,x-1)
		Next
	End If	
	rows=x+1%>
    <script type="text/javascript">
	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Date');
		data.addColumn('number', 'Licensees');
		data.addRows(<%=rows%>);
		<%for x=0 to rows-1%>
	        data.setValue(<%=x%>,0,'<%=arr(0,rows-1-x)%>');
	        data.setValue(<%=x%>,1,<%=arr(1,rows-1-x)+arr(2,rows-1-x)%>);
        <%Next%>
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, {
	    	chartArea: {width:'85%',height:'75%',left:'10%'},
        	title: 'Number of licensees: <%=actName%>',titleTextStyle:{fontSize:18},
        	backgroundColor: {strokeWidth:2,stroke:'blue'},
        	vAxis: {baseline:0},
			legend:'none'
			}
		);
	}
    </script>
<%End If%>
<title>SFC licensee history of:&nbsp;<%=name%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<%Call officersBar(name,person,3)%>
<%=writeNav(freq,"m,y","Monthly,Yearly",URL&"?p="&person&"&amp;f=")%>
<form method="get" action="SFChistfirm.asp">
	<input type="hidden" name="f" value="<%=freq%>">
	<input type="hidden" name="p" value="<%=person%>">
	<div class="inputs">
		Activity type: <%=arrSelectZ("a",act,con.Execute("SELECT ID,actName FROM activity ORDER BY actName").getRows,True,True,0,"All")%>
	</div>
	<div class="clear"></div>
</form>
<%Call CloseConRs(con,rs)%>
<p>This page shows the historic number of SFC licensees for a firm. Licensees 
are either Responsible Officers (<strong>ROs</strong>) or Representatives (<strong>Reps</strong>). 
When Activity is set to "All", we treat a person who holds both roles (in different 
activities) as 
an RO. The Reps v total is a measure of how bottom-heavy a firm is, because the 
ROs are supposed to supervise the Reps. For other firms,
<a href="SFClicount.asp?a=<%=act%>">click here</a>. For the total in all firms,
<a href="SFChistall.asp?a=<%=act%>">click here</a>. Note that due to a 
transitional period which ended on 31-Mar-2005, many licenses in some activities 
were surrendered or not extended beyond that date.</p>
<div class="chart" id="chart_div"></div>
<p></p>
<table class="numtable center">
	<tr>
		<th>Date</th>
		<th>ROs</th>
		<th>Reps</th>
		<th>Total</th>
		<th>Reps v total</th>
	</tr>
	<%If name<>"FIRM NOT FOUND" Then
		For x=0 to Ubound(arr,2)%>
			<tr>
				<td><a href="SFClicensees.asp?p=<%=person%>&a=<%=act%>&d=<%=arr(0,x)%>"><%=arr(0,x)%></a></td>
				<td><%=arr(1,x)%></td>
				<td><%=arr(2,x)%></td>
				<td><%=arr(1,x)+arr(2,x)%></td>
				<td><%=FormatPercent(arr(3,x),2)%></td>
			</tr>
		<%Next
	End If%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
