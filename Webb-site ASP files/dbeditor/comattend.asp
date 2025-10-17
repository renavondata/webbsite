<%Option Explicit
Response.ContentType="text/xml"
Response.expires=-1
%>
<%="<?xml version='1.0' encoding='UTF-8'?>"%>
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Sub respond()
	'AJAX call to set either the number of meetings attended (att), or the number of meetings in the member's term (m)
	Dim conRole,rs,userID,uRank,o,d,c,a,m,hint,sql,modified,user,att,maxmt
	Const roleID=3 'HKUteam	
	Call prepRole(roleID,conRole,rs,userID,uRank)
	o=Request("o")
	d=Request("d")
	c=Request("c")
	a=Request("a")
	m=Request("m")
	att=Request("att")
	sql=" orgID="&o&" AND dirID="&d&" AND comID="&c&" AND atDate='"&a&"'"
	rs.Open "SELECT * FROM comeets WHERE orgID="&o&" AND atDate='"&a&"' AND comID="&c,conRole
	If Not rs.EOF Then
		maxmt=Clng(rs("mtngs"))
		If m="" Then
			If Clng(att)>maxmt Then att=maxmt
		Else
			If Clng(m)>maxmt Then m=maxmt
		End If
	End If
	rs.Close
	rs.Open "SELECT *,maxRank('compos',userID)uRank FROM compos WHERE"&sql,conRole
	If rs.EOF Then
		If m="" Then m=att Else att=m
		conRole.Execute "INSERT INTO compos(userID,orgID,dirID,comID,atDate,posn,attend,mtngs)"&valsql(Array(userID,o,d,c,a,1,att,m))
		hint="Added"
		If (att>0 or m>0) And c<4 Then conRole.Execute "DELETE FROM comex WHERE orgID="&o&" AND atDate='"&a&"' AND comID="&c
	Else
		If rankingRs(rs,uRank) Then
			If m="" Then
				'setting attendance number
				att=Clng(att)
				m=rs("mtngs")
				If isNull(m) Then m=att Else m=Clng(m)
				If att>m Then m=att
			Else
				'setting meeting count
				m=Clng(m)
				att=rs("attend")
				If isNull(att) Then att=m Else att=CLng(att)
				If att>m Then att=m
			End If
			conRole.Execute "UPDATE compos"&setsql("userID,mtngs,attend",Array(userID,m,att))&sql
			hint="Updated"
			If att>0 And c<4 Then conRole.Execute "DELETE FROM comex WHERE orgID="&o&" AND atDate='"&a&"' AND comID="&c
		Else
			hint="You did not enter this position and don't outrank the user who did, so you cannot edit it. "
			m=rs("mtngs")
			att=rs("attend")
		End If
	End If
	rs.Close
	rs.Open "SELECT attend,modified,u.name as user FROM compos c JOIN users u ON c.userID=u.ID WHERE"&sql,conRole
	att=rs("attend")
	modified=MSdateTime(rs("modified"))
	user=rs("user")
	rs.Close
	%>
	<%="<modified>"&modified&"</modified>"%>
	<%="<att>"&att&"</att>"%>
	<%="<mtngs>"&m&"</mtngs>"%>
	<%="<user>"&user&"</user>"%>
	<%="<hint>"&hint&"</hint>"%>
	<%Call closeConRs(conRole,rs)
End Sub
%>
<%="<result>"%>
<%If Len(Session("username")) = 0 Then%>
	<%="<hint>Timeout</hint>"%>
<%Else
	Call respond
End If%>
<%="</result>"%>
