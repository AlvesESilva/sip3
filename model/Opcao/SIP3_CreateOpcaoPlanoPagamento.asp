<%
Function SIP3_CreateOpcaoPlanoPagamento(IdOpcao, IdPlanoPagamento, IdUsuario)

'IdOpcaoPlanoPagamento INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
'IdOpcao INT NOT NULL,
'IdPlanoPagamento INT NOT NULL,
'IdUsuario INT NOT NULL,
'DataCad DATETIME,
'Ativo BIT

Set cmd_SIP3_CreateOpcaoPlanoPagamento = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CreateOpcaoPlanoPagamento.ActiveConnection = db_conn
    cmd_SIP3_CreateOpcaoPlanoPagamento.CommandType = 4
    cmd_SIP3_CreateOpcaoPlanoPagamento.CommandText = "SIP3_CreateOpcaoPlanoPagamento"
    cmd_SIP3_CreateOpcaoPlanoPagamento.Parameters.Append cmd_SIP3_CreateOpcaoPlanoPagamento.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    cmd_SIP3_CreateOpcaoPlanoPagamento.Parameters.Append cmd_SIP3_CreateOpcaoPlanoPagamento.CreateParameter("@IdPlanoPagamento",3,1,,IdPlanoPagamento)
    cmd_SIP3_CreateOpcaoPlanoPagamento.Parameters.Append cmd_SIP3_CreateOpcaoPlanoPagamento.CreateParameter("@IdUsuario",3,1,,IdUsuario)
    
    Set SIP3_CreateOpcaoPlanoPagamento = cmd_SIP3_CreateOpcaoPlanoPagamento.Execute
    
Set cmd_SIP3_CreateOpcaoPlanoPagamento = Nothing

End Function

%>