<%Option Explicit%>
<!--#include file="functions1.asp"-->
<%Dim i,r,arr,x,y,rcnt,fcnt,wd,v,f,c,ac,con,rs
Call openEnigmaRs(con,rs)
i=getLng("i",0)
f=Request("f")
wd=Request("wd")

If f="m" Then
	rs.Open "Call ccass.monthq("&i&",'atDate DESC')",con
ElseIf f="y" Then
	rs.Open "Call ccass.yearq("&i&",'atDate DESC')",con	
ElseIf f="w" Then
	If wd="" Or Not isNumeric(wd) Then wd=6
	wd=Int(wd)
	If wd<2 Or wd>6 Then wd=6 'Friday
	f="w"
	rs.Open "Call ccass.weekq("&i&","&wd&",'atDate DESC')",con
Else
	f="d"
	c=3
	ac=11
	rs.Open "Call ccass.dailyq("&i&",'atDate DESC')",con
End If

Response.ContentType="text/csv"
Response.AddHeader "Content-Disposition","attachment;filename=prices"&f&i&".csv"
fcnt=rs.Fields.Count-1
For x=0 to fcnt
	r=r & rs.Fields(x).Name & ","
Next
Response.Write r & "totalRet" & vbNewLine
If Not rs.EOF Then
	arr=rs.GetRows
	rcnt=Ubound(arr,2)
	If f="d" Then
		'fill zero adjusted price with previous adjusted price. w/m/y procedures already cover this
		For x=rcnt-1 to 0 step -1
			If arr(c,x)=0 Then arr(ac,x)=arr(ac,x+1)
		Next
	End If
	For x=0 to rcnt
		r=""
		For y=0 to fcnt
			v=arr(y,x)
			Select case varType(v)
				Case vbSingle,vbDouble: v=Round(v,5)
				Case vbDate: v=MSdate(v)
			End Select
			r=r&v&","
		Next
		If x<rcnt Then If arr(ac,x)<>0 And arr(ac,x+1)<>0 Then r=r & Round(arr(ac,x)/arr(ac,x+1)-1,5)
		Response.Write r & vbNewLine
	Next
End If
Call CloseConRs(con,rs)%>