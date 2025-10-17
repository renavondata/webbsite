<%Option Explicit
Response.Buffer=False%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim sort,URL,ob,title,con,rs,a,c,i,x,y,d,currs,sql,todo,s
Const maxYear=2024
Const limit=1000
Call openEnigmaRs(con,rs)
'list of currencies which have available conversion rates
currs=con.Execute("SELECT DISTINCT curr1,currency FROM currpair p JOIN currencies c ON p.curr1=c.ID "&_
	"UNION SELECT 18,'MOP' UNION SELECT 0,'HKD' ORDER BY currency").GetRows
y=getIntRange("y",maxYear,2005,maxYear)'year-end year
c=getInt("c",0) 'currency for display
'show only INED-ships
i=getBool("i")
'exclude share-based payments from total
s=getBool("s")
sort=Request("sort")
todo=con.Execute("SELECT count(DISTINCT(p.orgID)) FROM pay p JOIN documents d ON p.orgID=d.orgID AND p.d=d.recordDate AND "&_
	"d.docTypeID=0 WHERE NOT d.pay AND year(p.d)="&y).Fields(0)
Select case sort
	Case "feedn" ob="fee DESC,name"
	Case "feeup" ob="fee"
	Case "saldn" ob="sal DESC,name"
	Case "salup" ob="sal"
	Case "bondn" ob="bon DESC,name"
	Case "bonup" ob="bon"
	Case "retdn" ob="ret DESC,name"
	Case "retup" ob="ret"
	Case "shadn" ob="sha DESC,name"
	Case "shaup" ob="sha"
	Case "totdn" ob="tot DESC,name"
	Case "totup" ob="tot"
	Case "cntdn" ob="c DESC,name"
	Case "cntup" ob="c"
	Case Else
		sort="totdn"
		ob="tot DESC,name"
End Select
If i Then
	sql="SELECT pplID,fnameppl(name1,name2,cName)name,"&_
		"IFNULL(ROUND(SUM(f*fee),0),0)fee,IFNULL(ROUND(SUM(f*sal),0),0)sal,IFNULL(ROUND(SUM(f*bon),0),0)bon,IFNULL(ROUND(SUM(f*ret),0),0)ret,"&_
		"IFNULL(ROUND(SUM(f*sha),0),0)sha,IFNULL(ROUND(SUM(f*("&IIF(s,"tot-IFNULL(sha,0)","tot")&")),0),0)tot,count(*)c FROM "&_
		"(SELECT orgID,pplID,currID,p.d,fees fee,salary sal,bonus bon,retire ret,share sha,total tot,"&_
		"(SELECT status FROM directorships d JOIN positions pn ON d.positionID=pn.positionID WHERE director=p.pplID AND company=p.orgID AND `rank`=1 "&_
		"AND (isNull(apptDate) OR apptDate<=p.d) AND (isNull(resDate) OR resDate>"&_
		"IFNULL((SELECT recordDate FROM documents WHERE docTypeID=0 AND orgID=p.orgID AND recordDate<p.d ORDER BY recordDate DESC LIMIT 1),"&_
		"DATE_SUB(p.d, INTERVAL 1 year))) ORDER BY apptDate DESC LIMIT 1)stat "&_
		"FROM pay p WHERE YEAR(p.d)="&y&" AND pRank=1)t "&_
		"JOIN (documents d,payfx f,people pl) ON t.orgID=d.orgID AND d.docTypeID=0 AND t.d=d.recordDate "&_
		"AND t.d=f.d AND t.currID=f.repCurr AND f.dispCurr="&c&" AND t.pplID=pl.personID WHERE stat=3 AND d.pay "&_
		"GROUP BY pplID ORDER BY "&ob&" LIMIT "&limit
