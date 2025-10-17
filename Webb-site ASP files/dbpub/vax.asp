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
<%Dim con,rs,sql,title,cohortsTitle,x,y,arr,c,arrc,v,s,sex,t,sino,bion,where,at,sinotot,biontot,rows,popn,_
	cohort,numCohorts,coharr,poparr,clrArr,provDate,arrPref,vax,tempArr,sum,pop,sinoPref,bionPref,d,doses
Call openEnigmaRs(con,rs)
doses=8
If cLng(con.Execute("SELECT SUM(bion10+sino10) FROM vax").Fields(0))>0 Then
	doses=10
ElseIf cLng(con.Execute("SELECT SUM(bion9+sino9) FROM vax").Fields(0))>0 Then
	doses=9
End If
s=Request("s") 'sex
If s<>"m" AND s<>"f" Then s=""

t=GetInt("t",0) 'vaccine type 1=inactivated (fromerly SinoVac 2=mRNA (formerly BioNTech)
If t<>1 And t<>2 Then t=0

'get array of age cohortID, name,minAge (for ordering),population(m,f or total)
arrc=con.Execute("SELECT 0 ID,'All' txt,0 "&s&"popn,0 minAge UNION SELECT ID,txt,"&s&"popn,minAge FROM vaxcohorts ORDER BY minAge").GetRows
numCohorts=Ubound(arrc,2)
c=getInt("c",0) 'cohort
If c<0 or c>numCohorts Then c=8

v=getInt("v",1) 'dose
If v<0 or v>doses Then v=0

provDate=MSdate(con.Execute("SELECT Max(d) FROM vax WHERE NOT prov").Fields(0))

title="Hong Kong COVID-19 Vaccinations"
clrArr=split("tomato red green blue orange magenta cyan DarkBlue black Foliage Purple") 

where=" WHERE 1=1"
Select Case s
	Case "m"
		where=where&" AND male=TRUE"
		sex=" male"
	Case "f"
		where=where&" AND male=FALSE"
		sex=" female"
End Select
For x=1 to doses
	sql=sql&",100*SUM(v.sino"&x&")/SUM(v.sino"&x&"+v.bion"&x&"),100*SUM(v.bion"&x&")/SUM(v.sino"&x&"+v.bion"&x&")"
Next
arrPref=con.Execute("SELECT cohort,txt"&sql&" FROM vax v JOIN vaxcohorts ON cohort=ID GROUP BY cohort ORDER BY minAge").getRows

title=title&sex
If v=0 Then
	sino="sino1"
	bion="bion1"
	For x=2 to doses
		sino=sino&"+"&"sino"&x
		bion=bion&"+"&"bion"&x
	Next
	vax=" and dose"
Else
	vax=" for dose "&v
	sino="sino"&v
	bion="bion"&v
	title=title&" dose "&v
	Redim coharr(numcohorts-1)
	'create an array of arrays, each being a time series for a cohort
	For x=1 to numCohorts
		y=0
		sum=0
		pop=CLng(arrC(2,x))
		Redim TempArr(1,0)
		rs.Open "SELECT d,SUM(sino"&v&"+bion"&v&")v FROM vax "&where&" AND cohort="&arrc(0,x)&" GROUP BY d ORDER BY d",con
		Do until rs.EOF
			Redim Preserve TempArr(1,y)
			sum=sum+CLng(rs("v"))
			TempArr(0,y)=rs("d")
			TempArr(1,y)=Round(100*CDbl(sum/pop),2)
			rs.MoveNext
			y=y+1
		Loop
		rs.Close
		coharr(x-1)=TempArr
	Next
End If
cohortsTitle=title
If c>0 Then
	where=where&" AND cohort="&c
	rs.Open "SELECT * FROM vaxcohorts WHERE ID="&c,con	
	cohort=" aged " & rs("txt")
	popn=CDbl(rs(s&"popn"))
	rs.Close
	title=title&cohort
Else
	popn=CDbl(con.Execute("SELECT SUM("&s&"popn) FROM vaxcohorts").Fields(0))
