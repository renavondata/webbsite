<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('chart1', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginRight:80,
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
	            text: 'HK$m',
	            margin: 60
	        },
	        labels:{
	        	x: 50
	        	}
	    },
	    rangeSelector: {
    		selected: 4,
    		buttons: [{
				type: 'year',
				count: 1,
				text: '1y'
			}, {
				type: 'year',
				count: 2,
				text: '2y'
			}, {
				type: 'year',
				count: 5,
				text: '5y'
			}, {
				type: 'year',
				count: 10,
				text: '10y'
			}, {
				type: 'year',
				count: 20,
				text: '20y'
			}, {
				type: 'all',
				text: 'All'
			}],
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
	    	align: 'left',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 80,
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
	            }
	        }
	    },
	    series: [{
	        name: '<%=name%>',
	        color:"blue",
	        type: 'column',
	        dataGrouping: {
        		enabled: false
        		},
	        data: [<%=hcArr(arr,1)%>]
		}]
	});
});
</script>

<%Sub chartable(arr)%>
	<form method="get" action="<%=Request.ServerVariables("URL")%>">
		<div class="inputs"><b>Item:</b> <%=arrSelect("t",t,items,True)%></div>
		<div class="inputs"><input type="submit" value="Go"></div>
		<div class="clear"></div>
	</form>
	<p>To zoom in or out, use the range-selector buttons or the slider, or pinch the charts on a touch screen. 
	Use the top-right hamburger menu to save or print.</p>
	<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
	<div class="clear"></div>
	<p></p>
	<table class="numtable center">
		<tr>
			<th class="left">Date</th>
			<th>Amount HK$m</th>
		</tr>
		<%For x=ubound(arr,2) to 0 step -1
			%>
			<tr>
				<td><%=MSdate(arr(0,x))%></td>
				<td><%=FormatNumber(arr(1,x),0)%></td>
			</tr>
		<%Next%>
	</table>
<%End Sub%>