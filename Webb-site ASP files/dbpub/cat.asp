<%Option explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<!--#include file="functions1.asp"-->
<%Dim ID,name,con,rs
Call openEnigmaRs(con,rs)
ID=getInt("c",1)
name=con.Execute("SELECT IFNULL((SELECT Name FROM Categories WHERE ID="&ID&"),'')").Fields(0)%>
<title>Category: <%=name%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=Name%></h2>
<%rs.Open "SELECT ChildName,ChildID FROM WebCatTree WHERE ParentID="&ID&" ORDER BY ChildName",con
If Not rs.EOF then%>
	<h3>Subcategories</h3>
	<table>
	<%Do Until rs.EOF%>
		<tr><td><a href="cat.asp?c=<%=rs("ChildID")%>"><%=rs("ChildName")%></a></td></tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End if
rs.Close
rs.Open "SELECT * FROM WebCatMembers WHERE Category="&ID, con
If Not rs.EOF then%>
	<h3>Members</h3>
	<table>
	<%Do Until rs.EOF%>
		<tr><td><a href="orgdata.asp?p=<%=rs("PersonID")%>"><%=rs("Name1")%></a></td></tr>
		<%rs.MoveNext
	Loop%>
	</table>
<%End if
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
