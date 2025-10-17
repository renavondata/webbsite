<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Dim title,x,arr,items,t,name,con
Call openEnigma(con)
t=getInt("t",23)
items=con.Execute("SELECT ID,dispName FROM acitems WHERE NOT refDate AND type<>'string' AND datasource=2 ORDER BY ID").GetRows
name=con.Execute("SELECT dispName FROM acItems WHERE ID="&t).Fields(0)
title="HKD legal tender: "&name
arr=con.Execute("SELECT atDate,acVal FROM acdata WHERE acItem="&t&" ORDER BY atDate").GetRows
Call CloseCon(con)%>
<!--#include file="HKMAchart.asp"-->
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<p>This page shows the amounts of Hong Kong Dollar notes and coins in 
circulation. Commercial banknotes are those issued by the 3 note-issuing banks: 
HSBC, Bank of China and Standard Chartered. These are backed by
<a href="EFBS.asp?t=6">Certificates of Indebtedness</a> issued by the HK 
Monetary Authority (<strong>HKMA</strong>). The HK$10 notes and coins are issued 
by the HK Monetary Authority. "AI" means Authorised Institutions (Licensed 
Banks, Restricted Licence Banks and Deposit-Taking Companies), which hold 
banknotes and coins available for withdrawal.</p>
<p>
<a href="https://data.gov.hk/en-data/dataset/hk-hkma-t02-t0201currency" target="_blank">Data source</a></p>
<%Call chartable(arr)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>