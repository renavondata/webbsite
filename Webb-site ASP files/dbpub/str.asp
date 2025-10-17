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
<%Dim prevDate,prevClose,changep,closing,vol,turn,showdata,showDeals,adjClose,adjArr,x,rowcount,lastClose,jdate,flagArr,flagCnt,shsInv,_
	bbArr,bbCnt,showBB,value,price,volume,i,n,p,con,rs
Call openEnigmaRs(con,rs)
Call findStock(i,n,p)
showDeals=getBool("f")
showBB=getBool("b")
If i>0 Then
	rs.Open "SELECT UNIX_TIMESTAMP(atDate)*1000,ROUND(vol/f) AS adjVol,"&_
		"ROUND(closing*f,5) as adjClose FROM (SELECT atDate,closing,vol,curAdj("&i&",atDate) as f FROM ccass.quotes WHERE issueID="&i&" ORDER BY atDate) as t1",con
	If not rs.EOF Then
		adjArr=rs.getrows()
		rowcount=CInt(Ubound(adjArr,2))
		'now fill in blanks with previous price
		lastClose=adjArr(2,0)
		For x=1 to rowcount
			If adjArr(2,x)=0 Then adjArr(2,x)=lastClose Else lastClose=adjArr(2,x)
		Next
		'build javascript arrays for chart
		For x=0 to rowcount
			volume=volume & "[" & adjArr(0,x) & "," & round(adjArr(1,x),0) & "],"
			price=price & "[" & adjArr(0,x) & "," & round(adjArr(2,x),3) & "],"
		Next
		volume="[" & Left(volume,len(volume)-1) & "]"
		price="[" & Left(price,len(price)-1) & "]"
	End If
	rs.Close
	rs.Open "SELECT relDate,IF(probReason IN(21,1101,1113),'Bought','Sold'),shsInv,CONCAT(p.name1,', ',p.name2),dir,s.ID,IFNULL(avPrice,hiPrice),currency "&_
		"FROM sdi s JOIN (sdievent,people p,currencies c) ON s.id=sdiID AND dir=personID AND curr=c.ID "&_
		"WHERE isnull(serNoSuper) AND probReason IN(21,22,23,1101,1113,1201,1213,1302) AND (Not isNull(hiPrice) or Not isNull(avPrice)) AND issueID="&i&" ORDER BY relDate",con
	If not rs.EOF Then
		flagArr=rs.getrows()
		flagCnt=CInt(Ubound(flagArr,2))
	Else
		flagCnt=-1 'prevent loop from running
	End If
	rs.Close
	rs.Open "SELECT effDate,-shares AS shares,value FROM capchanges WHERE capChangeType IN(1,6) and issueID="&i,con
	If not rs.EOF Then
		bbArr=rs.getrows()
		bbCnt=Cint(Ubound(bbArr,2))
	Else
		bbCnt=-1
	End If
	rs.Close
End If%>
<title>Webb-site Total Return: <%=n%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If i=0 Then%>
	<h2><%=n%></h2>
<%Else
	Call orgBar(n,p,0)
	Call stockBar(i,5)%>
	<ul class="navlist">
		<li><a href="TRnotes.asp" target="_blank">Notes</a></li>
		<li><a href="alltotrets.asp">All Total Returns</a></li>		
	</ul>
	<div class="clear"></div>
