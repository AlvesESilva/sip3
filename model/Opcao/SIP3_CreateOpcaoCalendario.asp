<%
Function SIP3_CreateOpcaoCalendario(IdOpcao,IdUsuario,DataInicioAulas,DataInicioMatriculas,DataLimiteMatriculas)

'IdCalendario INT NOT NULL PRIMARY KEY IDENTITY(1,1), -- primary key column
'IdOpcao INT NOT NULL,
'IdUsuario INT NOT NULL,
'DataInicioAulas DATETIME,
'DataInicioMatriculas DATETIME,
'DataLimiteMatriculas DATETIME,
'DataCad DATETIME,
'Ativo BIT

Set cmd_SIP3_CreateOpcaoCalendario = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateOpcaoCalendario.ActiveConnection = db_conn
    cmd_SIP3_CreateOpcaoCalendario.CommandType = 4
    cmd_SIP3_CreateOpcaoCalendario.CommandText = "SIP3_CreateOpcaoCalendario"
    cmd_SIP3_CreateOpcaoCalendario.Parameters.Append cmd_SIP3_CreateOpcaoCalendario.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    cmd_SIP3_CreateOpcaoCalendario.Parameters.Append cmd_SIP3_CreateOpcaoCalendario.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    cmd_SIP3_CreateOpcaoCalendario.Parameters.Append cmd_SIP3_CreateOpcaoCalendario.CreateParameter("@DataInicioAulas",129,1,10,DataInicioAulas)
    cmd_SIP3_CreateOpcaoCalendario.Parameters.Append cmd_SIP3_CreateOpcaoCalendario.CreateParameter("@DataInicioMatriculas",129,1,10,DataInicioMatriculas)
    cmd_SIP3_CreateOpcaoCalendario.Parameters.Append cmd_SIP3_CreateOpcaoCalendario.CreateParameter("@DataLimiteMatriculas",129,1,10,DataLimiteMatriculas)
    
    Set SIP3_CreateOpcaoCalendario = cmd_SIP3_CreateOpcaoCalendario.Execute
    
Set cmd_SIP3_CreateOpcaoCalendario = Nothing

End Function

%>
