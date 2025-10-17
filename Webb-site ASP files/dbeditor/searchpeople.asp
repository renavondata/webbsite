<%@ CodePage="65001"%>
<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%'This page is open to all editors, doesn't require a role. The edit links will show if the user has write ranking
Dim userID,uRank,referer,tv,n1,n2,x,blnFnd,nowYear,YOB,title,fname,ub,forename,s,sql,tql,p,d,e,sort,ob,URL,con,rs
Call openEnigmaRs(con,rs)
userID=Session("ID")
uRank=con.Execute("SELECT maxRankLive('people',"&userID&")").Fields(0)
Call getReferer(referer,tv)
p=getLng("p",0) 'are we returning from add human?
If p>0 And referer>"" Then Response.redirect referer&"?"&tv&"="&p 'return the added human to the referring page, if any
blnFnd=False
nowYear=Year(Now)
n1=Left(Trim(Request("n1")),90)
n2=Left(Trim(Request("n2")),63)
d=getBool("d")
e=getBool("e")
sort=Request("sort")
Select Case sort
	Case "namup" ob="n1,n2"
	Case "namdn" ob="n1 DESC,n2 DESC"
	Case "birup" ob="YOB,MOB,DOB,n1,n2"
	Case "birdn" ob="YOB DESC,MOB DESC,DOB DESC,n1,n2"
	Case Else
		ob="n1,n2"
		sort="namup"
End Select
title="Search people"
If n1>"" Then
	'store values for repeat search
	Session("ppln1")=n1
	Session("ppln2")=n2
	Session("ppld")=d
	Session("pple")=e
	Session("pplsort")=sort
End If
URL=Request.ServerVariables("URL") & "?n1=" & n1 & "&amp;n2=" & n2 & "&amp;d=" & d & "&amp;e=" & e
%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>
<body>
<!--#include file="cotop.inc"-->
<h2><%=title%></h2>
<form method="post" action="searchpeople.asp">
	<p>Family name:<br><input type="text" class="ws" name="n1" value="<%=n1%>"></p>
	<p>Given names:<br><input type="text" class="ws" name="n2" value="<%=n2%>"></p>
	<p><input type="checkbox" name="d" id="d" value="1" <%=checked(d)%> onchange="cChange(this,'e')"> match family and given names separately</p>
	<p><input type="checkbox" name="e" id="e" value="1" <%=checked(e)%> onchange="cChange(this,'d')"> exact match</p>
	<input type="hidden" name="sort" value="<%=sort%>">
	<input type="submit" value="search">
</form>
<form method="post" action="searchpeople.asp">
	<input type="hidden" name="n1" value="<%=Session("ppln1")%>">
	<input type="hidden" name="n2" value="<%=Session("ppln2")%>">
	<input type="hidden" name="d" value="<%=Session("ppld")%>">
	<input type="hidden" name="e" value="<%=Session("pple")%>">
	<input type="hidden" name="sort" value="<%=Session("pplsort")%>">
	<input type="submit" value="Repeat last search">
