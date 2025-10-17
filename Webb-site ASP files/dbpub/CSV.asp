<%Option Explicit%>
<!--#include file="functions1.asp"-->
<%
Dim t,con,sql
Call openEnigma(con)
t=Request("t")
Select Case t
	Case "airlines","airports","destor","flights","hkpx","hkpxtypes","hkports","qt","qtcentres","vax","jails","jailtypes","prisoners"
		sql="SELECT * FROM "&t
	Case "vaxcohorts"
		sql="SELECT ID,minAge,popn,mpopn,fpopn FROM vaxcohorts"
	Case Else
		sql="SELECT 'Not a valid download' result"
End Select
Call GetCSV(sql,con,t)
Call CloseCon(con)%>