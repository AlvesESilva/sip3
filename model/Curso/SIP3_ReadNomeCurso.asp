<%
Function SIP3_ReadNomeCurso(IdCurso)


	Set cmd_SIP3_ReadNomeCurso = Server.CreateObject("ADODB.Command")
		cmd_SIP3_ReadNomeCurso.ActiveConnection = db_conn
		cmd_SIP3_ReadNomeCurso.CommandType = 4
		cmd_SIP3_ReadNomeCurso.CommandText = "SIP3_ReadNomeCurso"
		cmd_SIP3_ReadNomeCurso.Parameters.Append cmd_SIP3_ReadNomeCurso.CreateParameter("@IdCurso",3,1,,IdCurso)
		Set SIP3_ReadNomeCurso = cmd_SIP3_ReadNomeCurso.Execute

	Set cmd_SIP3_ReadNomeCurso = Nothing
    Set dbCnx = Nothing

End Function
%>