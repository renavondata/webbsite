<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%Dim title,x,arr,incTot,disTot,years,total,con,rs
Call openEnigmaRs(con,rs)
title="Non-HK companies in HK"
arr=con.Execute("WITH RECURSIVE dates(d) AS (SELECT '1946-01-01' UNION ALL SELECT d+INTERVAL 1 YEAR FROM dates WHERE d+INTERVAL 1 YEAR<='"&Year(Date)&"-01-01')"&_
	"SELECT d,IFNULL(regCnt,0)reg,IFNULL(cesCnt,0)ces FROM dates LEFT JOIN "&_
	"(SELECT COUNT(*)regCnt,YEAR(regDate)y FROM organisations JOIN freg ON personID=orgID WHERE hostDom=1 AND regID RLIKE '^F[0-9]' GROUP BY y)reg ON YEAR(d)=reg.y LEFT JOIN "&_
	"(SELECT COUNT(*)cesCnt,YEAR(LEAST(IFNULL(cesDate,disDate),IFNULL(disDate,cesDate)))y FROM organisations JOIN freg ON personID=orgID "&_
	"WHERE hostDom=1 AND regID RLIKE '^F[0-9]' GROUP BY y)ces ON YEAR(d)=ces.y").GetRows
years=Ubound(arr,2)
Call CloseConRs(con,rs)%>
<script type="text/javascript">
  google.load("visualization", "1", {packages:["corechart"]});
  google.setOnLoadCallback(drawChart);
  function drawChart() {
	var data1 = new google.visualization.DataTable();
	data1.addColumn('number', 'Year');
	data1.addColumn('number', 'Registered');
	data1.addColumn('number', 'Departed/dissolved'); 
	data1.addRows([
    	<%For x=0 to years%>
	    	[<%=arr(0,x)%>,<%=arr(1,x)%>,<%=-CLng(arr(2,x))%>],
    	<%Next%>
    	]); 
    var options1={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		format: '',
    		maxValue: <%=arr(0,years)%>
    		},
    	vAxis: {baseline:0},
    	isStacked:true,
	   	explorer: {
	   		actions: ['dragToZoom', 'rightClickToReset'],
	   		axis:'horizontal'
	   		},
    	legend:{position:'in'},
    	};
	var chart1 = new google.visualization.ColumnChart(document.getElementById('chart1'));
	chart1.draw(data1,options1);
	var data2 = new google.visualization.DataTable();
	data2.addColumn('number', 'Year');
	data2.addColumn('number', 'Net change');
	data2.addRows([
    	<%For x=0 to years%>
	    	[<%=arr(0,x)%>,<%=CLng(arr(1,x))-CLng(arr(2,x))%>],
    	<%Next%>
    	]); 
    var options2={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: 'Net change in <%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		format: '',
    		},
    	vAxis: {baseline:0},
	   	explorer: {
	   		actions: ['dragToZoom', 'rightClickToReset'],
	   		axis:'horizontal'
	   		},
    	legend:{position:'in'},
    	};
	var chart2 = new google.visualization.ColumnChart(document.getElementById('chart2'));
	chart2.draw(data2,options2);
	var data3 = new google.visualization.DataTable();
	data3.addColumn('number', 'Year');
	data3.addColumn('number', 'Total');
	data3.addRows([
    	<%For x=0 to years
    		total=total+CLng(arr(1,x))-CLng(arr(2,x))%>
	    	[<%=arr(0,x)%>,<%=total%>],
    	<%Next%>
    	]); 
    var options3={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: 'Total <%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		format: '',
    		},
    	vAxis: {baseline:0},
	   	explorer: {
	   		actions: ['dragToZoom', 'rightClickToReset'],
	   		axis:'horizontal'
	   		},
    	legend:{position:'in'},
    	};
	var chart3 = new google.visualization.ColumnChart(document.getElementById('chart3'));
	chart3.draw(data3,options3);
    }
</script>

<title><%=title%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the number of non-HK companies registered and dissolved/departed in HK per year. 
A company which ceases to be registered in HK may still carry on business 
elsewhere, or it may later dissolve. Click and drag to zoom, 
double-click to reset.</p>
<p>Note: data on deregistrations are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new registrations 
and name-changes, without stating domicile.</p>
<div id="chart1"></div>
<p></p>
<div id="chart2"></div>
<p></p>
<div id="chart3"></div>
<p></p>
<%=mobile(3)%>
<table class="numtable center">
	<tr>
		<th>Year</th>
		<th>Reg.</th>
		<th>Dep./<br>Diss.</th>
		<th>Net</th>
		<th class="colHide3">Total<br/>reg.</th>
		<th class="colHide3">Total<br/>dep./<br>diss.</th>
		<th>Net alive</th>
	</tr>
	<%For x=0 to years
		incTot=incTot+CLng(arr(1,x))
		disTot=disTot+CLng(arr(2,x))
		%>
		<tr>
			<td><%=Year(arr(0,x))%></td>
			<td><a href="incFcal.asp?y=<%=Year(arr(0,x))%>"><%=FormatNumber(arr(1,x),0)%></a></td>
			<td><a href="disFcal.asp?y=<%=Year(arr(0,x))%>"><%=FormatNumber(arr(2,x),0)%></a></td>
			<td><%=FormatNumber(CLng(arr(1,x))-CLng(arr(2,x)),0)%></td>
			<td class="colHide3"><%=FormatNumber(incTot,0)%></td>
			<td class="colHide3"><%=FormatNumber(disTot,0)%></td>
			<td><%=FormatNumber(incTot-disTot,0)%></td>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>