<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
<%Dim title,x,arr1,arr2,j,jailName,d,t,where,typetxt,sql,graph1Title,graph3title,con,rs
Call openEnigmaRs(con,rs)
j=getInt("j",0)
'base for queries
sql="SELECT DATE_FORMAT(d,'%d-%m-%Y'),c,r,dt,c+r+dt,IFNULL(100*c/t,0),IFNULL(100*r/t,0),IFNULL(100*dt/t,0) FROM "&_
	"(SELECT d,SUM(convict)c,SUM(remand)r,SUM(detain)dt,SUM(convict+remand+detain)t FROM prisoners"
If j=0 Then
	jailName="all institutions"
	typetxt="all institutions"
	graph1title="People in all institutions"
	graph3title=graph1title&" by origin"
	'breakdown of prisoners by origin
	rs.Open "SELECT DATE_FORMAT(d,'%d-%m-%Y'),l,m,n,t,IFNULL(100*l/t,0),IFNULL(100*m/t,0),IFNULL(100*n/t,0) FROM "&_
		"(SELECT d,local l,MTM m,nonlocal n,local+MTM+nonlocal t FROM prisorigin GROUP BY d)t1",con
	arr2=rs.GetRows
	rs.Close	
Else
	rs.Open "SELECT j.name,j.type,jt.txt FROM jails j JOIN jailtypes jt ON j.type=jt.ID WHERE j.ID="&j,con
	jailName=rs("name")
	t=rs("type")
	typetxt=rs("txt")&"s"
	graph1Title="People in "&jailName
	graph3Title="People in "&typetxt
	rs.Close
	where=" WHERE jail="&j
	'breakdown of prisoners in this type of jail
	arr2=con.Execute(sql&" JOIN jails j ON jail=j.ID WHERE j.type="&t&" GROUP BY d)t1").getRows
End If
'get prisoners by type and percentage breakdown
arr1=con.Execute(sql&where&" GROUP BY d)t1").getRows
title="People in "&jailName%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.chart('jail', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: '<%=graph1Title%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'People',
		        x:0,
	        },
	        labels:{
	        	x:0
	        },
	    },
	    xAxis: {
	    	categories: [<%=joinColQuote(arr1,0,"'")%>]
	    },
	    rangeSelector: {
    		selected: 5,
	    	labelStyle: {color:"black",fontSize: '1.2em'},
	    	buttonTheme: {
	    		style: {
	    			fontweight: 'bold',
	    			fontSize: '1.2em',
	    			color: 'black',
	    		}
	    	}
	    },
	    legend: {
	    	enabled: true,
	    	align: 'center',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 20,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white'
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	        	dataLabels: {
	            	enabled: false
	            },
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        }
	    },
	    series: [
	    	{
	        name: 'Convicted',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr1,1)%>]
	        },
	    	{
	        name: 'Detainees',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr1,3)%>]
	        },
	    	{
	        name: 'On remand',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr1,2)%>]
	        },
	        ]
	});
});
<%'show percentage share by type of prisoner%>
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.chart('jail2', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: '<%=graph1Title%> by share',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    xAxis: {
	    	categories: [<%=joinColQuote(arr1,0,"'")%>]
	    },
	    yAxis: {
	        title: {
	            text: 'Share of people in custody',
	            x:0,
	        },
	        labels:{
	        	x:0,
				format: '{value}%',
	        },
	        max:100,
	    },
	    rangeSelector: {
    		selected: 5,
	    	labelStyle: {color:"black",fontSize: '1.2em'},
	    	buttonTheme: {
	    		style: {
	    			fontweight: 'bold',
	    			fontSize: '1.2em',
	    			color: 'black',
	    		}
	    	}
	    },
	    legend: {
	    	enabled: true,
	    	align: 'center',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 20,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white',
	        valueDecimals: 2,
	        valueSuffix:'%',
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	        	dataLabels: {
	            	enabled: false
	            },
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        }
	    },
	    series: [
	    	{
	        name: 'Convicted',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr1,5)%>]
	        },
	    	{
	        name: 'Detainees',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr1,7)%>]
	        },
	    	{
	        name: 'On remand',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr1,6)%>]
	        },
	        ]
	});
});
<%'show prisoners in this type of jail, or people by origin for all institutions%>
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.chart('jail3', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: '<%=graph3title%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'People',
		        x:0,
	        },
	        labels:{
	        	x:0
	        },
	    },
	    xAxis: {
	    	categories: [<%=joinColQuote(arr2,0,"'")%>]
	    },
	    rangeSelector: {
    		selected: 5,
	    	labelStyle: {color:"black",fontSize: '1.2em'},
	    	buttonTheme: {
	    		style: {
	    			fontweight: 'bold',
	    			fontSize: '1.2em',
	    			color: 'black',
	    		}
	    	}
	    },
	    legend: {
	    	enabled: true,
	    	align: 'center',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 20,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white'
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	        	dataLabels: {
	            	enabled: false
	            },
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        }
	    },
	    series: [
	    <%If j=0 Then%>
	    	{
	        name: 'Others',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr2,3)%>]
	        },
	    	{
	        name: 'Mainland/Taiwan/Macao',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr2,2)%>]
	        },
	    	{
	        name: 'HK resident',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr2,1)%>]
	        },	    
	    <%Else%>
	    	{
	        name: 'Convicted',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr2,1)%>]
	        },
	    	{
	        name: 'Detainees',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr2,3)%>]
	        },
	    	{
	        name: 'On remand',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr2,2)%>]
	        },
		<%End If%>
	        ]
	});
});
<%'show percentage breakdown%>
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.chart('jail4', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: '<%=graph3title%> by share',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    xAxis: {
	    	categories: [<%=joinColQuote(arr2,0,"'")%>]
	    },
	    yAxis: {
	        title: {
	            text: 'Share of people in custody',
	            x:0,
	        },
	        labels:{
	        	x:0,
				format: '{value}%',
	        },
	        max:100,
	    },
	    rangeSelector: {
    		selected: 5,
	    	labelStyle: {color:"black",fontSize: '1.2em'},
	    	buttonTheme: {
	    		style: {
	    			fontweight: 'bold',
	    			fontSize: '1.2em',
	    			color: 'black',
	    		}
	    	}
	    },
	    legend: {
	    	enabled: true,
	    	align: 'center',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 20,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white',
	        valueDecimals: 2,
	        valueSuffix:'%',
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	        	dataLabels: {
	            	enabled: false
	            },
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        }
	    },
	    series: [
	    <%If j=0 Then%>
	    	{
	        name: 'Others',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr2,7)%>]
	        },
	    	{
	        name: 'Mainland/Taiwan/Macao',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr2,6)%>]
	        },
	    	{
	        name: 'HK resident',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr2,5)%>]
	        },	    
	    <%Else%>
	    	{
	        name: 'Convicted',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arr2,5)%>]
	        },
	    	{
	        name: 'Detainees',
	        color:"red",
	        type: 'column',
	        data: [<%=joinCol(arr2,7)%>]
	        },
	    	{
	        name: 'On remand',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arr2,6)%>]
	        },
		<%End If%>
	        ]
	});
});
</script>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<h3>Custody category: <%=typetxt%></h3>
<p>This page shows the number of people in custody in facilities managed by the 
<a href="https://www.csd.gov.hk" target="_blank">Hong Kong 
Correctional Services Department</a>, including prisons. People on remand are innocent until proven 
guilty and are awaiting trial. Detainees are held under the <a href="https://www.hklii.hk/eng/hk/legis/ord/115/" target="_blank">Immigration 
Ordinance</a>. Figures are annual from 31-Dec-2000 and quarterly from 30-Sep-2020 and will be updated when published online by CSD - 
we check daily. The breakdown of prisoners by place of origin is only available 
from 2016 onwards, as a sum across all institutions.</p>
<form method="get" action="jail.asp">
	<div class="inputs">Institution:
		<%=arrSelect("j",j,con.Execute("SELECT 0 ID,'All institutions' name UNION SELECT ID,name FROM jails ORDER BY ID<>0,name").GetRows,true)%>
		<%Call CloseConRs(con,rs)%>
	</div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<p>CSV downloads: <a href="CSV.asp?t=jails">Institutions</a>,&nbsp;