End If
sql=""
For x=1 to doses
	sql=sql&",SUM(sino"&x&"+bion"&x&")"
Next
arr=con.Execute("SELECT d,SUM("&sino&"),SUM("&bion&")"&sql&" FROM vax"&where&" GROUP By d ORDER By d").getRows
rows=Ubound(arr,2)
If v=0 Then
	'cumulative dosage over time
	Redim at(2*doses,rows)
	Redim d(doses)
	For x=0 to rows
		at(0,x)=arr(0,x)
		For y=1 to doses
			d(y)=d(y)+CLng(arr(y+2,x))
			at(y,x)=d(y)
			at(doses+y,x)=Round(100*CDbl(d(y))/popn,2)
		Next
	Next
Else
	'create cumulative array for a vaccination and percentage of population
	Redim at(5,rows)
	For x=0 to rows
		sinotot=sinotot+CLng(arr(1,x))
		biontot=biontot+CLng(arr(2,x))
		at(0,x)=arr(0,x)
		at(1,x)=sinotot
		at(2,x)=biontot
		at(3,x)=Round(100*CDbl(sinotot)/popn,2)
		at(4,x)=Round(100*CDbl(biontot)/popn,2)
		at(5,x)=Round(100*CDbl(sinotot+biontot)/popn,2)
	Next
