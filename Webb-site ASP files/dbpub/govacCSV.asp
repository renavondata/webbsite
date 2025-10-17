<%Option Explicit
Response.ContentType="text/csv"%>
<!--#include file="functions1.asp"-->
<%Sub GetSum(i,head,res,y,periods,neg)
	'uses external con
	'sums everything under i
	'head is Boolean, whether this line is a heading
	'res is a 2-d results array, each row is a line item across periods
	Dim rs,numPer,ID,x,resline
	numper=Ubound(periods) 'number of periods
	Set rs=Server.CreateObject("ADODB.Recordset")
	If head Then
		'find all the non-head values one layer down and summate them
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,SUM(act*IF(rev,1,-1))act FROM govac JOIN govitems g ON govitem=g.ID"&_
			" LEFT JOIN govadopt a ON g.ID=a.govitem AND tree="&t&_
			where&"AND NOT head AND IFNULL(a.parentID,g.parentID)="&i&" GROUP BY d ORDER BY d",con
		If Not rs.EOF Then Call addToRow(res,rs,y,periods,neg) Else rs.Close
		'check for subheads and iteratively call their sums for addition
		rs.Open "SELECT ID FROM govitems g LEFT JOIN govadopt a ON g.ID=a.govitem AND tree="&t&_
			where&"AND head AND IFNULL(a.parentID,g.parentID)="&i,con
		Do Until rs.EOF
			ID=rs("ID")
			Redim resline(numPer,0)
			'iterate then add result
			Call GetSum(ID,True,resline,0,periods,neg)
			For x=0 to numPer
				res(x,y)=res(x,y)+resline(x,0)
			Next
			rs.MoveNext
		Loop
		rs.Close
		'try to fetch govac items as some head-items lack a breakdown in some years
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,act*IF(rev,1,-1)act FROM govac JOIN govitems on govitem=ID WHERE govitem="&i&" ORDER BY d",con
		'skip rs values outside our period range
		Do Until rs.EOF
			If rs("d")>=periods(0) Then Exit Do
			rs.MoveNext
		Loop
		'match remaining periods
		For x=0 to numPer
			If rs.EOF Then Exit For
			If rs("d")=periods(x) Then
				res(x,y)=CLng(rs("act"))*neg
				rs.MoveNext
			End If			
		Next
		rs.Close
	Else
		rs.Open "SELECT DATE_FORMAT(d,'%Y-%m-%d')d,act*IF(rev,1,-1)act FROM govac JOIN govitems ON govitem=ID "&where&" AND govitem="&i&" ORDER BY d",con
		Call addtoRow(res,rs,y,periods,neg)
	End If
	Set rs=Nothing
End Sub

Sub addToRow(res,rs,y,periods,neg)
	'add a row of values from a recordset to a row in the results array
	Dim x
	'skip rs values outside our period range
	Do Until rs.EOF
		If rs("d")>=periods(0) Then Exit Do
		rs.MoveNext
	Loop
	For x=0 to Ubound(periods)
		If rs.EOF Then
			res(x,y)=res(x,y)+0
		ElseIf rs("d")=periods(x) Then
			res(x,y)=res(x,y)+neg*CLng(rs("act"))
			rs.MoveNext
		Else
			res(x,y)=res(x,y)+0
		End If
	Next
	rs.Close
End Sub

Dim title,x,y,arrA,periods,numper,res,numh,i,graphTitle,where,head,parentID,neg,r,firstd,t,_
	total,totals,line,fetchline,useline,origTxt,con,rs
Call openEnigmaRs(con,rs)
'i is our internal ID for a head, subhead or item. We can pull the govt heads from there
i=getInt("i",1251) 'Consolidated Accounts
t=getInt("t",0)
where=" WHERE NOT transfer AND NOT reimb "'exclude transfers to funds and reimbursements

rs.Open "SELECT IFNULL(a.parentID,g.parentID)p,IFNULL(a.txt,g.txt)txt,g.txt origTxt,firstd,head,rev FROM govitems g LEFT JOIN govadopt a "&_
	"ON g.ID=a.govitem AND tree="&t&" WHERE ID="&i,con
	parentID=rs("p")
	title=rs("txt")
	origTxt=rs("origTxt")
	firstd=MSdate(rs("firstd"))
	head=rs("head")
	If rs("rev") Then neg=1 Else neg=-1
rs.Close

rs.Open "SELECT DISTINCT DATE_FORMAT(d,'%Y-%m-%d')d FROM govac WHERE ann=TRUE AND act>0 AND d>='"&firstd&"' ORDER BY d",con
	periods=GetRow(rs)
rs.Close
numper=Ubound(periods) 'number of periods

rs.Open "SELECT ID,IFNULL(a.txt,g.txt)txt,head,rev FROM "&_
	"govitems g LEFT JOIN govadopt a ON ID=govitem AND tree="&t&_
	where&" AND IFNULL(a.parentID,g.parentID)="&i&" ORDER BY IFNULL(a.priority,g.priority) DESC,txt",con
If rs.EOF Then
	graphTitle=con.Execute("SELECT txt FROM govitems WHERE ID="&parentID).Fields(0)
	arrA=con.Execute("SELECT ID,IFNULL(a.txt,g.txt),head FROM "&_
		"govitems g LEFT JOIN govadopt a ON ID=govitem AND tree="&t&" WHERE ID="&i).getRows
	'arrA=con.Execute("SELECT ID,txt,head FROM govitems WHERE ID="&i).getRows
Else
	'this item has a breakdown
	graphTitle=title
	arrA=rs.getRows
End If
rs.Close

numh=Ubound(arrA,2)
Redim res(numPer,numh) 'array for results table
For y=0 to numh
	Call GetSum(arrA(0,y),arrA(2,y),res,y,periods,neg)
Next

'now get any hard values of this line (even if it is a head) and check for differences with our total
ReDim totals(numPer)
useline=False
Redim line(numPer,0)
Call GetSum(i,False,line,0,periods,neg)
For x=0 to numPer
	total=colSum(res,x)
	If line(x,0)<>0 And line(x,0)<>total Then
		'We will need an "others" line
		If Not useline Then
			'We haven't needed this line before, so add it now
			useline=True
			numh=numh+1
			Redim Preserve arrA(Ubound(arrA,1),numh)
			arrA(0,numh)=i
			arrA(1,numh)="Others/no breakdown"
			arrA(3,numh)="Others/no breakdown"
			Redim Preserve res(numper,numh)
			'backfill
			For y=0 to x-1
				res(y,numh)=0
			Next
		End If
		res(x,numh)=line(x,0)-total
		totals(x)=line(x,0)
	Else
		totals(x)=total
		If useline Then res(x,numh)=0
	End If
Next
'now transfer totals to results
Redim Preserve res(numPer,numh+1)
For x=0 to numPer
	res(x,numh+1)=totals(x)
Next
Call CloseConRs(con,rs)

Response.AddHeader "Content-Disposition","attachment;filename="""& graphTitle & ".csv"""
r="Year ended"
For x=0 to numPer
	r=r & "," & periods(x)
Next
Response.Write r & vbNewLine

For y=0 to numh
	r = CSVquote(arrA(1,y))
	For x=0 to numPer
		r=r & "," & res(x,y)
	Next
	Response.Write r & vbNewLine
Next
If y>1 Then
	'write totals
	r="Total"
	For x=0 to numPer
		r=r & "," & res(x,y)
	Next
	Response.Write r & vbNewLine
End If
%>
