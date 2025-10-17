<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<%Dim title,x,arr,pxtypes,ports,t,p,where,pxName,portName,con,rs
Call openEnigmaRs(con,rs)
t=getInt("t",0)
p=getInt("p",0)
rs.Open "SELECT 0 ID,'All passengers' name UNION SELECT ID,name FROM hkpxtypes ORDER BY ID",con
pxtypes=rs.getRows()
rs.Close
rs.Open "SELECT 0 ID,'All ports' name UNION (SELECT ID,name FROM hkports ORDER BY name)",con
ports=rs.getRows()
rs.Close
pxName=con.Execute("SELECT name FROM (SELECT 0 ID,'All passengers' name UNION SELECT ID,name FROM hkpxtypes) t1 WHERE ID="&t).Fields(0)
portName=con.Execute("SELECT name FROM(SELECT 0 ID,'All ports' name UNION SELECT ID,name FROM hkports) t1 WHERE ID="&p).Fields(0)
title="Passenger traffic: "&pxName&", "&portName
If t>0 Then	where=" AND pxType="&t
If p>0 Then where=where & " AND port="&p
rs.Open "SELECT d,sum(arrivals) as arrive, sum(departures) as depart FROM hkpx WHERE 1=1 "&where&" GROUP BY d ORDER BY d", con
arr=rs.GetRows
Call closeConRs(con,rs)%>
<script type="text/javascript">
google.charts.load('current', {packages:['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	var data1 = new google.visualization.DataTable();
	data1.addColumn('date', 'Date');
	data1.addColumn('number', 'Arrived');
	data1.addColumn('number', 'Departed'); 
	data1.addRows([
    	<%for x=0 to ubound(arr,2)%>
		   	[new Date('<%=MSdate(arr(0,x))%>'),<%=arr(1,x)%>,<%=-CLng(arr(2,x))%>],
    	<%Next%>
    ]); 
    var options1={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		format: '',
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
	data2.addColumn('date', 'Date');
	data2.addColumn('number', 'Net change');
	data2.addRows([
    	<%for x=0 to ubound(arr,2)%>
	    	[new Date('<%=MSdate(arr(0,x))%>'),<%=CLng(arr(1,x))-CLng(arr(2,x))%>],
    	<%Next%>
    	]); 
    var options2={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%> net in/(out)',
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
}
</script>
<title><%=title%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the daily number of passengers (but not crew) crossing Hong Kong border 
Control Points, since the Immigration Department began
<a href="https://www.immd.gov.hk/eng/message_from_us/stat_menu.html">publishing data</a> on 24-Jan-2020. 
Their data are in the form of daily snapshots, so we've converted that into time 
series. The quarantine era for arrivals from mainland 
China began on 8-Feb-2020, for places outside Greater China on 19-Mar-2020 and 
for Macao and Taiwan on 25-Mar-2020 as <a href="../articles/COVID2.asp">detailed 
here</a>.</p>
<p>Data are
<a href="https://www.immd.gov.hk/eng/message_from_us/stat_menu.html" target="_blank">
sourced from</a> the HK Immigration Department daily. It is unclear whether 
various quarantine-exempted persons, such as goods vehicle drivers and sailors 
are included. In the case of sailors on crew rotation, they may arrive as air passengers and 
depart as sailors, only being counted on arrival, or vice versa. If each sailor 
arriving by air replaces an existing one who flies out, then they should net 
out.</p>
<form method="get" action="hkpaxGoogle.asp">
	<div class="inputs">Passenger type: <%=arrSelect("t",t,pxtypes,True)%></div>
	<div class="inputs">Port: <%=arrSelect("p",p,ports,True)%></div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<p>Click and drag on the chart to zoom in. Right-click to zoom out.</p>
<div id="chart1" class="chart"></div>
<p></p>
<div id="chart2" class="chart"></div>
<p></p>
<table class="numtable center">
	<tr>
		<th class="left">Date</th>
		<th>Arrived</th>
		<th>Departed</th>
		<th>Net in/(out)</th>
	</tr>
	<%For x=ubound(arr,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr(0,x))%></td>
			<td><%=FormatNumber(arr(1,x),0)%></td>
			<td><%=FormatNumber(arr(2,x),0)%></td>
			<td><%=FormatNumber(CLng(arr(1,x))-CLng(arr(2,x)),0)%></td>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>