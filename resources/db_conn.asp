<%
PROVEDOR_CONEXAO_BD = "SQLNCLI10.1"
ENDERECO_IP_BD = "192.168.1.81"
PORTA_IP_BD = "2783"
NOME_BD = "FOC"
USAR_SSPI = true
USUARIO_BD = "portal_user"
SENHA_BD = "f01o07c2002"

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
db_conn = CONEXAO_BD
%>