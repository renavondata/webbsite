<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
<%Dim s,s2,sn,a,x,units,consid,title,hint,sql,con,rs,f
Call openEnigmaRs(con,rs)
s=GetInt("s",31)
f=GetInt("f",0) '0=monthly, 1=Annual
rs.Open "SELECT statName FROM stats WHERE ID="&s,con
title="HK Land Registry"
If rs.EOF Then
	hint="No such statistic"
Else
	sn=rs("statName")
	title=title&": "&sn
	rs.Close
	If s>40 Then
		'get consideration from a different statistic
		Select Case s
			Case 41:s2=1
			Case 42:s2=2
			Case 43:s2=5
			Case 44:s2=6
		End Select
		sql="SELECT l1.d,SUM(l1.units)units,SUM(l2.consid)/SUM(l1.units),SUM(l2.consid)consid "&_
			"FROM landreg l1 JOIN landreg l2 ON l1.d=l2.d WHERE l1.statID="&s&" AND l2.statID="&s2&" GROUP BY "&IIF(f=1,"YEAR (l1.d)","l1.d")
	Else
		sql="SELECT d,SUM(units)units,SUM(consid)/SUM(units),SUM(consid)consid FROM landreg WHERE statID="&s&" GROUP BY "&IIF(f=1,"YEAR(d)","d")
	End If
	rs.Open sql,con
	If Not rs.EOF Then
		a=rs.getrows()
		'build javascript arrays for chart
		units=hcArr(a,1)
		consid=hcArr(a,2)
	Else
		hint="No data found"
	End If
	rs.Close
End If%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call landRegBar(f,1)%>
<%If hint<>"" Then%>
	<h4><%=hint%></h4>
<%End If%>
<form method="get" action="landreg.asp">
	<div class="inputs">
		<%sql="SELECT ID,statName FROM stats WHERE ID IN(41,42,43,44) OR "&_
			"ID IN(SELECT DISTINCT statID FROM landreg JOIN stats ON statID=ID WHERE NOT isNull(consid)) ORDER BY statName"%>
		<%=arrSelect("s",s,con.Execute(sql).GetRows,True)%>
	</div>
	<div class="inputs">
		<%=MakeSelect("f",f,"0,Monthly,1,Annual",True)%>
	</div>
	<div class="clear"></div>
</form>
<p>ASP=Agreement for Sale and Purchase, also known as deeds. ASPs are registered weeks or 
months before assignment (transfer of property) on completion. Each deed relates to one 
or more unit of property in a building. Data on underlying units are only 
available for the Urban (Hong Kong + Kowloon) and New Territories (NT) segments, 
not for each district. The registry provides transaction summaries for the 8 Districts of NT (Islands, North, Sai 
Kung, Shatin, Tai Po, Tsuen Wan, Tuen Mun and Yuen Long). There is no breakdown for the 2 "Urban" areas, "Hong Kong" 
(the island) and "Kowloon", 
which include 4 and 6 Districts respectively.&nbsp; Please <a href="../contact">report</a> any errors or desired features. </p>
<%If Not isEmpty(a) Then%>
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
	            	fontSize:'1em'
		        }	            
	        },
	        subtitle: {
	        	text: '<%=sn%>',
	        	style: {
	        		fontWeight: 'bold',
	        		fontSize: '1em'
	        	}
	        },
	        yAxis: [{
				title: {
		            text: 'Average consideration HK$m'
		        },
		        height:'64%',
		        gridLineColor:'gray',
		        minorTickInterval:'auto',
		        lineWidth: 1,
		        min:null
		    }, {
		        title: {
		            text: 'Units'
		        },
		        top:'65%',
		        height: '35%',
		        offset: 0,
		        lineWidth: 1,
		    }],
	        series: [{
	        	type: 'line',
	        	name: 'Consideration',
	        	id: 'adjClose',
	            data: [<%=consid%>],
	            dataGrouping: {
	            	enabled:false
				},
			    tooltip: {
			    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>HK${point.y:,.3f}m</b><br>",
			    	shared:true
			    }, 
			},{
			    type: 'column',
			    name: 'Units',
			    data: [<%=units%>],
		        color: "grey",
	            dataGrouping: {
	            	enabled:false
	            },
			    yAxis: 1
			}],
			tooltip:{
				backgroundColor: 'yellow',
				xDateFormat: "%Y-%m",
				headerFormat: '<span style="font-size: 12px">{point.key}</span><br/>'
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
	<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
	<div class="clear"></div>
	<table class="numtable center fcl">
		<tr>
			<th><%=IIF(f=0,"Month","Year")%></th>
			<th>Number</th>
			<th>Consid.<br>$m</th>
			<th>Average<br>consid $m</th>
		</tr>
		<%For x=Ubound(a,2) to 0 Step -1%>
			<tr>
				<td><%=Left(MSdate(a(0,x)),IIF(f=0,7,4))%></td>
				<td><%=FormatNumber(a(1,x),0)%></td>
				<td><%=FormatNumber(a(3,x),0)%></td>
				<td><%=FormatNumber(a(2,x),3)%></td>
			</tr>
		<%Next%>
	</table>
<%End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>