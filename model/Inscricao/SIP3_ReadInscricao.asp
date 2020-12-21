<%
Function SIP3_ReadInscricao(IdInscricao)

'IdInscricao INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
'IdOpcao INT NOT NULL,
'IdPlanoPagamento INT NOT NULL,
'IdCalendario INT NOT NULL,
'Nome VARCHAR(300) NOT NULL,
'Email VARCHAR(300) NOT NULL,
'Telefone CHAR(11) NOT NULL,
'Celular CHAR(11) NOT NULL,
'Genero VARCHAR(30) NOT NULL,
'DataNascimento DATETIME,
'FormacaoAnterior VARCHAR(500) NOT NULL,
'Cpf CHAR(11),
'Rg CHAR(8),
'CEP CHAR(8),
'Logradouro VARCHAR(200),
'Complemento VARCHAR(100),
'Bairro VARCHAR(200),
'Cidade VARCHAR(200),
'UF CHAR(2),
'WorkFlow VARCHAR(100),
'DataCad DATETIME NOT NULL,
'Ativo BIT NOT NULL

Set cmd_SIP3_ReadInscricao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_ReadInscricao.ActiveConnection = db_conn
    cmd_SIP3_ReadInscricao.CommandType = 4
    cmd_SIP3_ReadInscricao.CommandText = "SIP3_ReadInscricao"
    cmd_SIP3_ReadInscricao.Parameters.Append cmd_SIP3_ReadInscricao.CreateParameter("@IdInscricao",3,1,,IdInscricao)
    
    Set SIP3_ReadInscricao = cmd_SIP3_ReadInscricao.Execute

Set cmd_SIP3_ReadInscricao = Nothing

End Function
%>