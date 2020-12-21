<!-- #include file="../resources/db_conn.asp"-->
<!-- #include file="../resources/sqlInjectionPrevent.asp"-->
<!-- #include file="../resources/sha256.asp"-->
<!-- #include file="../resources/enviaMensagemEmail.asp"-->
<!-- #include file="../resources/enviaMensagemSMS.asp"-->
<!-- #include file="../resources/GeraChave.asp"-->
<!-- #include file="../resources/deBug.asp"-->
<%
Server.ScriptTimeout    = 99999 ' Um absurdo de tempo...
Response.ContentType    = "application/json" 
Response.CodePage       = 65001
Response.CharSet        = "UTF-8"

IdUsuario = id_usuario = request.cookies("id_usuario")

function throwError(msg, target)

        throwError =  "{"& chr(34) &"erro"& chr(34) &":"&_
                    "{"& chr(34) &"msg"& chr(34) &": "& chr(34) & msgErro & chr(34) &","&_
                    chr(34) &"target"& chr(34) &": "& chr(34) & target & chr(34) &"}"&_
                    "}"

        Response.write throwError
        Response.End

End Function

ChaveApiPadrao = "98b172fdf1d9f25ffab850791bab773b72d1c158d15c087f9bd9f30bb2faeaaf"
%>