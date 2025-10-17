<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Call requireRoleExec
Dim referer,tv,hint,submit,p,i,orgName,typeLong,title,arrListing,arrReason,exp,sql,priced,e,sc,ftd,ltd,dld,dlr,ID,currName,altCtr,findSC,maturity,con,rs
Call openEnigmaRs(con,rs)
Call getReferer(referer,tv)
Call prepMaster(conMaster)
arrListing=con.Execute("SELECT stockExID,shortName FROM listings ORDER BY shortName").GetRows
arrReason=con.Execute("SELECT reasonID,reason FROM dlreasons ORDER BY reason").GetRows
'first check if a stock-code search was done
findSC=getLng("stockCode",0)
If findSC>0 Then ID=CLng(conMaster.Execute("SELECT IFNULL((SELECT ID FROM enigma.stockListings WHERE stockExID IN(1,20,22,23,38,71) AND stockCode="&_
		findSC&" ORDER BY firstTradeDate DESC LIMIT 1),0)").Fields(0))
If ID=0 Then ID=getLng("ID",0)

submit=Request("submitList")

e=Request("e") 'stock exchange
If Not isNumeric(e) Then e=""
sc=Request("sc") 'stock code
ftd=MSdate(Request("ftd")) 'first trade date
ltd=MSdate(Request("ltd")) 'last trade date
dld=MSdate(Request("dld")) 'delist date
dlr=getInt("dlr",0) 'delisting reason
If dlr=0 Then dlr=""
altCtr=getBool("altCtr") 'second counter

If ID>0 Then
	'we have a target listing which implies a target issue
	rs.Open "SELECT issueID,s.stockExID,stockCode,2ndCtr,firstTradeDate,finalTradeDate,delistDate,reasonID,priced(IssueID) priced "&_
		"FROM stocklistings s JOIN listings l ON s.stockExID=l.stockExID WHERE ID="&ID,conMaster
	If rs.EOF Then
		hint=hint&"Listing not found. "
		ID=0
	Else
		priced=CBool(rs("priced"))
		i=rs("issueID")
		e=rs("stockExID")
		sc=rs("stockCode")
		If submit="Update" Then
			If (ftd>ltd And ltd>"") Or (ltd>dld And dld>"") Or (ftd>dld And dld>"") Then
				hint=hint&"Dates are in the wrong order. "
			Else
				sql="UPDATE stocklistings" & setsql("finalTradeDate,delistDate,reasonID,2ndCtr",Array(ltd,dld,dlr,altCtr)) & "ID="&ID
				conMaster.Execute sql
				If priced Then
					If isNull(rs("firstTradeDate")) Or MSdate(rs("firstTradeDate"))<>ftd Then
						hint=hint&"Cannot change First Trade Date after trading has begun. "
						ftd=MSdate(rs("firstTradeDate"))
					End If
				Else
					'has not begun trading, so we can change ftd
					sql="UPDATE stocklistings" & setsql("FirstTradeDate",Array(ftd)) & "ID="&ID
					conMaster.Execute sql
				End If
				hint=hint&"The listing with ID "&ID&" was updated. "
			End If
		Else
			ftd=MSdate(rs("firstTradeDate"))
			ltd=MSdate(rs("finalTradeDate"))
			dld=MSdate(rs("delistDate"))
			dlr=IfNull(rs("reasonID"),"")
			altCtr=CBool(rs("2ndCtr"))
		End If
		If Not priced Then
	 		If submit="Delete" Then
	 			hint=hint&"Are you sure you want to delete the listing with ID "&ID&"?"
	 		ElseIf submit="CONFIRM DELETE" Then
				sql="DELETE FROM stocklistings WHERE ID="&ID
				conMaster.Execute sql
				hint=hint&"Listing with ID "&ID&" was deleted."
				ID=""
			End If
		ElseIf submit="Delete" or submit="CONFIRM DELETE" Then hint=hint&"You cannot delete an HKEX listing after trading has begun. "	
		End If
	End If
	rs.Close
