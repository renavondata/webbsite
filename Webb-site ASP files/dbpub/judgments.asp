<%Option Explicit
Server.ScriptTimeout=600%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<%Const limit=1000
Dim count,title,y,m,d,t,x,sort,URL,ob,types,ot,name,dom,doms,domexp,domName,con,rs,typeName,c,ctName,caseNum,sql
Call openEnigmaRs(con,rs)
y=getIntRange("y",0,1946,Year(Date))
m=IIF(y=0,0,getIntRange("m",0,1,12))
d=IIF(m=0,0,getIntRange("d",0,1,MonthEnd(m,y)))
c=getInt("c",0) 'court
t=getInt("t",0) 'case type
sort=Request("sort")
Select Case sort
	Case "jddn" ob="jDate DESC,prefix,caseYear,caseNum"
	Case "jdup" ob="jDate,prefix,caseYear,caseNum"
	Case "psup" ob="parties,jDate DESC"
	Case "psdn" ob="parties DESC,jDate"
	Case "cnup" ob="prefix, caseYear,caseSeq,jDate DESC"
	Case "cndn" ob="prefix DESC,caseYear DESC,caseSeq DESC,jDate"
	Case "ncup" ob="ncPref,ncYear,ncSeq,jDate DESC"
	Case "ncdn" ob="ncPref DESC,ncYear DESC,ncSeq DESC,jDate"
	Case "rpdn" ob="rep DESC,caseNum,jDate DESC"
	Case "rpup" ob="rep,caseNum,jDate"
	Case Else
		ob="jDate DESC,prefix,caseYear,caseSeq"
		sort="jddn"
End Select
sql="SELECT jDate,DIS,caseNum,neutCit,parties,t.des tdes,c.des cdes,RV,RS,rep FROM judgments j "&_
	"JOIN (casetypes t,courts c) ON j.caseType=t.ID AND t.courtID=c.ID WHERE 1=1"
If y>0 Then
	sql=sql&" AND YEAR(jDate)="&y
	If m>0 Then
		sql=sql&" AND MONTH(jDate)="&m
		If d>0 Then sql=sql&" AND DAY(jDate)="&d
	End If
End If
If c>0 Then
	ctName=con.Execute("SELECT des FROM courts WHERE ID="&c).Fields(0)
	title=" of "&ctName
	sql=sql & " AND courtID="&c
	If t>0 Then
		rs.Open "SELECT * FROM casetypes WHERE ID="&t,con
		If Not rs.EOF Then
			If rs("courtID")=c Then
				typeName=rs("des")
				sql=sql & " AND caseType="&t
			Else
				'the caseType does not match the court, so reset it to none
				t=0
			End If
		End If
		rs.Close
	End If
End If
rs.Open sql&" ORDER BY "&ob&" LIMIT "&limit,con
title="Judgments"&title&IIF(y>0," dated "&IIF(d>0," on "," in ")&dateYMD(y,m,d),"")&IIF(t>0,": "&typeName,"")
URL=Request.ServerVariables("URL")&"?y="&y&"&amp;m="&m&"&amp;d="&d&"&amp;t="&t&"&amp;c="&c%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<form method="get" action="judgments.asp">
	<div class="inputs">
		<b>Court &nbsp;</b>
		<%=arrSelectZ("c",c,con.Execute("SELECT ID,des FROM courts ORDER BY des").GetRows,True,True,0,"Any")%>
	</div>
	<div class="clear"></div>
	<%If c>0 Then%>
		<div class="inputs">
			<b>Case type &nbsp;</b>
			<%=arrSelectZ("t",t,con.Execute("SELECT ID,des FROM casetypes WHERE courtID="&c&" ORDER BY des").GetRows,True,True,0,"Any")%>
		</div>
		<div class="clear"></div>
	<%End If%>
	<div class="inputs"><b>Judgment date</b>&nbsp;</div>
	<div class="inputs">
		<%=rangeSelect("y",y,True,"Any year",True,Year(Date()),1946)%>&nbsp;
		<%=monthSelect("m",m,True,"Any month",True)%>&nbsp;
		<%=rangeSelect("d",d,True,"Any",True,1,monthEnd(m,y))%>&nbsp;
		<input type="submit" value="Go">
	</div>
	<div class="clear"></div>
	<input type="hidden" name="sort" value="<%=sort%>">
</form>
<%If rs.EOF Then%>
	<p>None found. Try widening your search.</p>
<%Else%>
	<%=mobile(3)%>
	<table class="txtable">
	<tr>
		<th class="colHide3"></th>
		<th><%SL "Judgment<br>date","jddn","jdup"%></th>
		<th><%SL "Case<br>number","cndn","cnup"%></th>
		<th class="colHide3"><%SL "Neutral<br>citation","ncdn","ncup"%></th>
		<th><%SL "Parties","psup","psdn"%></th>
		<th class="colHide3"><%SL "Reported","rpdn","rpup"%></th>
	</tr>
	<%x=0
	Do Until rs.EOF
		x=x+1
		caseNum=rs("caseNum")
		If t=0 Then
			caseNum=rs("tdes")&"</span></span>"
			If c=0 Then caseNum=rs("cdes")&": "&caseNum
			caseNum="<span class='info'>"&rs("caseNum")&"<span>"&caseNum
		Else
			caseNum=rs("caseNum")
		End If
		%>
		<tr>
			<td class="colHide3"><%=x%></td>
			<td class="nowrap">
				<%If isNull(rs("caseNum")) Then%>
					<a target="_blank" href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=<%=rs("DIS")%>"><%=MSdate(rs("jDate"))%></a>				
				<%Else%>
					<%=MSdate(rs("jDate"))%>
				<%End If%>
			</td>
			<td><a target="_blank" href="https://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=<%=rs("DIS")%>"><%=caseNum%></a></td>
			<td class="colHide3"><%=rs("neutCit")%></td>
			<td><%=rs("parties")&IIF(rs("RS")," sentence","")&IIF(rs("RV")," verdict","")%></td>
			<td class="colHide3"><%=rs("rep")%></td>
		</tr>
	<%rs.MoveNext
	Loop%>
	</table>
	<%If x=limit Then%>
		<p>Only the first <%=limit%> records are shown. Try narrowing your search to a specific court, case type, year, month or day.</p>
	<%End If
End If
Call CloseConRs(con,rs)%>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>