<%  

Function SIP3_ReadCoordenador(IdCurso)

'U.ID_USUARIO AS IdUsuario,
'U.nome_usuario AS Coordenador,
'U.email_usuario as EmailCoodenador,
'U.curriculum_usuario AS CurriculoCoordenador

Set cmd_SIP3_ReadCoordenador = Server.CreateObject("ADODB.Command")
    cmd_SIP3_ReadCoordenador.ActiveConnection = db_conn
    cmd_SIP3_ReadCoordenador.CommandType = 4
    cmd_SIP3_ReadCoordenador.CommandText = "SIP3_ReadCoordenador"
    cmd_SIP3_ReadCoordenador.Parameters.Append cmd_SIP3_ReadCoordenador.CreateParameter("@IdCurso",3,1,,IdCurso)
    
    Set SIP3_ReadCoordenador = cmd_SIP3_ReadCoordenador.Execute
    
Set cmd_SIP3_ReadCoordenador = Nothing

End Function

%>