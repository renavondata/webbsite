<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<%Dim title,x,arr,incTot,disTot,years,t,otStr,total,con,rs,typeName,y
Call openEnigmaRs(con,rs)
t=getInt("t",-1)
title="HK companies"
If t>0 Then
	typeName=con.Execute("SELECT IFNULL((SELECT typeName FROM orgtypes WHERE orgType="&t&"),'')").Fields(0)
	If typeName>"" Then title=title&": "&typeName
	otStr=" AND orgtype="&t
End If
arr=con.Execute("WITH RECURSIVE dates(d) AS (SELECT '1865-01-01' UNION ALL SELECT d + INTERVAL 1 YEAR FROM dates WHERE d + INTERVAL 1 YEAR <= '"&Year(Date)&"-01-01')"&_
	"SELECT d,IFNULL(incCnt,0)inc,IFNULL(disCnt,0)dis FROM dates LEFT JOIN "&_
	"(SELECT COUNT(*)incCnt,YEAR(incDate)y FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&" GROUP BY y)inc ON YEAR(d)=inc.y LEFT JOIN "&_
	"(SELECT COUNT(*)disCnt,YEAR(disDate)y FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&" GROUP BY y)dis ON YEAR(d)=dis.y").GetRows
years=Ubound(arr,2)%>
<script type="text/javascript">
google.charts.load('current', {packages:['corechart']});
//google.load("visualization", "1", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
//google.setOnLoadCallback(drawChart);
function drawChart() {
	var data1 = new google.visualization.DataTable();
	data1.addColumn('number', 'Year');
	data1.addColumn('number', 'Incorporated');
	data1.addColumn('number', 'Dissolved'); 
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
    	<%for x=0 to years%>
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
<ul class="navlist">
	<li class="livebutton">Yearly</li>
	<li><a href="incHKmonth.asp?t=<%=t%>">Monthly</a></li>
</ul>
<div class="clear"></div>
<p>This page shows the number of companies newly-incorporated and dissolved in HK per year, 
on a gross and net basis. 
Earliest records from the 19th century are understated due to lost records of 
dissolved companies. Registration was not required until 1911. Click and drag to zoom, 
right-click to reset. You can select the type of company below, but keep in mind 
that this is based on their latest recorded status, so for example, a company 
that is no longer listed on the stock exchange will no longer be categorised as 
a listed company.</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<form method="get" action="incHKannual.asp">
	<div class="inputs">
		Company type: <%=arrSelectZ("t",t,con.Execute("SELECT orgType,typeName FROM orgtypes WHERE orgType IN(1,19,21,26,28)").GetRows,True,True,0,"Any type")%>
		<%Call CloseConRs(con,rs)%>
	</div>
<div class="clear"></div>
</form>
<div id="chart1" class="chart"></div>
<p></p>
<div id="chart2" class="chart"></div>
<p></p>
<div id="chart3" class="chart"></div>
<p></p>
<p>There is 1 company with an unknown incorporation date, number 699, "The General Commercial Company, Limited", dissolved on 20-Aug-1926. 
The company migrated from the Shanghai register and the HK Companies Registry 
has been unable to determine when it was incorporated. </p>
<%=mobile(3)%>
<table class="numtable center yscroll">
	<tr>
		<th>Year</th>
		<th>Inc.</th>
		<th>Diss.</th>
		<th>Net</th>
		<th class="colHide3">Total<br>inc.</th>
		<th class="colHide3">Total<br>diss.</th>
		<th>Net<br>alive</th>
	</tr>
	<%For x=0 to years
		incTot=incTot+CLng(arr(1,x))
		disTot=disTot+CLng(arr(2,x))
		y=Year(arr(0,x))
		%>
		<tr>
			<td><%=arr(0,x)%></td>
			<td><a href="incHKcaltype.asp?y=<%=y%>&amp;t=<%=t%>"><%=FormatNumber(arr(1,x),0)%></a></td>
			<td><a href="disHKcaltype.asp?y=<%=y%>&amp;t=<%=t%>"><%=FormatNumber(arr(2,x),0)%></a></td>
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