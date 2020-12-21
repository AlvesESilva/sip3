<%
'**********************************************************************************
'|	EnviaMensagemSMS
'|	Descrição:	Função que retorna envia a mensagem via email, atendendo os
'|				parâmetros especificados.
'|	Data Criação:		28/05/2013
'|	Autor Criação:		Vanderlei Alvarenga Jr.
'|	Data Alteração: 	28/05/2013
'|	Autor Alteração:	Vanderlei Alvarenga Jr.
'**********************************************************************************

Function enviaMensagemSMS(numeroRemetente, numeroDestinatario, textoMensagem, numeroSequencial)
	loginSM = "FOC"
	chaveSM = "ap9ul3q"
	clientIdSM = "30322"
	accountIdSM = "59784"
	dataAtual = now()
	If Len(Trim(numeroSequencial)) = 0 Then
		numeroSequencial = numeroDestinatario & Year(dataAtual) & Month(dataAtual) & Day(dataAtual) & Hour(dataAtual) & Minute(dataAtual) & Second(dataAtual)
	End If

	urlServico = "http://httpgateway.sitmobile.com/HTTPConnector/SendMessage"
	'urlServico = "http://iron2:8102/resources/resposta.html"
	argumentosUrlServico =	"login=" & loginSM & "&password=" & chaveSM & "&clientID=" & clientIdSM & "&accountID=" & accountIdSM &_
							"&destination=" & numeroDestinatario & "&text=" & Server.URLEncode(textoMensagem) & "&seq=" & numeroSequencial & "&source=" & numeroRemetente
	Set objSrvHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
	objSrvHTTP.open "GET", urlServico & "?" & argumentosUrlServico, false
	objSrvHTTP.send
	retornoServico = objSrvHTTP.responseText
	Set objSrvHTTP = Nothing
	enviaMensagemSMS = retornoServico
End Function
%>