Else
	i=getLng("i",0)
End If

If i>0 Then
	rs.Open "SELECT name1,typeLong,currency,issuer,MSdateAcc(expmat,expacc)mat FROM issue i JOIN (organisations o,secTypes st) ON i.issuer=o.personID AND i.typeID=st.typeID "&_
		"LEFT JOIN currencies c ON i.SEHKcurr=c.ID WHERE ID1="&i,conMaster
	If rs.EOF Then
		hint=hint&"No such issue. "
		i=0
	Else
		p=rs("issuer")
		orgName=rs("name1")
		typeLong=rs("typeLong")
		currName=rs("currency")
		maturity=rs("mat")
	End If
	rs.Close
End If

If submit="Add" And i>0 Then
	If e=1 or e=20 or e=22 Then sql=" IN (1,20,22)" Else sql="="&e
	rs.Open "SELECT ID FROM stocklistings WHERE issueID="&i&" AND isNull(delistDate) AND StockExID"&sql,conMaster
	If rs.EOF Then
		If (ftd>ltd And ltd>"") Or (ltd>dld And dld>"") Or (ftd>dld And dld>"") Then
			hint=hint&"Dates are in the wrong order. "
		Else
			'add the listing
			sql="INSERT INTO stocklistings (issueID,stockExID,stockCode,2ndCtr,firstTradeDate,finalTradeDate,delistDate,reasonID)"&_
				valsql(Array(i,e,sc,altCtr,ftd,ltd,dld,dlr))
			conMaster.Execute sql
			ID=lastID(conMaster)
		End If
	Else
		hint=hint&"We cannot add this listing because the stock is already listed on that Exchange with ID "&rs("ID")&". Enter delisting date for that first."
	End If
	rs.Close
End If
title="Add, edit or delete a listing"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css">
</head>
<body>
<!--#include file="cotop.inc"-->
<%If p>0 Then%>
	<h2><%=orgName%></h2>
	<%Call orgbar(p,8)
	If i>0 Then	Call issueBar(i,5)
End If%>

