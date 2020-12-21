<%
Function SIP3_CreateInscricaoRelacionamento(IdInscricao, IdUsuario, MeioRelacionamento, TituloRelacionamento, TextoRelacionamento)

'IdInscricaoRelacionamento INT NOT NULL PRIMARY KEY IDENTITY(1,1),
'IdInscricao INT NOT NULL,
'IdUsuario INT NOT NULL,
'MeioRelacionamento VARCHAR(100) NOT NULL,
'TituloRelacionamento VARCHAR(100) NOT NULL,
'TextoRelacionamento VARCHAR(1000) NOT NULL,
'DataCad DATETIME NOT NULL,
'Ativo BIT NOT NULL

Set cmd_SIP3_CreateInscricaoRelacionamento = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateInscricaoRelacionamento.ActiveConnection = db_conn
    cmd_SIP3_CreateInscricaoRelacionamento.CommandType = 4
    cmd_SIP3_CreateInscricaoRelacionamento.CommandText = "SIP3_CreateInscricaoRelacionamento"
    cmd_SIP3_CreateInscricaoRelacionamento.Parameters.Append cmd_SIP3_CreateInscricaoRelacionamento.CreateParameter("@IdInscricao",3,1,,IdInscricao)
    cmd_SIP3_CreateInscricaoRelacionamento.Parameters.Append cmd_SIP3_CreateInscricaoRelacionamento.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    cmd_SIP3_CreateInscricaoRelacionamento.Parameters.Append cmd_SIP3_CreateInscricaoRelacionamento.CreateParameter("@MeioRelacionamento",129,1,100,MeioRelacionamento)
    cmd_SIP3_CreateInscricaoRelacionamento.Parameters.Append cmd_SIP3_CreateInscricaoRelacionamento.CreateParameter("@TituloRelacionamento",129,1,100,TituloRelacionamento)
    cmd_SIP3_CreateInscricaoRelacionamento.Parameters.Append cmd_SIP3_CreateInscricaoRelacionamento.CreateParameter("@TextoRelacionamento",129,1,100,TextoRelacionamento)
    
    Set SIP3_CreateInscricaoRelacionamento = cmd_SIP3_CreateInscricaoRelacionamento.Execute
    
Set cmd_SIP3_CreateInscricaoRelacionamento = Nothing

End Function

%>