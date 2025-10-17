<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim con,rs,title,x,y,sql,d,a,sn,i,prices,note,dp,units,freq,tipdate,source,sname
Call openEnigmaRs(con,rs)
i=Max(GetInt("i",1),1)
sn="Webb-site.com"
rs.Open "SELECT units,note,dp,ddes,fdes,freq,source,name1 FROM dataitems d JOIN "&_
	"freq f ON d.freq=f.ID LEFT JOIN organisations o ON d.source=o.personID WHERE d.ID="&i,con
units=rs("units")
note=rs("note")
dp=rs("dp")
title=rs("ddes")&" "&Lcase(rs("fdes"))&", "&units
freq=rs("freq")
source=rs("source")
sname=rs("name1")
If freq=3 Then tipdate="%Y" Else tipdate="%Y-%m"
rs.Close
a=con.Execute("SELECT d,v FROM data WHERE item="&i&" ORDER BY d").GetRows
prices=hcArr(a,1)%>
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
	        borderColor: "black"        
    	},
    	rangeSelector:{
    		selected: 9,
    		buttons: [{
				type: 'month',
				count: 1,
				text: '1m'
			}, {
				type: 'month',
				count: 3,
				text: '3m'
			}, {
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
            text: '<b><%=Replace(title,"'","\'")%></b>',
            margin: 10,
            style: {
            	fontSize:'1.2em'
	        }	            
        },
        subtitle: {
        	text: '<%=sn%>',
        	style: {
        		fontWeight: 'bold',
        		fontSize: '1.2em'
        	}
        },
        yAxis: [{
			title: {
	            text: '<%=units%>'
	        },
	        height:'100%',
	        gridLineColor:'gray',
	        minorTickInterval:'auto',
	        lineWidth: 1,
	        min:null
	    }],
        series: [{
        	type: 'line',
        	name: '<%=title%>',
        	id: 'adjClose',
            data: [<%=prices%>],
            dataGrouping: {
            	enabled:false
			},
		    tooltip: {
		    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y}</b><br>",
		    	shared:true
		    }, 
		}],
		tooltip:{
			backgroundColor: 'yellow',
			xDateFormat: "<%=tipdate%>",
			headerFormat: '<span style="font-size: 12px">{point.key}</span><br/>'
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
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p><%=note%></p>
<%If Not isNull(source) Then%>
	<h4>Source</h4>
	<p><a href="orgdata.asp?p=<%=source%>"><%=sname%></a></p>
<%End If%>

<form method="get" action="prices.asp">
	<div class="inputs">
	Item <%=arrSelect("i",i,con.Execute("SELECT ID,ddes FROM dataitems ORDER BY ddes").GetRows,True)%>
	</div>
	<div class="clear"></div>
</form>
<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<table class="numtable fcl center">
	<tr>
		<th>Date</th>
		<th>Value</th>
	</tr>
	<%For y=Ubound(a,2) to 0 step -1
		d=MSdate(a(0,y))%>
		<tr>
			<td class="nowrap"><%=Left(d,7)%></td>
			<td><%=FormatNumber(a(1,y),dp)%></td>
		</tr>
	<%Next%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>