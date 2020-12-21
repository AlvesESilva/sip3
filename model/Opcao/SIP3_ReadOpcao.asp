<%  

Function SIP3_ReadOpcao(IdOpcao)

'SO.IdOpcao,
'SO.Modelo,
'SO.Tipo,
'SO.Cidade,

Set cmd_SIP3_ReadOpcao = Server.CreateObject("ADODB.Command")
    cmd_SIP3_ReadOpcao.ActiveConnection = db_conn
    cmd_SIP3_ReadOpcao.CommandType = 4
    cmd_SIP3_ReadOpcao.CommandText = "SIP3_ReadOpcao"
    cmd_SIP3_ReadOpcao.Parameters.Append cmd_SIP3_ReadOpcao.CreateParameter("@IdOpcao",3,1,,IdOpcao)
    
    Set SIP3_ReadOpcao = cmd_SIP3_ReadOpcao.Execute
    
Set cmd_SIP3_ReadOpcao = Nothing

End Function

%>