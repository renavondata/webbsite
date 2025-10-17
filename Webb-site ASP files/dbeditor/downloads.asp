<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim userID,uRank,title
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
title="Downloads"%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<%If uRank<128 Then%>
	<p><b>Your user rank is too low for access to this page</b></p>
<%Else%>
	<h3>CSV files</h3>
	<p><a href="CSV.asp?t=comeets">coMeets</a></p>
	<p><a href="CSV.asp?t=comex">comEx</a></p>
	<p><a href="CSV.asp?t=comPosDirs">comPosDirs</a></p>
<%End If%>
<!--#include file="cofooter.asp"-->
</body>
</html>