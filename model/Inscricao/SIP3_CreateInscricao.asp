<%
Function SIP3_CreateInscricao(IdOpcao,IdPlanoPagamento,IdCalendario,Nome,Email,Telefone,Celular,Genero,DataNascimento,FormacaoAnterior,Cpf,Rg,CEP,Logradouro,Complemento,Bairro,Cidade,UF,WorkFlow)

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

Set cmd_SIP3_CreateInscricao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateInscricao.ActiveConnection = db_conn
    cmd_SIP3_CreateInscricao.CommandType = 4
    cmd_SIP3_CreateInscricao.CommandText = "SIP3_CreateInscricao"
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@IdInscricao",3,2)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@IdPlanoPagamento",3,1,,IdPlanoPagamento)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@IdCalendario",3,1,,IdCalendario)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Nome",129,1,300,Nome)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Email",129,1,300,Email)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Telefone",129,1,11,Telefone)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Celular",129,1,11,Celular)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Genero",129,1,30,Genero)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@DataNascimento",129,1,10,DataNascimento)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@FormacaoAnterior",129,1,500,FormacaoAnterior)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Cpf",129,1,11,Cpf)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Rg",129,1,8,Rg)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@CEP",129,1,8,CEP)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Logradouro",129,1,200,Logradouro)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Complemento",129,1,200,Complemento)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Bairro",129,1,200,Bairro)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@Cidade",129,1,200,Cidade)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@UF",129,1,2,UF)
    cmd_SIP3_CreateInscricao.Parameters.Append cmd_SIP3_CreateInscricao.CreateParameter("@WorkFlow",129,1,100,WorkFlow)
    cmd_SIP3_CreateInscricao.Execute
    
    SIP3_CreateInscricao = cmd_SIP3_CreateInscricao.Parameters("@IdInscricao")

Set cmd_SIP3_CreateInscricao = Nothing

End Function
%>