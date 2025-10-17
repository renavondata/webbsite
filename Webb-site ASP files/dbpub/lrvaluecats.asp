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
<%Dim a,s,s2,sn,x,y,units,title,hint,t(23),p,stack,yaxis,con,rs,col,ym,grp(5),g,bands,sql,maxd,f,period
'ym holds the year-monthm
'grp holds groups of bands
'sn holds the category short names
'a holds all the table data
g=getBool("g") 'whether to group by $5m bands
If g Then bands=5 Else	bands=23
f=getInt("f",0) '0=monthly, 1=Annual
period=IIF(f=0,"Month","Year")
Call openEnigmaRs(con,rs)
p=getBool("p")
If p Then
	stack="percent"
	yaxis="Percent"
Else
	stack="normal"
	yaxis="Agreements"
End If
title="HK Land Registry residential transactions by value"
maxd=MSdate(con.Execute("SELECT MAX(d) FROM landreg").Fields(0))
sql="WITH RECURSIVE dates(d) AS (SELECT '2002-01-01' UNION ALL SELECT d+INTERVAL 1 "&period&" FROM dates WHERE d+INTERVAL 1 "&period&"<='"&maxd&"') SELECT d FROM dates"
ym=con.Execute(sql).GetRows
Redim a(bands,Ubound(ym,2))

sql="WITH RECURSIVE dates(d) AS (SELECT '2002-01-01' UNION ALL SELECT d+INTERVAL 1 MONTH FROM dates WHERE d+INTERVAL 1 MONTH<='"&maxd&"') "&_
	"SELECT UNIX_TIMESTAMP(dates.d)*1000 sd,SUM(IFNULL(units,0))units FROM dates LEFT JOIN landreg r ON dates.d=r.d AND statID IN("
If g Then
	grp(0)="35,36,37,38,47,48" '<$5m
	grp(1)="39,49,50,51,52,53" '<$10m
	grp(2)="40" '>$10m
	grp(3)="54,55,56,57,58" '<$15m
	grp(4)="59,60,61,62,63" '<$20m
	grp(5)="64" '>$20m
	sn=split("<$5m <$10m >$10m <$15m <$20m >$20m")
	For y=0 to bands
		rs.Open sql&grp(y)&") GROUP BY "&IIF(f=0,"dates.d","YEAR(dates.d)"),con
		x=0
		Do Until rs.EOF
			'build the javascript array for this series
			t(col)=t(col) & ",[" & rs("sd") & "," & rs("units") & "]"
			a(col,x)=rs("units")
			x=x+1
			rs.MoveNext
		Loop
		rs.Close
		t(col)=Mid(t(col),2)
		col=col+1	
	Next
Else
	Redim sn(bands)
	For y=0 to 29
		If y=6 then y=12 'skip to statID=47
		sn(col)=con.Execute("SELECT RIGHT(statName,LENGTH(statName)-31) FROM stats WHERE ID="&y+35).Fields(0)
		rs.Open sql&y+35&") GROUP BY "&IIF(f=0,"dates.d","YEAR(dates.d)"),con
		x=0
		Do Until rs.EOF
			'build the javascript array for this series
			t(col)=t(col) & ",[" & rs("sd") & "," & rs("units") & "]"
			a(col,x)=rs("units")
			x=x+1
			rs.MoveNext
		Loop
		rs.Close
		t(col)=Mid(t(col),2)
		col=col+1
	Next
End If
Call CloseConRs(con,rs)%>
<title><%=title%></title>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.setOptions({
		lang: {
	      thousandsSep: ','
	    }
	});
	Highcharts.stockChart('chart1', {
    	chart: {
    		type: 'column',
    		backgroundColor: "#FFFFFF",
	        borderWidth: 1,
	        borderColor: "black"
    	},
    	plotOptions: {
    		column: {
	    		stacking: '<%=stack%>',
	    	   	dataLabels: {
	    			enabled: false
	    		}
	    	}
    	},
    	legend:{
    		enabled: true
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
        	text: '<i>Webb-site.com</i>',
        	style: {
        		fontWeight: 'bold',
        		fontSize: '1em'
        	}
        },
        yAxis: [{
			title: {
	            text: '<%=yaxis%>',
	            margin: 40
	        },
	        labels: {
	        	align: "right",
	        	x:30
	        },
	        gridLineColor:'gray',
	        minorTickInterval:'auto',
	        lineWidth: 1,
	        min:null
	    }],
        series: [
	    <%For y=0 to bands%>
        {
        	name: '<%=sn(y)%>',
        	id: 'sn<%=y%>',
        	index: <%=bands-y%>,
            data: [<%=t(y)%>],
            dataGrouping: {
            	enabled:false
			},
		},
		<%Next%>
		],
		tooltip:{
			backgroundColor: 'yellow',
			xDateFormat: "%b %Y",
			headerFormat: '<span style="font-size: 12px">{point.key}</span><br/>',
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
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call landRegBar(f,2)%>
<%If hint<>"" Then%>
	<h4><%=hint%></h4>
<%End If%>
<form method="get" action="lrvaluecats.asp">
	<div class="inputs">
		<%=MakeSelect("f",f,"0,Monthly,1,Annual",True)%>
	</div>
	<div class="inputs">
		<%=checkbox("p",p,True)%> Show percentage distribution
	</div>
	<div class="inputs">
		<%=checkbox("g",g,True)%> Show in bands of $5m
	</div>
	<div class="clear"></div>
</form>
<p>The Land Registry classifies Agreements for Sale and Purchase (ASP) of 
residential units by bands of total HK$ value. Until 2022-11, the bands were coarser. Each agreement relates to one 
or more unit of property in a building. Please <a href="../contact">report</a> any errors or desired features. </p>
<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<h3>Data</h3>
<div class="xscroll">
	<table class="numtable center fcl">
		<tr>
			<th><%=period%></th>
			<%For y=0 to bands
				x=Instr(sn(y),"<")
				If x=0 Then x=Instr(sn(y),">")%>
				<th><%=Mid(sn(y),x)%></th>
			<%Next%>
			<th>Total</th>
		</tr>
		<%For x=Ubound(ym,2) to 0 Step -1%>
			<tr>
				<td class="nowrap"><%=LEFT(ym(0,x),IIF(f=0,7,4))%></td>
				<%For y=0 to bands%>
					<td><%=a(y,x)%></td>
				<%Next%>
				<td><%=rowSum(a,x)%></td>
			</tr>
		<%Next%>
	</table>
</div>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>