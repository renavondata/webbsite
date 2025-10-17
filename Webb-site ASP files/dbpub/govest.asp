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
<%Sub GetSum(i,head,res,y,periods,neg)
	'uses external adoCon, t
	'sums everything under i
	'head is Boolean, whether this line is a heading
	'res is a 2-d results array, each row is a line item across periods
	Dim rs,numPer,ID,x,resline
	numper=Ubound(periods) 'number of periods
	Set rs=Server.CreateObject("ADODB.Recordset")
	If head Then
		'find all the non-head values one layer down and summate them
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,SUM(est*IF(rev,1,-1))act FROM govac JOIN govitems g ON govitem=g.ID"&_
			" LEFT JOIN govadopt a ON g.ID=a.govitem AND tree="&t&_
			where&"AND NOT head AND IFNULL(a.parentID,g.parentID)="&i&" GROUP BY d ORDER BY d",adoCon
		If Not rs.EOF Then Call addToRow(res,rs,y,periods,neg)
		rs.Close
		'check for subheads and iteratively call their sums for addition
		rs.Open "SELECT ID FROM govitems g LEFT JOIN govadopt a ON g.ID=a.govitem AND tree="&t&_
			where&"AND head AND IFNULL(a.parentID,g.parentID)="&i,adoCon
		Do Until rs.EOF
			ID=rs("ID")
			Redim resline(numPer,0)
			'iterate then add result
			Call GetSum(ID,True,resline,0,periods,neg)
			For x=0 to numPer
				res(x,y)=res(x,y)+resline(x,0)
			Next
			rs.MoveNext
		Loop
		rs.Close
		'try to fetch govac items as some head-items lack a breakdown and have values in govac in some years
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,est*IF(rev,1,-1)act FROM govac JOIN govitems on govitem=ID WHERE govitem="&i&" ORDER BY d",adoCon
		'skip rs values outside our period range
		Do Until rs.EOF
			If rs("d")>=periods(0) Then Exit Do
			rs.MoveNext
		Loop
		'match remaining periods
		For x=0 to numPer
			If rs.EOF Then Exit For
			If rs("d")=periods(x) Then
				res(x,y)=CLng(rs("act"))*neg
				rs.MoveNext
			End If			
		Next
		rs.Close
	Else
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,est*IF(rev,1,-1)act FROM govac JOIN govitems ON govitem=ID "&where&" AND govitem="&i&" ORDER BY d",adoCon
		Call addtoRow(res,rs,y,periods,neg)
		rs.Close
	End If
	Set rs=Nothing
End Sub

Sub addToRow(res,rs,y,periods,neg)
	'add a row of values to a row in the results array
	Dim x
	'skip rs values outside our period range
	Do Until rs.EOF
		If rs("d")>=periods(0) Then Exit Do
		rs.MoveNext
	Loop
	For x=0 to Ubound(periods)
		If rs.EOF Then
			res(x,y)=res(x,y)+0
		ElseIf rs("d")=periods(x) Then
			res(x,y)=res(x,y)+neg*CLng(rs("act"))
			rs.MoveNext
		Else
			'row is initialised with zeroes so we no longer need this
			'res(x,y)=res(x,y)+0
		End If
	Next
End Sub

'MAIN SCRIPT
Dim title,x,y,arrA,periods,numper,res,numh,i,i1,graphTitle,where,head,bread,parentID,firstd,neg,t,rev,links,_
	total,totals,line,useline,origtxt,app,h3,g,yTitle,yround,con,rs
Call openEnigmaRs(con,rs)
Const showcols=7 'number of data table columns to display -1
'i is our internal ID for a head, subhead or item. We can pull the govt heads from there
i=getInt("i",1251) 'default to Consolidated Accounts
'tree view
t=getInt("t",0)
'whether to show as share of GDP. 1=True
g=getBool("g")

where=" WHERE NOT transfer AND NOT reimb "'exclude transfers to funds and reimbursements