Else
	sql="SELECT pplID,fnameppl(name1,name2,cName)name,IFNULL(ROUND(SUM(f*fees),0),0)fee,IFNULL(ROUND(SUM(f*salary),0),0)sal,IFNULL(ROUND(SUM(f*bonus),0),0)bon,"&_
		"IFNULL(ROUND(SUM(f*retire),0),0)ret,IFNULL(ROUND(SUM(f*share),0),0)sha,IFNULL(ROUND(SUM(f*("&IIF(s,"total-IFNULL(share,0)","total")&")),0),0)tot,count(*)c FROM "&_
		"pay p JOIN (documents d,payfx f,people pl) ON p.orgID=d.orgID AND d.docTypeID=0 AND p.d=d.recordDate "&_
		"AND p.d=f.d AND p.currID=f.repCurr AND f.dispCurr="&c&" AND p.pplID=pl.personID "&_
		"WHERE year(p.d)="&y&" AND pRank=1 AND d.pay GROUP BY pplID ORDER BY "&ob&" LIMIT "&limit
End If
rs.Open sql,con
a=rs.GetRows
rs.Close
URL=Request.ServerVariables("URL")&"?c="&c&"&amp;i="&i
title="HK-listed directors pay league table for "&y%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li class="livebutton">By director</li>
	<li><a href="payleagueorg.asp?c=<%=c%>&amp;i=<%=i%>&amp;y=<%=y%>&amp;sort=<%=sort%>">By company</a></li>
</ul>
<div class="clear"></div>
<h3>Notes</h3>
<ol>
	<li>These data are compiled and verified by volunteers. Please <strong><a href="../contact">report</a></strong> any errors. Currently 
	for financial years ending in <%=y%> these data omit <%=todo%> companies, in some cases because they failed to make the required 
	disclosure under the Listing Rules, in others because the data are still being entered or verified.</li>
	<li>If a director sits on the boards of both a listed company and its listed subsidiary, then the parent company 
	records will normally include the pay at the subsidiary, so you should subtract that when looking at annual totals.</li>
</ol>
<p></p>
<form method="get" action="payleague.asp">
	<input type="hidden" name="sort" value="<%=sort%>">
	<div class="inputs">
		Financial years ending in: <%=rangeSelect("y",y,False,"",True,maxYear,2005)%>
	</div>
	<div class="clear"></div>
	<div class="inputs">
		Convert all records at financial year-end to: <%=arrSelect("c",c,currs,True)%> '000
	</div>
	<div class="clear"></div>
	<div class="inputs">
		<input type="checkbox" name="i" value="True" <%=checked(i)%> onchange="this.form.submit()">Only Independent Non-executive Directorships
	</div>
	<div class="clear"></div>
	<div class="inputs">
		<input type="checkbox" name="s" value="True" <%=checked(s)%> onchange="this.form.submit()">Exclude share-based pay from total	
	</div>
	<div class="clear"></div>
</form>
<%=mobile(3)%>
<table class="numtable c2l">
	<tr>
		<th></th>
		<th>Name</th>
		<th class="colHide3"><%SL "Fees","feedn","feeup"%></th>
		<th class="colHide3"><%SL "Salary &amp;<br>benefits","saldn","salup"%></th>
		<th class="colHide3"><%SL "Bonus","bondn","bonup"%></th>
		<th class="colHide3"><%SL "Retire","retdn","retup"%></th>
		<th class="colHide3"><%SL "Share-<br>based","shadn","shaup"%></th>
		<th><%SL "Total","totdn","totup"%></th>
		<th><%SL "N","cntdn","cntup"%></th>
	</tr>
	<%For x=0 To Ubound(a,2)%>
		<tr>
			<td><%=x+1%></td>
			<td><a href="offpay.asp?p=<%=a(0,x)%>&amp;c=<%=c%>"><%=a(1,x)%></a></td>
			<%For y=2 to 6%>
				<td class="colHide3"><%=FormatNumber(a(y,x),0)%></td>
			<%Next%>
			<%For y=7 to 8%>
				<td><%=FormatNumber(a(y,x),0)%></td>
			<%Next%>
		</tr>
	<%Next%>
</table>
<%Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>