End If
Call CloseConRs(con,rs)%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('vax1', {
	    chart: {
	        type: 'column',
	        borderWidth: 1
	    },
	    title: {
	        text: '<%=Title%>',
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
	            grouping: false,
	        	dataLabels: {
	            	enabled: false
	            }
	        }
	    },
	    series: [
	    <%If t=2 or t=0 Then%>
	    	{
	        name: 'mRNA',
	        color:"green",
	        type: 'column',
	        data: [<%=hcArr(arr,2)%>]
	        },
	    <%End If%>    
	    <%If t=1 or t=0 Then%>
	    	{
	        name: 'Inactivated',
	        color:"red",
	        type: 'column',
	        data: [<%=hcArr(arr,1)%>]
	        },	        
	    <%End If%>    
	        ]
	});
});
</script>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('vax2', {
	    chart: {
	        type: 'line',
	        borderWidth: 1
	    },
	    title: {
	        text: 'Cumulative <%=Title%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			},
	    },
	    yAxis: {
	        title: {
	            text: 'Percentage of population',
	            x:15,
	        },
	        labels:{
	        	x:20,
	        	format: '{value}%'
	        },
//	        tickInterval: 10,
//	        max:100,
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
	        backgroundColor: 'white',
	        valueDecimals:2,
	        valueSuffix:'%'
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
		<%If v=0 Then
			For y=0 to doses-1%>
		    	{
		        name: 'Dose <%=y+1%>',
		        color:"<%=clrArr(y)%>",
		        type: 'line',
		        data: [<%=hcArr(at,y+doses+1)%>]
		        },
			 <%Next%>
		<%Else%>
		    <%If t=2 or t=0 Then%>
		    	{
		        name: 'mRNA',
		        color:"green",
		        type: 'line',
		        data: [<%=hcArr(at,4)%>]
		        },
		    <%End If%>
		    <%If t=1 or t=0 Then%>
		    	{
		        name: 'Inactivated',
		        color:"red",
		        type: 'line',
		        data: [<%=hcArr(at,3)%>]
		        },      
		    <%End If%>
		    <%If t=0 Then%>
		    	{
		        name: 'Total',
		        color:"blue",
		        type: 'line',
		        data: [<%=hcArr(at,5)%>]
		        },	        
		    <%End If%>
		<%End If%>		      
	        ]
	});
});
</script>
<%If v>0 Then%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.StockChart('vax3', {
	    chart: {
	        type: 'line',
	        borderWidth: 1
	    },
	    navigator: {
	    	enabled: false,
	    },
	    title: {
	        text: 'Cumulative <%=cohortsTitle%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'Percentage of population',
	            x:15,
	        },
	        labels:{
	        	x:20,
	        	format: '{value}%',
	        },
//	        tickInterval: 10,
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
	    	align: 'left',
	    	verticalAlign: 'top',
	    	x: 0,
	    	y: 40,
	        floating: true,
	        borderColor: '#CCC',
	        borderWidth: 0,
	        shadow: false
	    },
	    tooltip: {
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        xDateFormat: '%a, %e %b, %Y',
	        backgroundColor: 'white',
	        valueDecimals:2,
	        valueSuffix:'%',
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
	    <%For y=0 to numCohorts-1%>
	    	{
	        name: '<%=arrC(1,y+1)%>',
	        color:'<%=clrArr(y)%>',
	        type: 'line',
	        data: [<%=hcArr(cohArr(y),1)%>],
	        },
	    <%Next%>
	        ]
	});
});
</script>
<%End If%>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function () {
	Highcharts.chart('prefs', {
	    chart: {
	        type: 'column',
	        borderWidth: 1,
	        marginTop:70,
	    },
	    title: {
	        text: 'Vaccine types by cohort <%=vax%>',
	        style: {
	        	color:"black",
	            fontSize:'1.4em'
			}
	    },
	    yAxis: {
	        title: {
	            text: 'Share of vaccines',
		        x:0,
	        },
	        labels:{
	        	x:0,
				format: '{value}%',
	        },
	        max:100,
	    },	    
	    xAxis: {
	    	categories: [<%=joinColQuote(arrPref,1,"'")%>],	
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
	    	shared: true,
	        headerFormat: '<b>{point.key}</b><br/>',
	        backgroundColor: 'white',
	        valueDecimals: 2,
	        valueSuffix:'%',
	    },
	    plotOptions: {
	        column: {
	            stacking: 'normal',
	        	dataLabels: {
	            	enabled: false
	            },
	        }
	    },
	    series: [
	    <%If v=0 Then%>
	    	<%For x=1 to doses%>
	    	{
	        name: 'Inactivated <%=x%>',
	        type: 'column',
	        data: [<%=joinCol(arrPref,2*x)%>],
	        stack: 'Dose <%=x%>',
	        color: 'blue',
	        },
	    	{
	        name: 'mRNA <%=x%>',
	        type: 'column',
	        data: [<%=joinCol(arrPref,2*x+1)%>],
	        stack: 'Dose <%=x%>',
	        color: 'green',
	        },
	        <%Next%>
	    <%Else%>
	    	{
	        name: 'Inactivated',
	        color:"blue",
	        type: 'column',
	        data: [<%=joinCol(arrPref,2*v)%>],
	        },
	    	{
	        name: 'mRNA',
	        color:"green",
	        type: 'column',
	        data: [<%=joinCol(arrPref,2*v+1)%>],
	        },
	    <%End If%>  
	        ]
	});
});
</script>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the daily and cumulative vaccinations in Hong Kong, by type (inactivated or mRNA), dose, age cohort and 
sex. Data are
<a href="https://data.gov.hk/en-data/dataset/hk-hhb-hhbcovid19-vaccination-rates-over-time-by-age" target="_blank">sourced from</a> the 
Health Bureau (<strong>HB</strong>), but they only publish these cohort-sex 
details weekly. Remember that populations 
vary over time with births, deaths and migration, 
and people age between shots, some moving up to the next cohort. 
We use end-2021 population data from the
<a href="https://www.censtatd.gov.hk/en/web_table.html?id=1B" target="_blank">Census &amp; Statistics Department</a>.</p>
<p>Data are provisional after <%=provDate%>.</p>
<form method="get" action="vax.asp">
	<div class="inputs">Vax type:
		<%=makeSelect("t",t,",All,1,Inactivated,2,mRNA",true)%>
	</div>
	<div class="inputs">Dose:
		<%=rangeSelect("v",v,True,"Total",True,1,doses)%>
	</div>
	<div class="inputs">Age:
		<%=arrSelect("c",c,arrc,true)%>
	</div>	
	<div class="inputs">Sex:
		<%=makeSelect("s",s,",Both,m,Male,f,Female",true)%>
	</div>	
	<div class="inputs"><input type="submit" value="Go"></div>
	<div class="clear"></div>
