<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%Dim title,x,arr,incTot,disTot,years,t,ot,otStr,types,total,lastM,lastY,months,con,rs,typeName,sql,endm,y,m
Call openEnigmaRs(con,rs)
t=getInt("t",-1)
title="HK companies"
If t>0 Then 
	typeName=con.Execute("SELECT IFNULL((SELECT typeName FROM orgtypes WHERE orgType="&t&"),'')").Fields(0)
	If typeName>"" Then title=title&": "&typeName
	otStr=" AND orgtype="&t
End If
const startm="1985-01-01"
endm=dateYMD(Year(Date),Month(Date),1)

t=Request("t")
incTot=CLng(con.Execute("SELECT COUNT(*) FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&" AND (isNull(incDate) OR incDate<'"&startm&"')").Fields(0))
disTot=CLng(con.Execute("SELECT COUNT(*) FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&" AND disDate<'"&startm&"'").Fields(0))
total=incTot-disTot

arr=con.Execute("WITH RECURSIVE dates(d) AS (SELECT '"&startm&"'  UNION ALL SELECT d + INTERVAL 1 MONTH FROM dates WHERE d + INTERVAL 1 MONTH <= '"&endm&"')"&_
	"SELECT d,IFNULL(incCnt,0)inc,IFNULL(disCnt,0)dis FROM dates LEFT JOIN "&_
	"(SELECT COUNT(*)incCnt,DATE_SUB(incDate, INTERVAL DAY(incDate)-1 DAY)Mstart FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&_
	" AND incDate>='"&startm&"' GROUP BY Mstart )inc ON dates.d=inc.Mstart LEFT JOIN "&_
	"(SELECT COUNT(*)disCnt,DATE_SUB(disDate, INTERVAL DAY(disDate)-1 DAY)Mstart FROM organisations WHERE domicile=1 AND incID RLIKE '^[0-9]'"&otStr&_
	" AND disDate>='"&startm&"' GROUP BY Mstart)dis ON dates.d=dis.Mstart").GetRows
months=Ubound(arr,2)%>
<script type="text/javascript">
  google.load("visualization", "1", {packages:["corechart"]});
  google.setOnLoadCallback(drawChart);
  function drawChart() {
  	var pretty=new google.visualization.DateFormat({pattern: "MMM yyyy"});
	var data1 = new google.visualization.DataTable();
	data1.addColumn('date', 'Month');
	data1.addColumn('number', 'Incorporated');
	data1.addColumn('number', 'Dissolved'); 
	data1.addRows([
    	<%for x=0 to months%>
	    	[new Date('<%=arr(0,x)%>'),<%=arr(1,x)%>,<%=-CLng(arr(2,x))%>],
    	<%Next%>
    	]); 
    pretty.format(data1,0);
    var options1={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
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
	data2.addColumn('date', 'Month');
	data2.addColumn('number', 'Net change');
	data2.addRows([
    	<%for x=0 to months%>
	    	[new Date('<%=arr(0,x)%>'),<%=CLng(arr(1,x))-CLng(arr(2,x))%>],
    	<%Next%>
    	]); 
    pretty.format(data2,0);
    var options2={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: 'Net change in <%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
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
	data3.addColumn('date', 'Month');
	data3.addColumn('number', 'Total');
	data3.addRows([
    	<%For x=0 to months
    		total=total+CLng(arr(1,x))-CLng(arr(2,x))%>
	    	[new Date('<%=arr(0,x)%>'),<%=total%>],
    	<%Next%>
    	]);
	pretty.format(data3,0);
    var options3={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: 'Total <%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
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
	<li><a href="incHKannual.asp?t=<%=t%>">Yearly</a></li>
	<li class="livebutton">Monthly</li>
</ul>
<div class="clear"></div>
<p>This page shows the number of companies newly-incorporated and dissolved in HK per 
month since <%=Year(startm)%>, 
on a gross and net basis. 
Click and drag to zoom, 
right-click to reset. You can select the type of company below, but keep in mind 
that this is based on their latest recorded status, so for example, a company 
that is no longer listed on the stock exchange will no longer be categorised as 
a listed company. Dissolutions data lag by about 2 weeks as it 
takes that long to check all companies. There was an expiry of a waiver of business Registration fees 
at the end of 31-Mar-2003, 31-Mar-2009, 31-Jul-2011 and 31-Mar-2014, accounting for a spike in incorporations 
in those months as formation firms stocked up on shelf companies. Online 
incorporation has been allowed since 18-Mar-2011. If too many shelf companies 
are created then they may be dissolved before being used if annual fees are due.</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<form method="get" action="incHKmonth.asp">
	<div class="inputs">
		Company type: <%=arrSelectZ("t",t,con.Execute("SELECT orgType,typeName FROM orgtypes WHERE orgType IN(1,19,21,26,28)").GetRows,True,True,0,"Any type")%>
		<%Call CloseConRs(con,rs)%>
	</div>
	<div class="clear"></div>
</form>
<br>
<div id="chart1" class="chart"></div>
<p></p>
<div id="chart2" class="chart"></div>
<p></p>
<div id="chart3" class="chart"></div>
<p></p>
<%=mobile(3)%>
<table class="numtable center yscroll">
<tr>
	<th>Month</th>
	<th>Incorporated</th>
	<th>Dissolved</th>
	<th>Net</th>
	<th class="colHide3">Total<br/>incorporated</th>
	<th class="colHide3">Total<br/>dissolved</th>
	<th>Net alive</th>
</tr>
<%For x=0 to months
	incTot=incTot+CLng(arr(1,x))
	disTot=disTot+CLng(arr(2,x))
	y=Left(arr(0,x),4)
	m=Mid(arr(0,x),6,2)
	%>
	<tr>
		<td><%=Left(arr(0,x),7)%></td>
		<td><a href="incHKcaltype.asp?y=<%=y%>&amp;m=<%=m%>&amp;t=<%=t%>"><%=FormatNumber(arr(1,x),0)%></a></td>
		<td><a href="disHKcaltype.asp?y=<%=y%>&amp;m=<%=m%>&amp;t=<%=t%>"><%=FormatNumber(arr(2,x),0)%></a></td>
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