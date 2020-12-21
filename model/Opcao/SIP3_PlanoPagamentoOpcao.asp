<%  

Function SIP3_PlanoPagamentoOpcao(IdOpcao)

'OPP.IdPlanoPagamento,
'OPP.IdOpcao,
'PP.NumParcelas,
'PP.ValorParcela

Set cmd_SIP3_PlanoPagamentoOpcao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_PlanoPagamentoOpcao.ActiveConnection = db_conn
    cmd_SIP3_PlanoPagamentoOpcao.CommandType = 4
    cmd_SIP3_PlanoPagamentoOpcao.CommandText = "SIP3_PlanoPagamentoOpcao"
    cmd_SIP3_PlanoPagamentoOpcao.Parameters.Append cmd_SIP3_PlanoPagamentoOpcao.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    
    Set SIP3_PlanoPagamentoOpcao = cmd_SIP3_PlanoPagamentoOpcao.Execute
    
Set cmd_SIP3_PlanoPagamentoOpcao = Nothing

End Function

%>