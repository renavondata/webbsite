<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim title,x,arr,items,t,name,con,rs
Call openEnigma(con)
t=getInt("t",0)
items=con.Execute("SELECT 0 ID,'Fiscal reserves+equity' dispName UNION "&_
	"(SELECT ID,dispName FROM acitems WHERE NOT refDate AND type<>'string' AND datasource=1) ORDER BY ID").GetRows
If t=0 Then
	name="Fiscal reserves+equity"
	arr=con.Execute("SELECT atDate,SUM(acVal)acVal FROM acdata WHERE acItem IN(10,17) GROUP BY atDate ORDER BY atDate").GetRows
Else
	name=con.Execute("SELECT dispName FROM acItems WHERE ID="&t).Fields(0)
	arr=con.Execute("SELECT atDate,acVal FROM acdata WHERE acItem="&t&" ORDER BY atDate").GetRows
End If
Call CloseCon(con)
title="HKMA Exchange Fund Balance Sheet: "&name%>
<!--#include file="HKMAchart.asp"-->
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows items from the balance sheet of the Exchange Fund (<strong>EF</strong>) 
of the <a href="https://www.hkma.gov.hk/" target="_blank">Hong Kong Monetary Authority</a> (<strong>HKMA</strong>), updated monthly. As 
the HKSAR Government places most of its fiscal reserves with the EF, we can see 
the drawdown during the Coronavirus pandemic and other times since 1996, as well 
as the changes in the banking system's aggregate balance.</p>
<p>The default view shows "Fiscal reserves+equity", which is the sum of the 
Government's fiscal 
(tax) reserves and the equity, or accumulated gains, of the EF, which are mostly 
available to the Government, as the EF only needs a small buffer to ensure that 
the currency board or "USD-HKD peg" will have sufficient assets to cover its 
liabilities.</p>
<p>A further amount, "HKSARG funds &amp; statutory bodies" includes the 
Bond Fund (amounts set aside for repayment of Government bonds) as well as money 
held for bodies such as the Research Endowment Fund, Housing Authority and 
Hospital Authority. Various amounts have been expensed in the HKSARG budget and 
placed into these dedicated silos over the years.</p>
<p>"Certificates of indebtedness" are amounts due to the 3 note-issuing banks 
which in turn issue bank notes (excluding the HK$10 note issued by the HKMA). 
For a breakdown of physical currency in circulation, <a href="HKDtender.asp">
click here</a>.</p>
<p><a href="https://data.gov.hk/en-data/dataset/hk-hkma-t08-t080102ef-bal-sheet-abridged" target="_blank">Data source</a></p>
<%Call chartable(arr)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>