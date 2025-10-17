<%Option Explicit
Response.ContentType="text/xml"
Response.expires=-1 'what does this do?%>
<%="<?xml version='1.0' encoding='UTF-8'?>"%>
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Sub respond()
	Dim conRole,rs,userID,uRank,o,c,d,m,hint,sql,modified,user
	Const roleID=3 'HKUteam	
	Call prepRole(roleID,conRole,rs,userID,uRank)
	o=Request("o")
	c=Request("c")
	d=Request("d")
	m=Request("m")
	sql=" orgID="&o&" AND comID="&c&" AND atDate='"&d&"'"
	rs.Open "SELECT *,maxRank('comeets',userID)uRank FROM comeets WHERE"&sql,conRole
	If rs.EOF Then
		conRole.Execute "INSERT INTO comeets(userID,orgID,comID,atDate,mtngs)"&valsql(Array(userID,o,c,d,m))
		hint="Added"
	Else
		If rankingRs(rs,uRank) Then
			conRole.Execute "UPDATE comeets"&setsql("userID,mtngs",Array(userID,m))&sql
			hint="Updated"
		Else
			hint="You did not enter this value and don't outrank the user who did, so you cannot edit it. "
		End If
	End If
	rs.Close
	rs.Open "SELECT mtngs,modified,u.name as user FROM comeets c JOIN users u ON c.userID=u.ID WHERE"&sql,conRole
	m=rs("mtngs")
	modified=MSdateTime(rs("modified"))
	user=rs("user")
	rs.Close
	%>
	<%="<modified>"&modified&"</modified>"%>
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
