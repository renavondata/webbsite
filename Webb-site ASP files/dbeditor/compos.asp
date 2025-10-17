<%Option Explicit
Response.ContentType="text/xml"
Response.expires=-1 'what does this do?%>
<%="<?xml version='1.0' encoding='UTF-8'?>"%>
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%
Sub respond()
	Dim conRole,rs,userID,uRank,org,dir,com,atDate,posn,hint,sql,modified,user
	Const roleID=3 'HKUteam	
	Call prepRole(roleID,conRole,rs,userID,uRank)
	org=Request("o")
	dir=Request("d")
	com=Request("c")
	atDate=Request("a")
	posn=Request("p")
	sql=" orgID="&org&" AND dirID="&dir&" AND comID="&com&" AND atDate='"&atDate&"'"
	rs.Open "SELECT *,maxRank('compos',userID)uRank FROM compos WHERE"&sql,conRole
	If rs.EOF Then
		conRole.Execute "INSERT INTO compos(userID,orgID,dirID,comID,atDate,posn)"&valsql(Array(userID,org,dir,com,atDate,posn))
		hint="Added"
		If posn>0 And com<4 Then conRole.Execute "DELETE FROM comex WHERE orgID="&org&" AND atDate='"&atDate&"' AND comID="&com
	Else
		If rankingRs(rs,uRank) Then
			conRole.Execute "UPDATE compos"&setsql("userID,posn",Array(userID,posn))&sql
			hint="Updated"
			If posn>0 And com<4 Then conRole.Execute "DELETE FROM comex WHERE orgID="&org&" AND atDate='"&atDate&"' AND comID="&com
		Else
			hint="You did not enter this position and don't outrank the user who did, so you cannot edit it. "
		End If
	End If
	rs.Close
	rs.Open "SELECT posn,modified,u.name as user FROM compos c JOIN users u ON c.userID=u.ID WHERE"&sql,conRole
	posn=rs("posn")
	modified=MSdateTime(rs("modified"))
	user=rs("user")
	rs.Close
	%>
	<%="<modified>"&modified&"</modified>"%>
	<%="<posn>"&posn&"</posn>"%>
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
