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
<%Dim con,rs,title,y,m,msql,x,sql,f,ftxt,simple,vc,vcdes,d,op,opName,a,maxd,jpd,jcd,kcd,sn
Call openEnigmaRs(con,rs)
vc=Max(GetInt("vc",80),1)
maxd=con.Execute("SELECT MAX(d) FROM tdjourneys").Fields(0)
sn="Webb-site.com"
f=getInt("f",1) 'frequency 1=monthly 2=yearly
If f=1 Then ftxt="Month" Else ftxt="Year"

simple=GetBool("simple")
If simple Then
	'use previous detailed category to get the parent
	rs.Open "SELECT jparent FROM vehicleclass WHERE jparent<>ID AND ID="&vc,con
	If Not rs.EOF Then vc=rs("jparent")
	rs.Close
Else
	'find first child alphabetically, which may be itself if ungrouped
	rs.Open "SELECT ID FROM vehicleclass WHERE jparent="&vc&" ORDER BY des LIMIT 1",con
	If Not rs.EOF Then vc=rs("ID")
	rs.Close
	rs.Open "SELECT orgID,fnameOrg(name1,cName)n FROM vehicleclass v JOIN (ptoperators p,organisations o) ON operator=p.ID AND p.orgID=o.personID WHERE v.ID="&vc,con
	If Not rs.EOF Then
		op=rs("orgID")
		opName=rs("n")
	End If
	rs.Close
End If
vcdes=con.Execute("SELECT des FROM vehicleclass WHERE ID="&vc).Fields(0)

title="HK passenger journeys: "&vcdes&" by "&Lcase(ftxt)

sql="SELECT t.d,SUM(j)j,ROUND(SUM(j)/SUM(DAY(t.d)))pd,ROUND(AVG(totlic))totLic,ROUND(AVG(paxcap))paxcap,SUM(km)km,"&_
	"IFNULL(SUM(km)/AVG(totLic)/SUM(DAY(t.d)),0)kcd,IFNULL(SUM(j)/AVG(totlic)/SUM(DAY(t.d)),0)jcd FROM "
If simple Then
	sql=sql&"(SELECT t.d,SUM(j)j,SUM(paxcap)paxcap,SUM(km)km,SUM(totLic)totLic FROM tdjourneys t JOIN "&_
		"(vehicleclass v,tdreglic r) ON t.vc=v.ID AND t.d=r.d AND t.vc=r.vc AND jparent="&vc&" GROUP BY t.d)t"
Else
	sql=sql&"tdjourneys t JOIN tdreglic r ON t.d=r.d AND t.vc=r.vc WHERE t.vc="&vc
End If
sql=sql&" GROUP BY "&IIF(f=1,"t.d","Year(t.d)")&" ORDER BY d DESC"
a=con.Execute(sql).GetRows
jpd=hcArr(a,2)
kcd=hcArr(a,6)
jcd=hcArr(a,7)%>
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
	            text: 'Journeys per day'
	        },
	        height:'64%',
	        gridLineColor:'gray',
	        minorTickInterval:'auto',
	        lineWidth: 1,
	        min:null
	    }, {
			title: {
	            text: 'Journeys per car per day'
	        },
	        height:'64%',
	        gridLineColor:'gray',
	        minorTickInterval:'auto',
	        lineWidth: 1,
	        opposite:false,
	        min:null
	    }, {
	        title: {
	            text: 'Km per car per day'
	        },
	        top:'65%',
	        height: '35%',
	        offset: 0,
	        lineWidth: 1,
	    }],
        series: [{
        	type: 'line',
        	name: 'Journeys per day',
        	id: 'adjClose',
            data: [<%=jpd%>],
            dataGrouping: {
            	enabled:false
			},
		    tooltip: {
		    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y}</b><br>",
		    	shared:true
		    }, 
		},{
		    type: 'column',
		    name: 'Km per car per day',
		    data: [<%=kcd%>],
	        color: "grey",
            dataGrouping: {
            	enabled:false
            },
		    tooltip: {
		    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y:,.1f}</b><br>",
		    	shared:true
		    },
		    yAxis: 2
		},{
		    type: 'line',
		    name: 'Journeys per car per day',
		    data: [<%=jcd%>],
	        color: "grey",
            dataGrouping: {
            	enabled:false
            },
		    tooltip: {
		    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y:,.1f}</b><br>",
		    	shared:true
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
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call vebar(vc,0,11)%>
<%If op>0 Then%>
	<h4>Operator: <a href="orgdata.asp?p=<%=op%>"><%=opName%></a></h4>
<%End If%>
<p>This page shows the number of passenger journeys and distance covered for a vehicle class, from Jan-2013 onwards, 
using data from the Transport Department. Choose from simple or detailed classes. For trains, cars are passenger 
carriages but car kilometres are train kilometres. So you need to multiply km/car/day by the number of cars per train. MTR fleet data exclude cross-border trains.&nbsp;
Yearly data show monthly average capacity and vehicles. The latest available month is <%=Left(MSdate(maxd),7)%>.
 Click on the <%=Lcase(ftxt)%> to see all types for the <%=Lcase(ftxt)%>.</p>
<form method="get" action="veJourneyhist.asp">
	<div class="inputs">
		Breakdown <%=makeSelect("simple",simple,"True,Simple,False,Detailed",True)%>
	</div>
	<div class="inputs">
	Vehicle class
	<%If simple Then
		Response.Write arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE ID IN(SELECT DISTINCT jParent FROM vehicleclass) ORDER BY des").GetRows,True)
	Else
		Response.Write arrSelect("vc",vc,con.Execute("SELECT ID,des FROM vehicleclass WHERE NOT ISNULL(jParent) ORDER BY des").GetRows,True)
	End If%>
	</div>
	<div class="inputs">
		Frequency
		<%=makeSelect("f",f,"1,Monthly,2,Yearly",True)%>
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p class="widthAlert1">Some data are hidden to fit your display.<span class="portrait">  Rotate?</span></p>
<table class="numtable fcl center">
	<tr>
		<th><%=ftxt%></th>
		<th>Journeys</th>
		<th>Per day</th>
		<th>Licensed vehicles</th>
		<th>Vehicle capacity</th>
		<th>Car Km</th>
		<th class="colHide2">Km/<br>car/<br>day</th>
		<th class="colHide2">Journeys/<br>car/<br>day</th>
	</tr>
	<%For y=0 to Ubound(a,2)
		d=MSdate(a(0,y))
		If f=1 Then m=Month(d) Else m=0
		If f=2 then
			If Year(d)=Year(maxd) Then d=MSdate(maxd) Else d=Year(d)&"-12-31"
		End If%>
		<tr>
			<td class="nowrap"><a href="veJourneys.asp?y=<%=Year(d)%>&amp;m=<%=m%>&amp;simple=<%=simple%>"><%=Left(d,7)%></a></td>
			<%For x=1 to 5%>
				<td><%=FormatNumber(a(x,y),0)%></td>
			<%Next%>
			<td class="colHide2"><%=FormatNumber(a(6,y),1)%></td>
			<td class="colHide2"><%=FormatNumber(a(7,y),1)%></td>
		</tr>
	<%Next%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>