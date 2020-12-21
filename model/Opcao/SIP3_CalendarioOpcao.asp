<%  

Function SIP3_CalendarioOpcao(IdOpcao)

'IdCalendario,
'IdOpcao,
'DataInicioAulas,
'DataInicioMatriculas,
'DataLimiteMatriculas

Set cmd_SIP3_CalendarioOpcao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CalendarioOpcao.ActiveConnection = db_conn
    cmd_SIP3_CalendarioOpcao.CommandType = 4
    cmd_SIP3_CalendarioOpcao.CommandText = "SIP3_CalendarioOpcao"
    cmd_SIP3_CalendarioOpcao.Parameters.Append cmd_SIP3_CalendarioOpcao.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    
    Set SIP3_CalendarioOpcao = cmd_SIP3_CalendarioOpcao.Execute
    
Set cmd_SIP3_CalendarioOpcao = Nothing

End Function

%>