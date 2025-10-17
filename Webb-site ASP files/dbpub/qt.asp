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
<%Dim title,graphTitle,x,arr,qtcs,q,qtcName,d,selName,selTex,newCC,con,rs
Call openEnigmaRs(con,rs)
title="Hong Kong Quarantine Centre statistics"
q=getInt("q",0)
d=MSdate(con.Execute("SELECT Max(d) FROM qt").Fields(0))
qtcs=con.Execute("SELECT 0 ID,'Total' name,false UNION SELECT ID,name,IF(ISNULL(capUnit),false,true) inUse "&_
	"FROM qtcentres qc LEFT JOIN qt ON qc.ID=qt.qtID AND qt.d='"&d&"' ORDER BY ID<>0,name;").getRows
qtcName=con.Execute("SELECT name FROM (SELECT 0 ID,'Total' name UNION SELECT ID,name FROM qtcentres) t1 WHERE ID="&q).Fields(0)
title="Quarantine: "&qtcName
graphTitle=Replace(title,"'","\'")
If q=0 Then
	arr=con.Execute("SELECT t1.d,capunit,pax,useUnit,availUnit,CC,pax-CC,cumCC other FROM "&_
		"(SELECT qt.d,Sum(capunit) capunit,SUM(pax) pax,SUM(useUnit) useUnit,SUM(availUnit) availUnit FROM qt GROUP BY d)t1 "&_
		"JOIN qtbytype bt ON t1.d=bt.d order by d").getRows
Else
	arr=con.Execute("SELECT d,capunit,pax,useUnit,availUnit FROM qt WHERE qtID="&q&" GROUP BY d ORDER BY d").getRows
End If
Call CloseConRs(con,rs)
If q>0 Then%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('people', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=graphTitle%> people',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'People',
	        },
	        labels:{
	        	x:25
	        },
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
	    	y: 0,
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
	            },
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        }
	    },
	    series: [
	    	{
	        name: 'People',
	        color:"blue",
	        type: 'column',
	        data: [<%=hcArr(arr,2)%>]
	        },	        
	        ]
	});
});
</script>
<%Else%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('people', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=graphTitle%> people',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'People',
	        },
	        labels:{
	        	x:25
	        },
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
	    	y: 0,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 1,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white',
   	        valueDecimals:2,
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        	dataLabels: {
	            	enabled: false
	            }
	        }
	    },
	    series: [
	    	{
	        name: 'Others',
	        color:"green",
	        type: 'column',
	        data: [<%=hcArr(arr,6)%>]
	        },	        
	    	{
	        name: 'Close contacts',
	        color:"blue",
	        type: 'column',
	        data: [<%=hcArr(arr,5)%>]
	        },	        
	        ]
	});
});
</script>
<%End If%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('units', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=graphTitle%> units in use',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'Units',
	        },
	        labels:{
	        	x:25
	        },
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
	    	y: 0,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 1,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white',
   	        valueDecimals:2,
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	            grouping: false,
		    	dataGrouping: {
		    		approximation: 'average'
		    		},
	        	dataLabels: {
	            	enabled: false
	            },
	        }
	    },
	    series: [
	    	{
	        name: 'Units available',
	        color:"green",
	        type: 'column',
	        data: [<%=hcArr(arr,4)%>]
	        },
	    	{
	        name: 'Units occupied',
	        color:"blue",
	        type: 'column',
	        data: [<%=hcArr(arr,3)%>]
	        }	       
	        ]
	});
});
</script>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the daily number (as of 09:00 HKT) of people in HK 
Government-controlled quarantine, and units occupied (some units hold more than 
one person). The "Others" include, from 27-Nov-2021, those undergoing "enhanced 
surveillance" after arriving in HK, initially for 7 days,
<a href="https://www.info.gov.hk/gia/general/202112/20/P2021122000964.htm" target="_blank">
reduced</a> on 21-Dec-2021 to 4 days because "so far all imported Omicron cases 
in Hong Kong had been detected either by arrival tests or tests within the first 
three days of arrival at Hong Kong" - which begs the question, why is the mandatory 
quarantine period 21 days?</p>
<p>Data are
<a href="https://data.gov.hk/en-data/dataset/hk-dh-chpsebcddr-novel-infectious-agent" target="_blank">sourced from</a> the 
Centre for Health Protection daily, with some dates not published.</p>
<form method="get" action="qt.asp">
	<div class="inputs">Quarantine centre:
		<select name="q" onchange="this.form.submit()">
		<%For x=0 to Ubound(qtcs,2)
			If CInt(qtcs(0,x))=q Then selTex=" selected" Else selTex=""
			selName=qtcs(1,x)
			If qtcs(2,x) Then selName=selName&" ACTIVE"%>
			<option value="<%=qtcs(0,x)%>"<%=selTex%>><%=selName%></option>	
		<%Next%>
		</select>
	</div>
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<p>CSV downloads: <a href="CSV.asp?t=qtcentres">Centres</a> <a href="CSV.asp?t=qt">Occupancy data</a></p>
<p>To zoom in or out, use the range-selector buttons or the slider, or pinch the charts on a touch screen. 
Use the top-right hamburger menu to save or print.</p>
<div id="people" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>And in terms of units in use:</p>
<div id="units" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>The "Max units" is the total number of units in the centres, including those 
which are neither occupied nor available, for example, due to maintenance or 
cleaning.</p>
<%=mobile(2)%>
<table class="numtable center">
	<tr>
		<th class="left">Date</th>
		<th>People</th>
		<th>Units<br>in use</th>
		<th>Units<br>avail.</th>
		<th class="colHide2">Total<br>units</th>
		<th class="colHide2">Max<br>units</th>
		<%If q=0 Then%>
			<th>Close<br>cont-<br>acts</th>			
			<th>Others</th>
			<th class="colHide3">Cumul-<br>ative<br>CCs</th>
			<th>New<br>close<br>cont-<br>acts</th>
			<th>Left<br>close<br>cont-<br>acts</th>
		<%End If%>
	</tr>
	<%For x=ubound(arr,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr(0,x))%></td>
			<td><%=FormatNumber(arr(2,x),0)%></td>
			<td><%=FormatNumber(arr(3,x),0)%></td>
			<td><%=FormatNumber(IfNull(arr(4,x),0),0)%></td>
			<td class="colHide2"><%=FormatNumber(CLng(arr(3,x))+CLng(IfNull(arr(4,x),0)),0)%></td>
			<td class="colHide2"><%=FormatNumber(arr(1,x),0)%></td>
			<%If q=0 Then%>
				<td><%=FormatNumber(arr(5,x),0)%></td>
				<td><%=FormatNumber(arr(6,x),0)%></td>
				<td class="colHide3"><%=FormatNumber(arr(7,x),0)%></td>
				<%If x>0 Then
					newCC=CLng(arr(7,x))-CLng(arr(7,x-1))
					%>
					<td><%=FormatNumber(newCC,0)%></td>
					<td><%=FormatNumber(newCC-CLng(arr(5,x))+CLng(arr(5,x-1)),0)%></td>
				<%Else%>
					<td></td>
					<td></td>
				<%End If%>
			<%End If%>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>