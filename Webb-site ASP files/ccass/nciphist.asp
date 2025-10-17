<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbpub/functions1.asp"-->
<!--#include virtual="/dbpub/navbars.asp"-->
<%'NB nciphist is very similar to chistory apart from participant info in chistory and number of holders in nciphist, so edit them in sync
Dim con,rs,sql,atDate,lastholding,holding,change,issued,holders,closing,tdate,a,m,p,s,o,schk(2),cnt,pword,tradeDate,arr,rows,_
	lastclose,lasthold,pricejs,holdjs,x,lastHoldDate,i,n,person
m=botchk2()%>
<title>Holdings of unnamed Investor Participants in a stock</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<script type="text/javascript" src="../templates/highstock.js"></script>
<script type="text/javascript" src="../templates/exporting.js"></script>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<%If m<>"" Then%>
	<p><b><%=m%></b></p>
<%Else
	Call openEnigmaRs(con,rs)
	Call findStock(i,n,person)
	'whether to show chart & table, chart only or table only
	s=Request("s")
	If Not isNumeric(s) Then s=""
	If s="" Then s=Session("showdata") Else Session("showdata")=s
	If s="" Then s=0
	schk(s)="checked"
	'whether to show rows with no holding change
	If Request("o")="" Then o=Session("nochange") Else o=getBool("o")
	Session("nochange")=o
	'whether to adjust for splits and bonuses
	If Request("a")="" Then a=Session("splitAdj") Else a=getBool("a")
	Session("splitAdj")=a
	'whether to use the price on the holding date or the last trading date
	If Request("p")="" Then p=Session("pHolding") Else p=getBool("p")
	Session("pHolding")=p
	pword=IIF(p,"holding","trade")
	If i>0 Then lastHoldDate=con.Execute("SELECT max(atDate) AS d FROM ccass.dailylog WHERE issueID="&i).Fields(0)
	If i=0 Then%>
		<h2>Holdings of unnamed Investor Particpants</h2>
		<p><b><%=n%></b></p>
	<%Else
		Call orgBar(n,person,0)
		Call ccassholdbar(i,atDate,4)
	End If%>
	<form method="get" action="nciphist.asp">
		<input type="hidden" name="i" value="<%=i%>">
		<div class="inputs">
			Stock code: <input type="text" name="sc" id="stockCode" size="5" value="">
		</div>
		<div class="clear"></div>
		<div class="inputs">
			<p>Adjust for splits and bonus issues:
				<input type="radio" name="a" value="1" <%=checked(a)%> onchange="this.form.submit()">Yes
				<input type="radio" name="a" value="0" <%=checked(Not a)%> onchange="this.form.submit()">No
			</p>
			<p>Use price on:
				<input type="radio" name="p" value="0" <%=checked(Not p)%> onchange="this.form.submit()">trading date
				<input type="radio" name="p" value="1" <%=checked(p)%> onchange="this.form.submit()">holding/settlement date
			</p>
			<p>Show:
			<input type="radio" name="s" value="0" <%=schk(0)%> onchange="this.form.submit()">chart &amp; table
			<input type="radio" name="s" value="1" <%=schk(1)%> onchange="this.form.submit()">chart only
			<input type="radio" name="s" value="2" <%=schk(2)%> onchange="this.form.submit()">table only
			</p>
			<p>Table rows with no holding change:
				<input type="radio" name="o" value="1" <%=checked(o)%> onchange="this.form.submit()">include
				<input type="radio" name="o" value="0" <%=checked(Not o)%> onchange="this.form.submit()">exclude
			</p>
			<input type="submit" value="Go">
		</div>
		<div class="clear"></div>
	</form>
	<%If i>0 Then%>
		<h3>Holdings of unnamed Investor Particpants</h3>
		<p><a href="ipstakes.asp">Click here</a> to see all issues held by investor participants.</p>
		<%
		If Not a Then
			'don't adjust for splits and bonus issues
			If p Then
				'use prices on holding date
				sql="SELECT q.atDate,closing,NCIPhldg AS holding,outstanding("&i&",q.atDate) AS os,tradeDate,1,NCIPcnt AS holders "&_
					"FROM ccass.quotes q JOIN ccass.calendar c ON q.atDate=c.settleDate LEFT JOIN ccass.dailylog d ON q.atDate=d.atDate AND d.issueID="&i&_
				    " WHERE q.issueID="&i&" AND NOT c.deferred AND settleDate>='2007-06-26' ORDER BY atDate;"
			Else
				'use prices on trading date
				sql="SELECT settleDate AS atDate,closing,NCIPhldg AS holding,outstanding("&i&",settleDate) AS os,tradeDate,1,NCIPcnt AS holders "&_
				    "FROM ccass.quotes q JOIN ccass.calendar c ON q.atDate=c.tradeDate LEFT JOIN ccass.dailylog d ON c.settleDate=d.atDate AND d.issueID="&i&_
				    " WHERE q.issueID="&i&" AND NOT c.deferred AND settleDate>='2007-06-26' ORDER BY tradeDate;"
			End If
		Else
			'adjust for splits and bonus issues
			If p Then
				'use prices on holding date
				sql="SELECT atDate,closing*scripAdj as closing,round(holding/scripAdj/adjSplit,0) AS holding,"&_
					"outstanding("&i&",atDate)/scripAdj AS os,tradeDate,adjBonus,holders FROM "&_
					"(SELECT NCIPhldg AS holding,NCIPcnt AS holders,q.atDate,splitAdj("&i&",q.atDate) AS scripAdj,closing,tradeDate,"&_
					"IFNULL((SELECT adjust FROM events WHERE issueID="&i&" AND eventType=4 AND isNull(cancelDate) AND exDate=settleDate),1) AS adjSplit,"&_
					"IFNULL((SELECT adjust FROM events WHERE issueID=967 AND eventType=5 AND isNull(cancelDate) AND exDate=settleDate),1) AS adjBonus "&_
					"FROM ccass.quotes q JOIN ccass.calendar c ON q.atDate=c.settleDate LEFT JOIN ccass.dailylog d ON q.atDate=d.atDate AND d.issueID="&i&_
				    " WHERE q.issueID="&i&" AND NOT c.deferred AND settleDate>='2007-06-26') AS t1 ORDER BY atDate;"
			Else
				'use prices on trading date (S-2)
				sql="SELECT atDate,closing*priceAdj as closing,round(holding/holdAdj/adjSplit,0) AS holding,"&_
					"outstanding("&i&",atDate)/holdAdj AS os,tradeDate,adjBonus,holders FROM "&_
					"(SELECT NCIPhldg AS holding,NCIPcnt AS holders,c.settleDate AS atDate,splitAdj("&i&",c.tradeDate) AS priceAdj,"&_
					"splitadj("&i&",c.settleDate) AS holdAdj,closing, tradeDate,"&_
					"IFNULL((SELECT adjust FROM events WHERE issueID="&i&" AND eventType=4 AND isNull(cancelDate) AND exDate=settleDate),1) AS adjSplit,"&_
					"IFNULL((SELECT adjust FROM events WHERE issueID="&i&" AND eventType=5 AND isNull(cancelDate) AND exDate=settleDate),1) AS adjBonus "&_
				    "FROM ccass.quotes q JOIN ccass.calendar c ON q.atDate=c.tradeDate LEFT JOIN ccass.dailylog d ON c.settleDate=d.atDate AND d.issueID="&i&_
				    " WHERE q.issueID="&i&" AND NOT c.deferred AND settleDate>='2007-06-26') AS t1 ORDER BY tradeDate;"
			End If
		End If
		rs.Open sql,con
		If rs.EOF Then%>
			<p><b>No records found.</b></p>
		<%Else
			arr=rs.GetRows()
			rows=CInt(Ubound(arr,2))
			'now fill in blanks with previous price and holding
			lastClose=arr(1,0)
			If isNull(arr(2,0)) Then
				'no holding on first date in series 
				lastHold=0
				arr(2,0)=0
			Else
				lastHold=arr(2,0)
			End If
			For x=1 to rows
				If arr(1,x)=0 Then arr(1,x)=lastClose Else lastClose=arr(1,x)
				If isNull(arr(2,x)) Then
					lastHold=CDbl(lastHold)*CDbl(arr(5,x)) 'adjust last holding for any bonus issue going ex this day
					arr(2,x)=lastHold
				Else
					lastHold=arr(2,x)
				End If
			Next
			If s<>2 Then
				'build javascript arrays for chart
				For x=0 to rows
					If p Then tdate=jsdt(arr(0,x)) Else tdate=jsdt(arr(4,x))
					If x<rows-1 Or p="1" Then holdjs=holdjs & "[" & tdate & "," & round(arr(2,x),0) & "],"
					pricejs=pricejs & "[" & tdate & "," & round(arr(1,x),3) & "],"
				Next		
				If holdjs<>"" Then holdjs="[" & Left(holdjs,len(holdjs)-1) & "]" Else holdjs="[]"
				If pricejs<>"" Then pricejs="[" & Left(pricejs,len(pricejs)-1) & "]" Else pricejs="[]"
				If not isEmpty(arr) Then%>
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
					    		selected: 5,
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
					            	fontSize:'1em'
						        }	            
					        },
					        subtitle: {
					        	text: 'Unnamed Investor Participants',
					        	style: {
					        		fontWeight: 'bold',
					        		fontSize: '1em'
					        	}
					        },
					        yAxis: [{
								title: {
						            text: 'Price'
						        },
						        height:'64%',
						        gridLineColor:'gray',
						        minorTickInterval:'auto',
						        lineWidth: 1,
						        min:null
						    }, {
						        title: {
						            text: 'Holding'
						        },
						        top:'65%',
						        height: '35%',
						        offset: 0,
						        lineWidth: 1,
						    }],
					        series: [{
					        	type: 'line',
					        	name: 'Price',
					        	id: 'adjClose',
					            data: <%=pricejs%>,
					            dataGrouping: {
					            	enabled:false
								},
							    tooltip: {
							    	pointFormat: "<span style='color:{series.color}'>\u25CF</span> {series.name}: <b>{point.y:,.3f}</b><br>",
							    	shared:true
							    }, 
							}, {
							    type: 'column',
							    name: 'Holding',
							    data: <%=holdjs%>,
						        color: "grey",
					            dataGrouping: {
					            	enabled:false
					            },
							    yAxis: 1
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
					});
					</script>
					<div id="chart1" style="width:95%;height:500px;margin-left:0"></div>
					<div class="clear"></div>
				<%End If
			End If
			If s<>1 Then%>
				<h3>Data table</h3>
				<%If Not a Then%>
					<p>Prices, holdings and issued shares are unadjusted for splits and bonus issues.</p>
				<%Else%>
					<p>Prices, holdings and issued shares are adjusted for splits and bonus issues.</p>			
				<%End If%>
				<%If p Then%>
					<p>Using prices on the holding/settlement date, not the trade date.</p>
				<%Else%>
					<p>Using prices on the last related trading date, which is 2 trading days before settlement.</p>
				<%End If%>
				<%=mobile(1)%>
				<table class="numtable yscroll">
				<tr>
					<th class="colHide1">Row</th>
					<th>Holding<br>date</th>
					<th>Holding</th>
					<th>Change</th>
					<th>Stake<br>%</th>
					<th class="colHide3">Hold<br>-ers</th>
					<th class="colHide1">Issued<br>shares</th>
					<th class="colHide3">Holding<br>Value</th>
					<th class="colHide3">Price @<br><%=pword%><br>date</th>
					<th class="colHide2">Trade<br>date</th>
				</tr>
				<%For x=rows To 0 Step -1
					atDate=arr(0,x)
					closing=arr(1,x)
					holding=Cdbl(arr(2,x))
					issued=arr(3,x)
					tradeDate=arr(4,x)
					If not isNull(issued) Then issued=Cdbl(issued)
					If not isNull(closing) Then closing=Round(Cdbl(closing),3)'prices are stored single-precision so must round for maths
					If x>0 Then change=holding-CDbl(arr(2,x-1))
					If o Or change<>0 Or atDate>lastHoldDate Then
						cnt=cnt+1
						%>
						<tr>
							<td class="colHide1"><%=cnt%></td>
							<td><a href="chldchg.asp?i=<%=i%>&amp;d=<%=MSdate(atDate)%>"><%=MSdate(atDate)%></a></td>
							<%If atDate<=lastHoldDate Then%>
								<td><%=FormatNumber(holding,0)%></td>
								<td><%If x>0 Then Response.Write FormatNumber(change,0)%></td>
								<%If Not isNull(issued) Then%>
									<td><%=FormatNumber(holding/CDbl(issued)*100,2)%></td>
									<td class="colHide3"><%=arr(6,x)%></td>
									<td class="colHide1"><%=FormatNumber(issued,0)%></td>
								<%Else%>
									<td></td>
									<td class="colhide3"><%=arr(6,x)%></td>
									<td class="colHide1"></td>
								<%End If%>
								<td class="colHide3">
									<%If closing>0 Then
										Response.Write FormatNumber(closing*holding,0)
									Else
										Response.Write "-"
									End If%>
								</td>
							<%Else%>
								<td colspan="3">
								<td class="colHide3"></td>
								<td class="colHide1"></td>
								<td class="colHide3"></td>
							<%End If%>
							<td class="colHide3"><%=sig(closing)%></td>
							<td class="colHide2"><%=MSdate(tradeDate)%></td>
						</tr>
					<%End If
				Next%>
				</table>
			<%End If
		End If
	End If
	Call CloseConRs(con,rs)
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>