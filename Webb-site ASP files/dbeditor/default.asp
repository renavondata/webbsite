<%Option explicit
Response.CacheControl = "no-cache"%>
<!--#include file="../webbmail/authentic.asp"-->
<%If Session("ID")>"" And Not Session("editor") Then Response.Redirect "https://webb-site.com"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<style type="text/css">
backgr { color: #000000; border-width: 0px; text-align:left }
</style>
<title>Webb-site DB editor</title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If session("ID")<>"" Then%>
	<h2>Get started!</h2>
	<%Call orgBar(0,0)
	Call pplBar(0,0)%>
<%Else%>
	<h3>Please log in</h3>
	<form action="default.asp" method="post">
	<table style="background-color:#cccccc;font-size:small; padding: 3px;border:thin black solid;padding:2px;border-spacing:0px">
	  <tr>
	    <td class="backgr">User Name</td>
	    <td class="backgr"><input name="e" type="text" style="width:130px" size="20" value="<%=username%>"/></td>
	  </tr>
	  <tr>
	    <td class="backgr">Password</td>
	    <td class="backgr"><input name="pwd" type="password" style="width:130px" size="20"/></td>
	  </tr>
	  <tr>
		<td>Keep me logged in:</td>
		<td><%=makeSelect("d",CStr(d),"0,Don't,24,1 day,72,3 days,168,1 week,336,2 weeks,720,30 days",False)%></td>
	  </tr>
	  <tr>
	    <td colspan="2" class="center"><input type="submit" value="Log in"/></td>
	  </tr>
	</table>
	</form>
<%End If%>
<p><b><%=hint%></b></p>
<!--#include file="cofooter.asp"-->
</body>
</html>
