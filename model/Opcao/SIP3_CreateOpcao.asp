<%
Function SIP3_CreateOpcao(IdCurso,IdUsuario,Modelo,Tipo,Cidade)

'IdOpcao INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
'IdCurso INT NOT NULL,
'IdUsuario INT NOT NULL,
'Modelo VARCHAR(50) NOT NULL,
'Tipo VARCHAR(50) NOT NULL,
'Cidade VARCHAR(200) NOT NULL,
'DataCad DATETIME NOT NULL,
'Ativo BIT NOT NULL

Set cmd_SIP3_CreateOpcao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateOpcao.ActiveConnection = db_conn
    cmd_SIP3_CreateOpcao.CommandType = 4
    cmd_SIP3_CreateOpcao.CommandText = "SIP3_CreateOpcao"
    cmd_SIP3_CreateOpcao.Parameters.Append cmd_SIP3_CreateOpcao.CreateParameter("@IdCurso",3,1,,IdCurso)
    cmd_SIP3_CreateOpcao.Parameters.Append cmd_SIP3_CreateOpcao.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    cmd_SIP3_CreateOpcao.Parameters.Append cmd_SIP3_CreateOpcao.CreateParameter("@Modelo",129,1,50,Modelo)
    cmd_SIP3_CreateOpcao.Parameters.Append cmd_SIP3_CreateOpcao.CreateParameter("@Tipo",129,1,50,Tipo)
    cmd_SIP3_CreateOpcao.Parameters.Append cmd_SIP3_CreateOpcao.CreateParameter("@Cidade",129,1,200,Cidade)
    
    Set SIP3_CreateOpcao = cmd_SIP3_CreateOpcao.Execute
    
Set cmd_SIP3_CreateOpcao = Nothing

End Function

%>