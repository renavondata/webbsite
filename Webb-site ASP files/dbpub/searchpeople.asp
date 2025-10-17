<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="functions1.asp"-->
<%Dim n1,n2,nowYear,YOB,x,s,fname,ub,forename,sql,tql,con,rs,d,e,robot
robot=botchk()
nowYear=Year(Now())
n1=Left(Trim(Request("n1")),90)
n2=Left(Trim(Request("n2")),63)
d=getBool("d")
e=getBool("e")%>
<title>Search people for: <%=n1%>, <%=n2%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Search people</h2>
<%If robot Then%>
 	<form method="post" action="searchpeople.asp">
		<div class="g-recaptcha" data-size="compact" data-sitekey="<%=GetKey("CaptchaSiteKey")%>"></div>
		<br><input type="submit" value="Submit">
		<input type="hidden" name="n1" value="<%=n1%>">
		<input type="hidden" name="n2" value="<%=n2%>">
		<input type="hidden" name="d" value="<%=checked(d)%>">
		<input type="hidden" name="e" value="<%=checked(e)%>">
    </form>
<%Else%>
	<form method="post" action="searchpeople.asp">
		<p>Family name:<br><input type="text" class="ws" name="n1" value="<%=n1%>"></p>
		<p>Given names:<br><input type="text" class="ws" name="n2" value="<%=n2%>"></p>
		<p><input type="checkbox" name="d" id="d" value="1" <%=checked(d)%> onchange="cChange(this,'e')"> match family and given names separately</p>
		<p><input type="checkbox" name="e" id="e" value="1" <%=checked(e)%> onchange="cChange(this,'d')"> exact match</p>
		<input type="submit" value="search" name="search">
	</form>
	<script type="text/javascript">
	function cChange(d,alt) {
		if(d.checked == true) {
			document.getElementById(alt).checked = false;
		}
	}
	</script>
	<p>Tip: This is a whole-word search, but if the given names are 2 or more words, the last two words will 
	be searched together and separately, e.g. "Xiao Ping" will also test "Xiaoping". 
	To exclude matches between family and given names, tick the box.</p>
	<%'only run search if one field has content
	'this is a web version of the engima Search People form
	If n1<>"" or n2<>"" Then
		n1=apos(n1)
		n2=apos(n2)
		n1=Replace(n1,"-"," ")
		n2=Replace(n2,"-"," ")
		n1=Replace(n1,"*","")
		n2=Replace(n2,"*","")
		n1=remSpace(n1)
		n2=remSpace(n2)
		sql = "SELECT * FROM (SELECT personID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,name1,name2,cName FROM people p WHERE 1=1 "
		tql = "SELECT * FROM (SELECT p.personID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,n1,n2,cn,alias FROM " & _
		    "alias a JOIN people p ON a.personID=p.personID WHERE 1=1 "
		If e Then
	        If n1 <> "" Then
	            sql = sql & " AND dn1='" & n1 & "'"
	            tql = tql & " AND a.dn1='" & n1 & "'"
	        End If
	        If n2 = "" Then
	            sql = sql & " AND ISNULL(dn2)"
	            tql = tql & " AND ISNULL(a.dn2)"
	        Else
	            sql = sql & " AND dn2='" & n2 & "'"
	            tql = tql & " AND a.dn2='" & n2 & "'"
	        End If
		Else
			If n1<>"" Then fname="+""" & Join(Split(n1),"""+""") & """"
			s=Split(n2)
			ub=Ubound(s)
			If ub=0 Then
				forename="+""" & s(0) & """"
			ElseIf ub>0 Then
				For x=0 to ub-2
					forename=forename&"+"""&s(x)&""""
				Next
			    forename = forename & "+((+""" & s(ub - 1) & """+""" & s(ub) & """)""" & s(ub - 1) & s(ub) & """)"
			End If
			If d Then
			    If n1 <> "" Then
			        sql = sql & " AND MATCH(dn1) AGAINST ('" & fname & "' IN BOOLEAN MODE)"
			        tql = tql & " AND MATCH(a.dn1) AGAINST ('" & fname & "' IN BOOLEAN MODE)"
			    End If
			    If n2 <> "" Then
			        sql = sql & " AND MATCH(dn2) AGAINST('" & forename & "' IN BOOLEAN MODE)"
			        tql = tql & " AND MATCH(a.dn2) AGAINST('" & forename & "' IN BOOLEAN MODE)"
			    End If
			Else
			    fname = fname & forename
			    sql = sql & " AND MATCH(dn1,dn2) AGAINST ('" & fname & "' IN BOOLEAN MODE)"
			    tql = tql & " AND MATCH(a.dn1,a.dn2) AGAINST ('" & fname & "' IN BOOLEAN MODE)"
			End If
		End If
		sql = sql & " LIMIT 500) AS t1 ORDER BY name1,name2"
		tql = tql & " LIMIT 500) AS t1 ORDER BY n1,n2"%>
		<h3>Current names</h3>
		<%Call openEnigmaRs(con,rs)
		rs.Open sql,con
		If rs.EOF then%>
			<p>None found. Try widening your search.</p>
		<%Else%>
			<table class="txtable">
				<tr>
					<th class="colHide1"></th>
					<th>Name</th>
					<th class="right">&nbsp;Est. date<br/>&nbsp;of birth</th>
					<th class="right"><b>&nbsp;Est. age<br/>in <%=nowYear%></b></th>
					<th>Chinese<br/>name</th>
				</tr>
			<%x=0
			Do Until rs.EOF
				x=x+1
				YOB=rs("YOB")%>
				<tr>
					<td class="colHide1"><%=x%></td>
					<td><a href="natperson.asp?p=<%=rs("PersonID")%>"><%=rs("Name1")&", "&rs("Name2")%></a></td>
					<td><%=dateYMD(YOB,rs("MOB"),rs("DOB"))%></td>
					<td class="right"><%=nowYear-YOB%></td>
					<td><%=rs("cName")%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
			</table>
			<%If x=500 Then%><p><b>More than 500 results, please narrow your search.</b></p><%End If%>
		<%End if
		rs.Close
		rs.Open tql,con%>
		<h3>Alias or former names</h3>
		<%If rs.EOF then%>
			<p>None found.</p>
		<%Else
			x=0%>
			<table class="txtable">
				<tr>
					<th class="colHide1"></th>
					<th>Name</th>
					<th>&nbsp;Est. date<br/>&nbsp;of birth</th>
					<th class="right"><b>&nbsp;Est. age<br/>in <%=nowYear%></b></th>
					<th>Chinese<br/>name</th>
					<th></th>
				</tr>
			<%Do While not rs.EOF
				x=x+1
				YOB=rs("YOB")%>
				<tr>
					<td class="colHide1"><%=x%></td>
					<td><a href="natperson.asp?p=<%=rs("PersonID")%>"><%=rs("n1")&", "&rs("n2")%></a></td>
					<td><%=dateYMD(YOB,rs("MOB"),rs("DOB"))%></td>
					<td class="right"><%=nowYear-YOB%></td>
					<td><%=rs("cn")%></td>
					<td><%If rs("Alias") Then Response.Write "A" Else Response.Write "F"%></td>
				</tr>
				<%rs.MoveNext
			Loop%>
			</table>
			<p>A=Alias, F=Former name</p>
			<%If x>500 Then%><p><b>More than 500 results, please narrow your search.</b></p><%End If%>
		<%End If
		Call closeConRs(con,rs)
	End If
End If%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
