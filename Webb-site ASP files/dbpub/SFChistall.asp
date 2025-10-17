<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<%
Dim d,arr,x,rows,act,actName,con,rs,rec,title
Call openEnigmaRs(con,rs)
act=getInt("a",0)
If act>0 Then actName=con.Execute("SELECT * FROM activity WHERE ID="&act).Fields("actName") Else actName="All activities"
rs.Open("SELECT d,RO,total-RO,(total-RO)/total FROM licrecsum WHERE actType="&act&" ORDER BY d DESC"),con
rec=(Not rs.EOF)
If rec Then
	arr=rs.GetRows()
	rows=Ubound(arr,2)
End If
rs.Close
If rec Then%>
	<script type="text/javascript">
	  google.load("visualization", "1", {packages:["corechart"]});
	  google.setOnLoadCallback(drawChart);
	  function drawChart() {
	    var data = new google.visualization.DataTable();
	    data.addColumn('string', 'Date');
	    data.addColumn('number', 'Licensees');
	    data.addRows(<%=rows+1%>);
	    <%For x=0 to rows%>
	        data.setValue(<%=x%>,0,'<%=MSdate(arr(0,rows-x))%>');
	        data.setValue(<%=x%>,1,<%=CLng(arr(1,rows-x))+CLng(arr(2,rows-x))%>);
	    <%Next%>
	    var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
	    chart.draw (data, {
	    	chartArea: {width:'85%',height:'75%',left:'10%'},
	    	title: 'Number of licensees: <%=actName%>',titleTextStyle:{fontSize:18},
	    	backgroundColor: {strokeWidth:2,stroke:'blue'},
	    	vAxis: {baseline:0},
	    	legend:'none'
	    	}
	    );
	  }
	</script>
<%End If
title="SFC licensee history: all firms: "&actName%>
<title><%=title%></title>
</head>
<body onresize="drawChart();">
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="SFClicount.asp?a=<%=act%>">League table</a></li>
	<li><a href="SFCchanges.asp">Latest moves</a></li>
	<li id="livebutton">Historic total</li>
</ul>
<div class="clear"></div>
<form method="get" action="SFChistall.asp">
	<div class="inputs">
		Activity type: <%=arrSelectZ("a",act,con.Execute("SELECT DISTINCT ID,actName FROM activity a JOIN licrecsum l ON a.ID=l.actType ORDER BY actName").getRows,True,True,0,"All")%>
	</div>
	<div class="clear"></div>
</form>
<p>This page shows the historic number of people who are SFC licensees for all firms. Licensees 
are either Responsible Officers (<strong>ROs</strong>) or Representatives (<strong>Reps</strong>). 
We treat a person who holds both roles (in different categories of license, 
possible at different firms) as an RO. Each person is counted only once, even if 
she works for more than one firm. To see each firm separately,
select the league table above and then click the firm's history link. Note that 
due to a transitional period which ended on 31-Mar-2005, many licenses in some activities were 
surrendered or not extended beyond that date.</p>
<%If rec Then%>
	<div class="chart" id="chart_div"></div>
	<p></p>
	<table class="numtable center">
		<tr>
			<th>Date</th>
			<th>ROs</th>
			<th>Reps</th>
			<th>Total</th>
			<th>Reps v total</th>
		</tr>
		<%For x=0 to rows
			d=MSdate(arr(0,x))%>
			<tr>
				<td><a href="SFClicount.asp?a=<%=act%>&da=<%=d%>"><%=d%></a></td>
				<td><%=arr(1,x)%></td>
				<td><%=arr(2,x)%></td>
				<td><%=CLng(arr(1,x))+CLng(arr(2,x))%></td>
				<td><%=FormatPercent(CDbl(arr(3,x)),2)%></td>
			</tr>
		<%Next%>
	</table>
<%Else%>
	<p><b>This activity has no licence records yet.</b></p>
<%End If%>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