<%End If
Call CloseConRs(con,rs)%>
<form method="get" action="str.asp">
	<div class="inputs">
		Stock code: <input type="text" name="sc" size="5" value="">
	</div>
	<div class="inputs">
		<input type="hidden" name="i" value="<%=i%>">
		<input type="checkbox" id="dealCheck" name="f" value="1" <%=checked(showDeals)%>>show directors' on-market dealings
	</div>
	<div class="inputs">
		<input type="checkbox" id="bbCheck" name="b" value="1" <%=checked(showBB)%>>show buybacks
	</div>
	<div class="inputs">
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
</form>
<p>Please <a href="../contact">report</a> any errors or desired features. 
For more help, see the <a href="TRnotes.asp" target="_blank">the notes</a>.</p>
<%If not isEmpty(adjArr) Then%>
	<script type="text/javascript">
	document.addEventListener('DOMContentLoaded', function () {
		var flags=[],
			bbFlags=[],
			atDate;
		<%For x=0 to flagCnt
			jdate=flagArr(0,x)
			shsInv=flagArr(2,x)
			If isNull(shsInv) Then shsInv=0%>
			atDate=Date.parse("<%=jdate%>")
			flags.push({
				x:atDate,
				title:'<%=Left(flagArr(1,x),1)%>',
				text:'<a href="https://webb-site.com/dbpub/sdidirco.asp?p=<%=flagArr(4,x)%>&i=<%=i%>"><%=Replace(flagArr(3,x),"'","\'")%></a><br/>'+
					'<a href="https://webb-site.com/dbpub/sdicap.asp?r=<%=flagArr(5,x)%>"><%=flagArr(1,x)%>'+
					' '+'<%=FormatNumber(shsInv,0)%> @<%=flagArr(7,x)%><%=flagArr(6,x)%></a>'
				});
		<%Next
		For x=0 to bbCnt
			jdate=bbArr(0,x)
			shsInv=bbArr(1,x)
			value=bbArr(2,x)
			If isNull(value) then value=0
			%>
			atDate=Date.parse("<%=jdate%>")
			bbFlags.push({
				x:atDate,
				title:'R',
				text:'Repurchase<br/><%=FormatNumber(shsInv,0)%> @$<%=FormatNumber(value/Cdbl(shsInv),3)%>'
				});
		<%Next%>
		Highcharts.setOptions({
			global:{useUTC:false},
			lang: {thousandsSep: ','}
		});
		const mychart = Highcharts.stockChart('graphdiv', {
	    	chart: {
	    		backgroundColor: "#FFFFFF",
		        borderWidth: 1,
		        borderColor: "black",
		        height: (9/16*100)+'%',
	    	},
	    	rangeSelector:{
	    		selected: 6,
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
	            text: '<b><%=Replace(n,"'","\'")%></b>',
	            margin: 10,
	            style: {
					fontSize: '1em'
	            }
	        },
	        subtitle: {
	        	text: 'Webb-site Total Return',
	        	style: {
	        		fontWeight: 'bold',
	        		fontSize: '1em'
	        	}
	        },
	        yAxis: [{
				title: {
		            text: 'Adjusted close'
		        },
		        height:'70%',
		        gridLineColor:'gray',
		        minorTickInterval:'auto',
		        lineWidth: 1,
		        min:null
		    }, {
		        title: {
		            text: 'Adjusted volume'
		        },
		        top:'70%',
		        height: '30%',
		        offset: 0,
		        lineWidth: 1,
		    }],
	        series: [{
	        	type: 'line',
	        	name: 'Adjusted close',
	        	id: 'adjClose',
	            data: <%=price%>,
	            dataGrouping: {
	            	enabled:false
				},
			    tooltip: {
			    	shared:true,
			    	valueDecimals: 3
			    }, 
			}, {
			    type: 'column',
			    name: 'Adjusted volume',
			    data: <%=volume%>,
		        color: 'grey',
	            dataGrouping: {
	            	enabled:false
	            },
			    yAxis: 1
			},{
				type: 'flags',
				data: flags,
				id:'dealingFlags',
				onSeries: 'adjClose',
				shape: 'squarepin',
				stickyTracking: true,
				fillColor: "yellow",
				stackDistance: 30,
				turboThreshold:0,
				visible:<%=Lcase(showDeals)%>
			},{
				type: 'flags',
				data: bbFlags,
				id:'bbFlags',
				onSeries: 'adjClose',
				shape: 'squarepin',
				stickyTracking: true,
				lineColor: 'red',
				fillColor: "Turquoise",
				style: {color:'black'},
				stackDistance: 30,
				turboThreshold:0,
				visible:<%=Lcase(showBB)%>				
			}],
			tooltip:{
				backgroundColor: 'yellow',
				xDateFormat: "%a, %e %b, %Y",
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
		document.getElementById('dealCheck').addEventListener('click', () => {
			mychart.series[2].setVisible(!mychart.series[2].visible);
		});
		document.getElementById('bbCheck').addEventListener('click', () => {
			mychart.series[3].setVisible(!mychart.series[3].visible);
		});
	});
	</script>
	<div id="graphdiv" style="width:95vw;"></div>
	<div class="clear"></div>
<%End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>