</form>
<form method="post" action="searchpeople.asp">
	<input type="submit" value="Clear form">
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
<%
Set rs=Server.CreateObject("ADODB.Recordset")
If n1<>"" Or n2<>"" Then
	n1=apos(n1)
	n2=apos(n2)
	n1=Replace(n1,"-"," ")
	n2=Replace(n2,"-"," ")
	n1=Replace(n1,"*","")
	n2=Replace(n2,"*","")
	n1=remSpace(n1)
	n2=remSpace(n2)
	sql = "SELECT * FROM (SELECT personID,SFCID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,name1 n1,name2 n2,cName,userID,u.name AS userName,maxRank('people',userID)uRank "&_
		"FROM people p JOIN users u ON p.userID=u.ID WHERE 1=1 "
	tql = "SELECT * FROM (SELECT p.personID,SFCID,Year(Now())-YOB AS EstAge,YOB,MOB,DOB,n1,n2,cn,alias,p.userID,u.name AS userName,maxRank('people',p.userID)uRank " & _
	    "FROM alias a JOIN (people p,users u) ON a.personID=p.personID AND p.userID=u.ID WHERE 1=1 "
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
	sql = sql & " LIMIT 500) AS t1 ORDER BY "&ob
	tql = tql & " LIMIT 500) AS t1 ORDER BY "&ob
	rs.Open sql,con
	%>
	<form method="post" action="<%=referer%>">
		<h3>Current names</h3>
		<%If rs.EOF then%>
			<p>None found. Try widening your search.</p>
		<%Else
			blnFnd=True%>
			<table class="txtable">
				<tr>
					<th colspan="<%=1-(tv>"")%>"></th>
					<th><%SL "Name","namup","namdn"%></th>
					<th>Chinese<br/>name</th>
					<th class="right"><%SL "Est. date<br>of birth","birup","birdn"%></th>
					<th class="right"><b>Est. age<br>in <%=nowYear%></b></th>
					<th>User</th>
					<th></th>
					<%If tv>"" Then%><th></th><%End If%>
				</tr>
				<%Do Until rs.EOF
					x=x+1
					YOB=rs("YOB")
					p=rs("personID")%>
					<tr>
						<td><%=x%></td>
						<%If tv>"" Then%><td><input type="radio" name="<%=tv%>" value="<%=p%>"></td><%End If%>
						<td><a target="_blank" href="https://webb-site.com/dbpub/positions.asp?p=<%=p%>"><%=rs("n1")&", "&rs("n2")%></a></td>
						<td><%=rs("cName")%></td>
						<td style="text-align:right"><%=DateStr2(rs("DOB"),rs("MOB"),YOB)%></td>
						<td style="text-align:right"><%=nowYear-YOB%></td>
						<td><%=rs("userName")%></td>
						<td><%If rankingRs(rs,uRank) Then%><a href="human.asp?p=<%=p%>">Edit</a><%End If%></td>
						<%If tv>"" Then%><td><a href="<%=referer%>?<%=tv%>=<%=p%>">Use</a></td><%End If%>
					</tr>
					<%rs.MoveNext
				Loop%>
			</table>
		<%End If
		rs.Close
		rs.Open tql,con
		%>
		<h3>Alias or former names</h3>
		<%If rs.EOF then%>
			<p>None found.</p>
		<%Else
			blnFnd=True%>
			<table class="txtable">
			<tr>
				<th colspan="<%=1-(tv>"")%>"></th>
				<th>Name</th>
				<th>Chinese<br/>name</th>
				<th class="right">&nbsp;Est. date<br/>&nbsp;of birth</th>
				<th class="right"><b>&nbsp;Est. age<br/>in <%=nowYear%></b></th>
				<th></th>
				<th>User</th>
				<th></th>
				<%If tv>"" Then%><th></th><%End If%>
			</tr>
			<%Do Until rs.EOF
				x=x+1
				YOB=rs("YOB")
				p=rs("personID")%>
				<tr>
					<td><%=x%></td>
					<%If tv>"" Then%><td><input type="radio" name="<%=tv%>" value="<%=p%>"/></td><%End If%>
					<td><a target="_blank" href="https://webb-site.com/dbpub/positions.asp?p=<%=p%>"><%=rs("n1")&", "&rs("n2")%></a></td>
					<td><%=rs("cn")%></td>
					<td class="right"><%=DateStr2(rs("DOB"),rs("MOB"),YOB)%></td>
					<td class="right"><%=nowYear-YOB%></td>
					<td><%If rs("alias") Then Response.Write "A" Else Response.Write "F"%></td>
					<td><%=rs("userName")%></td>
					<td><%If rankingRs(rs,uRank) Then%><a href="human.asp?p=<%=p%>">Edit</a><%End If%></td>
					<%If tv>"" Then%><td><a href="<%=referer%>?<%=tv%>=<%=p%>">Use</a></td><%End If%>
				</tr>
				<%rs.MoveNext
			Loop%>
			</table>
			<p>A=Alias, F=former name</p>
		<%End If
		rs.Close
		If blnFnd And referer>"" And tv>"" Then%>
			<p><input type="submit" name="submitBtn" value="Use selected human"></p>
		<%End If%>
	</form>
	<%If hasRole(con,2) Then 'people role%>
		<h3>Not whom you are looking for?</h3>
		<form method="post" action="human.asp">
			<input type="hidden" name="tv" value="p">
			<input type="hidden" name="n1" value="<%=n1%>">
			<input type="hidden" name="n2" value="<%=n2%>">
			<input type="submit" value="Add new human">
		</form>
	<%End If%>
	<%Call CloseConRs(con,rs)
End If%>
<!--#include file="cofooter.asp"-->
</body>
</html>
