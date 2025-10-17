<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%Dim title,x,arr,firstYear,inc,incTot,surv,survTot,share,years,d,t,otStr,con,rs,typeName,survsh
Call openEnigmaRs(con,rs)
d=getMSdateRange("d","1865-10-12",MSdate(Date))
t=getInt("t",-1)
title="Survival of HK companies at "&d
If t>0 Then 
	typeName=con.Execute("SELECT IFNULL((SELECT typeName FROM orgtypes WHERE orgType="&t&"),'')").Fields(0)
	If typeName>"" Then title=title&": "&typeName
	otStr=" AND orgtype="&t
End If
arr=con.Execute("WITH RECURSIVE Years(y) AS (SELECT 1865  UNION ALL SELECT y+1 FROM years WHERE y+1<=Year('"&d&"'))"&_
	"SELECT y,IFNULL(cnt,0)cnt,IFNULL(survive,0)survive FROM years LEFT JOIN "&_
	"(SELECT count(*)cnt,sum(isNull(disDate) Or disDate>'2023-12-13')survive,year(incDate) incYear FROM organisations "&_
	"WHERE domicile=1"&otStr&" AND incID RLIKE '^[0-9]' AND incDate<='"&d&"' GROUP BY incYear)t ON y=t.incYear").GetRows
years=Ubound(arr,2)
%>
<script type="text/javascript">
  google.load("visualization", "1", {packages:["corechart"]});
  google.setOnLoadCallback(drawChart);
  function drawChart() {
	var data = new google.visualization.DataTable();
	data.addColumn('number', 'Year');
	data.addColumn('number', 'Surviving');
	data.addColumn('number', 'Dissolved'); 
	data.addRows([
    	<%For x=0 to years%>
    	[<%=arr(0,x)%>,<%=arr(2,x)%>,<%=CLng(arr(1,x))-CLng(arr(2,x))%>],
    	<%Next%>
    	]);
    var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
    var options={
    	chartArea: {width:'85%',height:'75%',left:'10%'},
    	title: '<%=title%>',
    	titleTextStyle:{fontSize:20},
    	backgroundColor: {strokeWidth:2,stroke:'blue'},
    	hAxis: {
    		title: 'Year of incorporation',
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
    	chart.draw(data,options);
    }
</script>
<title><%=title%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<form method="get" action="incHKsurvive.asp">
	<div class="inputs">
		<input type="date" id="d" name="d" value="<%=d%>">
	</div>
	<div class="inputs">
		Company type: <%=arrSelectZ("t",t,con.Execute("SELECT orgType,typeName FROM orgtypes WHERE orgType IN(1,19,21,26,28)").GetRows,True,True,0,"Any type")%>
		<%Call CloseConRs(con,rs)%>
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
		<input type="submit" value="clear" onclick="document.getElementById('d').value='';document.getElementById('t').value='-1';">
	</div>
	<div class="clear"></div>
</form>
<p>This page shows, at the chosen date, the number of surviving 
and dissolved HK-incorporated companies for each year of incorporation. 
Earliest records from the 19th century are understated due to 
lost records of dissolved companies. Registration was not required until 1911. 
Click and drag to zoom, right-click to zoom out.</p>
<p>Note: data on dissolutions are not reliable after 16-Nov-2020, when we 
started our last complete scan of the registry. On 22-Nov-2020, the registry 
implemented a new captcha system, preventing further data collection. The 
limited data available on
<a href="https://data.gov.hk/en-datasets/provider/hk-cr?order=name&amp;file-content=no" target="_blank">
data.gov.hk</a> (comprising delayed weekly updates) only cover new 
incorporations and name-changes.</p>
<div id="chart_div" class="chart"></div>
<p></p>
<%=mobile(2)%>
<table class="numtable center">
	<tr>
		<th class="colHide3"></th>
		<th>Year</th>
		<th>Inc.</th>
		<th>live</th>
		<th>Survival<br>%</th>
		<th class="colHide2">Total<br>inc.</th>
		<th class="colHide2">Total<br>live</th>
		<th class="">Total<br>survival<br>%</th>
	</tr>
	<%For x=0 to Ubound(arr,2)
		inc=CLng(arr(1,x))
		incTot=incTot+inc
		surv=CLng(arr(2,x))
		survTot=survTot+surv
		If inc>0 Then share=FormatNumber(surv/inc*100) Else share="-"
		If incTot>0 Then survsh=FormatNumber(survTot/incTot*100) Else survsh="-"
		%>
		<tr>
			<td class="colHide3"><%=x+1%></td>
			<td><%=arr(0,x)%></td>
			<td><a href="incHKcaltype.asp?t=<%=t%>&amp;y=<%=arr(0,x)%>"><%=FormatNumber(inc,0)%></a></td>
			<td><%=FormatNumber(surv,0)%></td>
			<td><%=share%></td>
			<td class="colHide2"><%=FormatNumber(incTot,0)%></td>
			<td class="colHide2"><%=FormatNumber(survTot,0)%></td>
			<td class=""><%=survsh%></td>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>