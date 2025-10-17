<%Option Explicit
Response.ContentType="text/xml"
Response.expires=-1 'what does this do?%>
<%="<?xml version='1.0' encoding='UTF-8'?>"%>
<!--#include file="../dbpub/functions1.asp"-->
<%Dim p,u,d,r,rs,con,hint,cnt,av,stale
'p=orgID,u=userID,r=rating
p=getLng("p",0)
u=Session("ID")
r=Request("r")
stale=1
Call openMailrs(con,rs)
If p>0 And isNumeric(u) And u<>"" Then
	rs.Open "SELECT personID FROM enigma.persons WHERE personID="&p,con
	If Not rs.EOF Then
		If isNumeric(r) And r<>"" Then
			r=CLng(r)
			If r=-1 Then
				'has user rated before today? If not, then delete any rating today and don't record a null
				rs.Close
				rs.Open "SELECT score,atDate FROM scores WHERE atDate<CURDATE() AND orgID="&p&" AND userID="&u&" ORDER BY atDate DESC LIMIT 1"
				If rs.EOF Then
					'no prior score, so delete any score today
					con.Execute "DELETE FROM scores WHERE orgID="&p&" AND userID="&u&" AND atDate=CURDATE()"
				Else
					If isNull(rs("score")) Then
						'last score was null, so delete any score today
						d=rs("atDate")
						con.Execute "DELETE FROM scores WHERE orgID="&p&" AND userID="&u&" AND atDate=CURDATE()"
					Else
						'last score was not null, so today's score should be
						d=Date()
						con.Execute "INSERT INTO scores (orgID,userID,atDate,score) VALUES("&p&","&u&",CURDATE(),NULL) ON DUPLICATE KEY UPDATE score=NULL"
					End If
				End If
			Else
				If r<0 Then r=0
				If r>5 Then r=5
				d=Date()
				stale=0
				con.Execute "INSERT INTO scores (orgID,userID,atDate,score) VALUES ("&p&","&u&",CURDATE(),"&r&") ON DUPLICATE KEY UPDATE score=VALUES(score)"
			End If
		Else
			'page just loaded, so fetch user's score, if any
			rs.Close
			rs.Open "SELECT score,atDate,(atDate<=DATE_SUB(CURDATE(),INTERVAL 1 YEAR)) AS stale FROM "&_
				"scores WHERE orgID="&p&" AND userID="&u&" ORDER BY atDate DESC LIMIT 1",con
			If not rs.EOF Then
				d=rs("atDate")
				r=rs("score")
				If isNull(r) Then
					r=-1
					stale=0
				Else
					stale=rs("stale")
				End If
			Else
				r=-1
				stale=0
			End If
		End If
	End If
	rs.Close
End If%>
<%="<result>"%>
<%If isNumeric(p) Then
	rs.Open "SELECT SUM(NOT ISNULL(score)) AS cnt,AVG(score) AS av FROM scores s JOIN "&_
		"(SELECT userID,Max(atDate) AS maxDate FROM scores WHERE orgID="&p&" AND atDate>DATE_SUB(CURDATE(), INTERVAL 1 YEAR) GROUP BY userID) AS t1 "&_
		"ON s.userID=t1.userID AND s.atDate=t1.maxDate "&_
		"WHERE orgID="&p,con
	cnt=rs("cnt")
	If isNull(cnt) Then cnt=0
	If isNull(rs("av")) Then av="N/A" Else av=FormatNumber(rs("av"),2)
	rs.Close
	%>
	<%="<userscore>"&r&"</userscore>"%>
	<%="<userdate>"&MSdate(d)&"</userdate>"%>
	<%="<stale>"&stale&"</stale>"%>
	<%="<count>"&cnt&"</count>"%>
	<%="<average>"&av&"</average>"%>
<%End If%>
<%="</result>"%>
<%Call CloseConRs(con,rs)%>