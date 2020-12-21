<%
'**********************************************************************************
'|	EnviaMensagemEmail
'|	Descrição:	Função que retorna envia a mensagem via email, atendendo os
'|				parâmetros especificados.
'|	Data Criação:		28/05/2013
'|	Autor Criação:		Vanderlei Alvarenga Jr.
'|	Data Alteração: 	27/11/2018
'|	Autor Alteração:	Vanderlei Alvarenga Jr.
'**********************************************************************************

Function enviaMensagemEmail(remetente, destinatario, assunto, mensagem, comCopia, comCopiaOculta)
	'Referencia dos códigos: http://developer.locaweb.com.br/documentacoes/smtp/asp/
	Set objMail = CreateObject("CDO.Message")

	'This section provides the configuration information for the remote SMTP server.

	'Send the message using the network (SMTP over the network).
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2

	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="smtplw.com.br"
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465

	'Use SSL for the connection (True or False)
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True

	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

	'If your server requires outgoing authentication, uncomment the lines below and use a valid email address and password.
	'Basic (clear-text) authentication
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
	'Your UserID on the SMTP server
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="oswaldocruz2013-idc"
	objMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="dMraXOMl2151"

	objMail.Configuration.Fields.Update

	'End of remote SMTP server configuration section

	objMail.From = remetente
	objMail.Subject = assunto
	objMail.To = destinatario
	if not IsNull(comCopia) then
		if Len(comCopia) > 0 then
			objMail.Cc = comCopia
		end if
	end if
	if not IsNull(comCopiaOculta) then
		if Len(comCopiaOculta) > 0 then
			objMail.Bcc = comCopiaOculta
		end if
	end if
	objMail.TextBody = mensagem

	objMail.Send
	'Set objMail = Nothing
	
	'Set objMail = Server.CreateObject("CDONTS.NewMail")
	'	objMail.BodyFormat = 0 
	'	objMail.MailFormat = 0 
	'	objMail.From = remetente
	'	objMail.Subject = assunto
	'	objMail.To = destinatario
	'	if not IsNull(comCopia) then
	'		if Len(comCopia) > 0 then
	'			objMail.Cc = comCopia
	'		end if
	'	end if
	'	if not IsNull(comCopiaOculta) then
	'		if Len(comCopiaOculta) > 0 then
	'			objMail.Bcc = comCopiaOculta
	'		end if
	'	end if
	'	objMail.Body = mensagem
	'	objMail.Send
	'Set objMail = Nothing
End Function
%>