<a href="CSV.asp?t=jailtypes">Institution-types</a>,&nbsp;
<a href="CSV.asp?t=prisoners">People in custody</a></p>
<p>To zoom in or out, use the range-selector buttons or the slider, or pinch the charts on a touch screen. 
Use the top-right hamburger menu to save or print.</p>
<div id="jail" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>This chart shows the relative share of people convicted, on remand and detainees in <%=jailname%>:</p>
<div id="jail2" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>This chart shows people in <%=typetxt%></p>
<div id="jail3" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>This chart shows the relative share of people in <%=typetxt%></p>
<div id="jail4" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<h4>People in <%=jailname%></h4>
<%=mobile(3)%>
<table class="numtable center">
	<tr>
		<th class="left">Date</th>
		<th>Convict</th>
		<th>Remand</th>
		<th>Detain</th>
		<th>Total</th>
		<th class="colHide3">Convict<br>%</th>
		<th class="colHide3">Remand<br>%</th>
		<th class="colHide3">Detain<br>%</th>
	</tr>
	<%For x=ubound(arr1,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr1(0,x))%></td>
			<td><%=FormatNumber(arr1(1,x),0)%></td>
			<td><%=FormatNumber(arr1(2,x),0)%></td>
			<td><%=FormatNumber(arr1(3,x),0)%></td>
			<td><%=FormatNumber(arr1(4,x),0)%></td>
			<td class="colHide3"><%=FormatNumber(arr1(5,x),2)%></td>
			<td class="colHide3"><%=FormatNumber(arr1(6,x),2)%></td>
			<td class="colHide3"><%=FormatNumber(arr1(7,x),2)%></td>
		</tr>
	<%Next%>
</table>
<h4>People in <%=typetxt%></h4>
<table class="numtable center">
	<tr>
		<th class="left">Date</th>
		<%If j=0 Then%>
			<th>HK<br>res.</th>
			<th>CN/TW<br>/MO</th>
			<th>Other</th>
			<th>Total</th>
			<th class="colHide3">HK<br>res. %</th>
			<th class="colHide3">CN/TW<br>/MO%</th>
			<th class="colHide3">Other<br>%</th>
		<%Else%>
			<th>Convict</th>
			<th>Remand</th>
			<th>Detain</th>
			<th>Total</th>
			<th class="colHide3">Convict<br>%</th>
			<th class="colHide3">Remand<br>%</th>
			<th class="colHide3">Detain<br>%</th>
		<%End If%>
	</tr>
	<%For x=ubound(arr2,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr2(0,x))%></td>
			<td><%=FormatNumber(arr2(1,x),0)%></td>
			<td><%=FormatNumber(arr2(2,x),0)%></td>
			<td><%=FormatNumber(arr2(3,x),0)%></td>
			<td><%=FormatNumber(arr2(4,x),0)%></td>
			<td class="colHide3"><%=FormatNumber(arr2(5,x),2)%></td>
			<td class="colHide3"><%=FormatNumber(arr2(6,x),2)%></td>
			<td class="colHide3"><%=FormatNumber(arr2(7,x),2)%></td>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>