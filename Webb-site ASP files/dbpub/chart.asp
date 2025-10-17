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
<%Dim con,rs,title,x,y,sql,d,a,sn,i,prices,note,units,items,c,itemcnt,freq,tipdate,sources,daily,denom,quant,dpinc
c=getInt("c",1)
Call openEnigmaRs(con,rs)
rs.Open "SELECT * FROM charts c WHERE ID="&c,con
title=rs("title")
quant=rs("quant")
rs.Close
items=con.Execute("SELECT dataitem,ddes,note,units,dp,shortname,freq,ct.name,negate FROM chartitems c "&_
	"JOIN (dataitems d,charttypes ct) ON c.dataitem=d.ID AND c.typeID=ct.ID WHERE chartID="&c).GetRows
itemcnt=Ubound(items,2)
units=items(3,0)
freq=items(6,0)
If quant And freq<3 Then 'graph is of quantity per month or quarter
	daily=getBool("d")
	If daily Then
		denom=IIF(freq=1,"/monthdays(d)","/quarterdays(d)")
		dpinc=2 'show 2 extra decimals in data
	End If
End If
If freq=3 Then tipdate="%Y" Else tipdate="%Y-%m"

title=title&" "&Lcase(con.Execute("SELECT fdes FROM freq WHERE ID="&items(6,0)).Fields(0))&", "&units&IIF(daily," per day","")
sn="Webb-site.com"
note=con.Execute("SELECT GROUP_CONCAT(note SEPARATOR ' ') FROM chartitems c JOIN dataitems d ON c.dataitem=d.ID WHERE chartID="&c).Fields(0)

Redim prices(itemcnt)
For i=0 to itemcnt
	sql=sql&","&IIF(items(8,i),"-","")&"SUM(v*(item="&items(0,i)&"))"&denom
Next
sql="SELECT d"&sql&" FROM data WHERE item IN("&joinCol(items,0)&") GROUP BY d ORDER BY d"
a=con.Execute(sql).GetRows
For i=0 to itemcnt
	prices(i)=hcArr(a,i+1)
Next%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.setOptions({
		lang: {
	      thousandsSep: ','
	    }
	});
	Highcharts.stockChart('chart1', {
        time: {
        	useUTC:true
        },
    	chart: {
    		backgroundColor: "#FFFFFF",
	        borderWidth: 1,
	        borderColor: "black",
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
	        min:null,
	    }],
        series: [
        <%For i=0 to itemCnt%>
        {
        	type: '<%=items(7,i)%>',
        	name: '<%=items(5,i)%>',
            data: [<%=prices(i)%>],
            dataGrouping: {
            	enabled:false
			},
		    tooltip: {
		    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y:,.<%=items(4,i)+dpinc%>f}</b><br>",
		    	shared:true,
		    }, 
		},
		<%Next%>],
	    legend: {
	    	enabled: true,
	    	align: 'center',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 50,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
		tooltip:{
			backgroundColor: 'yellow',
			xDateFormat: '<%=tipdate%>',
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
	        },
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
<%If note>"" Then%><p>Note: <%=note%></p><%End If
rs.Open "SELECT DISTINCT source,name1 FROM chartitems c JOIN (dataitems d,organisations o) "&_
	"ON c.dataitem=d.ID AND d.source=o.PersonID WHERE c.chartID="&c&" ORDER BY name1",con
If Not rs.EOF Then%>
	<h4>Sources</h4>
	<%Do Until rs.EOF%>
		<p><a href="orgdata.asp?p=<%=rs("source")%>"><%=rs("name1")%></a></p>
		<%rs.MoveNext
	Loop
	rs.Close
End If%>
<form method="get" action="chart.asp">
	<div class="inputs">
	Chart <%=arrSelect("c",c,con.Execute("SELECT ID,title FROM charts ORDER BY title").GetRows,True)%>
	</div>
	<%If quant And freq<3 Then%>
	<div class="inputs">
	<input type="checkbox" name="d" value="1" <%=checked(daily)%> onchange="this.form.submit()"> per day
	</div>
	<%End If%>
	<div class="clear"></div>
</form>
<p>Click on the legend to remove items from the chart.</p>
<div id="chart1" style="width:95%;height:550px;margin-left:0"></div>
<div class="clear"></div>
<table class="numtable fcl center">
	<tr>
		<th><%=Array("Month","Quarter","Year")(freq-1)%></th>
		<%For i=0 to itemcnt%>
			<th><%=items(5,i)%></th>
		<%Next%>
	</tr>
	<%For y=Ubound(a,2) to 0 step -1
		If freq=3 Then d=Year(a(0,y)) Else d=MSdate(a(0,y))%>
		<tr>
			<td class="nowrap"><%=Left(d,7)%></td>
			<%For i=0 to itemcnt%>
				<td><%=FormatNumber(a(i+1,y),items(4,i)+dpinc)%></td>
			<%Next%>
		</tr>
	<%Next%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>