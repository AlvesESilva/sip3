<%
'**********************************************************************************
'|	Configura��es do Sistema de Cadastro de Interesse
'|	Descri?�o:	Arquivo que tem como fun?�o conter algumas configura?�es armazenadas
'|				em constantes "GLOBAIS".
'|	Data Cria?�o:		2019-04-17
'|	Autor Cria?�o:		Pedro Silva
'**********************************************************************************
response.Charset = "utf-8" 
response.ContentType = "text/html"

'Ambiente Locaweb
PROVEDOR_CONEXAO_BD = "SQLNCLI10.1"
ENDERECO_IP_BD = "192.168.1.81"
PORTA_IP_BD = "2783"
NOME_BD = "FOC"
USAR_SSPI = true
USUARIO_BD = "portal_user"
SENHA_BD = "f01o07c2002"

'Ambiente Oswaldo Cruz
'PROVEDOR_CONEXAO_BD = "SQLNCLI11.0"
'ENDERECO_IP_BD = "192.168.10.67"
'PORTA_IP_BD = ""
'NOME_BD = "CONSULTE_BOLSAS"
'USAR_SSPI = true
'USUARIO_BD = "portal_user"
'SENHA_BD = "f01o07c2002"



'**********************************************************************************
'|	OpenConex
'|	Descri��o:	Fun��o que realiza uma conex�o OLEDB com o Servidor SQL no banco
'|				fornecido e retorna em forma de Connection a conex�o estabelecida.
'|	Param. internos:	endere�o ip, porta ip, nome do banco, usu�rio, senha
'|	Retorno:			Objeto ADODB.Connection
'|	Depend�ncias:		/Config/globalVariables.inc
'|	Data Cria��o:		--/--/----
'|	Autor Cria��o:		----------
'|	Data Altera��o: 	09/05/2017
'|	Autor Altera��o:	Vanderlei Alvarenga Jr.
'|	Observa��es:		Ap�s o t�rmino de sua utiliza��o, � necess�rio, em cada
'|						p�gina, "matar" a conex�o dbCnx.
'|						Ex.:
'|						dbCnx.Close()
'|						Set dbCnx = Nothing
'**********************************************************************************

Function openConex(NOME_BD)
	servidor_base_dados = ENDERECO_IP_BD
	
	If Len(PORTA_IP_BD) > 0 Then
		servidor_base_dados = servidor_base_dados & "," &  PORTA_IP_BD
	End If

	nome_base_dados = NOME_BD
	
	Set CONEXAO_BD = Server.CreateObject("ADODB.Connection")
	If USAR_SSPI Then
		CONEXAO_BD.Open =	"Provider=" & PROVEDOR_CONEXAO_BD & ";" &_
							"Data Source=" & servidor_base_dados & ";" &_
							"Initial Catalog=" & nome_base_dados & ";" &_
							"Integrated Security=SSPI;"
	Else
		login_base_dados = USUARIO_BD
		senha_base_dados = SENHA_BD
		CONEXAO_BD.Open =	"Provider=" & PROVEDOR_CONEXAO_BD & ";" &_
							"Data Source=" & servidor_base_dados & ";" &_
							"Initial Catalog=" & nome_base_dados & ";" &_
							"User Id = "& login_base_dados &";" &_
							"Password = "& senha_base_dados &";"
	End If
	openConex = CONEXAO_BD
End Function
%>