</form>
<p>CSV downloads: <a href="CSV.asp?t=vax">Vaccinations</a> <a href="CSV.asp?t=vaxcohorts">Cohorts</a></p>
<p>To zoom in or out, use the range-selector buttons or the slider, or pinch the charts on a touch screen. 
Use the top-right hamburger menu to save or print.</p>
<div id="vax1" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>As a percentage of the<%=cohort%><%=sex%> population of <%=FormatNumber(popn,0)%>:</p>
<div id="vax2" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<%If v>0 Then%>
<p>And how does this age cohort compare with others?</p>
<div id="vax3" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<%End If%>
<p>Vaccine types by cohort <%=vax%></p>
<div id="prefs" style="width:95%;height:500px;margin-left:0"></div>
<div class="clear"></div>
<p>Vaccine types by cohort</p>
<table class="numtable center yscroll">
	<thead>
	<tr>
		<th class="left" rowspan="2">Age</th>
		<%For x=1 to doses%>
			<th class="center" colspan="2">Dose <%=x%></th>
		<%Next%>
	</tr>
	<tr>
		<%For x=1 to doses%>
			<th>Inac %</th>
			<th>mRNA %</th>
		<%Next%>
	</tr>
	</thead>
	<%For y=0 to numCohorts-1%>
		<tr>
			<td class="left"><%=arrPref(1,y)%></td>
			<%For x=1 to doses
				sinoPref=arrPref(2*x,y)
				bionPref=arrPref(2*x+1,y)
				If isNull(sinoPref) Then sinoPref="-" Else sinoPref=FormatNumber(sinoPref,2)
				If isNull(bionPref) Then bionPref="-" Else bionPref=FormatNumber(bionPref,2)				
				%>				
				<td><%=sinoPref%></td>
				<td><%=bionPref%></td>
			<%Next%>
		</tr>
	<%Next%>
</table>
<p>Data for the<%=cohort%><%=sex%> population of <%=FormatNumber(popn,0)%> <%=vax%></p>
<%=mobile(2)%>
<table class="numtable center yscroll">
	<tr>
		<th class="left">Date</th>
		<th>Inac</th>
		<th>mRNA</th>
		<th>Total</th>
		<%If v=0 Then
			For x=1 to doses%>
				<th class="colHide2">Dose <%=x%><br>Cum.</th>
			<%Next%>
			<%For x=1 to doses%>
				<th>Dose <%=x%><br>% of<br>pop</th>
			<%Next%>
		<%Else%>
			<th>Inac<br>Cum.</th>
			<th>mRNA<br>Cum.</th>
			<th>Inac<br>% of<br>pop</th>
			<th>mRNA<br>% of<br>pop</th>
			<th>Total<br>% of<br>pop</th>
		<%End If%>
	</tr>
	<%For x=ubound(arr,2) to 0 step -1
		%>
		<tr>
			<td><%=MSdate(arr(0,x))%></td>			
			<td><%=FormatNumber(arr(1,x),0)%></td>
			<td><%=FormatNumber(arr(2,x),0)%></td>
			<td><%=FormatNumber(CLng(arr(1,x))+CLng(arr(2,x)),0)%></td>
			<%If v=0 Then
				For y=1 to doses%>
					<td class="colHide2"><%=FormatNumber(at(y,x),0)%></td>
				<%Next
				For y=1 to doses%>
					<td><%=FormatNumber(at(doses+y,x),2)%></td>
				<%Next%>
			<%Else%>
				<td><%=FormatNumber(at(1,x),0)%></td>
				<td><%=FormatNumber(at(2,x),0)%></td>
				<td><%=FormatNumber(at(3,x),2)%></td>
				<td><%=FormatNumber(at(4,x),2)%></td>
				<td><%=FormatNumber(at(5,x),2)%></td>
			<%End If%>
		</tr>
	<%Next%>
</table>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>