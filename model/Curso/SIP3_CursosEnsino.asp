<%  
Function SIP3_CursosEnsino(IdEnsino)

'C.IdCurso
',C.CodCurso
',C.Nome
',A.Area
',C.CargaHoraria
',E.Nivel

Set cmd_SIP3_CursosEnsino = Server.CreateObject("ADODB.Command")
    cmd_SIP3_CursosEnsino.ActiveConnection = db_conn
    cmd_SIP3_CursosEnsino.CommandType = 4
    cmd_SIP3_CursosEnsino.CommandText = "SIP3_CursosEnsino"
    cmd_SIP3_CursosEnsino.Parameters.Append cmd_SIP3_CursosEnsino.CreateParameter("@IdEnsino",3,1,,IdEnsino)
    
    Set SIP3_CursosEnsino = cmd_SIP3_CursosEnsino.Execute
    
Set cmd_SIP3_CursosEnsino = Nothing

End Function
%>