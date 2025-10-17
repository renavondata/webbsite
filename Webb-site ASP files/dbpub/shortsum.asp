<%Option Explicit
Server.ScriptTimeout=180%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim d,title,x,arr,rowcount,stake,totVal,con,rs
Call openEnigmaRs(con,rs)
con.CommandTimeout=480
arr=con.Execute("SELECT atDate,UNIX_TIMESTAMP(atDate)*1000,cnt,sumVal,sumCap,sumVal/sumCap AS stake FROM "&_
	"(SELECT atDate,count(*) AS cnt,sum(value)/1000000000 AS sumVal,sum(outstanding(issueID,atDate)*lastquote(issueID,atDate))/1000000000 AS sumCap "&_
	"FROM sfcshort GROUP BY atDate) AS t ORDER BY atDate DESC").getRows
Call CloseCon(con)
rowcount=CInt(Ubound(arr,2))
For x=rowcount to 0 step -1
	stake=stake & "[" & arr(1,x) & "," & round(arr(5,x)*100,3) & "],"
	totval=totval & "[" & arr(1,x) & "," & round(arr(3,x),2) & "],"
Next
title="Weekly summary of short positions disclosed to SFC"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="shortdate.asp">Short postions</a></li>
	<li class="livebutton">Weekly summary</li>
	<li><a href="shortnotes.asp">Notes</a></li>
</ul>
<div class="clear"></div>
<br>
<script type="text/javascript">	
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.setOptions({
		lang: {
	      thousandsSep: ','
	    }
	});
	Highcharts.stockChart('chart1', {
    	chart: {
    		backgroundColor: "#FFFFFF",
	        borderWidth: 1,
	        borderColor: "black",
	        spacingLeft: 20
    	},
    	rangeSelector:{
    		selected: 8,
    		buttons: [{
				type: 'month',
				count: 6,
				text: '6m'
			}, {
				type: 'ytd',
				text: 'YTD'
			}, {
				type: 'year',
				count: 1,
				text: '1y'
			}, {
				type: 'year',
				count: 3,
				text: '3y'
			}, {
				type: 'year',
				count: 5,
				text: '5y'
			}, {
				type: 'year',
				count: 10,
				text: '10y'
			}, {
				type: 'all',
				text: 'All'
			}],
			inputDateFormat:"%e %b %Y"
    	},
        title: {
            text: '<b>Weekly short positions</b>',
        },
        yAxis: [{
			title: {
	            text: '% of market cap',
	        },
	        labels:{
	        	x:-5,
	        	format: '{value:point.y:.1f}%',
	        	align: "right"
	        },
	        height: '60%',
	        lineWidth: 1,
	        min:0
	    }, {
	        title: {
	            text: 'Short positions HK$bn',
	        },
	        labels:{
	        	x:-5,
	        	align: "right"
	        },
	        top: '65%',
	        height: '35%',
	        offset: 0,
	        lineWidth: 1,
	    }],
        series: [{
        	type: 'line',
        	name: 'stake',
        	id: 'stake',
            data: [<%=stake%>],
            dataGrouping: {
            	enabled:false
			},
			tooltip:{
				valueSuffix: '%',
				valueDecimals: 3
			}
		}, {
		    type: 'column',
		    name: 'short position',
		    data: [<%=totval%>],
	        color: "grey",
            dataGrouping: {
            	enabled:false
            },
            tooltip:{
            	valuePrefix: '$',
            	valueSuffix: 'bn',
            	valueDecimals: 2
            },     
		    yAxis: 1
		}],
		credits:{
			enabled: true,
			position: {
				align:'left',
				x:5,
				verticalAlign:'bottom',
				y:-5
			}
		}
	});
});
</script>
<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
<br>
<table class="numtable center c2l">
	<tr>
		<th class="colHide3">Row</th>
		<th>Date</th>
		<th>Stocks</th>
		<th>Short<br>value<br>HK$bn</th>
		<th>Market<br>cap<br>HK$bn</th>
		<th>Stake<br>%</th>
	</tr>
	<%For x=0 to rowcount
		d=MSdate(arr(0,x))
		%>
		<tr>
			<td class="colHide3"><%=x+1%></td>
			<td><a href="shortdate.asp?d=<%=d%>"><%=d%></a></td>
			<td><%=arr(2,x)%></td>
			<td><%=FormatNumber(arr(3,x),2)%></td>
			<td><%=FormatNumber(arr(4,x),0)%></td>
			<td><%=FormatNumber(arr(5,x)*100,3)%></td>
		</tr>
	<%Next%>
</table>
<p style="font-size:20px;"></p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>