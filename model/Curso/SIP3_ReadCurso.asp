<%  

Function SIP3_ReadCurso(IdCurso)

'am.ID_AREA_MERCADO AS IdArea,
'am.AREA_MERCADO AS Area,
'C.ID_CURSO AS IdCurso,
'C.nome_curso AS Curso,
'C.carga_horaria_curso AS CargaHoraria

Set cmd_SIP3_ReadCurso = Server.CreateObject("ADODB.Command")
    cmd_SIP3_ReadCurso.ActiveConnection = db_conn
    cmd_SIP3_ReadCurso.CommandType = 4
    cmd_SIP3_ReadCurso.CommandText = "SIP3_ReadCurso"
    cmd_SIP3_ReadCurso.Parameters.Append cmd_SIP3_ReadCurso.CreateParameter("@IdCurso",3,1,,IdCurso)
    
    Set SIP3_ReadCurso = cmd_SIP3_ReadCurso.Execute
    
Set cmd_SIP3_ReadCurso = Nothing

End Function

%>