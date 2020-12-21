<%  

Function SIP3_InformacoesCurso(IdCurso)

'Titulo,
'Texto,
'Tipo

Set cmd_SIP3_InformacoesCurso = Server.CreateObject("ADODB.Command")
    cmd_SIP3_InformacoesCurso.ActiveConnection = db_conn
    cmd_SIP3_InformacoesCurso.CommandType = 4
    cmd_SIP3_InformacoesCurso.CommandText = "SIP3_InformacoesCurso"
    cmd_SIP3_InformacoesCurso.Parameters.Append cmd_SIP3_InformacoesCurso.CreateParameter("@IdCurso",3,1,,IdCurso)
    
    Set SIP3_InformacoesCurso = cmd_SIP3_InformacoesCurso.Execute
    
Set cmd_SIP3_InformacoesCurso = Nothing

End Function

%>