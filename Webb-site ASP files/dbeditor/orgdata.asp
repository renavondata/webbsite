<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Call requireRoleExec
Dim p,pName,hint,ready,title,submit,dtype,yed,yem,addr1,addr2,addr3,sc,ob,s,mend,a1,a2,a3,dist,terr,ad,daf,found,rs
found=True 'record found
Call prepMasterRs(conMaster,rs)
submit=Request("submitOD")
ready=True 'whether inputs are accepted to update or add record
sc=getLng("sc",0)
If sc>0 Then
	p=SCorg(sc)
Else
	p=getLng("p",0)
End If
'fetch name of firm
If p>0 Then pName=fnameOrg(p)

If submit="Update" or submit="Add record" Or submit="CONFIRM DATE" Then
	'validate inputs
	yem=GetInt("yem",Null)
	yed=GetInt("yed",Null)
	a1=Request("a1")
	a2=Request("a2")
	a3=Request("a3")
	dist=Request("dist")
	terr=getInt("terr",Null)
	ad=MSdate(Request("ad"))
	daf=getBool("daf")
	If yem=0 And yed>0 Then
		hint=hint&"Please specify month or set date to nothing. "
		ready=False
	ElseIf yem<1 Or yem>12 Then 
		hint=hint&yem&" is not a valid month. "
		ready=False
	ElseIf yem>0 Then
		mend=monthEnd(yem,2023)
		If isNull(yed) Then
			yed=mend
		ElseIf yed>mend Then
			hint=hint&"Date "&yed&" is after month-end. "
			yed=mend
			hint=hint&"Corrected to "&mend&". "
		ElseIf yed<0 Then
			hint=hint&"Date cannot be negative. "
			ready=False
		ElseIf yed<>mend And submit<>"CONFIRM DATE" Then
			hint=hint&"That date is not the end of the calendar month. Are you sure? "
			ready=False
		End If
	End If
End If

If p>0 Then
	If submit="Add record" Then
		If ready Then
			s="INSERT INTO orgdata(personID,yearEndDate,yearEndMonth,addr1,addr2,addr3,district,territory,addrDate,`D&Afinal`)"&_
				valsql(Array(p,yed,yem,a1,a2,a3,dist,terr,ad,daf))
			Response.Write s
			conMaster.Execute s
'			hint=hint&s&" "
			hint=hint&"Record added with personID "&p&". "
		End If
	Else
		'updating or fetching a record
		rs.Open "SELECT * FROM orgdata WHERE personID="&p,conMaster	
		If rs.EOF Then
			found=False
		ElseIf submit="Update" Or submit="CONFIRM DATE" Then
			If ready Then
				s="UPDATE orgdata" & setsql("yearEndDate,yearEndMonth,addr1,addr2,addr3,district,territory,addrDate,`D&Afinal`",Array(yed,yem,a1,a2,a3,dist,terr,ad,daf))&"personID="&p
				conMaster.Execute s
'				hint=hint&s&" "
				hint=hint&"Record updated. "
			End If
		ElseIf submit="CONFIRM DELETE" Then
			s="DELETE FROM orgdata WHERE personID="&p
			conMaster.Execute s
'			hint=hint&s
			hint=hint&"Record deleted. "
		Else
			'not Updating or confirming deletion, so fetch values
			yem=rs("yearEndMonth")
			yed=rs("yearEndDate")
			a1=rs("addr1")
			a2=rs("addr2")
			a3=rs("addr3")
			dist=rs("district")
			terr=IfNull(rs("territory"),0)
			ad=MSdate(rs("addrDate"))
			daf=rs("D&Afinal")
			If submit="Delete" Then
				hint=hint&"Are you sure you want to delete this record? "
			End If
		End If
		rs.Close
	End If
End If

title="Add or update the year-end and/or address of an org"
%>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<title><%=title%></title>
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=pName%></h2>
	<%Call orgBar(p,6)
End If%>
<h3><%=title%></h3>
<form method="post" action="orgdata.asp">
	Stock code:<input type="text" name="sc" maxlength="6" size="6" value="" onchange="this.form.submit()">
</form>
<input type="button" value="Clear" onclick="window.location.href='orgdata.asp'">
<p><a href="searchorgs.asp?tv=p">Find a firm</a></p>
<%If p>0 Then
	'produce an input form to edit or add a record
	%>
	<h3>Add or Update record</h3>
	<form method="post" action="orgdata.asp">
		<input type="hidden" name="p" value="<%=p%>">
		<table>
			<tr>
				<td>Year-end month</td>
				<td><input type="number" name="yem" min="1" max="12" step="1" value="<%=yem%>"></td>
			<tr>
			<tr>
				<td>Year-end date</td>
				<td><input type="number" name="yed" min="1" max="31" step="1" value="<%=yed%>"></td>
			</tr>
			<tr>
				<td>Address 1</td>
				<td><input type="text" name="a1" maxlength="255" value="<%=a1%>"></td>
			</tr>
			<tr>
				<td>Address 2</td>
				<td><input type="text" name="a2" maxlength="127" value="<%=a2%>"></td>
			</tr>
			<tr>
				<td>Address 3</td>
				<td><input type="text" name="a3" maxlength="127" value="<%=a3%>"></td>
			</tr>
			<tr>
				<td>District</td>
				<td><input type="text" name="dist" maxlength="50" value="<%=dist%>"></td>
			</tr>
			<tr>
				<td>Territory</td>
				<td><%=arrSelectz("terr",terr,conMaster.Execute("SELECT ID,friendly FROM domiciles ORDER BY friendly").GetRows,False,True,"","")%></td>
			</tr>
			<tr>
				<td>Address date</td>
				<td><input type="date" name="ad" value="<%=ad%>"></td>
			</tr>
			<tr>
				<td>Directors &amp;<br>advisers final<br>on delisting</td>
				<td><input type="checkbox" name="daf" value="1" <%=checked(daf)%>></td>
			</tr>
		</table>
		<p><b><%=hint%></b></p>
		<%If found Then
			If submit="Update" And not ready Then%>
				<input type="submit" name="submitOD" style="color:red" value="CONFIRM DATE">
			<%Else%>
				<input type="submit" name="submitOD" value="Update">
			<%End If%>
			
			<%If submit="Delete" Then%>
				<input type="submit" name="submitOD" style="color:red" value="CONFIRM DELETE">
				<input type="submit" name="submitOD" value="Cancel">
			<%Else%>
				<input type="submit" name="submitOD" value="Delete">
			<%End If
		Else%>
			<input type="submit" name="submitOD" value="Add record">		
		<%End If%>
	</form>
	<form method="post" action="orgdata.asp"><input type="submit" value="Clear form"></form>
<%End If
Call closeConRs(conMaster,rs)%>
<!--#include file="cofooter.asp"-->
</body>
</html>