rs.Open "SELECT IFNULL(a.parentID,g.parentID)p,IFNULL(a.txt,g.txt)txt,g.txt origtxt,firstd,head,rev,approved,h3 FROM "&_
	"govitems g LEFT JOIN govadopt a ON g.ID=a.govitem AND tree="&t&" WHERE ID="&i,adoCon
	parentID=rs("p")
	title=rs("txt")
	firstd=MSdate(rs("firstd"))
	head=rs("head")
	origtxt=rs("origtxt")
	app=rs("approved")
	If rs("rev") Then neg=1 Else neg=-1
	bread=title
	h3=rs("h3")
rs.Close
rs.Open "SELECT DISTINCT DATE_FORMAT(d,'%Y-%m-%d')d FROM govac WHERE ann=TRUE AND act>0 AND d>='"&firstd&"' ORDER BY d",adoCon
	periods=GetRow(rs)
rs.Close
numper=Ubound(periods) 'number of periods

rs.Open "SELECT ID,IFNULL(a.txt,g.txt)txt,head,IFNULL(IFNULL(a.short,a.txt),IFNULL(g.short,g.txt)),rev FROM "&_
	"govitems g LEFT JOIN govadopt a ON ID=govitem AND tree="&t&_
	where&" AND IFNULL(a.parentID,g.parentID)="&i&" ORDER BY IFNULL(a.priority,g.priority) DESC,txt",adoCon
If rs.EOF Then
	'no breakdown
	graphTitle=adoCon.Execute("SELECT txt FROM govitems WHERE ID="&parentID).Fields(0)
	arrA=adoCon.Execute("SELECT ID,IFNULL(a.txt,g.txt),head,IFNULL(IFNULL(a.short,a.txt),IFNULL(g.short,g.txt)) FROM "&_
		"govitems g LEFT JOIN govadopt a ON ID=govitem AND tree="&t&" WHERE ID="&i).getRows
	'arrA=adoCon.Execute("SELECT ID,txt,head,IFNULL(short,txt) FROM govitems WHERE ID="&i).getRows
Else
	'this item has a breakdown
	links=True
	graphTitle=title
	arrA=rs.getRows
End If
rs.Close
'create breadcrumbs
Do Until isNull(parentID)
	rs.Open "SELECT IFNULL(a.parentID,g.parentID)p,IFNULL(a.txt,g.txt)txt FROM govitems g LEFT JOIN govadopt a "&_
		"ON g.ID=a.govitem AND tree="&t&" WHERE ID="&parentID,adoCon
	bread="<a href='govac.asp?t="&t&"&amp;g="&g&"&amp;i=" & parentID &"'>" & rs("txt") & "</a>" & " | "& bread
	title= rs("txt") & " | " & title
	parentID=rs("p")
	rs.Close
Loop

numh=Ubound(arrA,2)
Redim res(numPer,numh) 'array for results table
'Build the results array
For y=0 to numh
	'initialise the row
	For x=0 to numPer
		res(x,y)=0
	Next
	'arrA(0,y)=i, arrA(2,y)=head
	Call GetSum(arrA(0,y),arrA(2,y),res,y,periods,neg)
Next

'now get any hard values of this line (even if it is a head) and check for differences with our total
ReDim totals(numPer)
useline=False
Redim line(numPer,0)
Call GetSum(i,False,line,0,periods,neg)
For x=0 to numPer
	total=colSum(res,x)
	If line(x,0)<>0 And line(x,0)<>total Then
		'We will need an "others" line
		If Not useline Then
			'We haven't needed this line before, so add it now
			useline=True
			numh=numh+1
			Redim Preserve arrA(Ubound(arrA,1),numh)
			arrA(0,numh)=i
			arrA(1,numh)="Others/no breakdown"
			arrA(3,numh)="Others/no breakdown"
			Redim Preserve res(numper,numh)
			'backfill
			For y=0 to x-1
				res(y,numh)=0
			Next
		End If
		res(x,numh)=line(x,0)-total
		totals(x)=line(x,0)
	Else
		totals(x)=total
		If useline Then res(x,numh)=0
	End If
Next
'now transfer totals to results
Redim Preserve res(numPer,numh+1)
For x=0 to numPer
	res(x,numh+1)=totals(x)
