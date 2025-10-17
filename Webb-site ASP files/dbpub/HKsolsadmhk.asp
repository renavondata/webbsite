<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%Dim title,tot,cum,arr,x,years,p,con,rs,sql
Call openEnigmaRs(con,rs)
p=getIntRange("p",0,1,5)
If p=0 Then
	title="All solicitors"
Else
	sql=" AND post="&p
	title=con.Execute("SELECT LStxt FROM lsroles WHERE ID="&p).Fields(0)&"s"
End If
tot=Clng(con.Execute("SELECT count(distinct lsppl) FROM lsposts WHERE not dead"&sql).Fields(0))
title=title&" in HK law firms by year of admission to HK"
arr=con.Execute("SELECT Year(admHK) AS year,Count(DISTINCT lsppl) AS count FROM lsposts ps JOIN lsppl p ON ps.lsppl=p.lsid WHERE not ps.dead"&sql&" GROUP BY Year(admHK)").getRows
years=Ubound(arr,2)%>
<script type="text/javascript">
google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
	var data1 = new google.visualization.DataTable();
	data1.addColumn('number', 'Year');
	data1.addColumn('number', 'Number');
	data1.addRows([
    	<%for x=0 to years%>
		   	[<%=arr(0,x)%>,<%=arr(1,x)%>],
    	<%Next%>
    ]); 
    var options1={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		format: '####',
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
}
</script>
<title><%=title%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call solsBar(p,2)%>
<form method="get">
	<p>Role: <%=arrSelectZ("p",p,con.Execute("SELECT ID,LStxt FROM lsroles WHERE ID<>4").GetRows,True,True,0,"All")%></p>
</form>
<p>Click and drag to zoom, right-click to reset.</p>
<div id="chart1" class="chart"></div>
<p>This table groups all current HK Solicitors associated with HK Solicitors' Firms seen in the 
<a href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/mem_withcert.asp" target="_blank">Law Society's Law List</a> by year of admission.</p>
<table class="numtable center">
	<tr>
		<th>Year</th>
		<th>Number</th>
		<th>Cumul-<br>ative</th>
		<th>Cumul-<br>ative %</th>	
	</tr>
	<%For x=0 to Ubound(arr,2)
		cum=cum+Clng(arr(1,x))%>
		<tr>
			<td><%=arr(0,x)%></td>
			<td><%=arr(1,x)%></td>
			<td><%=cum%></td>
			<td><%=FormatPercent(cum/tot,2)%></td>
		</tr>
	<%Next
Call CloseConRs(con,rs)%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>