<h3><%=title%></h3>
<%If i>0 Then%>
	<form method="post" action="listing.asp">
		<input type="hidden" name="i" value="<%=i%>">
		<table class="txtable">
			<tr><td>Issuer</td><td><a target='_blank' href='https://webb-site.com/dbpub/orgdata.asp?p=<%=p%>'><%=orgName%></a></td></tr>
			<tr><td>Issue ID</td><td><%=i%></td></tr>
			<tr><td>Issue type</td><td><%=typeLong%></td></tr>
			<tr><td>Currency</td><td><%=currName%></td></tr>
			<tr><td>Maturity</td><td><%=maturity%></td></tr>
		</table>
		<%rs.Open "SELECT *,priced(issueID) priced FROM stocklistings s JOIN listings l ON s.stockExID=l.stockExID "&_
			"LEFT JOIN dlreasons r ON s.reasonID=r.reasonID WHERE issueID="&i,conMaster
		If Not rs.EOF Then%>
			<table class="numtable">
				<tr>
					<th>Listing ID</th>
					<th>Stock code</th>
					<th>Exchange</th>
					<th>First trade</th>
					<th>Last trade</th>
					<th>Delist</th>
					<th>Reason</th>
					<th colspan="2"></th>
				</tr>
			<%Do Until rs.EOF%>
				<tr>
					<td><%=rs("ID")%></td>
					<td><%=rs("StockCode")%></td>
					<td><span class="info"><%=rs("shortName")%><span><%=rs("longName")%></span></span></td>
					<td><%=MSdate(rs("FirstTradeDate"))%></td>
					<td><%=MSdate(rs("FinalTradeDate"))%></td>
					<td><%=MSdate(rs("DelistDate"))%></td>
					<td><%=rs("Reason")%></td>
					<td><a href='listing.asp?ID=<%=rs("ID")%>'>Edit</a></td>
					<%If Not CBool(rs("priced")) Then%>
						<td><a href='listing.asp?submitList=Delete&amp;ID=<%=rs("ID")%>'>Delete</a></td>
					<%Else%>
						<td></td>
					<%End If%>
				</tr>
				<%rs.MoveNext
			Loop%>
			</table>
		<%End If
		rs.Close%>
		<%If ID>0 Then%>
			<input type="hidden" name="ID" value="<%=ID%>">
			<h3>Edit listing</h3>
			<table class="txtable">
				<tr><td>Listing ID: </td><td><%=ID%></td></tr>
				<tr><td>Exchange: </td><td><%=conMaster.Execute("SELECT shortName FROM listings WHERE stockExID="&e).Fields(0)%></td></tr>
				<tr><td>Stock code: </td><td><%=sc%></td></tr>
			</table>
		<%Else%>
			<h3>Add listing</h3>
			<table>
				<tr><td>Exchange: </td><td><%=arrSelect("e",e,arrListing,False)%></td></tr>
				<tr><td>Stock code: </td><td><input type="text" maxlength="8" size="8" name="sc" value="<%=sc%>"></td></tr>
			</table>
		<%End If%>
		<table class="txtable">
			<tr>
				<th>2nd counter?</th>
				<th>First trade</th>
				<th>Last trade</th>
				<th>Delist</th>
				<th>Reason</th>
			</tr>
			<tr>
				<td><input type="checkbox" name="altCtr" value="1" <%=checked(altCtr)%>></td>
				<td>
					<%If ID>0 And priced Then%>
						<input type="hidden" name="ftd" value="<%=ftd%>">
						<%=ftd%>
					<%Else%>
						<input type="date" name="ftd" value="<%=ftd%>">
					<%End If%>
				</td>
				<td><input type="date" name="ltd" value="<%=ltd%>"></td>
				<td><input type="date" name="dld" value="<%=dld%>"></td>
				<td><%=arrSelectZ("dlr",dlr,arrReason,False,True,"","")%></td>
			</tr>
		</table>
		<%If hint>"" Then%><p><b><%=Hint%></b></p><%End If
		'make buttons
		If ID>0 Then%>
			<input type="submit" name="submitList" value="Update">
			<%If Not priced Then%>
				<%If submit="Delete" Then%>
					<input type="submit" name="submitList" style="color:red" value="CONFIRM DELETE">
					<input type="submit" name="submitList" value="Cancel">
				<%Else%>
					<input type="submit" name="submitList" value="Delete">
				<%End If%>
			<%End If%>
		<%Else%>
			<input type="submit" name="submitList" value="Add">
		<%End If%>
	</form>
	<form method="post" action="listing.asp">
		<input type="hidden" name="i" value="<%=i%>">
		<input type="submit" name="submitList" value="Clear form">
	</form>
<%End If
Call CloseConRs(con,rs)
Call CloseCon(conMaster)%>
<p><a href="issue.asp?tv=i">Find or add an issue</a></p>
<form method="post" action="listing.asp">
	Find using stock code: <input type="number" name="stockCode" min="1" max="999999" step="1" maxlength="6" size="6">
</form>
<hr>
<h3>Rules</h3>
<ul>
	<li>A stock cannot have more than 1 listing on an Exchange at a time.</li>
	<li>You cannot change the stock code of a listing. If the code has changed, 
	that's a new listing.</li>
	<li>You cannot delete a listing or change the First Trade Date if it has 
	begun trading on SEHK.</li>
	<li>A listing of a share is a "2nd counter" on SEHK if it is traded in a non-HKD currency and the same type of 
	shares is listed in HKD.</li>
</ul>
<!--#include file="cofooter.asp"-->
</body>
</html>