Next
'now divide everything by GDP if needed
If g=1 Then
	ytitle="% of GDP"
	yround=3
	Dim gdp
	gdp=adoCon.Execute("SELECT d,act FROM govac WHERE govitem=6060 and d>='" & periods(0) & "' ORDER BY d").GetRows()
	For y=0 to numh+1
		For x=0 to numPer
			res(x,y)=res(x,y)/10/gdp(1,x)
		Next
	Next
Else
	yTitle="HK$000"
	yround=0
End If
Call CloseConRs(con,rs)
targBtn=1
%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.setOptions({
		lang: {
	      thousandsSep: ','
	    }
	});
	Highcharts.chart('chart1', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: '<%=Replace(graphTitle,"'","\'")%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    colors: ['Green','Red','MediumBlue',
	    	'Orange','Olive','Navy',
	    	'IndianRed','Teal','Turquoise',
	    	'Tomato','YellowGreen','SteelBlue',
	    	'Wheat','GreenYellow','SkyBlue',
	    	'SlateGray','Sienna','Salmon',
	    	'Gold'],
	    yAxis: {
	        title: {
	            text: '<%=ytitle%>',
		        x:0,
	        },
	        labels:{
	        	x:0,
	        	<%If g=1 Then%>
				format: '{value}%',
				<%End If%>
	        },
	    },
	    xAxis: {
	    	categories: [<%="'" & join(periods,"','") & "'"%>]
	    },
	    rangeSelector: {
    		selected: 5,
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
	    	y: 20,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: false,
	    	useHTML: true,
	    	hideDelay:2000,
	    	style: {pointerEvents:'auto'},
	        headerFormat: '<b>{point.key}</b><br>',
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
	    	<%For y=0 to numh%>
	    	{
	        name: '<%=Replace(arrA(3,y),"'","\'")%>',
	        type: 'column',
	        tooltip: {
	        <%If g=1 Then%>
	        valueDecimals: 3,
	        valueSuffix: '%',
	        <%End If%>
		    pointFormat:'<a href="https://webb-site.com/dbpub/govac.asp?t=<%=t%>&g=<%=g%>&i=<%=arrA(0,y)%>">{series.name} {point.y}</a>',
		    },
	        data: [<%=joinRow(res,y)%>]
	        },
	        <%Next%>
	        ]
	});
});
</script>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=bread%></h2>
<!--#include file="navbargovac.inc"-->
<form method="get" action="govest.asp">
	<input type="hidden" name="t" value="<%=t%>">
	<%=checkbox("g",g,True)%> Show as % of Gross Domestic Product
	<input type="hidden" name="i" value="<%=i%>">
</form>
<p>Tap a line-item in the table or a link in a chart data-point to 
drill down to more and more detail, or the headings above to go back up. On the chart, use the top-right hamburger menu to save or print. 
Tap the legend to toggle items in and out of the chart.</p>
<p><b><a href="govacCSV.asp?t=<%=t%>&amp;i=<%=i%>">Download CSV</a></b></p>
<%If Not isNull(app) Then%>
<p>Approved project amount (HK$000): <%=FormatNumber(app,0)%></p>
<%End If%>
<%If Not isNull(h3) Then%>
<p>Accounts code: <%=h3%></p>
<%End If%>

<div id="chart1" style="height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>Tap on the line-items to drill down or chart line-items separately.</p>
<div class="xscroll">
	<table class="numtable center">
		<tr>
			<th class="left">Year to 31 March <%=yTitle%></th>
			<%For x=0 to numper%>
				<th><%=Year(periods(x))%></th>
			<%Next%>
		</tr>
		<%For y=0 to numh%>
		<tr>
			<td class="left">
			<%If links And arrA(0,y)<>i Then%>
				<a href="govest.asp?t=<%=t%>&amp;g=<%=g%>&amp;i=<%=arrA(0,y)%>"><%=arrA(1,y)%></a>
			<%Else%>
				<%=arrA(1,y)%>
			<%End If%>
			</td>
			<%For x=0 to numPer%>
				<td><%=FormatNumber(res(x,y),yround)%></td>
			<%Next%>
		</tr>
		<%Next
		If y>1 Then%>
		<tr class="total">
			<td class="left">Total</td>
			<%For x=0 to numPer%>
				<td><%=FormatNumber(res(x,y),yround)%></td>
			<%Next%>
		</tr>
		<%End If%>
	</table>
</div>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>