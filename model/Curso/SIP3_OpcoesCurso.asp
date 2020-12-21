<%  

Function SIP3_OpcoesCurso(IdCurso)

'SO.IdOpcao,
'SO.Modelo,
'SO.Tipo,
'SO.Cidade,

Set cmd_SIP3_OpcoesCurso = Server.CreateObject("ADODB.Command")
    cmd_SIP3_OpcoesCurso.ActiveConnection = db_conn
    cmd_SIP3_OpcoesCurso.CommandType = 4
    cmd_SIP3_OpcoesCurso.CommandText = "SIP3_OpcoesCurso"
    cmd_SIP3_OpcoesCurso.Parameters.Append cmd_SIP3_OpcoesCurso.CreateParameter("@IdCurso",3,1,,IdCurso)
    
    Set SIP3_OpcoesCurso = cmd_SIP3_OpcoesCurso.Execute
    
Set cmd_SIP3_OpcoesCurso = Nothing

End Function

%>