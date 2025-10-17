<%Function PrepMsg()
	Dim Conf,Flds
	Set PrepMsg=CreateObject("CDO.Message")
	Set Conf=CreateObject("CDO.Configuration")
	Set Flds=Conf.Fields
	Flds("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
	Flds("http://schemas.microsoft.com/cdo/configuration/smtpserver")=GetKey("mailHost")
	Flds("http://schemas.microsoft.com/cdo/configuration/smtpserverport")= 25
	Flds("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 20
	Flds("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
	Flds("http://schemas.microsoft.com/cdo/configuration/sendusername")=GetKey("mailAccount") 
	Flds("http://schemas.microsoft.com/cdo/configuration/sendpassword")=GetKey("mailPW") 
	Flds.Update
	PrepMsg.Configuration=Conf
	Set Flds=Nothing
	Set Conf=Nothing
End Function%>
