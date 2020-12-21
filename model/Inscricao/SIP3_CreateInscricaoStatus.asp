<%
Function SIP3_CreateInscricaoStatus(IdInscricao ,IdUsuario ,StatusInscricao ,ObservacaoStatusInscricao)

'IdStatusInscricao INT NOT NULL PRIMARY KEY IDENTITY(1,1),
'IdInscricao INT NOT NULL,
'IdUsuario INT NOT NULL,
'StatusInscricao VARCHAR(50) NOT NULL,
'ObservacaoStatusInscricao VARCHAR(500) NOT NULL,
'DataCad DATETIME NOT NULL,
'Ativo BIT NOT NULL

Set cmd_SIP3_CreateInscricaoStatus = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateInscricaoStatus.ActiveConnection = db_conn
    cmd_SIP3_CreateInscricaoStatus.CommandType = 4
    cmd_SIP3_CreateInscricaoStatus.CommandText = "SIP3_CreateInscricaoStatus"
    cmd_SIP3_CreateInscricaoStatus.Parameters.Append cmd_SIP3_CreateInscricaoStatus.CreateParameter("@IdInscricao",3,1,,IdInscricao)
    cmd_SIP3_CreateInscricaoStatus.Parameters.Append cmd_SIP3_CreateInscricaoStatus.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    cmd_SIP3_CreateInscricaoStatus.Parameters.Append cmd_SIP3_CreateInscricaoStatus.CreateParameter("@StatusInscricao",129,1,50,StatusInscricao)
    cmd_SIP3_CreateInscricaoStatus.Parameters.Append cmd_SIP3_CreateInscricaoStatus.CreateParameter("@ObservacaoStatusInscricao",129,1,500,ObservacaoStatusInscricao)
    
    Set SIP3_CreateInscricaoStatus = cmd_SIP3_CreateInscricaoStatus.Execute
    
Set cmd_SIP3_CreateInscricaoStatus = Nothing

End Function

%>