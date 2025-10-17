<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
<%Dim title,x,arr,pxtypes,ports,t,p,f,fgroup,where,pxName,portName,con,rs
Call openEnigmaRs(con,rs)
title="Hong Kong Immigration Department passenger statistics"
t=getInt("t",0)
p=getInt("p",0)
f=getIntRange("f",0,0,4)
pxtypes=con.Execute("SELECT 0 ID,'All passengers' name UNION SELECT ID,name FROM hkpxtypes ORDER BY ID").getRows
ports=con.Execute("SELECT 0 ID,'All ports' name UNION SELECT -1,'All ports except airport' UNION (SELECT ID,name FROM hkports ORDER BY name)").getRows
pxName=con.Execute("SELECT name FROM (SELECT 0 ID,'All passengers' name UNION SELECT ID,name FROM hkpxtypes) t1 WHERE ID="&t).Fields(0)
portName=con.Execute("SELECT name FROM(SELECT 0 ID,'All ports' name UNION SELECT -1,'All ports except airport' UNION SELECT ID,name FROM hkports) t1 WHERE ID="&p).Fields(0)
title="Passenger traffic: "&pxName&", "&portName
If t>0 Then	where=" AND pxType="&t
If p>0 Then
	where=where & " AND port="&p
ElseIf p=-1 Then
	where=where & " AND port<>1"
End If
Select Case f
	Case 0: fgroup="d"
	Case 1: fgroup="YEARWEEK(d,0)"
	Case 2: fgroup="YEARWEEK(d,5)"
	Case 3: fgroup="YEAR(d),MONTH(d)"
	Case Else:
		f=4
		fgroup="Year(d)"
End Select
arr=con.Execute("SELECT d,sum(arrivals),-sum(departures),SUM(arrivals-departures) FROM hkpx WHERE 1=1 "&where&" GROUP BY "&fgroup&" ORDER BY d").getRows
Call CloseConRs(con,rs)%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('arrivdep', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=title%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'Passengers',
	        }
	    },
	    rangeSelector: {
    		selected: 2,
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
	    	y: 30,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 1,
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
	            }
	        }
	    },
	    series: [{
	        name: 'Arrived',
	        color:"blue",
	        type: 'column',
	        data: [<%=hcArr(arr,1)%>]
	        },
	        {
	        name: 'Departed',
	        color:"red",
	        type: 'column',
	        data: [<%=hcArr(arr,2)%>]
		}]
	});
});
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('netmove', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=title%> net in/(out)',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'Passengers',
	        }
	    },
	    rangeSelector: {
    		selected: 2,
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
	    	y: 30,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 1,
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
	            }
	        }
	    },
	    series: [{
	        name: 'Net change (red=negative)',
	        color:"blue",
	        negativeColor: "red",
	        type: 'column',
	        data: [<%=hcArr(arr,3)%>]
	        }]
	});
});
</script>
<title><%=title%></title>
</head>
<body>
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
<form method="get" action="hkpax.asp">
	<div class="inputs">Passenger type: <%=arrSelect("t",t,pxtypes,True)%></div>
	<div class="inputs">Port: <%=arrSelect("p",p,ports,True)%></div>
	<div class="inputs">Frequency: <%=makeSelect("f",f,"0,Daily,1,Weekly Sun-Sat,2,Weekly Mon-Sun,3,Monthly,4,Annual",true)%></div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<p>CSV downloads: <a href="CSV.asp?t=hkports">ports</a>
<a href="CSV.asp?t=hkpxtypes">passenger-types</a> <a href="CSV.asp?t=hkpx">
traffic</a></p>
<p>To zoom in or out, use the range-selector buttons or the slider, or pinch the charts on a touch screen. 
Use the top-right hamburger menu to save or print.</p>
<div id="arrivdep" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>And on a net basis:</p>
<div id="netmove" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>For monthly or annual charts, the date is the start of the period.</p>
<table class="numtable center yscroll">
	<tr>
		<th class="left">Date</th>
		<th>Arrived</th>
		<th>-Departed</th>
		<th>Net in/(out)</th>
	</tr>
	<%For x=ubound(arr,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr(0,x))%></td>
			<td><%=FormatNumber(arr(1,x),0)%></td>
			<td><%=FormatNumber(arr(2,x),0)%></td>
			<td><%=FormatNumber(arr(3,x),0)%></td>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>