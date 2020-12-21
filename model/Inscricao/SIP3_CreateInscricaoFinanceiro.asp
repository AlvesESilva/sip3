<%
Function SIP3_CreateInscricaoFinanceiro(IdInscricao,IdUsuario,Transacao,DataVencimento,Valor,Desconto,Acrescimo,MeioPagamento,DataPagamento)

'IdInscricaoFinanceiro INT NOT NULL PRIMARY KEY IDENTITY(1,1),
'IdInscricao INT NOT NULL,
'IdUsuario INT NOT NULL,
'Transacao VARCHAR(100) NOT NULL,
'DataVencimento DATETIME NOT NULL,
'Valor FLOAT NOT NULL,
'Desconto FLOAT,
'Acrescimo FLOAT,
'MeioPagamento VARCHAR(50) NOT NULL,
'DataPagamento DATETIME,
'DataCad DATETIME,
'Ativo BIT

Set cmd_SIP3_CreateInscricaoFinanceiro = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateInscricaoFinanceiro.ActiveConnection = db_conn
    cmd_SIP3_CreateInscricaoFinanceiro.CommandType = 4
    cmd_SIP3_CreateInscricaoFinanceiro.CommandText = "SIP3_CreateInscricaoFinanceiro"
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@IdInscricao",3,1,,IdInscricao)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@Transacao",129,1,100,Transacao)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@DataVencimento",129,1,10,DataVencimento)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@Valor",5,1,,Valor)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@Desconto",5,1,,Desconto)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@Acrescimo",5,1,,Acrescimo)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@MeioPagamento",129,1,50,MeioPagamento)
    cmd_SIP3_CreateInscricaoFinanceiro.Parameters.Append cmd_SIP3_CreateInscricaoFinanceiro.CreateParameter("@DataPagamento",129,1,10,DataPagamento)
    
    Set SIP3_CreateInscricaoFinanceiro = cmd_SIP3_CreateInscricaoFinanceiro.Execute
    
Set cmd_SIP3_CreateInscricaoFinanceiro = Nothing

End Function

%>