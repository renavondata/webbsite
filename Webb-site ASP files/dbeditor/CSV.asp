<%Option Explicit%>
<!--#include file="../dbeditor/prepMaster.inc"-->
<!--#include file="../dbpub/functions1.asp"-->
<%Dim con,rs,userID,uRank,t,sql
Const roleID=3 'HKUteam
Call checkRole(roleID,userID,uRank)
t=Request("t")
If uRank<128 Then
	sql="SELECT 'Your user rank is too low for this download' result"
	t="Access denied"
Else
	Select Case t
		Case "comeets","comex"
			sql="SELECT * FROM "&t
		Case "admprofiles"
			sql="SELECT op.orgID,op.atDate,dirStake,famStake,govStake,amStake,othStake,o1.name1 AS issuer,"&_
				"ultimID AS maxholder,namepsn(o2.name1,p.name1,p.name2) AS MHname,IF(ISNULL(p.personID),'O','P') AS ht,t3.OT,"&_
			    "stake AS maxStake,econStake,weakest,op.modified,ownShort,ownLong,"&_
			    "(dirStake+famStake+govStake+amStake+othStake) as totStake "&_
				"FROM ownerProf op LEFT JOIN "&_
				"(SELECT os.orgID,os.atDate,ultimID,ot,shares,stake,econstake,weakest FROM ownerstks os JOIN "&_
				"(SELECT orgID,atDate,Max(stake) AS maxStake FROM ownerstks GROUP BY orgID,atDate) AS t2 "&_
			    "ON os.orgID=t2.orgID AND os.atDate=t2.atDate AND os.stake=t2.maxStake) AS t3 "&_
			    "ON op.orgID=t3.orgID AND op.atDate=t3.atDate "&_
				"JOIN (organisations o1,ownertype ott) "&_
				"ON op.orgID=o1.personID AND op.OT=ott.ID "&_
				"LEFT JOIN organisations o2 ON ultimID=o2.personID LEFT JOIN people p ON ultimID=p.personID ORDER BY o1.name1,atDate"
		Case "comPosDirs"
			sql="SELECT orgID,dirID,comID,atDate,posn,attend,mtngs,apptDate,apptAcc,resDate,resAcc,d.positionID,posShort,posLong,status,p.rank "&_
				"FROM compos JOIN (directorships d,positions p) on dirID=director AND orgID=company AND d.positionID=p.positionID "&_
				"WHERE (atDate<resDate OR isNull(resDate)) AND (atDate>=apptDate OR isNull(apptDate))"
		Case Else
			sql="SELECT 'Not a valid download' result"
	End Select
End If
Call openEnigma(con)
Call GetCSV(sql,con,t&MSdate(Date))
Call CloseCon(con)%>